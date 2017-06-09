USE `dma`;
DROP procedure IF EXISTS `dma_delete_staff`;

DELIMITER $$
USE `dma`;
CREATE PROCEDURE `dma_delete_staff`(USERID DOUBLE)
BEGIN
	DELETE FROM dma.dma_user WHERE USER_ID=USERID;
END$$
DELIMITER ;
