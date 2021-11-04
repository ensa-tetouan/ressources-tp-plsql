--Exercice 3 - Question 5


create or replace trigger remise 

after  insert or update  on order_items

for each row

declare 

total number ;
new_unit_price number ; 
begin
total := :new.quantity * :new.unit_price ; 
if  total>10000 then

new_unit_price := (total * 0.95)/:new.quantity ;  

update  order_items set unit_price  = new_unit_price where product_id = :new.product_id  and item_id = :new.item_id;  
end if ;
end ;
