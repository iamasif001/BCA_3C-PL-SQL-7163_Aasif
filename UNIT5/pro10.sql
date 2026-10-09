 /*Write a trigger to restrict users from using the 
table on Sunday.*/
DELIMITER //

CREATE TRIGGER restrict_sunday
BEFORE INSERT ON EMP
FOR EACH ROW
BEGIN
    IF DAYOFWEEK(CURDATE()) = 1 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Table cannot be used on Sunday';
    END IF;
END //