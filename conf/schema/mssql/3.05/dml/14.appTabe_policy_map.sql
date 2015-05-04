use openiam;

DELETE FROM ATTRIBUTE_MAP WHERE ATTRIBUTE_MAP_ID = '612';
DELETE FROM ATTRIBUTE_MAP WHERE ATTRIBUTE_MAP_ID = '613';
DELETE FROM ATTRIBUTE_MAP WHERE ATTRIBUTE_MAP_ID = '614';
DELETE FROM ATTRIBUTE_MAP WHERE ATTRIBUTE_MAP_ID = '615';
DELETE FROM ATTRIBUTE_MAP WHERE ATTRIBUTE_MAP_ID = '616';
DELETE FROM ATTRIBUTE_MAP WHERE ATTRIBUTE_MAP_ID = '617';
DELETE FROM ATTRIBUTE_MAP WHERE ATTRIBUTE_MAP_ID = '618';
DELETE FROM ATTRIBUTE_MAP WHERE ATTRIBUTE_MAP_ID = '619';
DELETE FROM ATTRIBUTE_MAP WHERE ATTRIBUTE_MAP_ID = '620';

DELETE FROM MANAGED_SYS WHERE MANAGED_SYS_ID = '113';
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID = '113';
DELETE FROM RES WHERE RESOURCE_ID = '113';

DELETE FROM PROVISION_CONNECTOR WHERE CONNECTOR_ID = '61';

DELETE FROM RECON_RES_ATTR_MAP WHERE RECON_RES_ATTR_MAP_ID='65';
DELETE FROM RECON_RES_ATTR_MAP WHERE RECON_RES_ATTR_MAP_ID='66';
DELETE FROM RECON_RES_ATTR_MAP WHERE RECON_RES_ATTR_MAP_ID='67';
DELETE FROM RECON_RES_ATTR_MAP WHERE RECON_RES_ATTR_MAP_ID='68';
DELETE FROM RECON_RES_ATTR_MAP WHERE RECON_RES_ATTR_MAP_ID='69';
DELETE FROM RECON_RES_ATTR_MAP WHERE RECON_RES_ATTR_MAP_ID='70';
DELETE FROM RECON_RES_ATTR_MAP WHERE RECON_RES_ATTR_MAP_ID='71';
DELETE FROM RECON_RES_ATTR_MAP WHERE RECON_RES_ATTR_MAP_ID='72';
DELETE FROM RECON_RES_ATTR_MAP WHERE RECON_RES_ATTR_MAP_ID='73';
DELETE FROM POLICY WHERE POLICY_ID = '4660';
DELETE FROM POLICY WHERE POLICY_ID = '4661';
DELETE FROM POLICY WHERE POLICY_ID = '4662';


INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT) VALUES ('4660','104','userCreateDate','userCreateDate',1,GETDATE(),'3000','provision/userCreateDate.groovy','');
INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT) VALUES ('4661','104','userCreateDate','userCreateDate',1,GETDATE(),'3000','provision/ext_phone.groovy','');
INSERT INTO POLICY (POLICY_ID,POLICY_DEF_ID,NAME,DESCRIPTION,STATUS,CREATE_DATE,CREATED_BY,RULE_SRC_URL,RULE_TEXT) VALUES ('4662','104','userCreateDate','userCreateDate',1,GETDATE(),'3000','provision/nmb_phone.groovy','');

--LOGIN
INSERT INTO RECON_RES_ATTR_MAP (RECON_RES_ATTR_MAP_ID,ATTR_POLICY_ID) VALUES (65,4562);
--PASSWORD
INSERT INTO RECON_RES_ATTR_MAP (RECON_RES_ATTR_MAP_ID,ATTR_POLICY_ID) VALUES (66,4509);
--FIRST_NAME
INSERT INTO RECON_RES_ATTR_MAP (RECON_RES_ATTR_MAP_ID,ATTR_POLICY_ID) VALUES (67,4601);
--LAST_NAME_NAME
INSERT INTO RECON_RES_ATTR_MAP (RECON_RES_ATTR_MAP_ID,ATTR_POLICY_ID) VALUES (68,4602);
--EMPLOYEE_ID
INSERT INTO RECON_RES_ATTR_MAP (RECON_RES_ATTR_MAP_ID,ATTR_POLICY_ID) VALUES (69,4543);
--DOB
INSERT INTO RECON_RES_ATTR_MAP (RECON_RES_ATTR_MAP_ID,ATTR_POLICY_ID) VALUES (70,4541);
--CREATE_DATE
INSERT INTO RECON_RES_ATTR_MAP (RECON_RES_ATTR_MAP_ID,ATTR_POLICY_ID) VALUES (71,4660);
--ROLE

--PHONE_EXT
INSERT INTO RECON_RES_ATTR_MAP (RECON_RES_ATTR_MAP_ID,ATTR_POLICY_ID) VALUES (72,4661);
--PHONE_NMB
INSERT INTO RECON_RES_ATTR_MAP (RECON_RES_ATTR_MAP_ID,ATTR_POLICY_ID) VALUES (73,4662);

--RESOURCE_
INSERT INTO RES (RESOURCE_ID,RESOURCE_TYPE_ID,DESCRIPTION,NAME,DISPLAY_ORDER,URL,MIN_AUTH_LEVEL,IS_PUBLIC) VALUES ('113','MANAGED_SYS',NULL,'AppTableMSys',NULL,NULL,NULL,'N');

--RESOURCE_PROP
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID,RESOURCE_ID,METADATA_ID,NAME,PROP_VALUE,PROP_GROUP) VALUES ('113','113',NULL,'TABLE_NAME','MY_USR_TABLE',NULL);

--CONENCTOR
INSERT INTO PROVISION_CONNECTOR (CONNECTOR_ID,NAME,CLIENT_COMM_PROTOCOL, SERVICE_URL,SERVICE_NAMESPACE,SERVICE_PORT,CONNECTOR_INTERFACE) VALUES ('61','AppTableConnector','CLEAR','localhost:9080/openiam-esb/idmsrvc/ApplicationTablesConnector','http://www.openiam.org/service/connector','NA','LOCAL');


--MSYS
INSERT INTO MANAGED_SYS (MANAGED_SYS_ID,NAME,DESCRIPTION,STATUS,CONNECTOR_ID,HOST_URL,APPL_URL,PORT,COMM_PROTOCOL,USER_ID,PSWD,START_DATE,END_DATE,RESOURCE_ID,PRIMARY_REPOSITORY,SECONDARY_REPOSITORY_ID,ALWAYS_UPDATE_SECONDARY,RES_DEPENDENCY,ADD_HNDLR,MODIFY_HNDLR,DELETE_HNDLR,SETPASS_HNDLR,SUSPEND_HNDLR,SEARCH_HNDLR,LOOKUP_HNDLR,TEST_CONNECTION_HNDLR,RECONCILE_RESOURCE_HNDLR,HNDLR_5,DRIVER_URL,CONNECTION_STRING,ATTRIBUTE_NAMES_LOOKUP,ATTRIBUTE_NAMES_HNDLR) VALUES (113,'AppTableMSys',NULL,'ACTIVE',61,NULL,NULL,NULL,'CLEAR','root',NULL,NULL,NULL,113,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'com.mysql.jdbc.Driver','jdbc:mysql://localhost/test',NULL,NULL);

INSERT INTO ATTRIBUTE_MAP (ATTRIBUTE_MAP_ID,MANAGED_SYS_ID,RESOURCE_ID,MAP_FOR_OBJECT_TYPE,ATTRIBUTE_NAME,TARGET_ATTRIBUTE_NAME,AUTHORITATIVE_SRC,ATTRIBUTE_POLICY_ID,RULE_TEXT,STATUS,START_DATE,END_DATE,STORE_IN_IAMDB,DATA_TYPE,DEFAULT_VALUE,SYNCH_CONFIG_ID) VALUES (612,113,113,'PRINCIPAL','LOGIN_ID',NULL,NULL,65,NULL,'ACTIVE',NULL,NULL,NULL,'STRING',NULL,NULL);

INSERT INTO ATTRIBUTE_MAP
(ATTRIBUTE_MAP_ID,MANAGED_SYS_ID,RESOURCE_ID,MAP_FOR_OBJECT_TYPE,ATTRIBUTE_NAME,TARGET_ATTRIBUTE_NAME,AUTHORITATIVE_SRC,ATTRIBUTE_POLICY_ID,RULE_TEXT,STATUS,START_DATE,END_DATE,STORE_IN_IAMDB,DATA_TYPE,DEFAULT_VALUE,SYNCH_CONFIG_ID) VALUES (613,113,113,'USER','USER_PASSWORD',NULL,NULL,66,NULL,'ACTIVE',NULL,NULL,NULL,'STRING',NULL,NULL);

INSERT INTO ATTRIBUTE_MAP
(ATTRIBUTE_MAP_ID,MANAGED_SYS_ID,RESOURCE_ID,MAP_FOR_OBJECT_TYPE,ATTRIBUTE_NAME,TARGET_ATTRIBUTE_NAME,AUTHORITATIVE_SRC,ATTRIBUTE_POLICY_ID,RULE_TEXT,STATUS,START_DATE,END_DATE,STORE_IN_IAMDB,DATA_TYPE,DEFAULT_VALUE,SYNCH_CONFIG_ID) VALUES (614,113,113,'USER','FIRST_NAME',NULL,NULL,67,NULL,'ACTIVE',NULL,NULL,NULL,'STRING',NULL,NULL);

INSERT INTO ATTRIBUTE_MAP
(ATTRIBUTE_MAP_ID,MANAGED_SYS_ID,RESOURCE_ID,MAP_FOR_OBJECT_TYPE,ATTRIBUTE_NAME,TARGET_ATTRIBUTE_NAME,AUTHORITATIVE_SRC,ATTRIBUTE_POLICY_ID,RULE_TEXT,STATUS,START_DATE,END_DATE,STORE_IN_IAMDB,DATA_TYPE,DEFAULT_VALUE,SYNCH_CONFIG_ID) VALUES (615,113,113,'USER','LAST_NAME',NULL,NULL,68,NULL,'ACTIVE',NULL,NULL,NULL,'STRING',NULL,NULL);

INSERT INTO ATTRIBUTE_MAP
(ATTRIBUTE_MAP_ID,MANAGED_SYS_ID,RESOURCE_ID,MAP_FOR_OBJECT_TYPE,ATTRIBUTE_NAME,TARGET_ATTRIBUTE_NAME,AUTHORITATIVE_SRC,ATTRIBUTE_POLICY_ID,RULE_TEXT,STATUS,START_DATE,END_DATE,STORE_IN_IAMDB,DATA_TYPE,DEFAULT_VALUE,SYNCH_CONFIG_ID) VALUES (616,113,113,'USER','EMPLOYEE_ID',NULL,NULL,69,NULL,'ACTIVE',NULL,NULL,NULL,'STRING',NULL,NULL);

INSERT INTO ATTRIBUTE_MAP
(ATTRIBUTE_MAP_ID,MANAGED_SYS_ID,RESOURCE_ID,MAP_FOR_OBJECT_TYPE,ATTRIBUTE_NAME,TARGET_ATTRIBUTE_NAME,AUTHORITATIVE_SRC,ATTRIBUTE_POLICY_ID,RULE_TEXT,STATUS,START_DATE,END_DATE,STORE_IN_IAMDB,DATA_TYPE,DEFAULT_VALUE,SYNCH_CONFIG_ID) VALUES (617,113,113,'USER','DOB',NULL,NULL,70,NULL,'ACTIVE',NULL,NULL,NULL,'DATE',NULL,NULL);

INSERT INTO ATTRIBUTE_MAP
(ATTRIBUTE_MAP_ID,MANAGED_SYS_ID,RESOURCE_ID,MAP_FOR_OBJECT_TYPE,ATTRIBUTE_NAME,TARGET_ATTRIBUTE_NAME,AUTHORITATIVE_SRC,ATTRIBUTE_POLICY_ID,RULE_TEXT,STATUS,START_DATE,END_DATE,STORE_IN_IAMDB,DATA_TYPE,DEFAULT_VALUE,SYNCH_CONFIG_ID) VALUES (618,113,113,'USER','CREATE_DATE',NULL,NULL,71,NULL,'ACTIVE',NULL,NULL,NULL,'DATE',NULL,NULL);

INSERT INTO ATTRIBUTE_MAP
(ATTRIBUTE_MAP_ID,MANAGED_SYS_ID,RESOURCE_ID,MAP_FOR_OBJECT_TYPE,ATTRIBUTE_NAME,TARGET_ATTRIBUTE_NAME,AUTHORITATIVE_SRC,ATTRIBUTE_POLICY_ID,RULE_TEXT,STATUS,START_DATE,END_DATE,STORE_IN_IAMDB,DATA_TYPE,DEFAULT_VALUE,SYNCH_CONFIG_ID) VALUES (619,113,113,'USER','PHONE_EXT',NULL,NULL,72,NULL,'ACTIVE',NULL,NULL,NULL,'INT',NULL,NULL);

INSERT INTO ATTRIBUTE_MAP
(ATTRIBUTE_MAP_ID,MANAGED_SYS_ID,RESOURCE_ID,MAP_FOR_OBJECT_TYPE,ATTRIBUTE_NAME,TARGET_ATTRIBUTE_NAME,AUTHORITATIVE_SRC,ATTRIBUTE_POLICY_ID,RULE_TEXT,STATUS,START_DATE,END_DATE,STORE_IN_IAMDB,DATA_TYPE,DEFAULT_VALUE,SYNCH_CONFIG_ID) VALUES (620,113,113,'USER','PHONE_NBR',NULL,NULL,73,NULL,'ACTIVE',NULL,NULL,NULL,'STRING',NULL,NULL);
