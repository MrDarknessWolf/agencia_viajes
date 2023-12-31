USE travel_lines;
###insersion de tabla clientes##########################
INSERT INTO table_client (first_name,surname,id_person,mai,phone) VALUES
('Brion','Siward',650954217,'bsiward0@wsj.com','+30 216 299 5636'),
('Stillmann','Beales',770650153,'sbeales1@mit.edu','+57 258 520 1072'),
('Winna','Segar',846955620,'wsegar2@aboutads.info','+51 607 993 0023'),
('Rubia','Bowyer',297747849,'rbowyer3@rediff.com','+51 379 109 0222'),
('Trescha','Gilardone',69314896,'tgilardone4@jugem.jp','+7 659 648 9497'),
('Rozalie','Tallquist',272593173,'rtallquist5@businesswire.com','+7 423 305 0460'),
('Cynthia','Giercke',768450608,'cgiercke6@simplemachines.org','+62 886 708 8576'),
('Terrye','Monnelly',4853773,'tmonnelly7@ca.gov','+84 841 215 8176'),
('Sergeant','Plumridege',60371061,'splumridege8@ihg.com','+33 580 143 3722'),
('Lefty','Whyman',166401857,'lwhyman9@unesco.org','+62 810 726 8940'),
('Salmon','Spalton',495104380,'sspaltona@epa.gov','+62 233 425 1295'),
('Ivory','Kittoe',618852761,'ikittoeb@bizjournals.com','+977 392 657 9002'),
('Burke','Tewkesberrie',110189575,'btewkesberriec@hao123.com',NULL),
('Suzie','Keeting',396136110,'skeetingd@last.fm','+27 221 166 4755'),
('Mair','Gummory',137906493,'mgummorye@unicef.org','+55 943 114 0676'),
('Alard','Blakeden',912386089,'ablakedenf@free.fr','+64 406 815 7389'),
('Clay','Simione',8105073,NULL,'+351 257 383 2226'),
('Elroy','Ewens',609177124,'eewensh@reverbnation.com','+62 419 486 9254'),
('Amery','Londer',849127464,'alonderi@topsy.com','+977 439 622 5989'),
('Dory','Craighead',417632358,'dcraigheadj@wordpress.org','+86 323 180 7185'),
('Maudie','Langmaid',314370821,'mlangmaidk@github.com','+84 500 192 3849'),
('Alana','Chidlow',21203588,'achidlowl@wisc.edu','+236 810 459 1352'),
('Stoddard','Gilyott',727244010,'sgilyottm@purevolume.com','+7 863 385 4605'),
('Tamara','Baroch',857229791,'tbarochn@desdev.cn',NULL),
('Rodie','Justham',648893242,'rjusthamo@mayoclinic.com','+1 901 428 7104'),
('Annmarie','Outibridge',453169231,'aoutibridgep@plala.or.jp','+48 106 137 9905'),
('Nellie','Wilderspoon',32561768,'nwilderspoonq@naver.com','+351 624 489 7600'),
('Carita','Epperson',707448364,'ceppersonr@ucoz.ru','+86 519 289 6125'),
('Randi','Carruth',38292785,'rcarruths@newyorker.com','+57 656 507 0566'),
('Don','Hallowes',554941632,'dhallowest@yellowpages.com','+351 820 388 1949'),
('Sigvard','Redgrave',609682364,'sredgraveu@forbes.com','+351 548 199 9182'),
('Abdul','Tomsa',428713814,'atomsav@nhs.uk','+44 939 330 7882'),
('Ninnetta','Foukx',685182562,NULL,'86 914 788 0427'),
('Clifford','Cotton',649769215,NULL,'+359 238 524 6314'),
('Murdoch','Hantusch',445975356,'mhantuschy@berkeley.edu','+86 474 372 1469'),
('Marni','Hold',526914457,'mholdz@lulu.com','+62 768 825 1321'),
('Andrea','Fetherston',407618534,'afetherston10@webeden.co.uk','+94 984 495 6395'),
('Corri','Bellefant',690228996,'cbellefant11@ehow.com',NULL),
('Jaimie','Zylberdik',625673068,'jzylberdik12@google.it','+86 175 544 5730'),
('Cordula','Tinghill',324194380,'ctinghill13@foxnews.com','+62 593 535 2708'),
('Laurianne','Roden',92946377,'lroden14@europa.eu','+353 875 769 9500'),
('Harmon','Dyde',733441559,'hdyde15@imgur.com','+505 793 188 0283'),
('Randie','Dayes',451739661,'rdayes16@artisteer.com','+351 145 220 8008'),
('Shay','Whalley',798975315,'swhalley17@ning.com','+63 219 408 6585'),
('Ferdie','Kybird',563942780,'fkybird18@exblog.jp','+7 976 776 6785'),
('Leigha','Rue',112507791,'lrue19@virginia.edu','+86 951 383 3476'),
('Pincas','Kermit',734012969,'pkermit1a@netvibes.com','+86 660 914 2241'),
('Pascal','Iggalden',922168307,'piggalden1b@flavors.me','+57 646 670 4821'),
('Janey','Breakwell',460541239,'jbreakwell1c@vistaprint.com','+33 886 978 4954'),
('Essy','Normavell',68369166,'enormavell1d@wix.com','+54 993 389 6327');

select * from table_client;

###########################INSERSION DE TABLA DE COMIDA######################################
INSERT INTO table_food (type_food,name_restaurant,adress) VALUES ##null values are for food included inside the hotel
('lunch','Schroeder and Sons','94 Prentice Junction'),
('dinner',NULL,NULL),
('All Meals','Pastalavista','58939 Havey Park'),
('All Meals','Lesch, Hansen and Hilll','341431 South Street'),
('lunch',"Stark, Bergstrom and Brekke",'46715 Orin Circle'),
('All Meals',NULL,NULL),
('dinner','Kessler, Rosenbaum and Lemke','32 Basil Pass'),
('lunch',"Luettgen, Walter and Moore",'839 Crownhardt Plaza'),
('All Meals',"Hintz, Auer and Wilderman",'0794 Bowman Circle'),
('dinner',"Konopelski, Crist and Towne",'9 Tennessee Court'),
('All Meals','Krajcik-Rohan','10889 Veith Street'),
('breakfast',"Hayes, Sporer and Stokes",'7 Vahlen Hill'),
('All Meals','Bernier and Sons','6 Coleman Drive'),
('dinner',"Romaguera, Jacobson and Stehr",'1 Forest Dale Point'),
('All Meals',"Douglas, Wehner and Johnson",'39 Marcy Street'),
('breakfast','Pfannerstill LLC','780 Carioca Parkway'),
('All Meals','Flatley Group','186 Granby Hill'),
('dinner',NULL,NULL),
('lunch','McGlynn-Lakin','3696 Nobel Point'),
('All Meals',"Gulgowski, Haag and Waters",'85160 Kedzie Pass'),
('lunch','Heaney Group','595 Eastlawn Pass'),
('All Meals','Spencer and Sons','420 Dwight Plaza'),
('All Meals',"Blick, Bernhard and Zboncak",'8334 Fuller Point'),
('lunch',"Bode, Hegmann and DuBuque",'3 Hovde Hill'),
('lunch','Russel and Sons','784 Sherman Center'),
('All Meals','Effertz-Douglas','29 Heath Drive'),
('lunch','Hessel-Waelchi','29890 Knutson Way'),
('All Meals',"Schoen, Swaniawski and Upton",'685 Stone Corner Alley'),
('All Meals','Wolf-Little','0 Arrowood Point'),
('dinner','Denesik Group','24 Lotheville Street');

Select * from table_food;

##############################Table Hotel#################
INSERT INTO table_hotel (num_people,name_hotel,stars,adress) VALUES
(4,'Durgan and Sons',3.7,'0 Rockefeller Drive'),
(3,'Conroy bed',3.8,'60 Schmedeman Lane'),
(1,"Simonis, West IN",3.5,'9 Maple Court'),
(2,'Rippin-Collins',3.0,'00 Graedel Place'),
(3,'Larson In',2.8,'665 Sunbrook Hill'),
(2,'FeeneySleep',4.4,'8 Walton Alley'),
(3,'Lang-Sauer',3.7,'53 Glendale Parkway'),
(2,"Nienow, Lehner and Bode",3.9,'2 Acker Plaza'),
(2,'Bruen Hotel',4.5,'837 Laurel Hill'),
(4,'Yundt-Hoeger',3.3,'979 Corscot Hill'),
(4,"Bednar Vandervort",3.0,'503 Porter Street'),
(2,"Hilpert, Rosenbaum and Kuhlman",4.2,'736 Stuart Avenue'),
(3,'Romaguera-Prosacco',4.7,'48935 Kedzie Road'),
(2,'Smithzzz',3.7,'90103 Hudson Junction'),
(1,"Romaguera Hotel",3.3,'99 Johnson Court'),
(1,"Collins inn",4.6,'727 Laurel Center'),
(1,"Heaney",4.8,'6 Shoshone Trail'),
(3,'Beahan-Schulist',3.2,'70871 Farragut Road'),
(2,"Harvey bunkbed",3.2,'0 American Lane'),
(4,'Crist bed',3.4,'326 Center Place'),
(3,"Stamm in",3.0,'87616 Talmadge Point'),
(1,'Huel and snore',4.5,'9577 Toban Circle'),
(3,'Dooley in',3.3,'0902 Coolidge Road'),
(4,'McClure ',3.8,'01 Brentwood Circle'),
(3,"Gusikowski",2.9,'4 Carey Lane');

SELECT * FROM table_hotel;

#################################insersion table seller.#######################

INSERT INTO table_seller (id_person,first_name,surname) VALUES 
(952389113,'Tabby','Feldbrin'),
(901511340,'Bevan','Tuckey'),
(180730265,'Maynord','Flanne'),
(309301231,'Diane','Drewery'),
(611867466,'Yorgo','Manners'),
(899304402,'Rachel','Manger'),
(219922279,'Lotte','Alen'),
(571507614,'Xylina','Klimkiewich'),
(300869939,'Tressa','Karolovsky'),
(202311768,'Beverly','StandishBrooks'),
(766275018,'Hieronymus','Sturgess'),
(219547606,'Maurene','Enterlein'),
(74426400,'Gayle','Dreelan'),
(681004793,'Christine','Shoulder'),
(710606368,'Kane','Berndt');

SELECT * FROM table_seller;

##############insercion table_transport##############################################
INSERT INTO table_transport (vehicle,bag_space,capacity,name_transport) VALUES
('bus','handbag',5,'easy travel'),
('bus','2 bags',26,'rainbow-bridge'),
('plane','1 bag',13,'CoconutAirlines'),
('plane','1 bag',16,'Jirachi Airline'),
('bus','2 bags',26,'TravelDoe'),
('plane','1 bag',29,'KoopaAirline'),
('plane','suitcase',11,'CoconutAirlines'),
('bus','1 bag',19,'TravelDoe'),
('plane','2 bags',20,'KoopaAirline'),
('bus','handbag',12,'Rapidash'),
('plane','1 bag',6,'CoconutAirline'),
('bus','handbag',23,'Rapidash'),
('bus','suitcase',27,'easy travel'),
('plane','1 bag',29,'jirachi Airline'),
('plane','2 bags',48,'KoopaAirline');

select * from table_transport;
##################################insert-travel_plan#################
INSERT INTO travel_plan (origin, date_travel ,destination, date_travelback,
 cost, currency, Num_people, id_transport , id_hotel , id_food ,id_seller, id_client) VALUES
('Ra’s Bayrūt','2023-10-07','Sutton','2023-12-07',500.63,'LBP',2,1,11,5,11,28),
('Agriá','2023-08-28','Al Bilād','2023-11-26',4199.45,'EUR',1,3,18,8,4,40),
('Borūjerd','2023-08-11','Byerazino','2023-11-10',3822.4,'IRR',2,10,24,5,1,45),
('Kadujangkung','2023-10-11','Washington','2023-10-22',4913.64,'IDR',3,8,6,4,13,2),
('Vaasa','2023-08-01','Raoyang','2023-09-15',2944.09,'EUR',3,7,16,16,15,49),
('Weru','2023-11-18','Cassilândia','2023-12-12',3049.78,'IDR',3,12,2,15,1,16),
('Saravia','2023-07-06','Kayes','2023-07-12',444.05,'PHP',2,3,11,13,6,39),
('Roissy Charles-de-Gaulle','2023-09-03','Donji Dobrić','2023-09-20',4890.38,'EUR',4,4,17,21,2,1),
('San Pedro Carchá','2023-10-04','Cirangga Kidul','2023-10-08',2526.69,'GTQ',2,4,10,4,4,45),
('Sankui','2023-09-11','Miaoxi','2023-09-19',112.62,'CNY',3,13,22,1,4,35),
('Oakland','2023-08-07','Kota Bharu','2023-08-21',4299.93,'USD',3,1,5,12,15,28),
('Severomorsk','2023-10-16','Tehrān','2023-11-19',2953.64,'RUB',3,10,11,10,15,11),
('Karangcombong','2023-11-01','Eusebio Ayala','2023-11-14',733.22,'IDR',5,5,19,19,14,30),
('Hongor','2023-08-06','Villasis','2023-08-21',3159.48,'MNT',1,8,2,14,10,19),
('Bahāwalpur','2023-12-01','Baikouquan','2023-12-05',4045.92,'PKR',3,2,3,26,15,21),
('Jiuhu','2023-08-01','Viesīte','2023-08-26',513.45,'CNY',2,10,15,20,7,21),
('Mangochi','2023-08-07','Pires do Rio','2023-08-10',1062.57,'MWK',4,3,5,5,7,2),
('Macayug','2023-09-05','Härnösand','2023-09-26',2704.6,'PHP',3,8,19,29,9,40),
('Guadalupe','2023-08-05','Pak Kret','2023-10-12',1786.87,'MXN',3,15,16,1,14,12),
('Zaymishche','2023-07-26','Nanbao','2023-08-08',3371.98,'RUB',3,14,23,9,10,43);


select * from travel_plan;

