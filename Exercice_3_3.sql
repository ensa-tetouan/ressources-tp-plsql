create or replace trigger no_modify 
before update on customers
for each row
declare 
error_1 exception ;
cur_date number ; 
begin
cur_date := extract(DAY FROM sysdate) ; 
 IF
    cur_date >= 28 and cur_date <=30 
THEN
if :new.credit_limit != :old.credit_limit then
raise error_1 ; 
end if ;
end if ;
exception
when error_1 then
dbms_output.put_line('ERROR DOESNT WORK');
end  ;




