/*Write a trigger that restricts the entry of record if 
salary is greater than Rs.50000. */
DELIMITER //

CREATE TRIGGER restrict_salary
BEFORE INSERT ON EMP
FOR EACH ROW
BEGIN
    IF NEW.SAL > 50000 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be greater than Rs. 50000';
    END IF;
END //
