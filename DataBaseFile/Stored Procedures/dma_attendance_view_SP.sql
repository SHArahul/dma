USE `dma`;
DROP procedure IF EXISTS `dma_attendance_view`;

DELIMITER $$
USE `dma`;
CREATE PROCEDURE `dma_attendance_view`(

SECTION1 VARCHAR(45)

)
BEGIN
 SELECT USER_ID,FIRST_NAME,LAST_NAME,SECTION FROM dma.dma_user_student where SECTION=SECTION1;
END$$
DELIMITER ;
