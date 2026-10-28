/*5. CREATE A FUNCTION THAT ACCEPTS TWO NUMBERS AND
 RETURN THE GREATED NUMBER.*/
 SET SERVEROUTPUT ON;
 
 CREATE OR REPLACE FUNCTION greater_num
 ( 
 a IN NUMBER 
 b IN NUMBER
 )
 RETURN NUMBER
 
 IS
 BEGIN
  IF a > b THEN
  RETURN a;
  ELSE 
  
  RETURN b;
  END IF ;
  
  END;
  /
  DECLARE 
  V_result NUMBER;
  
  BEGIN
  V_result := greater_num(&num1, &num2);
  
  DBMS_OUTPUT.PUT_LINE('Greater Number = ' || v_result);
  END;
  /
  
  