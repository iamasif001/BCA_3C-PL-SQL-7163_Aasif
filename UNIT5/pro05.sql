/* Write a trigger to insert the existing values of the 
EMP table into NEWEMP table when the record is 
deleted from EMP table. */

DELIMITER //

CREATE TRIGGER delete_newemp
AFTER DELETE ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP
    VALUES (OLD.EMPNO, OLD.ENAME, OLD.JOB, OLD.MGR,
            OLD.HIREDATE, OLD.SAL, OLD.COMM, OLD.DEPTNO);
END //