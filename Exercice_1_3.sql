--Exercice 1 - Question 3

CREATE OR REPLACE PROCEDURE delete_warehouse (
    war_id   IN NUMBER,
    war_name IN VARCHAR2
) AS
    test_1    NUMBER;
    test_name VARCHAR2(50);
BEGIN
    SELECT
        warehouse_id,
        warehouse_name
    INTO
        test_1,
        test_name
    FROM
        warehouses
    WHERE
            warehouse_id = war_id
        AND warehouse_name = war_name;

    DELETE FROM warehouses
    WHERE
            warehouse_id = war_id
        AND warehouse_name = war_name;

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('THE WAREHOUSE WAS NOT FOUND');
END;