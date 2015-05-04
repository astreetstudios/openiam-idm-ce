DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN('SYNCDETAIL');
DELETE FROM RESOURCE_USER WHERE RESOURCE_ID IN('SYNCDETAIL');
DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID IN('SYNCDETAIL');
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('SYNCDETAIL');
DELETE FROM RESOURCE_GROUP WHERE RESOURCE_ID IN('SYNCDETAIL');
DELETE FROM RES WHERE RESOURCE_ID IN('SYNCDETAIL');

UPDATE RES SET URL='/webconsole-idm/provisioning/synchronizationlist.html' WHERE RESOURCE_ID='SYNCUSER';

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SYNCUSER_MENU_ITEM', 'MENU_ITEM', 'SYNCUSER_MENU_ITEM', 'Synchronization', '/webconsole-idm/provisioning/synchronizationlist.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SYNCUSER_DESC', 'SYNCUSER_MENU_ITEM', 'MENU_DISPLAY_NAME', 'Synchronization');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SYNCUSER_PUB', 'SYNCUSER_MENU_ITEM', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SYNCUSER_NEW', 'MENU_ITEM', 'SYNCUSER_NEW', 'Create Synchronization', '/webconsole-idm/provisioning/synchronization.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SYNCUSER_NEW_DESC', 'SYNCUSER_NEW', 'MENU_DISPLAY_NAME', 'Create Synchronization');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SYNCUSER_NEW_PUB', 'SYNCUSER_NEW', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('SYNCUSER_MENU_ITEM', 'SYNCUSER_NEW');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, IS_PUBLIC, IS_SSL) VALUES ('MNGSYS_EDIT_MENU_ROOT', 'MENU_ITEM', NULL, 'MNGSYS_EDIT_MENU_ROOT', 1, 'Y', 'N');

UPDATE RES SET URL='/webconsole/reconciliationEdit.html' WHERE RESOURCE_ID='RESRECONCILE';
UPDATE res_to_res_membership SET RESOURCE_ID='MNGSYS_EDIT_MENU_ROOT' WHERE MEMBER_RESOURCE_ID='RESRECONCILE';
UPDATE res_to_res_membership SET RESOURCE_ID='MNGSYS_EDIT_MENU_ROOT' WHERE MEMBER_RESOURCE_ID='RESPOLICYMAP';

INSERT INTO RES (RESOURCE_ID, NAME, RESOURCE_TYPE_ID, DESCRIPTION, DISPLAY_ORDER, URL, IS_PUBLIC, IS_SSL) VALUES ('MNGSYS_EDIT','MNGSYS_EDIT', 'MENU_ITEM', 'Edit managed system', 1, '/webconsole-idm/provisioning/mngsystem.html', 'Y', 'N');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('MNGSYS_EDIT_MENU_ROOT', 'MNGSYS_EDIT');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('MNGSYS_EDIT_DESC', 'MNGSYS_EDIT', 'MENU_DISPLAY_NAME', 'Edit managed system');




DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN('AUTHENTICATION_POLICY', 'NEW_AUTHENTICATION_POLICY', 'PASSWORD_POLICY', 'NEW_PASSWORD_POLICY', 'ASSOC_POLICY', 'UPLOAD_CUST_PSWD_POLICY', 'POLICY_ATTR_ROOT', 'POLICY_ATTR_EDIT_ROOT', 'PASSWORD_POLICY_EDIT', 'EDIT_POLICY_ATTR_SRCH_BCK', 'NEW_EDIT_POLICY_ATTR', 'NEW_POLICY_ATTR', 'ATTRIBUTE_POLICY');

DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN ('AUTHENTICATION_POLICY', 'NEW_AUTHENTICATION_POLICY', 'PASSWORD_POLICY', 'NEW_PASSWORD_POLICY', 'PASSWORD_POLICY_ROOT_MENU', 'AUTHENTICATION_POLICY_ROOT_MENU', 'ASSOC_POLICY', 'UPLOAD_CUST_PSWD_POLICY', 'POLICY_ATTR_ROOT', 'POLICY_ATTR_EDIT_ROOT', 'PASSWORD_POLICY_EDIT', 'EDIT_POLICY_ATTR_SRCH_BCK', 'NEW_EDIT_POLICY_ATTR', 'NEW_POLICY_ATTR', 'ATTRIBUTE_POLICY');

DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID IN ('AUTHENTICATION_POLICY', 'NEW_AUTHENTICATION_POLICY', 'PASSWORD_POLICY', 'NEW_PASSWORD_POLICY', 'PASSWORD_POLICY_ROOT_MENU', 'AUTHENTICATION_POLICY_ROOT_MENU', 'ASSOC_POLICY', 'UPLOAD_CUST_PSWD_POLICY', 'POLICY_ATTR_ROOT', 'POLICY_ATTR_EDIT_ROOT', 'PASSWORD_POLICY_EDIT', 'EDIT_POLICY_ATTR_SRCH_BCK', 'NEW_EDIT_POLICY_ATTR', 'NEW_POLICY_ATTR', 'ATTRIBUTE_POLICY');

DELETE FROM RES WHERE RESOURCE_ID IN('AUTHENTICATION_POLICY', 'NEW_AUTHENTICATION_POLICY', 'PASSWORD_POLICY', 'NEW_PASSWORD_POLICY', 'PASSWORD_POLICY_ROOT_MENU', 'AUTHENTICATION_POLICY_ROOT_MENU', 'ASSOC_POLICY', 'UPLOAD_CUST_PSWD_POLICY', 'POLICY_ATTR_ROOT', 'POLICY_ATTR_EDIT_ROOT', 'PASSWORD_POLICY_EDIT', 'EDIT_POLICY_ATTR_SRCH_BCK', 'NEW_EDIT_POLICY_ATTR', 'NEW_POLICY_ATTR', 'ATTRIBUTE_POLICY');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, URL, IS_PUBLIC, IS_SSL) VALUES ('PASSWORD_POLICY', 'MENU_ITEM', 'Password policy', 'PASSWORD_POLICY', 1, '/webconsole/passwordPolicy.html', 'Y', 'N');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('POLICY_MENU_PUB', 'PASSWORD_POLICY', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('POLICY_MENU_DESC', 'PASSWORD_POLICY', 'MENU_DISPLAY_NAME', 'Password Policy');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, IS_PUBLIC, IS_SSL) VALUES ('PASSWORD_POLICY_ROOT_MENU', 'MENU_ITEM', 'Root for Password policy Context Menu', 'PASSWORD_POLICY_ROOT_MENU', 1, 'Y', 'N');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('POLICY_ROOT_MENU_PUB', 'PASSWORD_POLICY_ROOT_MENU', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('POLICY_ROOT_MENU_DESC', 'PASSWORD_POLICY_ROOT_MENU', 'MENU_DISPLAY_NAME', 'Password Policy Root Menu');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL, DISPLAY_ORDER, IS_PUBLIC, IS_SSL) VALUES('NEW_PASSWORD_POLICY', 'MENU_ITEM', 'NEW_PASSWORD_POLICY', 'Create New Password Policy ','/webconsole/editPolicy.html', 1, 'Y', 'N');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('NEW_PASSWORD_POLICY_PUB', 'NEW_PASSWORD_POLICY', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('NEW_PASSWORD_POLICY_DESC', 'NEW_PASSWORD_POLICY', 'MENU_DISPLAY_NAME', 'Create New Pswd Policy');



INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('SECURITY_POLICY', 'PASSWORD_POLICY');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('PASSWORD_POLICY_ROOT_MENU', 'NEW_PASSWORD_POLICY');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, URL, IS_PUBLIC, IS_SSL) VALUES ('AUTHENTICATION_POLICY', 'MENU_ITEM', 'Authentication policy', 'AUTHENTICATION_POLICY', 2, '/webconsole/authenticationPolicy.html', 'Y', 'N');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('AUTHENTICATION_POLICY_MENU_PUB', 'AUTHENTICATION_POLICY', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('AUTHENTICATION_POLICY_MENU_DESC', 'AUTHENTICATION_POLICY', 'MENU_DISPLAY_NAME', 'Authenticaton Policy');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, IS_PUBLIC, IS_SSL) VALUES ('AUTHENTICATION_POLICY_ROOT_MENU', 'MENU_ITEM', 'Root for Authentication policy Context Menu', 'AUTHENTICATION_POLICY_ROOT_MENU', 1, 'Y', 'N');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('AUTH_POLICY_ROOT_MENU_PUB', 'AUTHENTICATION_POLICY_ROOT_MENU', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('AUTH_POLICY_ROOT_MENU_DESC', 'AUTHENTICATION_POLICY_ROOT_MENU', 'MENU_DISPLAY_NAME', 'Authentication Policy Root Menu');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL, DISPLAY_ORDER, IS_PUBLIC, IS_SSL) VALUES('NEW_AUTHENTICATION_POLICY', 'MENU_ITEM', 'NEW_AUTHENTICATION_POLICY', 'Create New Authentication Policy ','/webconsole/editAuthenticationPolicy.html' , 1, 'Y', 'N');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('NEW_AUTHENTICATION_POLICY_PUB', 'NEW_AUTHENTICATION_POLICY', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('NEW_AUTHENTICATION_POLICY_DESC', 'NEW_AUTHENTICATION_POLICY', 'MENU_DISPLAY_NAME', 'Create New Auth Policy');

INSERT INTO  res_to_res_membership(RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('SECURITY_POLICY', 'AUTHENTICATION_POLICY');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('AUTHENTICATION_POLICY_ROOT_MENU', 'NEW_AUTHENTICATION_POLICY');

/* for assoc password*/

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL, DISPLAY_ORDER, IS_PUBLIC, IS_SSL) VALUES('ASSOC_POLICY', 'MENU_ITEM', 'ASSOC_POLICY', 'Associate Policy','/webconsole/assocPasswordPolicy.html' , 1, 'Y', 'N');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ASSOC_POLICY_PUB', 'ASSOC_POLICY', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ASSOC_POLICY_DESC', 'ASSOC_POLICY', 'MENU_DISPLAY_NAME', 'Associate Policy');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, IS_PUBLIC, IS_SSL) VALUES ('PASSWORD_POLICY_EDIT', 'MENU_ITEM', 'Root for edit policy Context Menu', 'PASSWORD_POLICY_EDIT', 1, 'Y', 'N');

INSERT INTO RESOURCE_PROP  (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('PASSWORD_POLICY_EDIT_PUB', 'PASSWORD_POLICY_EDIT', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RESOURCE_PROP  (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('PASSWORD_POLICY_EDIT_DESC', 'PASSWORD_POLICY_EDIT', 'MENU_DISPLAY_NAME', 'Associate Policy Root Menu');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('PASSWORD_POLICY_EDIT', 'ASSOC_POLICY');

/*Upload Custom Password Policy Menu*/

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL, DISPLAY_ORDER, IS_PUBLIC, IS_SSL) VALUES('UPLOAD_CUST_PSWD_POLICY', 'MENU_ITEM', 'UPLOAD_CUST_PSWD_POLICY', 'Upload Custom Password Policy','/webconsole/uploadCustomPswdPolicy.html',2, 'Y', 'N');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('UPLOAD_CUST_PSWD_POLICY_PUB', 'UPLOAD_CUST_PSWD_POLICY', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('UPLOAD_CUST_PSWD_POLICY_DESC', 'UPLOAD_CUST_PSWD_POLICY', 'MENU_DISPLAY_NAME', 'Custom Pswd Policy');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('PASSWORD_POLICY_ROOT_MENU', 'UPLOAD_CUST_PSWD_POLICY');



INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, URL, IS_PUBLIC, IS_SSL) VALUES ('ATTRIBUTE_POLICY', 'MENU_ITEM', 'Attribute policy', 'ATTRIBUTE_POLICY', 2, '/webconsole/attributePolicy.html', 'Y', 'N');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ATTRIBUTE_POLICY_PUB', 'ATTRIBUTE_POLICY', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ATTRIBUTE_POLICY_DESC', 'ATTRIBUTE_POLICY', 'MENU_DISPLAY_NAME', 'Attribute Policy');
INSERT INTO  res_to_res_membership(RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('SECURITY_POLICY', 'ATTRIBUTE_POLICY');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, IS_PUBLIC, IS_SSL) VALUES ('POLICY_ATTR_ROOT', 'MENU_ITEM', 'Root for Attribute policy Context Menu', 'POLICY_ATTR_ROOT', 1, 'Y', 'N');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('POLICY_ATTR_ROOT_PUB', 'POLICY_ATTR_ROOT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('POLICY_ATTR_ROOT_DESC', 'POLICY_ATTR_ROOT', 'MENU_DISPLAY_NAME', 'Attribute Policy Root Menu');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, URL, IS_PUBLIC, IS_SSL) VALUES ('NEW_POLICY_ATTR', 'MENU_ITEM', 'New Attribute policy', 'NEW_POLICY_ATTR', 2, '/webconsole/editAttributePolicy.html', 'Y', 'N');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('NEW_POLICY_ATTR_PUB', 'NEW_POLICY_ATTR', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('NEW_POLICY_ATTR_DESC', 'NEW_POLICY_ATTR', 'MENU_DISPLAY_NAME', 'New Attribute Policy');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('POLICY_ATTR_ROOT', 'NEW_POLICY_ATTR');



INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, IS_PUBLIC, IS_SSL) VALUES ('POLICY_ATTR_EDIT_ROOT', 'MENU_ITEM', 'Root for Edit Attribute policy Context Menu', 'POLICY_ATTR_EDIT_ROOT', 1, 'Y', 'N');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('POLICY_ATTR_EDIT_ROOT_PUB', 'POLICY_ATTR_EDIT_ROOT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('POLICY_ATTR_EDIT_ROOTT_DESC', 'POLICY_ATTR_EDIT_ROOT', 'MENU_DISPLAY_NAME', 'Attribute Policy Edit Root Menu');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, URL, IS_PUBLIC, IS_SSL) VALUES ('EDIT_POLICY_ATTR_SRCH_BCK', 'MENU_ITEM', 'Back to Search', 'EDIT_POLICY_ATTR_SRCH_BCK', 2, '/webconsole/attributePolicy.html', 'Y', 'N');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('EDIT_POLICY_ATTR_SRCH_BCK_PUB', 'EDIT_POLICY_ATTR_SRCH_BCK', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('EDIT_POLICY_ATTR_SRCH_BCK_DESC', 'EDIT_POLICY_ATTR_SRCH_BCK', 'MENU_DISPLAY_NAME', 'Back to Search');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('POLICY_ATTR_EDIT_ROOT', 'EDIT_POLICY_ATTR_SRCH_BCK');



UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='PSWD_CHANGE_RULE' WHERE DEF_PARAM_ID='111';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='PSWD_CHANGE_RULE' WHERE DEF_PARAM_ID='129';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='PSWD_CHANGE_RULE' WHERE DEF_PARAM_ID='133';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='PSWD_CHANGE_RULE' WHERE DEF_PARAM_ID='134';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='PSWD_CHANGE_RULE' WHERE DEF_PARAM_ID='141';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='PSWD_CHANGE_RULE' WHERE DEF_PARAM_ID='142';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='PSWD_CHANGE_RULE' WHERE DEF_PARAM_ID='139';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='FORGET_PSWD' WHERE DEF_PARAM_ID='130';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='FORGET_PSWD' WHERE DEF_PARAM_ID='131';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='FORGET_PSWD' WHERE DEF_PARAM_ID='132';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='FORGET_PSWD' WHERE DEF_PARAM_ID='171';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='PSWD_COMPOSITION' WHERE DEF_PARAM_ID='135';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='PSWD_COMPOSITION' WHERE DEF_PARAM_ID='136';

UPDATE POLICY_DEF_PARAM SET PARAM_GROUP='PSWD_COMPOSITION' WHERE DEF_PARAM_ID='120';

DELETE FROM POLICY_DEF_PARAM WHERE DEF_PARAM_ID IN ('180','181');

INSERT INTO POLICY_DEF_PARAM (DEF_PARAM_ID,POLICY_DEF_ID,NAME,DESCRIPTION,OPERATION,VALUE1,VALUE2,REPEATS,PARAM_GROUP,HANDLER_LANGUAGE,POLICY_PARAM_HANDLER) VALUES ('180','100','MIN_WORDS_PASSPHRASE','Minimum number of words in the phrase',NULL,'',NULL,NULL,'PSWD_COMPOSITION',NULL,'org.openiam.idm.srvc.pswd.rule.PassphraseMinWordsRule');
INSERT INTO POLICY_DEF_PARAM (DEF_PARAM_ID,POLICY_DEF_ID,NAME,DESCRIPTION,OPERATION,VALUE1,VALUE2,REPEATS,PARAM_GROUP,HANDLER_LANGUAGE,POLICY_PARAM_HANDLER) VALUES ('181','100','REPEAT_SAME_WORD_PASSPHRASE','Repetition of the same word in the phrase',NULL,NULL,NULL,NULL,'PSWD_COMPOSITION',NULL,'org.openiam.idm.srvc.pswd.rule.PassphraseRepeatWordRule');

DELETE FROM POLICY_ATTRIBUTE WHERE DEF_PARAM_ID IN ('123','124','125','126','128','120','135','136');

DELETE FROM POLICY_DEF_PARAM WHERE DEF_PARAM_ID='123';

DELETE FROM POLICY_DEF_PARAM WHERE DEF_PARAM_ID='124';

DELETE FROM POLICY_DEF_PARAM WHERE DEF_PARAM_ID='125';

DELETE FROM POLICY_DEF_PARAM WHERE DEF_PARAM_ID='126';

DELETE FROM POLICY_DEF_PARAM WHERE DEF_PARAM_ID='128';

DELETE FROM POLICY_DEF_PARAM WHERE DEF_PARAM_ID='120';

DELETE FROM POLICY_DEF_PARAM WHERE DEF_PARAM_ID='135';

DELETE FROM POLICY_DEF_PARAM WHERE DEF_PARAM_ID='136';


DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('RES_APROVER_ASSOC', 'GRP_APROVER_ASSOC', 'ROLE_APROVER_ASSOC');
DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN('RES_APROVER_ASSOC', 'GRP_APROVER_ASSOC', 'ROLE_APROVER_ASSOC');
DELETE FROM res_to_res_membership WHERE RESOURCE_ID IN('RES_APROVER_ASSOC', 'GRP_APROVER_ASSOC', 'ROLE_APROVER_ASSOC');
DELETE FROM RES WHERE RESOURCE_ID IN('RES_APROVER_ASSOC', 'GRP_APROVER_ASSOC', 'ROLE_APROVER_ASSOC');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('RES_APROVER_ASSOC', 'MENU_ITEM', 'RES_APROVER_ASSOC', 'Approver Associations', '/webconsole-idm/provisioning/resourceApproverAssociations.html');
INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('GRP_APROVER_ASSOC', 'MENU_ITEM', 'GRP_APROVER_ASSOC', 'Approver Associations', '/webconsole-idm/provisioning/groupApproverAssociations.html');
INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('ROLE_APROVER_ASSOC', 'MENU_ITEM', 'ROLE_APROVER_ASSOC', 'Approver Associations', '/webconsole-idm/provisioning/roleApproverAssociations.html');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('RES_APROVER_ASSOC_DN', 'RES_APROVER_ASSOC', 'MENU_DISPLAY_NAME', 'Approver Associations');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('RES_APROVER_ASSOC_PUB', 'RES_APROVER_ASSOC', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('GRP_APROVER_ASSOC_DN', 'GRP_APROVER_ASSOC', 'MENU_DISPLAY_NAME', 'Approver Associations');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('GRP_APROVER_ASSOC_PUB', 'GRP_APROVER_ASSOC', 'MENU_IS_PUBLIC', 'true');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ROLE_APROVER_ASSOC_DN', 'ROLE_APROVER_ASSOC', 'MENU_DISPLAY_NAME', 'Approver Associations');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ROLE_APROVER_ASSOC_PUB', 'ROLE_APROVER_ASSOC', 'MENU_IS_PUBLIC', 'true');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('RESOURCE_EDIT_PAGE_ROOT', 'RES_APROVER_ASSOC');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('GROUP_EDIT_MENU', 'GRP_APROVER_ASSOC');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('ROLE_EDIT_MENU', 'ROLE_APROVER_ASSOC');

UPDATE APPROVER_ASSOC SET ASSOCIATION_ENTITY_ID='254', ASSOCIATION_TYPE='RESOURCE' WHERE REQUEST_TYPE='254';


UPDATE RES SET URL='/webconsole-idm/provisioning/syncloglist.html' WHERE RESOURCE_ID='SYNCLOG';

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('SYNCLOG_MENU_ITEM', 'MENU_ITEM', 'SYNCLOG_MENU_ITEM', 'LOG Viewer', '/webconsole-idm/provisioning/syncloglist.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SYNCLOG_PUB', 'SYNCLOG_MENU_ITEM', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SYNCLOG_DESC', 'SYNCLOG_MENU_ITEM', 'MENU_DISPLAY_NAME', 'Synchronization Transaction Log Viewer');




DELETE FROM RESOURCE_PROP WHERE RESOURCE_PROP_ID = 'MNGSYSRULES_DESC';
DELETE FROM res_to_res_membership WHERE RESOURCE_ID = 'MNGSYS_EDIT_MENU_ROOT' AND MEMBER_RESOURCE_ID = 'MNGSYSRULES';
DELETE FROM RES WHERE RESOURCE_ID = 'MNGSYSRULES';

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, DISPLAY_ORDER, URL, IS_PUBLIC, IS_SSL) VALUES ('MNGSYSRULES', 'MENU_ITEM', 'Managed system roles', 'MNGSYSRULES', 3, '/webconsole-idm/provisioning/mngsystemrules.html','Y','N');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('MNGSYS_EDIT_MENU_ROOT', 'MNGSYSRULES');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('MNGSYSRULES_DESC', 'MNGSYSRULES', 'MENU_DISPLAY_NAME', 'Manages system rules');



UPDATE RES SET URL='/selfservice/users.html' WHERE RESOURCE_ID='CREATEREQ';
UPDATE RES SET URL='/selfservice/myTasks.html' WHERE RESOURCE_ID='REQINBOX';
UPDATE RES SET URL='/selfservice/newUser.html' WHERE RESOURCE_ID='NEWUSER';

DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID IN('CREATEREQ');
INSERT INTO RESOURCE_ROLE (RESOURCE_ID, ROLE_ID) VALUES('CREATEREQ', '1');

DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('REQINBOX', 'NEWUSER', 'CREATEREQ') AND NAME='IS_VISIBLE';

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES('REQINBOX_VISIBLE', 'REQINBOX', 'IS_VISIBLE', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES('NEWUSER_VISIBLE', 'NEWUSER', 'IS_VISIBLE', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES('CREATEREQ_VISIBLE', 'CREATEREQ', 'IS_VISIBLE', 'true');





DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('SELFSERV_USER_EDIT_ROOT', 'SELFSERV_USER_EDIT', 'SELFSERV_USER_MEMSHP');
DELETE FROM res_to_res_membership WHERE RESOURCE_ID IN('SELFSERV_USER_EDIT_ROOT', 'SELFSERV_USER_EDIT', 'SELFSERV_USER_MEMSHP');
DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN('SELFSERV_USER_EDIT_ROOT', 'SELFSERV_USER_EDIT', 'SELFSERV_USER_MEMSHP');
DELETE FROM RES WHERE RESOURCE_ID IN('SELFSERV_USER_EDIT_ROOT', 'SELFSERV_USER_EDIT', 'SELFSERV_USER_MEMSHP');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION) VALUES('SELFSERV_USER_EDIT_ROOT', 'MENU_ITEM', 'SELFSERV_USER_EDIT_ROOT', 'SelfService Edit User Root');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SS_USR_EDIT_RT_PUB', 'SELFSERV_USER_EDIT_ROOT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SS_USR_EDIT_RT_DESC', 'SELFSERV_USER_EDIT_ROOT', 'MENU_DISPLAY_NAME', 'SelfService Edit User Root');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('SELFSERV_USER_EDIT', 'MENU_ITEM', 'SELFSERV_USER_EDIT', 'Edit User','/selfservice/editUser.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_USER_EDIT_PUB', 'SELFSERV_USER_EDIT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_USER_EDIT_DESC', 'SELFSERV_USER_EDIT', 'MENU_DISPLAY_NAME', 'Edit User');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('SELFSERV_USER_MEMSHP', 'MENU_ITEM', 'SELFSERV_USER_MEMSHP', 'User Entitlements','/selfservice/userEntitlements.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_USER_MEMSHP_PUB', 'SELFSERV_USER_MEMSHP', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_USER_MEMSHP_DES', 'SELFSERV_USER_MEMSHP', 'MENU_DISPLAY_NAME', 'User Entitlements');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('SELFSERV_USER_EDIT_ROOT', 'SELFSERV_USER_EDIT');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('SELFSERV_USER_EDIT_ROOT', 'SELFSERV_USER_MEMSHP');

INSERT INTO AUTH_RESOURCE_AM_ATTRIBUTE (AM_ATTRIBUTE_ID, ATTRIBUTE_NAME) VALUES('Login.password', 'Password');









DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN('CHALLENGE_RESPONSE_QUESTION', 'CHALLENGE_RESPONSE_QUESTION_ROOT',  'CHALLENGE_RESPONSE_QUESTION_NEW');

DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('CHALLENGE_RESPONSE_QUESTION', 'CHALLENGE_RESPONSE_QUESTION_ROOT',  'CHALLENGE_RESPONSE_QUESTION_NEW');

DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID IN (
'CHALLENGE_RESPONSE_QUESTION', 'CHALLENGE_RESPONSE_QUESTION_ROOT',  'CHALLENGE_RESPONSE_QUESTION_NEW');

DELETE FROM RES WHERE RESOURCE_ID IN('CHALLENGE_RESPONSE_QUESTION', 'CHALLENGE_RESPONSE_QUESTION_ROOT',  'CHALLENGE_RESPONSE_QUESTION_NEW');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL, DISPLAY_ORDER, IS_PUBLIC, IS_SSL) VALUES('CHALLENGE_RESPONSE_QUESTION', 'MENU_ITEM', 'CHALLENGE_RESPONSE_QUESTION', 'Challenge Response Question', '/webconsole/challengeResponseQuestion.html', 3, 'Y', 'N');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('CHALLENGE_RESPONSE_QUESTION_PUB', 'CHALLENGE_RESPONSE_QUESTION', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('CHALLENGE_RESPONSE_QUESTION_DESC', 'CHALLENGE_RESPONSE_QUESTION', 'MENU_DISPLAY_NAME', 'Challenge Response Question');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('ADMIN', 'CHALLENGE_RESPONSE_QUESTION');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION) VALUES('CHALLENGE_RESPONSE_QUESTION_ROOT', 'MENU_ITEM', 'CHALLENGE_RESPONSE_QUESTION_ROOT', 'Challenge Response Question Root Menu');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('CHALLENGE_RESP_QUESTION_ROOT_PUB', 'CHALLENGE_RESPONSE_QUESTION_ROOT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('CHALLENGE_RESP_QUEST_ROOT_DESC', 'CHALLENGE_RESPONSE_QUESTION_ROOT', 'MENU_DISPLAY_NAME', 'Challenge Response Question Root Menu');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('CHALLENGE_RESPONSE_QUESTION_NEW', 'MENU_ITEM', 'CHALLENGE_RESPONSE_QUESTION_NEW', 'New Question', '/webconsole/editChallengeResponseQuestion.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('CHALLENGE_RESP_QUESTION_NEW_PUB', 'CHALLENGE_RESPONSE_QUESTION_NEW', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('CHALLENGE_RESP_QUESTION_NEW_DSC', 'CHALLENGE_RESPONSE_QUESTION_NEW', 'MENU_DISPLAY_NAME', 'Create New Question');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('CHALLENGE_RESPONSE_QUESTION_ROOT', 'CHALLENGE_RESPONSE_QUESTION_NEW');

