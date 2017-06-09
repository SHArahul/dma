USE 'dma';
DROP procedure IF EXISTS `dma_student_search`;

DELIMITER $$
USE 'dma';
CREATE PROCEDURE `dma_student_search`(
USERID DOUBLE)
BEGIN
	SELECT * FROM dma.dma_user_student WHERE USER_ID=USERID;
END$$
DELIMITER ;
