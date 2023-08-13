USE TRAVEL_LINES;
CREATE TABLE IF NOT EXISTS LOG_CLIENT_TABLE ( #tabla adicional la cual es por si se borra o se añade un usuario
    id_client INT NOT NULL,
    first_name VARCHAR (30) NOT NULL,
    surname    VARCHAR (30) NOT NULL,
	id_person  INT NOT NULL,
	user_id   VARCHAR(30),
    date_action DATE NOT NULL,
    hour_action TIME NOT NULL,
    action_log VARCHAR (30)#si se borro o se añadio
    );

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
    