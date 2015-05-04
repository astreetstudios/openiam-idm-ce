use openiam;

DELIMITER $$

DROP PROCEDURE IF EXISTS alterUserTypes$$

CREATE PROCEDURE alterUserTypes()
	BEGIN
		UPDATE USERS SET JOB_CODE=null WHERE JOB_CODE not in (SELECT TYPE_ID from METADATA_TYPE WHERE GROUPING='JOB_CODE');
		UPDATE USERS SET EMPLOYEE_TYPE=null WHERE EMPLOYEE_TYPE not in (SELECT TYPE_ID from METADATA_TYPE WHERE GROUPING='USER_TYPE');

		IF NOT EXISTS (SELECT 1 FROM information_schema.TABLE_CONSTRAINTS tc WHERE CONSTRAINT_TYPE = 'FOREIGN KEY' AND TABLE_SCHEMA = 'openiam' AND TABLE_NAME = 'USERS' AND CONSTRAINT_NAME='FK_JOB_CODE_METADATA_TYPE') THEN
			ALTER TABLE USERS CHANGE COLUMN JOB_CODE JOB_CODE VARCHAR(32) NULL DEFAULT NULL;

			ALTER TABLE USERS 
				ADD CONSTRAINT FK_JOB_CODE_METADATA_TYPE FOREIGN KEY (JOB_CODE) REFERENCES METADATA_TYPE (TYPE_ID);
		END IF;

		IF NOT EXISTS (SELECT 1 FROM information_schema.TABLE_CONSTRAINTS tc WHERE CONSTRAINT_TYPE = 'FOREIGN KEY' AND TABLE_SCHEMA = 'openiam' AND TABLE_NAME = 'USERS' AND CONSTRAINT_NAME='FK_EMPLOYEE_TYPE_METADATA_TYPE') THEN
			ALTER TABLE USERS CHANGE COLUMN EMPLOYEE_TYPE EMPLOYEE_TYPE VARCHAR(32) NULL DEFAULT NULL;

			ALTER TABLE USERS 
				ADD CONSTRAINT FK_EMPLOYEE_TYPE_METADATA_TYPE FOREIGN KEY (EMPLOYEE_TYPE) REFERENCES METADATA_TYPE (TYPE_ID);
		END IF;
	END$$
DELIMITER ;

call alterUserTypes();

DROP PROCEDURE alterUserTypes;

