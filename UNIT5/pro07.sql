/*  Write a trigger to insert the existing values of the 
EMP table into NEWEMP table when the record is 
updated in EMP table */
DELIMITER //

CREATE TRIGGER update_record
AFTER UPDATE ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP
    VALUES (NEW.EMPNO, NEW.ENAME, NEW.JOB, NEW.MGR,
            NEW.HIREDATE, NEW.SAL, NEW.COMM, NEW.DEPTNO);
END //