USE 'dma';
DROP procedure IF EXISTS `dma_delete_student`;

DELIMITER $$
USE 'dma';
CREATE PROCEDURE `dma_delete_student`(USERID DOUBLE)
BEGIN
DELETE FROM dma.dma_user_student WHERE USER_ID=USERID;
END$$
DELIMITER ;
