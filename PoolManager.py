import datetime
import sys
import random
import sqlite3
from concurrent.futures import ThreadPoolExecutor, wait
from time import sleep, time
import queue
import threading


class DataBaseThread(threading.Thread):
    def __init__(self, queue: queue.Queue):
        threading.Thread.__init__(self)
        self.queue = queue

    def execute(self, sql, data):
        cur = self.conn.cursor()
        cur.executemany(sql, data)
        self.conn.commit()

    def insert_cuisine(self, data):
        sql = '''INSERT OR REPLACE cuisines(id, name) VALUES (?,?)'''
        self.execute(sql, data)

    def insert_state(self, data):
        sql = '''INSERT OR REPLACE states(id, name) VALUES (?,?)'''
        self.execute(sql, data)

    def insert_cuisines_restaurants(self, data):
        sql = '''INSERT OR REPLACE cuisines_restaurants(cui_id, res_id) VALUES (?,?)'''
        self.execute(sql, data)

    def insert_chain(self, data):
        sql = '''INSERT OR REPLACE chains(id, name) VALUES (?,?)'''
        self.execute(sql, data)

    def insert_menu(self, data):
        sql = '''INSERT OR REPLACE menus(id, name, res_id) VALUES (?,?,?)'''
        self.execute(sql, data)

    def insert_menu_item(self, data):
        sql = '''INSERT OR REPLACE menus_items(menu_id, res_id, title, description, price) VALUES (?,?,?,?,?)'''
        self.execute(sql, data)

    def insert_city(self, data):
        sql = '''INSERT OR REPLACE cities(name, id, state_id) VALUES (?,?,?)'''
        self.execute(sql, data)

    def insert_restaurant(self, data):
        sql = '''INSERT OR REPLACE restaurants(
            link,
            id,
            address,
            name,
            img,
            phone,
            percent_food_good,
            percent_on_time,
            percent_order_correct,
            price_rating,
            num_ratings,
            chain_id,
            citie_id)
            VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)'''
        self.execute(sql, data)

    def dump_sql(self):
        import os
        os.system(
            "sqlite3 database.db \".dump 'states' 'cities'\" > states_cities.sql")
        tables = ['chains', 'restaurants', 'cuisines',
                  'menus', 'menus_items', 'cuisines_restaurants']
        for t in tables:
            os.system("sqlite3 database.db \".dump '"+t+"'\" > db/"+t+".sql")

    def run(self):
        self.conn = sqlite3.connect('database.db')
        self.conn.execute('''CREATE TABLE IF NOT EXISTS cuisines
                                (id VARCHAR(100) PRIMARY KEY NOT NULL,
                                name TEXT NOT NULL);
                            ''')

        self.conn.execute('''CREATE TABLE IF NOT EXISTS restaurants
                                (id INT PRIMARY KEY NOT NULL,
                                name TEXT NOT NULL,
                                link TEXT NOT NULL,
                                address TEXT,
                                img TEXT,
                                phone TEXT ,
                                percent_food_good INT,
                                percent_on_time INT,
                                percent_order_correct INT,
                                price_rating INT,
                                num_ratings  INT,
                                citie_id VARCHAR(255) NOT NULL,
                                chain_id VARCHAR(100),
                                FOREIGN KEY (chain_id) REFERENCES chains (id),
                                FOREIGN KEY (citie_id) REFERENCES cities (id)
                                );
                            ''')

        self.conn.execute('''CREATE TABLE IF NOT EXISTS chains
                                (id VARCHAR(100) PRIMARY KEY NOT NULL,
                                name TEXT NOT NULL);
                            ''')

        self.conn.execute('''CREATE TABLE IF NOT EXISTS states
                                (id INT PRIMARY KEY NOT NULL,
                                name TEXT NOT NULL);
                            ''')

        self.conn.execute('''CREATE TABLE IF NOT EXISTS cities
                                (id VARCHAR(255) PRIMARY KEY NOT NULL,
                                name TEXT NOT NULL,
                                state_id INT NOT NULL,
                                FOREIGN KEY (state_id) REFERENCES states (id)
                                );
                            ''')

        self.conn.execute('''CREATE TABLE IF NOT EXISTS menus
                                (id INTEGER NOT NULL,
                                name TEXT NOT NULL,
                                res_id INT NOT NULL,
                                FOREIGN KEY (res_id) REFERENCES restaurants (id),
                                PRIMARY KEY (id, res_id)
                                );
                            ''')

        self.conn.execute('''CREATE TABLE IF NOT EXISTS menus_items
                                (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
                                title VARCHAR(255) NOT NULL,
                                description TEXT,
                                price FLOAT,
                                menu_id INT NOT NULL,
                                res_id INT NOT NULL,
                                FOREIGN KEY (menu_id, res_id) REFERENCES menus (id, res_id)
                                );
                            ''')

        self.conn.execute('''CREATE TABLE IF NOT EXISTS cuisines_restaurants
                                (cui_id INTEGER NOT NULL,
                                res_id INTEGER NOT NULL,
                                FOREIGN KEY (cui_id) REFERENCES cuisines (id),
                                FOREIGN KEY (res_id) REFERENCES restaurants (id),
                                PRIMARY KEY (cui_id, res_id)
                                );
                            ''')
        self.conn.commit()

        while True:
            op, result = self.queue.get()
            if op == "show":
                self.show_records()
            elif op == "INSERT_CUISINE":
                self.insert_cuisine(result)
            elif op == "INSERT_STATE":
                self.insert_state(result)
            elif op == "INSERT_CITY":
                self.insert_city(result)
            elif op == "INSERT_CUISINES_RESTAURANTS":
                self.insert_cuisines_restaurants(result)
            elif op == "INSERT_MENU":
                self.insert_menu(result)
            elif op == "INSERT_MENU_ITEM":
                self.insert_menu_item(result)
            elif op == "INSERT_RESTAURANT":
                self.insert_restaurant(result)
            elif op == "DUMP_SQL":
                self.dump_sql()
            else:
                pass
            self.queue.task_done()