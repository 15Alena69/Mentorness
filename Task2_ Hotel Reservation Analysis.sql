USE mentorness;
SELECT * FROM `hotel reservation dataset`;
SELECT count(*) FROM `hotel reservation dataset`;
SELECT type_of_meal_plan,count(type_of_meal_plan) as meal_plan FROM`hotel reservation dataset` GROUP BY type_of_meal_plan ORDER BY meal_plan DESC limit 1;
SELECT no_of_children,avg(avg_price_per_room) FROM `hotel reservation dataset` WHERE no_of_children >0 GROUP BY no_of_children;
SELECT count(*) FROM `hotel reservation dataset` WHERE arrival_date>= '01-01-2017' AND arrival_date<= '31-12-2017';
SELECT room_type_reserved,count(room_type_reserved) as count_type FROM `hotel reservation dataset` GROUP BY room_type_reserved ORDER BY count_type desc limit 1;
SELECT count(*) FROM `hotel reservation dataset` WHERE no_of_weekend_nights>0;
SELECT max(lead_time),min(lead_time) FROM `hotel reservation dataset`WHERE lead_time>0;
SELECT market_segment_type,count(market_segment_type) AS abc FROM `hotel reservation dataset` GROUP BY market_segment_type ORDER BY abc DESC LIMIT 1;
SELECT booking_status, count(*) FROM `hotel reservation dataset` WHERE booking_status = "Not_Canceled";
SELECT sum(no_of_adults),sum(no_of_children) FROM `hotel reservation dataset`;
SELECT avg(no_of_weekend_nights) FROM `hotel reservation dataset` WHERE no_of_children>0;

SELECT room_type_reserved,AVG(no_of_weekend_nights + no_of_week_nights) AS avg_nights_per_room_type FROM `hotel reservation dataset` GROUP BY room_type_reserved;
SELECT room_type_reserved, COUNT(*) as count_reservations, avg(avg_price_per_room) AS average_price_per_room FROM `hotel reservation dataset` WHERE no_of_children > 0 GROUP BY room_type_reserved ORDER BY count_reservations DESC LIMIT 1;
SELECT market_segment_type, AVG(avg_price_per_room) AS average_price_per_room FROM `hotel reservation dataset` GROUP BY market_segment_type ORDER BY average_price_per_room DESC LIMIT 1;

