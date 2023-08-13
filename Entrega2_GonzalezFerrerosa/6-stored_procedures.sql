USE travel_lines;

#select * from travel_lines.travel_plan ORDER BY cost ASC;  <--- blueprint

DROP PROCEDURE IF EXISTS order_a_table;
DROP PROCEDURE IF EXISTS delete_or_add_client;
DROP PROCEDURE IF EXISTS delete_or_add_seller;
DELIMITER //

CREATE PROCEDURE order_a_table (IN SELECT_TABLE VARCHAR(20),IN SELECT_COLUM VARCHAR(30),IN AS_DES VARCHAR(4))
BEGIN
	IF SELECT_TABLE = '' then ## programa el nombre de la tabla que se quiera osernar 
		set @table_select = 'travel_plan';
	else
		set @table_select = SELECT_TABLE;
	end if;
    IF SELECT_COLUM ='' THEN ## se seleciona la columna si no se deja vacia.
		set @order_by ='';
	else 
		set @order_by = CONCAT(SELECT_COLUM,' ');
	end if;
     
    SET @consult = CONCAT('SELECT * FROM travel_lines.', @table_select, ' ORDER BY ',@order_by,AS_DES);

	PREPARE SEARCH FROM @consult;
    EXECUTE SEARCH;
    DEALLOCATE PREPARE SEARCH;
    
END //

###########################procedure de añadir o eliminarun registro de cliente porque no tengo interfaz para decirle cuantos inputs son
## blueprint INSERT INTO table_client VALUES ('Brion','Siward',650954217,'bsiward0@wsj.com','+30 216 299 5636')
CREATE PROCEDURE delete_or_add_client (IN DELETEID_OR_INSERT_0 INT,IN client_name VARCHAR(30),IN client_surname VARCHAR(30),IN client_id int
									 ,IN client_mail VARCHAR(320),IN client_phone VARCHAR(25))
BEGIN
	DECLARE D_OR_I INT;
	SET D_OR_I =DELETEID_OR_INSERT_0;
    IF D_OR_I >0 THEN
		DELETE from table_client WHERE id_client =D_OR_I;
	ELSE
		INSERT INTO table_client (first_name,surname,id_person,mai,phone) VALUES
        (client_name,client_surname,client_id,client_mail,client_phone);
        
    END IF;
	SELECT * FROM table_client;
END//
########################### procedure de añadir o borrar vendedor
CREATE PROCEDURE delete_or_add_seller(IN DELETEID_OR_INSERT_0 INT,IN seller_id int,IN seller_name VARCHAR(30),IN seller_surname VARCHAR(30))
BEGIN
	DECLARE D_OR_I INT;
	SET D_OR_I =DELETEID_OR_INSERT_0;

    IF D_OR_I >0 THEN
		DELETE from table_seller WHERE id_seller =D_OR_I;
	ELSE
		INSERT INTO table_seller (id_person,first_name,surname) VALUES
        (seller_id,seller_name,seller_surname);
        
    END IF;
	SELECT * FROM table_seller;
END//
DELIMITER ;

call travel_lines.order_a_table('travel_plan','cost','ASC'); ## probando con costos añadir que tabla es, la columna, ascendente decendente.

call travel_lines.delete_or_add_client(0,'Testing','MCtest','1036687074','','');# id si se quiere borrar,Nombre,apellido,cedula ID, email, telefono

call travel_lines.delete_or_add_seller(0,'1234567810','dummy','jonhdoe');##si borra el id es diferente a 0, el nombre, apellido y cdeula id