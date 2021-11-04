--Exercice 3 - Question 2

create or replace trigger quant_check 
after  insert or update  on inventories
for each row

begin
if :new.quantity < 10 then
dbms_output.put_line('ALERT !!!!!!!!!!  La quantité des article dans pour le produit dont lID est '||:new.product_id ||' est  < 10');
end if ;
end ;


