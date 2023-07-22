USE travel_lines;
###insersion de tabla clientes##########################
INSERT INTO table_client VALUES
(1,'Brion','Siward',650954217,'bsiward0@wsj.com','+30 216 299 5636'),
(2,'Stillmann','Beales',770650153,'sbeales1@mit.edu','+57 258 520 1072'),
(3,'Winna','Segar',846955620,'wsegar2@aboutads.info','+51 607 993 0023'),
(4,'Rubia','Bowyer',297747849,'rbowyer3@rediff.com','+51 379 109 0222'),
(5,'Trescha','Gilardone',69314896,'tgilardone4@jugem.jp','+7 659 648 9497'),
(6,'Rozalie','Tallquist',272593173,'rtallquist5@businesswire.com','+7 423 305 0460'),
(7,'Cynthia','Giercke',768450608,'cgiercke6@simplemachines.org','+62 886 708 8576'),
(8,'Terrye','Monnelly',4853773,'tmonnelly7@ca.gov','+84 841 215 8176'),
(9,'Sergeant','Plumridege',60371061,'splumridege8@ihg.com','+33 580 143 3722'),
(10,'Lefty','Whyman',166401857,'lwhyman9@unesco.org','+62 810 726 8940'),
(11,'Salmon','Spalton',495104380,'sspaltona@epa.gov','+62 233 425 1295'),
(12,'Ivory','Kittoe',618852761,'ikittoeb@bizjournals.com','+977 392 657 9002'),
(13,'Burke','Tewkesberrie',110189575,'btewkesberriec@hao123.com',NULL),
(14,'Suzie','Keeting',396136110,'skeetingd@last.fm','+27 221 166 4755'),
(15,'Mair','Gummory',137906493,'mgummorye@unicef.org','+55 943 114 0676'),
(16,'Alard','Blakeden',912386089,'ablakedenf@free.fr','+64 406 815 7389'),
(17,'Clay','Simione',8105073,NULL,'+351 257 383 2226'),
(18,'Elroy','Ewens',609177124,'eewensh@reverbnation.com','+62 419 486 9254'),
(19,'Amery','Londer',849127464,'alonderi@topsy.com','+977 439 622 5989'),
(20,'Dory','Craighead',417632358,'dcraigheadj@wordpress.org','+86 323 180 7185'),
(21,'Maudie','Langmaid',314370821,'mlangmaidk@github.com','+84 500 192 3849'),
(22,'Alana','Chidlow',21203588,'achidlowl@wisc.edu','+236 810 459 1352'),
(23,'Stoddard','Gilyott',727244010,'sgilyottm@purevolume.com','+7 863 385 4605'),
(24,'Tamara','Baroch',857229791,'tbarochn@desdev.cn',NULL),
(25,'Rodie','Justham',648893242,'rjusthamo@mayoclinic.com','+1 901 428 7104'),
(26,'Annmarie','Outibridge',453169231,'aoutibridgep@plala.or.jp','+48 106 137 9905'),
(27,'Nellie','Wilderspoon',32561768,'nwilderspoonq@naver.com','+351 624 489 7600'),
(28,'Carita','Epperson',707448364,'ceppersonr@ucoz.ru','+86 519 289 6125'),
(29,'Randi','Carruth',38292785,'rcarruths@newyorker.com','+57 656 507 0566'),
(30,'Don','Hallowes',554941632,'dhallowest@yellowpages.com','+351 820 388 1949'),
(31,'Sigvard','Redgrave',609682364,'sredgraveu@forbes.com','+351 548 199 9182'),
(32,'Abdul','Tomsa',428713814,'atomsav@nhs.uk','+44 939 330 7882'),
(33,'Ninnetta','Foukx',685182562,NULL,'86 914 788 0427'),
(34,'Clifford','Cotton',649769215,NULL,'+359 238 524 6314'),
(35,'Murdoch','Hantusch',445975356,'mhantuschy@berkeley.edu','+86 474 372 1469'),
(36,'Marni','Hold',526914457,'mholdz@lulu.com','+62 768 825 1321'),
(37,'Andrea','Fetherston',407618534,'afetherston10@webeden.co.uk','+94 984 495 6395'),
(38,'Corri','Bellefant',690228996,'cbellefant11@ehow.com',NULL),
(39,'Jaimie','Zylberdik',625673068,'jzylberdik12@google.it','+86 175 544 5730'),
(40,'Cordula','Tinghill',324194380,'ctinghill13@foxnews.com','+62 593 535 2708'),
(41,'Laurianne','Roden',92946377,'lroden14@europa.eu','+353 875 769 9500'),
(42,'Harmon','Dyde',733441559,'hdyde15@imgur.com','+505 793 188 0283'),
(43,'Randie','Dayes',451739661,'rdayes16@artisteer.com','+351 145 220 8008'),
(44,'Shay','Whalley',798975315,'swhalley17@ning.com','+63 219 408 6585'),
(45,'Ferdie','Kybird',563942780,'fkybird18@exblog.jp','+7 976 776 6785'),
(46,'Leigha','Rue',112507791,'lrue19@virginia.edu','+86 951 383 3476'),
(47,'Pincas','Kermit',734012969,'pkermit1a@netvibes.com','+86 660 914 2241'),
(48,'Pascal','Iggalden',922168307,'piggalden1b@flavors.me','+57 646 670 4821'),
(49,'Janey','Breakwell',460541239,'jbreakwell1c@vistaprint.com','+33 886 978 4954'),
(50,'Essy','Normavell',68369166,'enormavell1d@wix.com','+54 993 389 6327');

select * from table_client;

###########################INSERSION DE TABLA DE COMIDA######################################
INSERT INTO table_food VALUES ##null values are for food included inside the hotel
(1,'lunch','Schroeder and Sons','94 Prentice Junction'),
(2,'dinner',NULL,NULL),
(3,'All Meals','Pastalavista','58939 Havey Park'),
(4,'All Meals','Lesch, Hansen and Hilll','341431 South Street'),
(5,'lunch',"Stark, Bergstrom and Brekke",'46715 Orin Circle'),
(6,'All Meals',NULL,NULL),
(7,'dinner','Kessler, Rosenbaum and Lemke','32 Basil Pass'),
(8,'lunch',"Luettgen, Walter and Moore",'839 Crownhardt Plaza'),
(9,'All Meals',"Hintz, Auer and Wilderman",'0794 Bowman Circle'),
(10,'dinner',"Konopelski, Crist and Towne",'9 Tennessee Court'),
(11,'All Meals','Krajcik-Rohan','10889 Veith Street'),
(12,'breakfast',"Hayes, Sporer and Stokes",'7 Vahlen Hill'),
(13,'All Meals','Bernier and Sons','6 Coleman Drive'),
(14,'dinner',"Romaguera, Jacobson and Stehr",'1 Forest Dale Point'),
(15,'All Meals',"Douglas, Wehner and Johnson",'39 Marcy Street'),
(16,'breakfast','Pfannerstill LLC','780 Carioca Parkway'),
(17,'All Meals','Flatley Group','186 Granby Hill'),
(18,'dinner',NULL,NULL),
(19,'lunch','McGlynn-Lakin','3696 Nobel Point'),
(20,'All Meals',"Gulgowski, Haag and Waters",'85160 Kedzie Pass'),
(21,'lunch','Heaney Group','595 Eastlawn Pass'),
(22,'All Meals','Spencer and Sons','420 Dwight Plaza'),
(23,'All Meals',"Blick, Bernhard and Zboncak",'8334 Fuller Point'),
(24,'lunch',"Bode, Hegmann and DuBuque",'3 Hovde Hill'),
(25,'lunch','Russel and Sons','784 Sherman Center'),
(26,'All Meals','Effertz-Douglas','29 Heath Drive'),
(27,'lunch','Hessel-Waelchi','29890 Knutson Way'),
(28,'All Meals',"Schoen, Swaniawski and Upton",'685 Stone Corner Alley'),
(29,'All Meals','Wolf-Little','0 Arrowood Point'),
(30,'dinner','Denesik Group','24 Lotheville Street');

Select * from table_food;

##############################Table Hotel#################
INSERT INTO table_hotel VALUES
(1,4,'Durgan and Sons',3.7,'0 Rockefeller Drive'),
(2,3,'Conroy bed',3.8,'60 Schmedeman Lane'),
(3,1,"Simonis, West IN",3.5,'9 Maple Court'),
(4,2,'Rippin-Collins',3.0,'00 Graedel Place'),
(5,3,'Larson In',2.8,'665 Sunbrook Hill'),
(6,2,'FeeneySleep',4.4,'8 Walton Alley'),
(7,3,'Lang-Sauer',3.7,'53 Glendale Parkway'),
(8,2,"Nienow, Lehner and Bode",3.9,'2 Acker Plaza'),
(9,2,'Bruen Hotel',4.5,'837 Laurel Hill'),
(10,4,'Yundt-Hoeger',3.3,'979 Corscot Hill'),
(11,4,"Bednar Vandervort",3.0,'503 Porter Street'),
(12,2,"Hilpert, Rosenbaum and Kuhlman",4.2,'736 Stuart Avenue'),
(13,3,'Romaguera-Prosacco',4.7,'48935 Kedzie Road'),
(14,2,'Smithzzz',3.7,'90103 Hudson Junction'),
(15,1,"Romaguera Hotel",3.3,'99 Johnson Court'),
(16,1,"Collins inn",4.6,'727 Laurel Center'),
(17,1,"Heaney",4.8,'6 Shoshone Trail'),
(18,3,'Beahan-Schulist',3.2,'70871 Farragut Road'),
(19,2,"Harvey bunkbed",3.2,'0 American Lane'),
(20,4,'Crist bed',3.4,'326 Center Place'),
(21,3,"Stamm in",3.0,'87616 Talmadge Point'),
(22,1,'Huel and snore',4.5,'9577 Toban Circle'),
(23,3,'Dooley in',3.3,'0902 Coolidge Road'),
(24,4,'McClure ',3.8,'01 Brentwood Circle'),
(25,3,"Gusikowski",2.9,'4 Carey Lane');

SELECT * FROM table_hotel;

#################################insersion table seller.#######################

INSERT INTO table_seller VALUES 
(1,952389113,'Tabby','Feldbrin'),
(2,901511340,'Bevan','Tuckey'),
(3,180730265,'Maynord','Flanne'),
(4,309301231,'Diane','Drewery'),
(5,611867466,'Yorgo','Manners'),
(6,899304402,'Rachel','Manger'),
(7,219922279,'Lotte','Alen'),
(8,571507614,'Xylina','Klimkiewich'),
(9,300869939,'Tressa','Karolovsky'),
(10,202311768,'Beverly','StandishBrooks'),
(11,766275018,'Hieronymus','Sturgess'),
(12,219547606,'Maurene','Enterlein'),
(13,74426400,'Gayle','Dreelan'),
(14,681004793,'Christine','Shoulder'),
(15,710606368,'Kane','Berndt');

SELECT * FROM table_seller;

##############insercion table_transport##############################################
INSERT INTO table_transport VALUES
(1,'bus','handbag',5,'easy travel'),
(2,'bus','2 bags',26,'rainbow-bridge'),
(3,'plane','1 bag',13,'CoconutAirlines'),
(4,'plane','1 bag',16,'Jirachi Airline'),
(5,'bus','2 bags',26,'TravelDoe'),
(6,'plane','1 bag',29,'KoopaAirline'),
(7,'plane','suitcase',11,'CoconutAirlines'),
(8,'bus','1 bag',19,'TravelDoe'),
(9,'plane','2 bags',20,'KoopaAirline'),
(10,'bus','handbag',12,'Rapidash'),
(11,'plane','1 bag',6,'CoconutAirline'),
(12,'bus','handbag',23,'Rapidash'),
(13,'bus','suitcase',27,'easy travel'),
(14,'plane','1 bag',29,'jirachi Airline'),
(15,'plane','2 bags',48,'KoopaAirline');

select * from table_transport;
##################################insert-travel_plan#################
INSERT INTO travel_plan VALUES
(1,'Ra’s Bayrūt','2023-10-07','Sutton','2023-12-07',500.63,'LBP',2,1,11,5,11,28),
(2,'Agriá','2023-08-28','Al Bilād','2023-11-26',4199.45,'EUR',1,3,18,8,4,40),
(3,'Borūjerd','2023-08-11','Byerazino','2023-11-10',3822.4,'IRR',2,10,24,5,1,45),
(4,'Kadujangkung','2023-11-11','Washington','2023-10-22',4913.64,'IDR',3,8,6,4,13,2),
(5,'Vaasa','2023-08-01','Raoyang','2023-09-15',2944.09,'EUR',3,7,16,16,15,49),
(6,'Weru','2023-11-18','Cassilândia','2023-12-12',3049.78,'IDR',3,12,2,15,1,16),
(7,'Saravia','2023-09-16','Kayes','2023-08-02',444.05,'PHP',2,3,11,13,6,39),
(8,'Roissy Charles-de-Gaulle','2023-11-30','Donji Dobrić','2023-09-20',4890.38,'EUR',4,4,17,21,2,1),
(9,'San Pedro Carchá','2023-12-04','Cirangga Kidul','2023-10-08',2526.69,'GTQ',2,4,10,4,4,45),
(10,'Sankui','2023-09-11','Miaoxi','2023-09-19',112.62,'CNY',3,13,22,1,4,35),
(11,'Oakland','2023-12-07','Kota Bharu','2023-08-21',4299.93,'USD',3,1,5,12,15,28),
(12,'Severomorsk','2023-09-16','Tehrān','2023-11-19',2953.64,'RUB',3,10,11,10,15,11),
(13,'Karangcombong','2023-11-01','Eusebio Ayala','2023-11-14',733.22,'IDR',5,5,19,19,14,30),
(14,'Hongor','2023-12-06','Villasis','2023-08-21',3159.48,'MNT',1,8,2,14,10,19),
(15,'Bahāwalpur','2023-10-24','Baikouquan','2023-12-04',4045.92,'PKR',3,2,3,26,15,21),
(16,'Jiuhu','2023-12-01','Viesīte','2023-08-26',513.45,'CNY',2,10,15,20,7,21),
(17,'Mangochi','2023-08-07','Pires do Rio','2023-07-31',1062.57,'MWK',4,3,5,5,7,2),
(18,'Macayug','2023-10-25','Härnösand','2023-09-06',2704.6,'PHP',3,8,19,29,9,40),
(19,'Guadalupe','2023-08-05','Pak Kret','2023-10-12',1786.87,'MXN',3,15,16,1,14,12),
(20,'Zaymishche','2023-07-26','Nanbao','2023-08-08',3371.98,'RUB',3,14,23,9,10,43);


select * from travel_plan;

