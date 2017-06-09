USE `dma`;
DROP procedure IF EXISTS `dma_feedback`;

DELIMITER $$
USE `dma`$$
CREATE PROCEDURE `dma_feedback`(USERID DOUBLE,
FEEDBACK longtext)
BEGIN
	INSERT INTO dma.dma_feedback VALUES (USERID,FEEDBACK);
END$$
DELIMITER ;
