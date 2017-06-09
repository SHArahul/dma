USE `dma`;
DROP procedure IF EXISTS `dma_attendance_update`;

DELIMITER $$
USE `dma`;
CREATE PROCEDURE `dma_attendance_update`(USERID DOUBLE
)
BEGIN
	UPDATE dma.dma_user_student SET ATTENDANCE=ATTENDANCE+1 WHERE USER_ID=USERID;
END$$
DELIMITER ;
