use openiam;

ALTER TABLE USER_IDENTITY_ANS CHANGE COLUMN QUESTION_ANSWER QUESTION_ANSWER VARCHAR(1024) NULL DEFAULT NULL;
ALTER TABLE MANAGED_SYS CHANGE COLUMN PSWD PSWD VARCHAR(512) NULL DEFAULT NULL;
