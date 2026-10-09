/*Write a trigger that identifies the gender of the 
employee and according to the gender sets MR. in 
front of MALE employees and MS. in front of FEMALE 
employees. */
DELIMITER //

CREATE TRIGGER employee_gender
BEFORE INSERT ON EMP
FOR EACH ROW
BEGIN
    IF NEW.GENDER = 'MALE' THEN
        SET NEW.ENAME = CONCAT('MR. ', NEW.ENAME);
    ELSEIF NEW.GENDER = 'FEMALE' THEN
        SET NEW.ENAME = CONCAT('MS. ', NEW.ENAME);
    END IF;
END //