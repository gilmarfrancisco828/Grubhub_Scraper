PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE menus
                                (id INTEGER NOT NULL,
                                name TEXT NOT NULL,
                                res_id INT NOT NULL,
                                FOREIGN KEY (res_id) REFERENCES restaurants (id),
                                PRIMARY KEY (id, res_id)
                                );
INSERT INTO menus VALUES(1,'Sandwiches',1337976);
INSERT INTO menus VALUES(2,'Salads',1337976);
INSERT INTO menus VALUES(1,'Combos',1681413);
INSERT INTO menus VALUES(2,'Feed The Fam Deals',1681413);
INSERT INTO menus VALUES(3,'Hamburgers',1681413);
INSERT INTO menus VALUES(4,'Chicken Sandwiches & Nuggets',1681413);
INSERT INTO menus VALUES(5,'Fresh-Made Salads',1681413);
INSERT INTO menus VALUES(6,'Fries & Sides',1681413);
INSERT INTO menus VALUES(7,'Beverages',1681413);
INSERT INTO menus VALUES(8,'Frosty',1681413);
INSERT INTO menus VALUES(9,'Bakery',1681413);
INSERT INTO menus VALUES(10,'Wendy''s Kids'' Meal®',1681413);
INSERT INTO menus VALUES(11,'Biggie Deals',1681413);
INSERT INTO menus VALUES(12,'Meal Deals',1681413);
INSERT INTO menus VALUES(1,'Catering',546642);
INSERT INTO menus VALUES(2,'Breakfast',546642);
INSERT INTO menus VALUES(3,'Starters',546642);
INSERT INTO menus VALUES(4,'Soups',546642);
INSERT INTO menus VALUES(5,'Hot Arepas',546642);
INSERT INTO menus VALUES(6,'Sandwiches',546642);
INSERT INTO menus VALUES(7,'Meats',546642);
INSERT INTO menus VALUES(8,'Chicken',546642);
INSERT INTO menus VALUES(9,'Latin Bowls',546642);
INSERT INTO menus VALUES(10,'Veggie',546642);
INSERT INTO menus VALUES(11,'Sides',546642);
INSERT INTO menus VALUES(12,'Kids Menu',546642);
INSERT INTO menus VALUES(13,'Desserts',546642);
INSERT INTO menus VALUES(14,'Coffee',546642);
INSERT INTO menus VALUES(15,'Beverages',546642);
INSERT INTO menus VALUES(1,'Sandwiches',1089533);
INSERT INTO menus VALUES(1,'Limited Time Only',2250697);
INSERT INTO menus VALUES(2,'Favorites',2250697);
INSERT INTO menus VALUES(3,'Signature Sandwiches',2250697);
INSERT INTO menus VALUES(4,'Market Fresh®',2250697);
INSERT INTO menus VALUES(5,'Chicken',2250697);
INSERT INTO menus VALUES(6,'Roast Beef',2250697);
INSERT INTO menus VALUES(7,'Sides',2250697);
INSERT INTO menus VALUES(8,'Sliders',2250697);
INSERT INTO menus VALUES(9,'Salads',2250697);
INSERT INTO menus VALUES(10,'Drinks and Desserts',2250697);
INSERT INTO menus VALUES(11,'Kids Meal',2250697);
INSERT INTO menus VALUES(1,'Appetizers',1532305);
INSERT INTO menus VALUES(2,'Our Jumbo Monkey Wings',1532305);
INSERT INTO menus VALUES(3,'Soups and Combos',1532305);
INSERT INTO menus VALUES(4,'Salads',1532305);
INSERT INTO menus VALUES(5,'Side Salads',1532305);
INSERT INTO menus VALUES(6,'Gourmet Sandwiches',1532305);
INSERT INTO menus VALUES(7,'Baskets',1532305);
INSERT INTO menus VALUES(8,'Gourmet Steakburgers',1532305);
INSERT INTO menus VALUES(9,'Chicken Sandwiches',1532305);
INSERT INTO menus VALUES(10,'Pub Specialties',1532305);
INSERT INTO menus VALUES(11,'Pastas',1532305);
INSERT INTO menus VALUES(12,'USDA Choice Steaks',1532305);
INSERT INTO menus VALUES(13,'Land and Sea',1532305);
INSERT INTO menus VALUES(14,'Sides',1532305);
INSERT INTO menus VALUES(15,'Beverages',1532305);
INSERT INTO menus VALUES(1,'Espresso Drinks',2208212);
INSERT INTO menus VALUES(2,'Iced Drinks',2208212);
INSERT INTO menus VALUES(3,'Hot Drinks',2208212);
INSERT INTO menus VALUES(4,'Frozen Drinks',2208212);
INSERT INTO menus VALUES(5,'Sandwiches & Wraps',2208212);
INSERT INTO menus VALUES(6,'Donuts & Bagels',2208212);
INSERT INTO menus VALUES(7,'Bakery & Snacks',2208212);
INSERT INTO menus VALUES(8,'Bottled Drinks',2208212);
INSERT INTO menus VALUES(9,'Brew at Home',2208212);
INSERT INTO menus VALUES(1,'Limited Time Special',2054070);
INSERT INTO menus VALUES(2,'From The Kitchen',2054070);
INSERT INTO menus VALUES(3,'From The Kitchen- Signature Entree Bowls',2054070);
INSERT INTO menus VALUES(4,'Kids Bento Box',2054070);
INSERT INTO menus VALUES(5,'Sides',2054070);
INSERT INTO menus VALUES(6,'Signature Poke Bowls',2054070);
INSERT INTO menus VALUES(7,'Build - A - Poke',2054070);
INSERT INTO menus VALUES(8,'Sushi Combo Box',2054070);
INSERT INTO menus VALUES(9,'Classic Rolls',2054070);
INSERT INTO menus VALUES(10,'Signature Rolls',2054070);
INSERT INTO menus VALUES(11,'Boba Tea',2054070);
INSERT INTO menus VALUES(1,'Limited Time Offers (LTOs)',2046111);
INSERT INTO menus VALUES(2,'Family Bundles',2046111);
INSERT INTO menus VALUES(3,'Meals',2046111);
INSERT INTO menus VALUES(4,'A La Carte',2046111);
INSERT INTO menus VALUES(5,'Beverages',2046111);
INSERT INTO menus VALUES(6,'Sides',2046111);
INSERT INTO menus VALUES(7,'Desserts',2046111);
INSERT INTO menus VALUES(8,'King Jr. Meals',2046111);
INSERT INTO menus VALUES(1,'Drinks and Shakes',2132375);
INSERT INTO menus VALUES(2,'Breakfast Mains',2132375);
INSERT INTO menus VALUES(3,'Salads',2132375);
INSERT INTO menus VALUES(4,'Burgers',2132375);
INSERT INTO menus VALUES(5,'Chicken',2132375);
INSERT INTO menus VALUES(6,'Kids Meals',2132375);
INSERT INTO menus VALUES(7,'Sides',2132375);
INSERT INTO menus VALUES(8,'Lunch and Dinner Combos',2132375);
INSERT INTO menus VALUES(9,'Desserts',2132375);
INSERT INTO menus VALUES(1,'Breakfast Beverages',2377688);
INSERT INTO menus VALUES(2,'Burgers',2377688);
INSERT INTO menus VALUES(3,'Chicken',2377688);
INSERT INTO menus VALUES(4,'Other Entrees',2377688);
INSERT INTO menus VALUES(5,'Beverages',2377688);
INSERT INTO menus VALUES(6,'Sides',2377688);
INSERT INTO menus VALUES(7,'Desserts',2377688);
INSERT INTO menus VALUES(1,'ROTISSERIE CHICKEN',2354001);
INSERT INTO menus VALUES(2,'SIDES',2354001);
INSERT INTO menus VALUES(3,'ROTISSERIE BUNDLES',2354001);
INSERT INTO menus VALUES(4,'ROTISSERIE CHICKEN BOWLS',2354001);
INSERT INTO menus VALUES(5,'SWEETS',2354001);
INSERT INTO menus VALUES(6,'DRINKS',2354001);
INSERT INTO menus VALUES(7,'EXTRAS',2354001);
INSERT INTO menus VALUES(1,'Fall Menu Items',2186278);
INSERT INTO menus VALUES(2,'Tenders',2186278);
INSERT INTO menus VALUES(3,'Sandwiches',2186278);
INSERT INTO menus VALUES(4,'PDQ Burgers',2186278);
INSERT INTO menus VALUES(5,'Salads',2186278);
INSERT INTO menus VALUES(6,'Bowls',2186278);
INSERT INTO menus VALUES(7,'Family Coop Dinner Menu',2186278);
INSERT INTO menus VALUES(8,'Sides',2186278);
INSERT INTO menus VALUES(9,'Hand Spun Shakes',2186278);
INSERT INTO menus VALUES(10,'Treats',2186278);
INSERT INTO menus VALUES(11,'Beverages',2186278);
INSERT INTO menus VALUES(1,'Plate',2136338);
INSERT INTO menus VALUES(2,'Bigger Plate',2136338);
INSERT INTO menus VALUES(3,'Bowl',2136338);
INSERT INTO menus VALUES(4,'Family Feast',2136338);
INSERT INTO menus VALUES(5,'Kids Meal',2136338);
INSERT INTO menus VALUES(6,'Appetizers',2136338);
INSERT INTO menus VALUES(7,'Sides - A La Carte',2136338);
INSERT INTO menus VALUES(8,'Entrees - A La Carte',2136338);
INSERT INTO menus VALUES(9,'Drinks',2136338);
INSERT INTO menus VALUES(1,'Popcorn',1292311);
INSERT INTO menus VALUES(2,'Toppings',1292311);
INSERT INTO menus VALUES(3,'Candy',1292311);
INSERT INTO menus VALUES(4,'My Harkins Award',1292311);
INSERT INTO menus VALUES(1,'Hot Appetizers',1455062);
INSERT INTO menus VALUES(2,'Cold Appetizers from Sushi Bar',1455062);
INSERT INTO menus VALUES(3,'Soups and Salad',1455062);
INSERT INTO menus VALUES(4,'Sushi a la Carte',1455062);
INSERT INTO menus VALUES(5,'Hosomaki',1455062);
INSERT INTO menus VALUES(6,'Uramaki',1455062);
INSERT INTO menus VALUES(7,'House Special Rolls',1455062);
INSERT INTO menus VALUES(8,'From the Grill, Donburi and Katsu',1455062);
INSERT INTO menus VALUES(9,'Doo Dee Noodles',1455062);
INSERT INTO menus VALUES(10,'Noodle Stir-Fried and Fried Rice',1455062);
INSERT INTO menus VALUES(11,'From the Wok',1455062);
INSERT INTO menus VALUES(12,'Curry',1455062);
INSERT INTO menus VALUES(13,'Sides',1455062);
INSERT INTO menus VALUES(14,'Tea Bar',1455062);
INSERT INTO menus VALUES(15,'Alcohol Beverage (Must be 21 to Purchase)',1455062);
INSERT INTO menus VALUES(1,'Espresso Drinks',2133716);
INSERT INTO menus VALUES(2,'Iced Drinks',2133716);
INSERT INTO menus VALUES(3,'Hot Drinks',2133716);
INSERT INTO menus VALUES(4,'Frozen Drinks',2133716);
INSERT INTO menus VALUES(5,'Sandwiches & Wraps',2133716);
INSERT INTO menus VALUES(6,'Donuts & Bagels',2133716);
INSERT INTO menus VALUES(7,'Bakery & Snacks',2133716);
INSERT INTO menus VALUES(8,'Bottled Drinks',2133716);
INSERT INTO menus VALUES(9,'Brew at Home',2133716);
INSERT INTO menus VALUES(1,'Appetizers',2251431);
INSERT INTO menus VALUES(2,'Seafood',2251431);
INSERT INTO menus VALUES(3,'Sandwiches',2251431);
INSERT INTO menus VALUES(4,'Tacos',2251431);
INSERT INTO menus VALUES(5,'Land Lovers',2251431);
INSERT INTO menus VALUES(6,'Sides',2251431);
INSERT INTO menus VALUES(7,'Kids',2251431);
INSERT INTO menus VALUES(8,'Desserts',2251431);
INSERT INTO menus VALUES(9,'Drinks',2251431);
INSERT INTO menus VALUES(1,'Chicken Sandwich',2058830);
INSERT INTO menus VALUES(2,'Family Feasts',2058830);
INSERT INTO menus VALUES(3,'Chicken Family Meals',2058830);
INSERT INTO menus VALUES(4,'Chicken Family Boxes',2058830);
INSERT INTO menus VALUES(5,'Limited Time Offers',2058830);
INSERT INTO menus VALUES(6,'Chicken Combos',2058830);
INSERT INTO menus VALUES(7,'Seafood Combos',2058830);
INSERT INTO menus VALUES(8,'Chicken Dinners',2058830);
INSERT INTO menus VALUES(9,'Seafood Dinners',2058830);
INSERT INTO menus VALUES(10,'Signature Sides',2058830);
INSERT INTO menus VALUES(11,'Beverages',2058830);
INSERT INTO menus VALUES(12,'Desserts',2058830);
INSERT INTO menus VALUES(1,'Entrees',2126334);
INSERT INTO menus VALUES(2,'Sides',2126334);
INSERT INTO menus VALUES(3,'Drinks',2126334);
INSERT INTO menus VALUES(1,'Rotisserie',1163889);
INSERT INTO menus VALUES(2,'Combos',1163889);
INSERT INTO menus VALUES(3,'Ribs',1163889);
INSERT INTO menus VALUES(4,'Tex-Mex',1163889);
INSERT INTO menus VALUES(5,'Peruvian',1163889);
INSERT INTO menus VALUES(6,'Family Meal',1163889);
INSERT INTO menus VALUES(7,'Salad, Wraps and Sandwiches',1163889);
INSERT INTO menus VALUES(8,'Drinks',1163889);
INSERT INTO menus VALUES(9,'Dessert',1163889);
INSERT INTO menus VALUES(10,'Sauces',1163889);
INSERT INTO menus VALUES(1,'Burgers',2007638);
INSERT INTO menus VALUES(2,'Chicken',2007638);
INSERT INTO menus VALUES(3,'Fish',2007638);
INSERT INTO menus VALUES(4,'Hot Dogs',2007638);
INSERT INTO menus VALUES(5,'Classic Wings',2007638);
INSERT INTO menus VALUES(6,'Boneless Wings',2007638);
INSERT INTO menus VALUES(7,'Fries and Sides',2007638);
INSERT INTO menus VALUES(8,'Sweet Side',2007638);
INSERT INTO menus VALUES(9,'Chill Stop',2007638);
INSERT INTO menus VALUES(10,'Soft Drinks',2007638);
INSERT INTO menus VALUES(1,'Cold Subs',2302887);
INSERT INTO menus VALUES(2,'Hot Subs',2302887);
INSERT INTO menus VALUES(3,'Sides, Drinks, & Desserts',2302887);
INSERT INTO menus VALUES(1,'Starters',1950426);
INSERT INTO menus VALUES(2,'Chicken Wings',1950426);
INSERT INTO menus VALUES(3,'Salads',1950426);
INSERT INTO menus VALUES(4,'Sandwiches',1950426);
INSERT INTO menus VALUES(5,'Pizza',1950426);
INSERT INTO menus VALUES(6,'Specialty Pizzas',1950426);
INSERT INTO menus VALUES(7,'Pizza by the Slice',1950426);
INSERT INTO menus VALUES(8,'Calzones',1950426);
INSERT INTO menus VALUES(9,'Stromboli',1950426);
INSERT INTO menus VALUES(10,'Dinners',1950426);
INSERT INTO menus VALUES(11,'Sides',1950426);
INSERT INTO menus VALUES(12,'Desserts',1950426);
INSERT INTO menus VALUES(13,'Drinks',1950426);
INSERT INTO menus VALUES(1,'Entrees',1750104);
INSERT INTO menus VALUES(2,'Snacks & Sides',1750104);
INSERT INTO menus VALUES(3,'Ultimate Drink Stop',1750104);
INSERT INTO menus VALUES(4,'Frozen Zone',1750104);
INSERT INTO menus VALUES(5,'Breakfast',1750104);
INSERT INTO menus VALUES(6,'Kids Meals',1750104);
INSERT INTO menus VALUES(1,'Meals for Today & Tomorrow',1082319);
INSERT INTO menus VALUES(2,'Bucket Meals',1082319);
INSERT INTO menus VALUES(3,'World Famous Chicken',1082319);
INSERT INTO menus VALUES(4,'Big Box Meals',1082319);
INSERT INTO menus VALUES(5,'Tenders & Nuggets',1082319);
INSERT INTO menus VALUES(6,'Kentucky Fried Wings',1082319);
INSERT INTO menus VALUES(7,'Fill Ups',1082319);
INSERT INTO menus VALUES(8,'Bowls',1082319);
INSERT INTO menus VALUES(9,'Signature Sandwiches',1082319);
INSERT INTO menus VALUES(10,'Sides',1082319);
INSERT INTO menus VALUES(11,'A La Carte',1082319);
INSERT INTO menus VALUES(12,'Dessert',1082319);
INSERT INTO menus VALUES(13,'Beverages',1082319);
INSERT INTO menus VALUES(14,'Condiments',1082319);
INSERT INTO menus VALUES(15,'Dipping Sauces',1082319);
INSERT INTO menus VALUES(1,'Fresh Cracked Classics',2126285);
INSERT INTO menus VALUES(2,'Farm Fresh Omelets',2126285);
INSERT INTO menus VALUES(3,'Benedicts',2126285);
INSERT INTO menus VALUES(4,'Griddle Greats',2126285);
INSERT INTO menus VALUES(5,'Hearty Extras',2126285);
INSERT INTO menus VALUES(6,'Just for Starters',2126285);
INSERT INTO menus VALUES(7,'Fresh Salads and Soups',2126285);
INSERT INTO menus VALUES(8,'Signature Burgers and Sandwiches',2126285);
INSERT INTO menus VALUES(9,'Comfort Classics',2126285);
INSERT INTO menus VALUES(10,'Beverages',2126285);
INSERT INTO menus VALUES(11,'The Bake Shop',2126285);
INSERT INTO menus VALUES(12,'Cookies, Muffins, and Brownies',2126285);
INSERT INTO menus VALUES(13,'Family Meal Breakfast',2126285);
INSERT INTO menus VALUES(14,'Family Dinner Meals',2126285);
INSERT INTO menus VALUES(1,'Salads',2035397);
INSERT INTO menus VALUES(2,'Burritos',2035397);
INSERT INTO menus VALUES(3,'Burrito Bowls',2035397);
INSERT INTO menus VALUES(4,'Tacos',2035397);
INSERT INTO menus VALUES(5,'Quesadillas',2035397);
INSERT INTO menus VALUES(6,'Nachos',2035397);
INSERT INTO menus VALUES(7,'Stacks',2035397);
INSERT INTO menus VALUES(8,'Queso, Guac & Sides',2035397);
INSERT INTO menus VALUES(9,'Kids Menu',2035397);
INSERT INTO menus VALUES(10,'Beverages',2035397);
INSERT INTO menus VALUES(1,'Signature Poke',1124783);
INSERT INTO menus VALUES(2,'Create Your Own',1124783);
INSERT INTO menus VALUES(3,'Bubble Tea',1124783);
INSERT INTO menus VALUES(4,'Fresh Milk',1124783);
INSERT INTO menus VALUES(5,'Specialty Smoothies',1124783);
INSERT INTO menus VALUES(6,'Fruit Sparkling Mojito (Must be 21 to Purchase)',1124783);
INSERT INTO menus VALUES(7,'Tea Expresso',1124783);
INSERT INTO menus VALUES(8,'Signature Fresh Fruit Tea',1124783);
INSERT INTO menus VALUES(9,'Classic Milkshake',1124783);
INSERT INTO menus VALUES(10,'Fruit Green Tea',1124783);
INSERT INTO menus VALUES(1,'Starters',1391324);
INSERT INTO menus VALUES(2,'New! Queso Crunch Burrito',1391324);
INSERT INTO menus VALUES(3,'Take-Home Meal Kit',1391324);
INSERT INTO menus VALUES(4,'Chicken Tinga',1391324);
INSERT INTO menus VALUES(5,'Burritos',1391324);
INSERT INTO menus VALUES(6,'Tacos',1391324);
INSERT INTO menus VALUES(7,'Bowls',1391324);
INSERT INTO menus VALUES(8,'Bangin'' Chicken',1391324);
INSERT INTO menus VALUES(9,'Chimichangas',1391324);
INSERT INTO menus VALUES(10,'Quesadilla',1391324);
INSERT INTO menus VALUES(11,'Flautas',1391324);
INSERT INTO menus VALUES(12,'Fresh Salads',1391324);
INSERT INTO menus VALUES(13,'Enchiladas',1391324);
INSERT INTO menus VALUES(14,'Kids Corner',1391324);
INSERT INTO menus VALUES(15,'On the side',1391324);
INSERT INTO menus VALUES(16,'Desserts',1391324);
INSERT INTO menus VALUES(17,'Hot Sauce Bottles',1391324);
INSERT INTO menus VALUES(18,'Drinks',1391324);
INSERT INTO menus VALUES(1,'Featured Products',1224297);
INSERT INTO menus VALUES(2,'All Sandwiches',1224297);
INSERT INTO menus VALUES(3,'Signature Wraps',1224297);
INSERT INTO menus VALUES(4,'Fresh Fit Choices™',1224297);
INSERT INTO menus VALUES(5,'Breakfast',1224297);
INSERT INTO menus VALUES(6,'Salads',1224297);
INSERT INTO menus VALUES(7,'Fresh Fit for Kids®',1224297);
INSERT INTO menus VALUES(8,'Sides',1224297);
INSERT INTO menus VALUES(9,'Drinks',1224297);
INSERT INTO menus VALUES(1,'Appetizers',1423922);
INSERT INTO menus VALUES(2,'BJ''s Flatbreads',1423922);
INSERT INTO menus VALUES(3,'Chips and Dips',1423922);
INSERT INTO menus VALUES(4,'Starter Salads',1423922);
INSERT INTO menus VALUES(5,'BJ''s Premium Wings',1423922);
INSERT INTO menus VALUES(6,'Snacks and Small Bites',1423922);
INSERT INTO menus VALUES(7,'Specialty Entrees',1423922);
INSERT INTO menus VALUES(8,'Slow-Roasted Favorites',1423922);
INSERT INTO menus VALUES(9,'Enlightened Superfood Entrees',1423922);
INSERT INTO menus VALUES(10,'Enlightened Salads',1423922);
INSERT INTO menus VALUES(11,'BJ''s Garden Fresh Entree Salads',1423922);
INSERT INTO menus VALUES(12,'Signature Soups & Chili',1423922);
INSERT INTO menus VALUES(13,'Pasta Favorites',1423922);
INSERT INTO menus VALUES(14,'BJ''s Deep Dish Pizza',1423922);
INSERT INTO menus VALUES(15,'BJ''s Tavern Cut Pizzas',1423922);
INSERT INTO menus VALUES(16,'Gluten-Free Menu',1423922);
INSERT INTO menus VALUES(17,'BJ''s Loaded Burgers',1423922);
INSERT INTO menus VALUES(18,'Enlightened Burgers',1423922);
INSERT INTO menus VALUES(19,'Chicken Sandwiches',1423922);
INSERT INTO menus VALUES(20,'Sandwiches',1423922);
INSERT INTO menus VALUES(21,'Tacos',1423922);
INSERT INTO menus VALUES(22,'World-Famous Pizookies®',1423922);
INSERT INTO menus VALUES(23,'Fresh Iced Teas and Lemonades',1423922);
INSERT INTO menus VALUES(24,'BJ''s Handcrafted Draft Sodas',1423922);
INSERT INTO menus VALUES(25,'Specialty Coffee',1423922);
INSERT INTO menus VALUES(26,'Fountain Drinks',1423922);
INSERT INTO menus VALUES(27,'Kids',1423922);
INSERT INTO menus VALUES(1,'Steakburgers',2017446);
INSERT INTO menus VALUES(2,'Sandwiches',2017446);
INSERT INTO menus VALUES(3,'Sides',2017446);
INSERT INTO menus VALUES(4,'Classic Milkshakes',2017446);
INSERT INTO menus VALUES(5,'Specialty Milkshakes',2017446);
INSERT INTO menus VALUES(6,'Original Chili',2017446);
INSERT INTO menus VALUES(7,'Drinks',2017446);
INSERT INTO menus VALUES(1,'Appetizers',2082218);
INSERT INTO menus VALUES(2,'Dim Sum',2082218);
INSERT INTO menus VALUES(3,'Chicken',2082218);
INSERT INTO menus VALUES(4,'Beef',2082218);
INSERT INTO menus VALUES(5,'Seafood',2082218);
INSERT INTO menus VALUES(6,'Vegetarian',2082218);
INSERT INTO menus VALUES(7,'Noodles & Rice',2082218);
INSERT INTO menus VALUES(8,'Gluten Free',2082218);
INSERT INTO menus VALUES(9,'Kid''s Menu',2082218);
INSERT INTO menus VALUES(10,'Dessert',2082218);
INSERT INTO menus VALUES(11,'Beverage',2082218);
INSERT INTO menus VALUES(1,'Limited Time Special',2053768);
INSERT INTO menus VALUES(2,'From The Kitchen',2053768);
INSERT INTO menus VALUES(3,'From The Kitchen- Signature Entree Bowls',2053768);
INSERT INTO menus VALUES(4,'Kids Bento Box',2053768);
INSERT INTO menus VALUES(5,'Sides',2053768);
INSERT INTO menus VALUES(6,'Signature Poke Bowls',2053768);
INSERT INTO menus VALUES(7,'Build - A - Poke',2053768);
INSERT INTO menus VALUES(8,'Sushi Combo Box',2053768);
INSERT INTO menus VALUES(9,'Classic Rolls',2053768);
INSERT INTO menus VALUES(10,'Signature Rolls',2053768);
INSERT INTO menus VALUES(11,'Boba Tea',2053768);
INSERT INTO menus VALUES(1,'Appetizers and Bar Snacks',1703714);
INSERT INTO menus VALUES(2,'Salads',1703714);
INSERT INTO menus VALUES(3,'Steak & Ribs',1703714);
INSERT INTO menus VALUES(4,'Chicken',1703714);
INSERT INTO menus VALUES(5,'Pasta',1703714);
INSERT INTO menus VALUES(6,'Seafood',1703714);
INSERT INTO menus VALUES(7,'Burgers',1703714);
INSERT INTO menus VALUES(8,'Sandwiches',1703714);
INSERT INTO menus VALUES(9,'Signature Sides',1703714);
INSERT INTO menus VALUES(10,'Kid Meals',1703714);
INSERT INTO menus VALUES(11,'Desserts',1703714);
INSERT INTO menus VALUES(12,'Beverages',1703714);
INSERT INTO menus VALUES(1,'Hoagies & Sandwiches',1975327);
INSERT INTO menus VALUES(2,'Quesadillas',1975327);
INSERT INTO menus VALUES(3,'Chicken',1975327);
INSERT INTO menus VALUES(4,'Burritos',1975327);
INSERT INTO menus VALUES(5,'Soups & Sides',1975327);
INSERT INTO menus VALUES(6,'Custom Salads',1975327);
INSERT INTO menus VALUES(7,'New & Improved Bowls',1975327);
INSERT INTO menus VALUES(8,'Stacked Sandwiches',1975327);
INSERT INTO menus VALUES(9,'Breakfast - Burritos',1975327);
INSERT INTO menus VALUES(10,'Breakfast - Hoagies',1975327);
INSERT INTO menus VALUES(11,'Breakfast - Bowls',1975327);
INSERT INTO menus VALUES(12,'Breakfast - Toasted Bagels & More',1975327);
INSERT INTO menus VALUES(13,'Breakfast - Try Our Favorites',1975327);
INSERT INTO menus VALUES(14,'Breakfast - Loose Rolls & Bagels',1975327);
INSERT INTO menus VALUES(15,'Custom Hot Coffee',1975327);
INSERT INTO menus VALUES(16,'Hot Beverages',1975327);
INSERT INTO menus VALUES(17,'Iced Beverages',1975327);
INSERT INTO menus VALUES(18,'Frozen Beverages',1975327);
INSERT INTO menus VALUES(19,'Milkshakes & Flurricanes',1975327);
INSERT INTO menus VALUES(20,'Kids Meal Favorites',1975327);
INSERT INTO menus VALUES(21,'Warm Cookie',1975327);
INSERT INTO menus VALUES(22,'Bakery',1975327);
INSERT INTO menus VALUES(23,'Fruit & Refrigerated Snacks',1975327);
INSERT INTO menus VALUES(24,'Rolls, Wraps, & Salads',1975327);
INSERT INTO menus VALUES(25,'Coffee Drinks',1975327);
INSERT INTO menus VALUES(26,'Energy Drinks',1975327);
INSERT INTO menus VALUES(27,'Fruit Juice',1975327);
INSERT INTO menus VALUES(28,'Meal Replacement',1975327);
INSERT INTO menus VALUES(29,'Milk',1975327);
INSERT INTO menus VALUES(30,'Soda',1975327);
INSERT INTO menus VALUES(31,'Sports Drinks & Water',1975327);
INSERT INTO menus VALUES(32,'Teas & Fruit Drinks',1975327);
INSERT INTO menus VALUES(33,'Potato Chips & Salty Snacks (small bag)',1975327);
INSERT INTO menus VALUES(34,'Candy',1975327);
INSERT INTO menus VALUES(35,'Cookies & Crackers',1975327);
INSERT INTO menus VALUES(36,'Gum & Mints',1975327);
INSERT INTO menus VALUES(37,'Ice Cream',1975327);
INSERT INTO menus VALUES(38,'Meat',1975327);
INSERT INTO menus VALUES(39,'Nutritional & Snack Bars',1975327);
INSERT INTO menus VALUES(40,'Nuts & Seeds',1975327);
INSERT INTO menus VALUES(41,'Packaged Cake',1975327);
INSERT INTO menus VALUES(42,'Grocery, Health & Beauty, Ice',1975327);
INSERT INTO menus VALUES(1,'Award Winning Wings',2101567);
INSERT INTO menus VALUES(2,'Gatorizors',2101567);
INSERT INTO menus VALUES(3,'Tacos & Quesadillas',2101567);
INSERT INTO menus VALUES(4,'Salads and More',2101567);
INSERT INTO menus VALUES(5,'Sandwiches & Wraps',2101567);
INSERT INTO menus VALUES(6,'Burgers',2101567);
INSERT INTO menus VALUES(7,'Ribs',2101567);
INSERT INTO menus VALUES(8,'Rib Combos',2101567);
INSERT INTO menus VALUES(9,'Entrées',2101567);
INSERT INTO menus VALUES(10,'Salads (Gluten Free Menu)',2101567);
INSERT INTO menus VALUES(11,'Sandwiches & Burgers (Gluten-Free Menu)',2101567);
INSERT INTO menus VALUES(12,'Entrées (Gluten-Free Menu)',2101567);
INSERT INTO menus VALUES(13,'Kid''s Menu',2101567);
INSERT INTO menus VALUES(14,'Sauces & Sides',2101567);
INSERT INTO menus VALUES(15,'LTO INSERT',2101567);
INSERT INTO menus VALUES(1,'Five Guys Favorites',2058923);
INSERT INTO menus VALUES(2,'Burgers',2058923);
INSERT INTO menus VALUES(3,'Dogs',2058923);
INSERT INTO menus VALUES(4,'Sandwiches',2058923);
INSERT INTO menus VALUES(5,'Fries',2058923);
INSERT INTO menus VALUES(6,'Drinks',2058923);
INSERT INTO menus VALUES(7,'Milkshake',2058923);
INSERT INTO menus VALUES(1,'Choose Your Favorite',1167988);
INSERT INTO menus VALUES(2,'Add a Side',1167988);
INSERT INTO menus VALUES(3,'Go for More',1167988);
INSERT INTO menus VALUES(4,'Grab a Drink',1167988);
INSERT INTO menus VALUES(5,'For the Kids',1167988);
INSERT INTO menus VALUES(1,'Salads and Soups',1753593);
INSERT INTO menus VALUES(2,'Wraps',1753593);
INSERT INTO menus VALUES(3,'Dinner Platters',1753593);
INSERT INTO menus VALUES(4,'Pies',1753593);
INSERT INTO menus VALUES(5,'Containers to Go',1753593);
INSERT INTO menus VALUES(6,'Sides',1753593);
INSERT INTO menus VALUES(7,'Desserts',1753593);
INSERT INTO menus VALUES(8,'Smoothies',1753593);
INSERT INTO menus VALUES(9,'Drinks',1753593);
INSERT INTO menus VALUES(1,'Ice Cream',1784112);
INSERT INTO menus VALUES(2,'Baked Calzone',1784112);
INSERT INTO menus VALUES(3,'Cannoli Bar',1784112);
INSERT INTO menus VALUES(4,'Drinks',1784112);
INSERT INTO menus VALUES(5,'Side',1784112);
INSERT INTO menus VALUES(6,'Garlic Knots',1784112);
INSERT INTO menus VALUES(7,'Create Your Own Pizza',1784112);
INSERT INTO menus VALUES(8,'Gourmet Slices',1784112);
INSERT INTO menus VALUES(9,'16" Gourmet Pizzas',1784112);
INSERT INTO menus VALUES(10,'Stromboli',1784112);
INSERT INTO menus VALUES(1,'Bundles',1967591);
INSERT INTO menus VALUES(2,'Appetizers',1967591);
INSERT INTO menus VALUES(3,'Sides',1967591);
INSERT INTO menus VALUES(4,'Hand-Spun Wings',1967591);
INSERT INTO menus VALUES(5,'Burgers',1967591);
INSERT INTO menus VALUES(6,'Wraps',1967591);
INSERT INTO menus VALUES(7,'Sandwiches',1967591);
INSERT INTO menus VALUES(8,'Tenders & Mac',1967591);
INSERT INTO menus VALUES(9,'Greens',1967591);
INSERT INTO menus VALUES(10,'Kids'' Meals',1967591);
INSERT INTO menus VALUES(11,'Desserts',1967591);
INSERT INTO menus VALUES(12,'Side of Sauce & Seasonings',1967591);
INSERT INTO menus VALUES(13,'Add-Ons',1967591);
INSERT INTO menus VALUES(14,'Drinks',1967591);
INSERT INTO menus VALUES(1,'Appetizers',2007859);
INSERT INTO menus VALUES(2,'Chicken Wings',2007859);
INSERT INTO menus VALUES(3,'Build Your Own Burger',2007859);
INSERT INTO menus VALUES(4,'Greek Platters',2007859);
INSERT INTO menus VALUES(5,'Pita Sandwiches',2007859);
INSERT INTO menus VALUES(6,'From Our Grill',2007859);
INSERT INTO menus VALUES(7,'Deli Sandwiches',2007859);
INSERT INTO menus VALUES(8,'Salads',2007859);
INSERT INTO menus VALUES(9,'Kids Menu',2007859);
INSERT INTO menus VALUES(10,'Sides',2007859);
INSERT INTO menus VALUES(11,'Drinks',2007859);
INSERT INTO menus VALUES(1,'Top Tasty Menu Items',2121970);
INSERT INTO menus VALUES(2,'Big Tasty Burgers',2121970);
INSERT INTO menus VALUES(3,'Meal Deal',2121970);
INSERT INTO menus VALUES(4,'Others',2121970);
INSERT INTO menus VALUES(5,'Sides',2121970);
INSERT INTO menus VALUES(6,'Drinks',2121970);
INSERT INTO menus VALUES(7,'Beer (Must Be 21 to Purchase)',2121970);
INSERT INTO menus VALUES(8,'Dessert',2121970);
INSERT INTO menus VALUES(9,'Kids Meal',2121970);
INSERT INTO menus VALUES(1,'Brownies',1983326);
INSERT INTO menus VALUES(2,'Drinks',1983326);
INSERT INTO menus VALUES(1,'Top Tasty Menu Items',2123400);
INSERT INTO menus VALUES(2,'Big Tasty Burgers',2123400);
INSERT INTO menus VALUES(3,'Meal Deal',2123400);
INSERT INTO menus VALUES(4,'Others',2123400);
INSERT INTO menus VALUES(5,'Sides',2123400);
INSERT INTO menus VALUES(6,'Drinks',2123400);
INSERT INTO menus VALUES(7,'Beer (Must be 21 to Purchase)',2123400);
INSERT INTO menus VALUES(8,'Dessert',2123400);
INSERT INTO menus VALUES(9,'Kids Meal',2123400);
INSERT INTO menus VALUES(1,'Combos',1435992);
INSERT INTO menus VALUES(2,'Rotisserie Chicken',1435992);
INSERT INTO menus VALUES(3,'Baby Back Ribs',1435992);
INSERT INTO menus VALUES(4,'A la Carte',1435992);
INSERT INTO menus VALUES(5,'Market Favorites',1435992);
INSERT INTO menus VALUES(6,'Market Bowls',1435992);
INSERT INTO menus VALUES(7,'Home Style Favorites',1435992);
INSERT INTO menus VALUES(8,'Family Meals',1435992);
INSERT INTO menus VALUES(9,'Market Soup',1435992);
INSERT INTO menus VALUES(10,'Salad Bowls',1435992);
INSERT INTO menus VALUES(11,'Boston Carver Sandwiches',1435992);
INSERT INTO menus VALUES(12,'Boston Carver Sandwich Combos',1435992);
INSERT INTO menus VALUES(13,'Extras',1435992);
INSERT INTO menus VALUES(14,'Kids Meal',1435992);
INSERT INTO menus VALUES(15,'Beverages',1435992);
INSERT INTO menus VALUES(16,'Desserts',1435992);
INSERT INTO menus VALUES(1,'Featured Items',1755135);
INSERT INTO menus VALUES(2,'Menu Coupons',1755135);
INSERT INTO menus VALUES(3,'Drinks',1755135);
INSERT INTO menus VALUES(4,'Salads',1755135);
INSERT INTO menus VALUES(5,'Subs',1755135);
INSERT INTO menus VALUES(6,'Main Menu',1755135);
INSERT INTO menus VALUES(7,'Baskets',1755135);
INSERT INTO menus VALUES(8,'Wings',1755135);
INSERT INTO menus VALUES(9,'Sides',1755135);
INSERT INTO menus VALUES(1,'Regular Rolls',1148280);
INSERT INTO menus VALUES(2,'Premium Rolls',1148280);
INSERT INTO menus VALUES(3,'Hot Pressed Burritos',1148280);
INSERT INTO menus VALUES(4,'Poke Bowls',1148280);
INSERT INTO menus VALUES(5,'Appetizers',1148280);
INSERT INTO menus VALUES(6,'Sauces',1148280);
INSERT INTO menus VALUES(7,'Beverages',1148280);
INSERT INTO menus VALUES(1,'Combos',1683775);
INSERT INTO menus VALUES(2,'Feed The Fam Deals',1683775);
INSERT INTO menus VALUES(3,'Hamburgers',1683775);
INSERT INTO menus VALUES(4,'Chicken Sandwiches & Nuggets',1683775);
INSERT INTO menus VALUES(5,'Fresh-Made Salads',1683775);
INSERT INTO menus VALUES(6,'Fries & Sides',1683775);
INSERT INTO menus VALUES(7,'Beverages',1683775);
INSERT INTO menus VALUES(8,'Frosty',1683775);
INSERT INTO menus VALUES(9,'Bakery',1683775);
INSERT INTO menus VALUES(10,'Wendy''s Kids'' Meal®',1683775);
INSERT INTO menus VALUES(11,'Biggie Deals',1683775);
INSERT INTO menus VALUES(12,'Meal Deals',1683775);
INSERT INTO menus VALUES(1,'Boneless Wings',1259343);
INSERT INTO menus VALUES(2,'Hooters Original Style Wings',1259343);
INSERT INTO menus VALUES(3,'Smoked Wings',1259343);
INSERT INTO menus VALUES(4,'Roasted Wings',1259343);
INSERT INTO menus VALUES(5,'Unreal Wings',1259343);
INSERT INTO menus VALUES(6,'Naked Wings',1259343);
INSERT INTO menus VALUES(7,'Daytona Wings',1259343);
INSERT INTO menus VALUES(8,'Bacon Wrapped Wings',1259343);
INSERT INTO menus VALUES(9,'Teasers',1259343);
INSERT INTO menus VALUES(10,'Burgers',1259343);
INSERT INTO menus VALUES(11,'Sandwiches & Tacos',1259343);
INSERT INTO menus VALUES(12,'Seafood',1259343);
INSERT INTO menus VALUES(13,'Salads',1259343);
INSERT INTO menus VALUES(14,'Sides',1259343);
INSERT INTO menus VALUES(15,'Desserts',1259343);
INSERT INTO menus VALUES(16,'Kids Menu',1259343);
INSERT INTO menus VALUES(17,'Drinks',1259343);
INSERT INTO menus VALUES(18,'Wise Choice',1259343);
INSERT INTO menus VALUES(19,'Hootie''s Burger Bar',1259343);
COMMIT;
