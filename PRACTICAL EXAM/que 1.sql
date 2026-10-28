SET SERVEROUTPUT ON;

CREATE TABLE EMP_AGE (
    EMP_ID NUMBER PRIMARY KEY,
    EMP_NAME VARCHAR2(50),
    AGE NUMBER
);

INSERT INTO EMP_AGE VALUES (101, 'Rahul', 25);
COMMIT;

DECLARE
    INVALID_AGE EXCEPTION;
    V_AGE NUMBER := 15;
BEGIN
    IF V_AGE < 18 OR V_AGE > 60 THEN
        RAISE INVALID_AGE;
    END IF;

    INSERT INTO EMP_AGE VALUES (102, 'Amit', V_AGE);
    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Employee inserted successfully.');

EXCEPTION
    WHEN INVALID_AGE THEN
        DBMS_OUTPUT.PUT_LINE(
            'Error: Employee age must be between 18 and 60.'
        );
END;
/