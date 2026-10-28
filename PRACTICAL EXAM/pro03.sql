/*3. CREATE A USER-DIFINE EXCEPTION INVAID_AGE AND RAISE IT
 WHEN AN EMPLOYESS AGE IS OUTSIDE THE PERMITTED RANGE.*/
  SET SERVEROUTPUB ON;
  
  DECLARE 
  v_age NUMBER;
  invalid_age EXCEPTION;
  
  BEGIN
  v_age &emp_age;
  
  IF v_age < 18 OR v_age >60 THEN
  RAISE invalid_age;
  
  ELSE
  DBMS_OUTPUT.PUT_LINE('Age is valid');
  END IF;
  
  EXCEPTION
  WHEN invalid_age THEN 
  DBMS_OUTPUT.PUT_LINE('Error: invalid age');
  
  END;
  /
