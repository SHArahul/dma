USE 'dma';
DROP procedure IF EXISTS `dma_staff_search`;

DELIMITER $$
USE 'dma';
CREATE PROCEDURE `dma_staff_search`(
USERID DOUBLE)
BEGIN
	SELECT * FROM dma.dma_user WHERE USER_ID=USERID;
END$$
DELIMITER ;
