/*14. CREATE A PAROCEDURE THAT ACCEPTS A DEPARMENT NUMBER AND RETURNS
 THE NUBER OF EMPLOYESS THROUGH AN OUT PARAMETER.*/
 
TTSET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE count_employees
(
    p_deptno IN NUMBER,
    p_total OUT NUMBER
)
IS
BEGIN
    SELECT COUNT(*)
	INTO p_total
    FROM EMP
    WHERE DEPTNO = p_deptno;
END;
/

DECLARE
    v_count NUMBER;
BEGIN
    count_employees(&deptno, v_count);
    DBMS_OUTPUT.PUT_LINE('Total Employees = ' || v_count);
END;
/