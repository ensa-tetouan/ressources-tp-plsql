create or replace trigger no_hire 
before insert on employees
for each row
declare
error_1 exceptions ;
begin 
if :new.hire_date > sysdate then
raise error_1 ; 
end if  ;
exception
when error_1 then
dbms_output.put_line('Cannot add this employee');
end  ;