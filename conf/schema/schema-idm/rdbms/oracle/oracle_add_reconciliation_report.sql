INSERT INTO REPORT_INFO (REPORT_INFO_ID, REPORT_NAME, DATASOURCE_FILE_PATH, REPORT_FILE_PATH)
	VALUES ('40288187432fd1fb0143301644d70019','RECONCILIATION_REPORT','ReconciliationReport.groovy','ReconciliationReport.rptdesign');

INSERT INTO REPORT_CRITERIA_PARAMETER (RCP_ID, REPORT_INFO_ID, PARAM_NAME, PARAM_VALUE, RCPT_ID)
		VALUES ('40288187432fd1fb0143301644d70020','40288187432fd1fb0143301644d70019', 'MANAGED_SYS_ID', NULL, '1');



