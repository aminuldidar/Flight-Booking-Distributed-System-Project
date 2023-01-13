/*
- Lappenranta
- Newyork
*/

use air_booking_usa;
SELECT * FROM air_booking_usa.branch_office;
SELECT * FROM air_booking_fin.branch_office;

DELETE FROM air_booking_usa.branch_office WHERE country_name !='USA';

CREATE VIEW flight_search AS select * from air_booking_fin.manage_air union select * from air_booking_usa.manage_air;
use air_booking;
SELECT * FROM flight_search where departure_city = 'Lappenranta' and arrival_city = 'Newyork';

SELECT * FROM air_booking_fin.passenger;

SELECT * FROM air_booking_fin_helsinki.passenger;

SELECT * FROM air_booking_fin_lappeenranta.passenger;

/*Searching Flight for booking*/
use air_booking_fin;
SELECT * FROM air_booking_fin.manage_air;
SELECT * FROM air_booking_usa.manage_air;


/*Local Replication for passenger table*/
delimiter $$
CREATE TRIGGER air_booking_fin.triggerPassenger AFTER INSERT ON air_booking_fin.passenger
FOR EACH ROW
BEGIN
    /*Update for Lappenranta*/
    INSERT INTO air_booking_fin_lappeenranta.passenger (idpassenger, passenger_name, passenger_email, passenger_tel, agency_site_office_id,country_id) 
    SELECT idpassenger, passenger_name, passenger_email, passenger_tel, 4 , country_id  FROM air_booking_fin.passenger ORDER BY idpassenger DESC LIMIT 1;
    
    /*Update for Helsinki*/
    INSERT INTO air_booking_fin_helsinki.passenger (idpassenger, passenger_name, passenger_email, passenger_tel, agency_site_office_id,country_id) 
    SELECT idpassenger, passenger_name, passenger_email, passenger_tel, 3 , country_id  FROM air_booking_fin.passenger ORDER BY idpassenger DESC LIMIT 1;
    /*VALUES (150,1, now(), 2, 1);*/
END$$
delimiter ;