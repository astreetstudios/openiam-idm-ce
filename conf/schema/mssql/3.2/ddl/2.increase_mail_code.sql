use openiam;

ALTER TABLE USERS ALTER COLUMN MAIL_CODE NVARCHAR(100) NULL;
ALTER TABLE USERS ADD DEFAULT 'NULL' FOR MAIL_CODE;
