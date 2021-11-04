--Exercice 1 -- Question 2

create or replace procedure update_warehouse(Location_id_1 IN number, war_id IN number ,  war_name IN varchar2) 
AS
test_1 number ;
begin
select location_id into test_1 from locations where locations.location_id = Location_id_1 ;
update  WAREHOUSES set  warehouse_name =  war_name , warehouse_id = war_id where location_id = Location_id_1 ;
exception
when no_data_found then
dbms_output.put_line('WAREHOUSE NOT FOUND');
end ;
