DROP DATABASE IF EXISTS TRAVEL_LINES;
CREATE DATABASE TRAVEL_LINES;
USE TRAVEL_LINES;

CREATE TABLE IF NOT EXISTS table_client (
	id_client INT NOT NULL UNIQUE AUTO_INCREMENT,
    first_name VARCHAR (30) NOT NULL,
    surname    VARCHAR (30) NOT NULL,
	id_person  INT NOT NULL UNIQUE,
    mai		   VARCHAR (320) UNIQUE, #320 Es el maximo numero de caracteres permitidos en un correo
    phone	   VARCHAR (25)  UNIQUE, # 25 por ser 15 el maximo en numeros y contar con desface para codigo pais
	PRIMARY KEY (id_client)
);

CREATE TABLE IF NOT EXISTS table_seller(
	id_seller 	INT NOT NULL UNIQUE AUTO_INCREMENT,
    id_person 	INT NOT NULL, #diferente al cliente porque es la cedula del vendedor
    first_name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_seller)
);

CREATE TABLE IF NOT EXISTS table_hotel(
    id_hotel INT NOT NULL UNIQUE AUTO_INCREMENT,
    num_people INT NOT NULL,
    name_hotel VARCHAR(30) NOT NULL,
    stars	   DOUBLE NOT NULL,
    adress	   VARCHAR(120) NOT NULL,
	PRIMARY KEY (id_hotel)
);

CREATE TABLE IF NOT EXISTS table_transport(
    id_transport INT NOT NULL AUTO_INCREMENT,
    vehicle VARCHAR (10) NOT NULL,
    bag_space VARCHAR(30) NOT NULL ,#VARCHAR porque puede ser maleta de mano, bodega con su cantidad
    capacity INT NOT NULL,
    name_transport VARCHAR (30) UNIQUE,
    PRIMARY KEY (id_transport)
);

CREATE TABLE IF NOT EXISTS table_food(
	id_food INT NOT NULL UNIQUE AUTO_INCREMENT,
    type_food VARCHAR (10) NOT NULL,
    name_restaurant VARCHAR (30), # Puede que el restaurante sea en el hotel por eso puede ser null
    adress	   VARCHAR(120),
	PRIMARY KEY (id_food)
);

CREATE TABLE IF NOT EXISTS travel_plan(
	id_reservation INT NOT NULL UNIQUE AUTO_INCREMENT,
    origin	    VARCHAR (120) NOT NULL,
    date_travel DATE NOT NULL,
    destination VARCHAR (120) NOT NULL,
    date_travelback DATE NOT NULL,
    cost		INT NOT NULL,
    currency 	VARCHAR (4) NOT NULL,
    Num_people 	 INT,
    id_transport INT,
    id_hotel 	INT,
    id_food 	INT,
    id_seller	INT,
    id_client	INT,
    PRIMARY KEY (id_reservation),
    FOREIGN KEY (id_transport) REFERENCES table_transport (id_transport),
    FOREIGN KEY (id_hotel) REFERENCES table_hotel (id_hotel),
    FOREIGN KEY (id_food) REFERENCES table_food (id_food),
    FOREIGN KEY (id_seller) REFERENCES table_seller (id_seller),
    FOREIGN KEY (id_client) REFERENCES table_client (id_client)
);

