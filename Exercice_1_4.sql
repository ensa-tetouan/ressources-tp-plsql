--Exercice 1 -- Question 4

CREATE OR REPLACE PROCEDURE affichage_warehouse (
    location_id_1 IN NUMBER
) AS

    CURSOR c_war IS
    SELECT
        warehouse_id,
        warehouse_name
    FROM
        warehouses
   
    WHERE
        warehouses.location_id = location_id_1;

    v_war_id   NUMBER;
    v_war_name VARCHAR2(50);
BEGIN
    OPEN c_war;
    FETCH c_war INTO
        v_war_id,
        v_war_name;
    IF v_war_name IS NULL THEN
        dbms_output.put_line('No warehouses for the location with the id = ' || location_id_1);
    ELSIF v_war_name IS NOT NULL THEN
        WHILE c_war%found LOOP
            dbms_output.put_line('the warehouse '
                                 || ' with the name '
                                 || v_war_name
                                 || 'and the id = '
                                 || v_war_id);

            FETCH c_war INTO
                v_war_id,
                v_war_name;
        END LOOP;
    END IF;

END;


