--Exercice 1 -- Question 5
create or replace procedure emps_ca (emps_id IN number) AS
    CURSOR cust IS
    SELECT
       salesman_id,
        SUM(quantity * unit_price)
        FROM orders
        JOIN order_items ON order_items.order_id = orders.order_id
        where orders.salesman_id = emps_id 
    GROUP BY
        salesman_id;

    s_id   number;
    o_price  NUMBER;
BEGIN
    OPEN cust;
    FETCH cust INTO
        s_id,
        o_price;
        
    if cust%found then
        dbms_output.put_line(s_id
                             || '   '
                             || 'price'
                             || ' '
                             || o_price);

    else 
     dbms_output.put_line('THE EMPLOYEE ISNT FOUND');
    END if;
    CLOSE cust;
    
  
END;



