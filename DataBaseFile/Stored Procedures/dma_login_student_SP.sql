USE 'dma';
DROP procedure IF EXISTS `dma_login_student`;

DELIMITER $$
USE 'dma';
CREATE PROCEDURE `dma_login_student`(
USERID DOUBLE,
PASSWORD VARCHAR(45))
BEGIN
	SELECT * FROM dma.dma_user_student WHERE USER_ID=USERID AND PASSWORD=PASSWORD;
END$$
DELIMITER ;
