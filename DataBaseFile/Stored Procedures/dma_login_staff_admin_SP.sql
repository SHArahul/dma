USE 'dma';
DROP procedure IF EXISTS `dma_login_staff_admin`;

DELIMITER $$
USE 'dma';
CREATE PROCEDURE `dma_login_staff_admin`(
USERID DOUBLE,
PASSWORD1 VARCHAR(45))
BEGIN
	SELECT * FROM dma.dma_user WHERE USER_ID=USERID AND PASSWORD=PASSWORD1;
END$$
DELIMITER ;
