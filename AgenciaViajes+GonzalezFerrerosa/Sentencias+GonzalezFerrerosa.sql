USE TRAVEL_LINES;

#######creacion de usarios  se van a tener 2 usarios 

#Usuario 1 empleado
CREATE USER 'empleado1'@'localhost' IDENTIFIED BY '123'; ##creamos un empleado generico
### damos permiso de insersion, actualizacion, lectura y modificacion al empleado de casi todas las tablas esto es porque el empleado no requiere ver
## todas las tablas como el de sus compañeros o las tablas log para auditorias
GRANT INSERT, UPDATE, SELECT,ALTER ON travel_lines.table_client to 'empleado1'@'localhost';
GRANT INSERT, UPDATE, SELECT,ALTER ON travel_lines.table_food to 'empleado1'@'localhost';
GRANT INSERT, UPDATE, SELECT,ALTER ON travel_lines.table_hotel to 'empleado1'@'localhost';
GRANT INSERT, UPDATE, SELECT,ALTER ON travel_lines.table_transport to 'empleado1'@'localhost';
GRANT INSERT, UPDATE, SELECT,ALTER ON travel_lines.travel_plan to 'empleado1'@'localhost';

flush privileges;

show grants for'empleado1'@'localhost' ;
DROP user 'empleado1'@'localhost' ; ##drop para poder tener el tema de repeticion del codigo 

####Ahora vamos a crear el segundo usario supervisor este no puede editar tablas pero si tiene vista de toda la base de datos
CREATE USER 'superviser'@'supervising' IDENTIFIED BY "LOOKING";
GRANT SELECT ON travel_lines.* to 'superviser'@'supervising' ;
flush privileges;
show grants for 'superviser'@'supervising' ;

DROP USER 'superviser'@'supervising' ; ##borramos para poder tener repeticion