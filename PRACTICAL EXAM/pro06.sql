/* 6. CREATE A FUNCTION THAT ACCEPTS PERSENTAGE AND RETUN THE 
CRROSEPONDING GRAGE.*/

SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION get_grade
(p_persentage IN NUMBER)
RETURN VARCHAR2 
IS 
BEGIN
IF p_peasentage >= 90 THEN
RETURN 'A';

ELSIF p_peasentage >= 75 THEN 
RETURN 'B' ;

ELSIF p_peasentage >= 60 THEN 
RETURN 'C' ;

ELSIF p_peasentage >= 40 THEN 
RETURN 'D' ;

ELSE 
 RETURN 'F';
 
 END IF ;
 END;
 /
 
 DECLARE
 v_grade VARCHAR2 ;
 BEGIN 
 v_grade := get_grade(&persentage);
 DBMS_OUTPUT.PUT_LINE('Gread = ' || v_grade
