USE travel_lines;
DROP FUNCTION IF EXISTS calculate_price_travel;
Select *
from travel_plan;

DELIMITER ?
#hipoteticamente sin calcular distancias y cuya moneda base es usd  esta funcion calcula el costo de un plan de viaje
#selecion si es con hotel 0 no /1 si, transporte 0 no 1 bus 2 avion
#comida 0 no 1 todo includo 2 lunch ,3 dinner
#hotel 0 no 1 si
CREATE FUNCTION calculate_price_travel (desde DATE,
hasta DATE,currency VARCHAR(4),people int,transport int,
hotel int,raiting int, food int) RETURNS INT
NO SQL
BEGIN
declare travel_plan INT;
declare days_of_stay INT;
declare which_currency VARCHAR(4);
declare cost_transport INT;
declare food_cost int;
declare currency_change int;
###############################
IF currency ='' THEN
set which_currency = 'USD';
else set which_currency=currency;
END IF;
################################days of stay
SET days_of_stay = hasta-desde;
#######################################transport
IF transport = 0 THEN 
	SET cost_transport = 0;
ELSEIF transport = 1 THEN
	SET cost_transport = 50;
ELSEIF transport=2 THEN
	SET cost_transport = 80;
ELSE SET cost_transport = 0;
END IF;
#######################################foood
IF food =2 THEN
	SET food_cost =20;
ELSEIF food = 3 THEN
	SET food_cost =30;
ELSEIF food = 1 THEN
	SET food_cost = 40;
ELSE SET food_cost =0;
end if;
######################################## change currency
IF currency ='EUR' THEN
	SET currency_change = 1.2;
ELSEIF currency = 'GBP' THEN
	SET currency_change= 0.78;
ELSEIF currency = 'MXN' THEN
	SET currency_change =16.69;
ELSEIF currency = 'COP' THEN
	SET currency_change =3940;
ELSEIF currency = 'ARS' THEN
	SET currency_change =273;
ELSE set currency_change=1;
END IF;
#######################################
SET travel_plan = currency_change*(days_of_stay*(food_cost + hotel*10*raiting+2*people) + cost_transport);

RETURN travel_plan;
END?
DELIMITER ;
## VERIFICAR FUNCTION 
#SELECT calculate_price_travel(Fecha Salida,fecha regreso,moneda(USD, MXN,COP,EUR,ARS),#de personas,transporte,hotel,raiting del hotel, comida)
SELECT calculate_price_travel('2023-07-31','2023-08-05','USD',2,2,1,3.4,1) as Costo_del_Viaje, 'USD' as Currency;
######################################################################## segunda funcion 
#######cuantas ventas tiene un vendedor lee la tabla travel_plans mira cuantas veces se repite el id del vendedor escogido
####### arroja  un int con el numero de ventas
SELECT * 
FROM table_seller;
DROP FUNCTION IF EXISTS sales_per_seller;
DELIMITER ?
CREATE FUNCTION sales_per_seller (idseller int)RETURNS int
READS SQL DATA
BEGIN
DECLARE sales int;
SET sales = (
select count(id_seller) as seller_sales
from travel_plan
where id_seller =idseller );
RETURN sales;
END?
DELIMITER ;
###probar la funcion
Select 7 as ID,first_name as name_of_seller,surname as surname_of_seller,sales_per_seller(7) as Sales_by_seller
from table_seller
where id_seller= 7;