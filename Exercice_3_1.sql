--Exercice 3 - Question 1


create or replace trigger resume 
after insert or  update  on orders
for each row

begin
dbms_output.put_line('le resume de lordre dont lID est '||:NEW.order_id||' Status :  ' ||:NEW.status ||' Le nom du customer est : '||:new.customer_id||' LID du Salesman est '||:new.salesman_id||' La date est  : '||:new.order_date);
end ;


