use openiam;

CREATE TABLE REPORT_PARAMETER_METATYPE (
	PARAM_METATYPE_ID NVARCHAR(32) NOT NULL,
	PARAM_METATYPE_NAME NVARCHAR(45) NOT NULL,
	IS_MULTIPLE CHAR(1) NOT NULL DEFAULT 'N',
	PRIMARY KEY (PARAM_METATYPE_ID)
	);

ALTER TABLE REPORT_CRITERIA_PARAMETER ADD PARAM_META_TYPE_ID NVARCHAR(32) NULL DEFAULT NULL;
ALTER TABLE REPORT_CRITERIA_PARAMETER ADD IS_MULTIPLE CHAR(1) NOT NULL DEFAULT 'N';
ALTER TABLE REPORT_CRITERIA_PARAMETER ADD IS_REQUIRED CHAR(1) NOT NULL DEFAULT 'N';
ALTER TABLE REPORT_CRITERIA_PARAMETER ADD CAPTION NVARCHAR(100);

ALTER TABLE REPORT_CRITERIA_PARAMETER ADD CONSTRAINT RCP_PARAM_META_TYPE_FK 
	FOREIGN KEY (PARAM_META_TYPE_ID) REFERENCES REPORT_PARAMETER_METATYPE (PARAM_METATYPE_ID);
