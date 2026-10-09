/*1) Write a trigger to restrict users from accessing the 
table on weekends.*/
DELIMITER //

CREATE TRIGGER restrict_weekends
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    IF DAYOFWEEK(CURDATE()) IN (1, 7) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Access denied: Table cannot be modified on weekends';
    END IF;
END //