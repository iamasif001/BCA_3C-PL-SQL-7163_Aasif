/*Write a trigger to insert the values into the 
NEWEMP table when the records are inserted into the 
EMP table*/
DELIMITER //

CREATE TRIGGER insert_newemp
AFTER INSERT ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO NEWEMP
    VALUES (NEW.EMPNO, NEW.ENAME, NEW.JOB, NEW.MGR,
            NEW.HIREDATE, NEW.SAL, NEW.COMM, NEW.DEPTNO);
END //