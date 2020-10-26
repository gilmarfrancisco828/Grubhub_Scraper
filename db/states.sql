PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE states
                                (id INT PRIMARY KEY NOT NULL,
                                name TEXT NOT NULL);
INSERT INTO states VALUES(1,'Arizona');
INSERT INTO states VALUES(2,'California');
INSERT INTO states VALUES(3,'Colorado');
INSERT INTO states VALUES(4,'Connecticut');
INSERT INTO states VALUES(5,'District of Columbia');
INSERT INTO states VALUES(6,'Florida');
INSERT INTO states VALUES(7,'Georgia');
INSERT INTO states VALUES(8,'Illinois');
INSERT INTO states VALUES(9,'Maryland');
INSERT INTO states VALUES(10,'Massachusetts');
INSERT INTO states VALUES(11,'New Jersey');
INSERT INTO states VALUES(12,'New York');
INSERT INTO states VALUES(13,'Pennsylvania');
INSERT INTO states VALUES(14,'Texas');
INSERT INTO states VALUES(15,'Utah');
INSERT INTO states VALUES(16,'Virginia');
INSERT INTO states VALUES(17,'Washington');
COMMIT;
