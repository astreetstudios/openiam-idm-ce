use openiam;

ALTER TABLE POLICY_DEF_PARAM CHANGE VALUE1 VALUE1 varchar(3072);
ALTER TABLE POLICY_DEF_PARAM CHANGE VALUE2 VALUE2 varchar(3072);
ALTER TABLE POLICY_ATTRIBUTE DROP COLUMN NAME;
ALTER TABLE POLICY_ATTRIBUTE DROP COLUMN OPERATION;
ALTER TABLE POLICY_ATTRIBUTE CHANGE VALUE1 VALUE1 varchar(3072);
ALTER TABLE POLICY_ATTRIBUTE CHANGE VALUE2 VALUE2 varchar(3072);


