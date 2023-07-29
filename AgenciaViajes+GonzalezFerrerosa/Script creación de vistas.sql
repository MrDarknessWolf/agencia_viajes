USE travel_lines;

CREATE OR REPLACE VIEW USD_EUR_plans AS #travel plans that are usually more for USD or EUR pricing
	(Select destination, cost as Price , currency, num_people as persons_in_this_plan
	 from travel_plan
	 where currency = 'EUR' OR currency = 'USD'
    );
    
Select *
from USD_EUR_plans;

CREATE OR REPLACE VIEW plans_under_a_week AS # plans that are only for 1 week
	(select origin, destination,cost as price,currency , Num_people as capacity, date_travel as "from", date_travelback as till
	 from travel_plan
	 WHERE (date_travelback - date_travel)<8
    );

select *
from plans_under_a_week;
    
CREATE OR REPLACE VIEW plans_sold_by AS #to keep track of which plans are under who's sold by
	(select B.id_seller as ID,B.first_name as Seller, B.surname as surname, A.destination, A.cost as price, A.currency, A.Num_people as clients
	 from travel_plan A
	 LEFT JOIN table_seller B ON A.id_seller = B.id_seller
    );
    
select *
from plans_sold_by;

CREATE OR REPLACE VIEW plans_with_hotel_rating_over_35 AS # hotels with at least 3.5 rating
	(select A.destination, A.cost as price, A.currency, B.name_hotel as hotel,B.stars as Rating
	 from travel_plan A
	 LEFT JOIN table_hotel B ON A.id_hotel = B.id_hotel
	 where B.stars >=3.5
    );
    
select *
from plans_with_hotel_rating_over_35;

CREATE OR REPLACE VIEW plans_with_included_meals AS #plans with planned meals for all day
	(select A.destination, A.cost as price, A.currency, B.type_food as food, B.name_restaurant as restaurant
	from travel_plan A 
	left join table_food B ON A.id_food = B.id_food
	where B.type_food like "All Meals");

select *
from plans_with_included_meals;
    