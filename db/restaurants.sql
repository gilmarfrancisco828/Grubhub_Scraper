PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE restaurants
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
INSERT INTO restaurants VALUES(1337976,'3-in-1 Deli','/3-in-1-deli-930-e-florence-blvd-casa-grande/1337976','930 E Florence Blvd ; Casa Grande, AZ 85122','/lmrpln7frsqs7ydzutgu','(520) 836-9088',NULL,NULL,NULL,NULL,NULL,'az-casa_grande',NULL);
INSERT INTO restaurants VALUES(1681413,'Wendy''s','/wendys-1127-e-florence-blvd-casa-grande/1681413','1127 E Florence Blvd ; Casa Grande, AZ 85122','/un8zbyvnajrk67741xfy','1127 E Florence Blvd',93,96,90,1,59,'az-casa_grande','wendys');
INSERT INTO restaurants VALUES(546642,'Mi Apa Latin Cafe','/mi-apa-latin-cafe-15634-nw-us-highway-441-alachua/546642','15634 NW US Highway 441 ; Alachua, FL 32615','/xqi8ajfwrgy3ftdpjgfv','(386) 217-7355',NULL,NULL,NULL,2,11,'fl-alachua',NULL);
INSERT INTO restaurants VALUES(1089533,'Liquor Factory & Deli','/liquor-factory--deli-930-e-florence-blvd-casa-grande/1089533','930 E Florence Blvd ; Casa Grande, AZ 85122','/bpmbil1kecxb7abgsews','(520) 836-9088',100,100,100,2,6,'az-casa_grande',NULL);
INSERT INTO restaurants VALUES(2250697,'Arby''s','/arbys-1220-e-florence-blvd-casa-grande/2250697','1220 E Florence Blvd ; Casa Grande, AZ 85122','/tkqo4vlw4eqifqbdtnk7','1220 E Florence Blvd',88,100,88,1,8,'az-casa_grande','arbys');
INSERT INTO restaurants VALUES(1532305,'Copper Monkey West','/copper-monkey-west-14209-w-newberry-rd-newberry/1532305','14209 W Newberry Rd ; Newberry, FL 32669','/ojwjlertp8qbfuyruvux','(352) 363-6338',91,95,88,2,196,'fl-newberry',NULL);
INSERT INTO restaurants VALUES(2208212,'Dunkin''','/dunkin-1306-e-florence-blvd-casa-grande/2208212','1306 E Florence Blvd ; Casa Grande, AZ 85122','/vxulyrkferpe6nwlggee','1306 E Florence Blvd',NULL,NULL,NULL,1,7,'az-casa_grande','dunkin');
INSERT INTO restaurants VALUES(2054070,'Bento Asian Kitchen + Sushi','/bento-asian-kitchen--sushi-150-nw-13th-st-ste-60-gainesville/2054070','150 NW 13th St Ste 60 ; Gainesville, FL 32601','/p87dq2hxqwmveoscb6fm','(352) 240-6428',90,89,91,1,212,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(2046111,'Burger King','/burger-king-5310-n-sunland-gin-rd-casa-grande/2046111','5310 N Sunland Gin Rd ; Casa Grande, AZ 85194','/uy4abxa8b5hubp59qod4','(877) 585-1085',NULL,NULL,NULL,1,7,'az-casa_grande','burger_king');
INSERT INTO restaurants VALUES(2132375,'Carl''s Jr','/carls-jr-3090-n-toltec-rd-eloy/2132375','3090 N Toltec Rd ; Eloy, AZ 85131','/kk39m1fvucthvhbjze5c','(520) 466-9385',NULL,NULL,NULL,1,NULL,'az-eloy','carls_jr');
INSERT INTO restaurants VALUES(2377688,'Burger King','/burger-king-20-nw-16th-ave-gainesville/2377688','20 NW 16th Ave ; Gainesville, FL 32601','/uy4abxa8b5hubp59qod4','(877) 585-1085',NULL,NULL,NULL,1,NULL,'fl-gainesville','burger_king');
INSERT INTO restaurants VALUES(2354001,'Rotisserie Roast','/rotisserie-roast-6483-w-newberry-rd-gainesville/2354001','6483 W Newberry Rd ; Gainesville, FL 32605','/mms8o3ijvidse2qcursc','(352) 331-1519',NULL,NULL,NULL,2,NULL,'fl-gainesville','rotisserie_roast');
INSERT INTO restaurants VALUES(2186278,'PDQ','/pdq-3403-w-university-ave-gainesville/2186278','3403 W University Ave ; Gainesville, FL 32607','/ebcunhicw8rjv3dijhuc','(352) 353-0100',93,90,74,2,27,'fl-gainesville','pdq');
INSERT INTO restaurants VALUES(2136338,'Panda Express','/panda-express-710-nw-60th-st-gainesville/2136338','710 NW 60th St ; Gainesville, FL 32607','/lsx2d66qmidixfkmaqzj','(352) 333-2776',88,92,88,1,33,'fl-gainesville','panda_express');
INSERT INTO restaurants VALUES(1292311,'Harkins Theatres','/harkins-theatres-1341-n-promenade-pkwy-casa-grande/1292311','1341 N Promenade Pkwy ; Casa Grande, AZ 85194','/qcl5tznp4ak6ieqdxwfm','(520) 836-9901',NULL,NULL,NULL,NULL,NULL,'az-casa_grande','harkins_theatres');
INSERT INTO restaurants VALUES(1455062,'If It Is','/if-it-is-104-s-main-st-gainesville/1455062','104 S Main St ; Gainesville, FL 32601','/n2wm7kdagqksd8g6j8xp','(352) 792-6877',93,94,96,3,155,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(2133716,'Dunkin''','/dunkin-3710-nw-13th-st-gainesville/2133716','3710 NW 13th St ; Gainesville, FL 32609','/vxulyrkferpe6nwlggee','3710 NW 13th St',58,86,64,1,14,'fl-gainesville','dunkin');
INSERT INTO restaurants VALUES(2251431,'Hootie''s Bait & Tackle','/hooties-bait--tackle-3105-sw-34th-st-gainesville/2251431','3105 SW 34th St ; Gainesville, FL 32608','/dzhocuurvnf6fen5e8sv','(352) 519-0170',NULL,NULL,NULL,2,NULL,'fl-gainesville','hooties_bait__tackle');
INSERT INTO restaurants VALUES(2058830,'Popeyes','/popeyes-1412-n-main-st-gainesville/2058830','1412 N Main St ; Gainesville, FL 32601','/dosjxkhz8c8jd9vnrmhu','1412 N Main St',81,80,67,2,239,'fl-gainesville','popeyes_louisiana_kitchen');
INSERT INTO restaurants VALUES(2126334,'Chipotle','/chipotle-1432-w-university-ave-gainesville/2126334','1432 W University Ave ; Gainesville, FL 32603','/pcizrfonnwrelygiynw2','1432 W University Ave',94,83,89,2,19,'fl-gainesville','chipotle_mexican_grill');
INSERT INTO restaurants VALUES(1163889,'Los Pollos Rotisserie & Grill','/los-pollos-rotisserie--grill-2410-nw-43rd-st-gainesville/1163889','2410 NW 43rd St ; Gainesville, FL 32606','/zfmz4pwax9mungqpxf8b','(352) 225-3231',95,96,94,2,106,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(2007638,'Checker''s','/checkers-2826-nw-13th-st-gainesville/2007638','2826 NW 13th St ; Gainesville, FL 32609','/rghsuynmrjzax49wajsk','(352) 376-4498',NULL,NULL,NULL,1,NULL,'fl-gainesville','checkers');
INSERT INTO restaurants VALUES(2302887,'Jersey Mike''s Subs','/jersey-mikes-subs-3720-nw-13th-st-suite-7-b-gainesville/2302887','3720 NW 13th St Suite 7-B ; Gainesville, FL 32609','/nm6940gtajnzz0imgd0u','3720 NW 13th St Suite 7-B',78,100,80,1,10,'fl-gainesville','jersey_mikes');
INSERT INTO restaurants VALUES(1950426,'Big Lou''s NY Style Pizzeria','/big-lous-ny-style-pizzeria-5-se-2nd-ave-gainesville/1950426','5 SE 2nd Ave ; Gainesville, FL 32601','/pbjrnreqln1fmdhpx2oq','(352) 335-7123',92,90,94,3,171,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(1750104,'Sonic','/sonic-2162-nw-39th-ave-gainesville/1750104','2162 NW 39TH AVE ; Gainesville, FL 32605','/qbmmxywwahhk82fvshwt','(352) 264-7675',78,76,71,1,88,'fl-gainesville','sonic_drive-in');
INSERT INTO restaurants VALUES(1082319,'KFC','/kfc-3750-nw-13th-st-gainesville/1082319','3750 NW 13th St ; Gainesville, FL 32609','/jtaljmqt7kjim6vt5hiq','3750 NW 13th St',92,83,84,2,99,'fl-gainesville','kfc');
INSERT INTO restaurants VALUES(2126285,'Perkins Restaurant & Bakery','--bakery-6825-w-newberry-rd-gainesville/2126285','6825 W Newberry Rd ; Gainesville, FL 32605','/ylpj2l6gt8iygszmwzb8','(352) 331-0388',88,76,68,1,23,'fl-gainesville','perkins_restaurant__bakery');
INSERT INTO restaurants VALUES(2035397,'Moe''s Southwest Grill','/moes-southwest-grill-7770-w-newberry-rd-gainesville/2035397','7770 W Newberry Rd ; Gainesville, FL 32606','/lx9ykoat29arrx7elyrc','(352) 332-7606',79,83,81,1,34,'fl-gainesville','moes_southwest_grill');
INSERT INTO restaurants VALUES(1124783,'PokeBowl Station','/pokebowl-station-1800-w-university-ave-gainesville/1124783','1800 W University Ave ; Gainesville, FL 32603','/wd7r6oblxp16xmkqq3ch','(352) 310-3792',97,96,95,1,94,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(1391324,'Tijuana Flats','/tijuana-flats-1720-w-university-ave-gainesville/1391324','1720 W University Ave ; Gainesville, FL 32603','/dmjoymceormata5sip66','(352) 692-3093',88,87,87,2,215,'fl-gainesville','tijuana_flats');
INSERT INTO restaurants VALUES(1224297,'SUBWAY®','/subway-203-ne-39th-ave-gainesville/1224297','203 NE 39th Ave ; Gainesville, FL 32609','/aqrepgbnapm7fcqeslqi','203 NE 39th Ave',84,85,76,1,61,'fl-gainesville','subway');
INSERT INTO restaurants VALUES(1423922,'BJ''s Restaurant & Brewhouse','--brewhouse-6611-w-newberry-rd-gainesville/1423922','6611 W Newberry Rd ; Gainesville, FL 32605','/ytcaquxb5v2pnpzgnu2w','(352) 331-8070',85,82,86,3,266,'fl-gainesville','bjs_restaurant__brewhouse');
INSERT INTO restaurants VALUES(2017446,'Steak ''n Shake','/steak-n-shake-1610-sw-13th-st-gainesville/2017446','1610 SW 13th St ; Gainesville, FL 32608','/yulspncpbiek3i58hxld','1610 SW 13th St',68,63,67,1,30,'fl-gainesville','steak_n_shake');
INSERT INTO restaurants VALUES(2082218,'P.F. Chang''s','/pf-changs-pf-changs-3597-sw-32nd-ct-suite-10-gainesville/2082218','P.F. Chang''s 3597 SW 32nd Ct Suite 10 ; Gainesville, FL 32608','/xovhyd4fwoi6ykktxdvb','(352) 570-7785',92,96,94,3,88,'fl-gainesville','pf_changs');
INSERT INTO restaurants VALUES(2053768,'Bento Asian Kitchen + Sushi','/bento-asian-kitchen--sushi-3832-w-newberry-rd-gainesville/2053768','3832 W Newberry Rd ; Gainesville, FL 32607','/p87dq2hxqwmveoscb6fm','(352) 377-8686',96,100,87,2,114,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(1703714,'Applebee’s® Grill & Bar','/applebees-grill--bar-7441-w-newberry-rd-gainesville/1703714','7441 W Newberry Rd ; Gainesville, FL 32605','/boxt1slwar1s6zxtqihj','(352) 332-8877',69,69,70,2,52,'fl-gainesville','applebees');
INSERT INTO restaurants VALUES(1975327,'Wawa','/wawa-2305-nw-13st-st-gainesville/1975327','2305 NW 13st St ; Gainesville, FL 32609','/cm5goiunfr4cgegpshxo','2305 NW 13st St',NULL,NULL,NULL,1,5,'fl-gainesville','wawa');
INSERT INTO restaurants VALUES(2101567,'Gator''s Dockside','/gators-dockside-3842-w-newberry-rd-ste-1a-gainesville/2101567','3842 W Newberry Rd Ste 1A ; Gainesville, FL 32607','/u6nhrw6tbpki5jzr8rj5','(352) 338-4445',90,92,85,3,63,'fl-gainesville','gators_dockside');
INSERT INTO restaurants VALUES(2058923,'Five Guys','/five-guys-3310b-sw-35th-blvd-gainesville/2058923','3310B SW 35th Blvd ; Gainesville, FL 32608','/zn0xud9gxcfug4yb4m4p','3310B SW 35th Blvd',87,88,90,2,52,'fl-gainesville','five_guys');
INSERT INTO restaurants VALUES(1167988,'Taco Del Mar','/taco-del-mar-8181-nw-39th-ave-gainesville/1167988','8181 NW 39th Ave ; Gainesville, FL 32606','/zgliiejjectcg2j0tg6f','(352) 872-5129',91,92,94,1,68,'fl-gainesville','taco_del_mar');
INSERT INTO restaurants VALUES(1753593,'Gyro Plus','/gyro-plus-2409-sw-13th-st-gainesville/1753593','2409 SW 13th St ; Gainesville, FL 32608','/m23r37wcv43dvs24zh5z','(352) 336-5323',97,88,95,2,128,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(1784112,'Chucho''s Pizza','/chuchos-pizza-6419-w-newberry-rd-gainesville/1784112','6419 W Newberry Rd ; Gainesville, FL 32605','/qnmbjys816bfnjkd3pt0','(352) 792-6227',NULL,NULL,NULL,2,3,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(1967591,'Buffalo Wild Wings','/buffalo-wild-wings-6401-w-newberry-rd-gainesville/1967591','6401 W Newberry Rd ; Gainesville, FL 32607','/n1yln7xbloi7fvdtakyv','6401 W Newberry Rd',81,81,81,2,57,'fl-gainesville','buffalo_wild_wings');
INSERT INTO restaurants VALUES(2007859,'Sandy''s Place','/sandys-place-5001-nw-34th-blvd-gainesville/2007859','5001 NW 34th Blvd ; Gainesville, FL 32605','/mgsxrageqqfuro7p7lfi','(352) 367-9993',97,94,97,2,66,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(2121970,'Relish - Big Tasty Burgers! (W. University Ave)','/relish---big-tasty-burgers-w-university-ave-1702-w-university-ave-ste-d-gainesville/2121970','1702 W. University Ave Ste D ; Gainesville, FL 32603','/hvpjbydvgt7zkpczlyve','(352) 692-4400',82,43,78,1,18,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(1983326,'Brownie Guy Gourmet Brownies','/brownie-guy-gourmet-brownies-602-nw-75th-st-gainesville/1983326','602 NW 75th St ; Gainesville, FL 32607','/rhfumt2miuvvgbpsumvm','(352) 213-9048',98,89,98,1,62,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(2123400,'Relish - Big Tasty Burgers! (W. Newberry Rd)','/relish---big-tasty-burgers-w-newberry-rd-3822-w-newberry-rd-ste-d-gainesville/2123400','3822 W. Newberry Rd Ste D ; Gainesville, FL 32607','/hvpjbydvgt7zkpczlyve','(352) 872-5880',92,91,87,1,37,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(1435992,'Boston Market','/boston-market-6483-w-newberry-rd-gainesville/1435992','6483 W Newberry Rd ; Gainesville, FL 32605','/b6ryxi5zjujbjvcnah0y','(352) 331-1519',85,85,79,2,122,'fl-gainesville','boston_market');
INSERT INTO restaurants VALUES(1755135,'Tunis seafood wings and subs','/tunis-seafood-wings-and-subs-1818-ne-waldo-rd-gainesville/1755135','1818 NE Waldo Rd ; Gainesville, FL 32609','/ffxkeau7lpflo5o4innr','(352) 378-0343',73,85,65,1,61,'fl-gainesville','tunis_seafood_wings__subs');
INSERT INTO restaurants VALUES(1148280,'Sushi-2-Go','/sushi-2-go-1412-w-university-ave-gainesville/1148280','1412 W University Ave ; Gainesville, FL 32603','/cqh8fiormtzhcstw5tp2','(352) 338-1068',91,82,95,2,247,'fl-gainesville',NULL);
INSERT INTO restaurants VALUES(1683775,'Wendy''s','/wendys-9225-nw-39th-ave-gainesville/1683775','9225 NW 39th Ave ; Gainesville, FL 32606','/un8zbyvnajrk67741xfy','9225 NW 39th Ave',77,90,65,1,30,'fl-gainesville','wendys');
INSERT INTO restaurants VALUES(1259343,'Hooters','/hooters-3105-sw-34th-st-gainesville/1259343','3105 SW 34th St ; Gainesville, FL 32608','/zpqo117ykmaqq0q5nuwo','(352) 519-0170',78,82,79,2,122,'fl-gainesville','hooters');
COMMIT;
