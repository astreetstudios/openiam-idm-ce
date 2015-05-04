use openiam;

ALTER TABLE APPROVER_ASSOC CHANGE ASSOCIATION_OBJ_ID ASSOCIATION_ENTITY_ID VARCHAR(32) NULL;

ALTER TABLE APPROVER_ASSOC ADD COLUMN APPROVER_ENTITY_TYPE VARCHAR(20) NULL;
ALTER TABLE APPROVER_ASSOC ADD COLUMN APPROVER_ENTITY_ID VARCHAR(32) NULL;

ALTER TABLE APPROVER_ASSOC CHANGE ON_APPROVE_NOTIFY_USER_ID ON_APPROVE_ENTITY_ID VARCHAR(32) NULL;
ALTER TABLE APPROVER_ASSOC CHANGE ON_REJECT_NOTIFY_USER_ID ON_REJECT_ENTITY_ID VARCHAR(32) NULL;

ALTER TABLE APPROVER_ASSOC CHANGE APPROVE_NOTIFY_USER_TYPE ON_APPROVE_ENTITY_TYPE VARCHAR(20) NULL;
ALTER TABLE APPROVER_ASSOC CHANGE REJECT_NOTIFY_USER_TYPE ON_REJECT_ENTITY_TYPE VARCHAR(20) NULL;

ALTER TABLE APPROVER_ASSOC DROP COLUMN ACTN;

ALTER TABLE APPROVER_ASSOC DROP COLUMN APPROVER_ROLE_DOMAIN;

UPDATE APPROVER_ASSOC SET APPROVER_ENTITY_TYPE='USER', APPROVER_ENTITY_ID=APPROVER_USER_ID WHERE APPROVER_USER_ID IS NOT NULL;
UPDATE APPROVER_ASSOC SET APPROVER_ENTITY_TYPE='ROLE', APPROVER_ENTITY_ID=APPROVER_ROLE_ID WHERE APPROVER_ROLE_ID IS NOT NULL;

ALTER TABLE APPROVER_ASSOC DROP COLUMN APPROVER_ROLE_ID;
ALTER TABLE APPROVER_ASSOC DROP COLUMN APPROVER_USER_ID;

ALTER TABLE APPROVER_ASSOC ADD COLUMN APPLY_DELEGATION_FILTER_T char(1) NULL;
UPDATE APPROVER_ASSOC SET APPLY_DELEGATION_FILTER_T='Y' WHERE APPLY_DELEGATION_FILTER=1;
UPDATE APPROVER_ASSOC SET APPLY_DELEGATION_FILTER_T='N' WHERE APPLY_DELEGATION_FILTER=0;
UPDATE APPROVER_ASSOC SET APPLY_DELEGATION_FILTER_T='N' WHERE APPLY_DELEGATION_FILTER IS NULL;
ALTER TABLE APPROVER_ASSOC DROP COLUMN APPLY_DELEGATION_FILTER;
ALTER TABLE APPROVER_ASSOC CHANGE APPLY_DELEGATION_FILTER_T APPLY_DELEGATION_FILTER char(1) NOT NULL DEFAULT 'N';