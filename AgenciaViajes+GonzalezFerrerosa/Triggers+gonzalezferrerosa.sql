USE travel_lines;
#select * from travel_plan;
#######################################Primera parte triggers para la tabla cliente
CREATE TABLE IF NOT EXISTS LOG_CLIENT_TABLE ( #tabla adicional la cual es por si se borra o se añade un usuario
    id_client INT NOT NULL,
    first_name VARCHAR (30) NOT NULL,
    surname    VARCHAR (30) NOT NULL,
	id_person  INT NOT NULL,
	who_user   VARCHAR(30),
    time_action DATE,
    hour_action TIME,
    action_log VARCHAR (30)#si se borro o se añadio
    );
DROP TRIGGER IF EXISTS client_deleted; ##triger se activa cuando se borra algo de la tabla cliente antes de borrarlo 
CREATE TRIGGER client_deleted 			## se recoje que fue lo que se borro 
BEFORE DELETE ON table_client
FOR EACH ROW
INSERT INTO LOG_CLIENT_TABLE (id_client,first_name,surname,id_person,who_user,time_action,hour_action,action_log)
VALUES (old.id_client,old.first_name,old.surname,old.id_person,USER(),NOW(),current_time(),'DELETED');
######################################## Trigger de adicion de usario
DROP TRIGGER IF EXISTS client_added; ##triger se activa cuando se borra algo de la tabla cliente antes de borrarlo 
CREATE TRIGGER client_added			## se recoje que fue lo que se borro 
After INSERT ON table_client
FOR EACH ROW
INSERT INTO LOG_CLIENT_TABLE (id_client,first_name,surname,id_person,who_user,time_action,hour_action,action_log)
VALUES (NEW.id_client,NEW.first_name,NEW.surname,NEW.id_person,USER(),NOW(),current_time(),'NEWUSER');

###########################################################segunda parte triggers para la tabla travel_plan
CREATE TABLE IF NOT EXISTS TRAVEL_PLAN_LOG  (
    id_reservation INT,
    user_id VARCHAR(30),
    date_log DATE,
    hour_log TIME,
    origin	    VARCHAR (120) NOT NULL,
    date_travel DATE NOT NULL,
    destination VARCHAR (120) NOT NULL,
    date_travelback DATE NOT NULL,
    cost_OLD		DOUBLE (16,2) ,
    cost_NEW		DOUBLE (16,2),
    currency 	VARCHAR (4) NOT NULL,
    Num_people 	 INT,
    id_transport INT,
    id_hotel 	INT,
    id_food 	INT
);
###################################################
DROP TRIGGER IF EXISTS new_travel_plan_added; ##creacion de planes sin clentes aun en el servicio 
CREATE TRIGGER new_travel_plan_added
AFTER INSERT ON travel_plan
FOR EACH ROW
INSERT INTO TRAVEL_PLAN_LOG (id_reservation,user_id,date_log,hour_log,origin, date_travel ,destination, date_travelback,
 cost_NEW, currency, Num_people, id_transport , id_hotel , id_food) VALUES
 (new.id_reservation,USER(), NOW(),current_time(),NEW.origin, NEW.date_travel ,NEW.destination, NEW.date_travelback,
 NEW.cost, NEW.currency, NEW.Num_people, NEW.id_transport , NEW.id_hotel , NEW.id_food);

##################################################
DROP TRIGGER IF EXISTS cost_change_travel_plan; #en casos con planes que no se han vendido existen cambios en precio como por ejemplo temporada alta y baja
CREATE TRIGGER cost_change_travel_plan			#El trigger detecta cambios dentro de la tabla enfocado dentro de el plan de da
BEFORE UPDATE ON travel_plan
FOR EACH ROW
INSERT INTO TRAVEL_PLAN_LOG (id_reservation,user_id,date_log,hour_log,origin, date_travel ,destination, date_travelback,
 cost_OLD,cost_NEW, currency, Num_people, id_transport , id_hotel , id_food) VALUES
 (new.id_reservation,USER(), NOW(),current_time(),NEW.origin, NEW.date_travel ,NEW.destination, NEW.date_travelback,
 OLD.cost,NEW.cost, NEW.currency, NEW.Num_people, NEW.id_transport , NEW.id_hotel , NEW.id_food);


#############################Seccion de pruebas de triggers de clientes , en este caso añadimos un cliente  para despues borrarlo
INSERT INTO table_client (first_name,surname,id_person,mai,phone) VALUES
('Testing','johndoe',1234567810,NULL,NULL); ##creamos un usario dummy

select * from table_client;##miramos que este exista dentro de latabla
select * from log_client_table;##si se creo exitosamente se hace un log de su registro con quien

delete from table_client order by id_client desc limit 1;##borramos el usuario adicional en este caso el te prueba siempre va a ser el ultimo
select * from log_client_table;## miramos si este se borro exitosamente, en este caso no hay unique en cedula y en id_client porque puede entrar y salir del sistema

################################################################Seccion de pruebas de triggers de clientes añadimos data travels dummy
INSERT INTO travel_plan (origin, date_travel ,destination, date_travelback,
 cost, currency, Num_people, id_transport , id_hotel , id_food ) VALUES
 ('TESTING','2023-11-07','TESTING','2023-12-25',500.63,'LBP',2,1,11,5);
 
 select * from travel_plan_log; 
 
SET SQL_SAFE_UPDATES = 0;# por un error de seguridad de des habilita el safety update pero sabemos que se va a actualizar el costo
UPDATE travel_plan 
SET cost =cost +100
where (date_travelback-date_travel) >30 AND isNull(id_client); ##algunos costos pueden aumentar por tarifas a futuro  este no debe haber sido vendida a un cliente
SET SQL_SAFE_UPDATES = 1;


select * from travel_plan;
select * from travel_plan_log;