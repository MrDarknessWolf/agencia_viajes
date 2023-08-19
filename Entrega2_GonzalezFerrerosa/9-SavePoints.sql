USE TRAVEL_LINES;
select * from travel_plan;

SELECT @@autocommit;
SET @@autocommit =0;
START TRANSACTION; ########## Transaccion 1 borrar objetos de tabla de viajes
SET SQL_SAFE_UPDATES = 0;
DELETE FROM travel_plan 
WHERE date_travelback < CURRENT_DATE(); ##borramos los que ya volvieron de su viaje
SET SQL_SAFE_UPDATES = 1;
-- ROLLBACK;
COMMIT;
/* INSERT INTO travel_plan (origin, date_travel ,destination, date_travelback,
 cost, currency, Num_people, id_transport , id_hotel , id_food ,id_seller, id_client) VALUES
 ('Saravia','2023-07-06','Kayes','2023-07-12',444.05,'PHP',2,3,11,13,6,39),
 ('Mangochi','2023-08-07','Pires do Rio','2023-08-10',1062.57,'MWK',4,3,5,5,7,2),
 ('Zaymishche','2023-07-26','Nanbao','2023-08-08',3371.98,'RUB',3,14,23,9,10,43);
 */
select * from travel_plan;

START TRANSACTION; ############insersion con savepoint de mas personas
select * from table_client;
INSERT INTO table_client (first_name,surname,id_person,mai,phone) VALUES
('Samanta','Collin',799994217,'birdwatcher@lovedogs.com','+57 234 299 5636'),
('John','DOE',730650231,'Saltwater@gmail.com','+1 348 520 1072'),
('Ramona','Flowers',666955620,'rainbow@aboutads.info','+53 127 993 0023'),
('Scott','Pilgrim',010747849,NULL,'+53 127 993 0024');
SAVEPOINT FIRST_FOUR;#########primer savepoint
INSERT INTO table_client (first_name,surname,id_person,mai,phone) VALUES
('Carla','Col',100962317,NULL,'+3 234 334 5636'),
('Johna','DOEA',123650231,'pancakes@gmail.com','+5 345 520 1072'),
('Ramon','Fruit',777955620,'clouds@aboutcake.info','+67 124 993 0023'),
('Scotish','Plague',101747849,NULL,'+23 127 669 0024');

#RELEASE SAVEPOINT FISRT_FOUR;  ###liberacion del primer savepoint
SAVEPOINT LAST_FOUR;
COMMIT;

select * from table_client;


