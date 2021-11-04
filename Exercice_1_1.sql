--Exercice 1 -- Question 1

create or replace procedure add_warehouse(Location_id_1 IN number , war_name IN varchar2 ) 
AS
 test_l number ;

begin

select location_id into test_l from locations where locations.location_id = Location_id_1 ;

insert into warehouses (WAREHOUSE_NAME,LOCATION_ID ) values(war_name ,Location_id_1);
exception
when no_data_found THEN
dbms_output.put_line('LOCATION NOT FOUND');
end ;
