use openiam;

/* selfservice */
DELETE FROM RESOURCE_USER WHERE RESOURCE_ID IN('REQUEST_APPROVAL', 'ORG_APROVER_ASSOC', 'SELFSERVICE_GROUPS', 'SELFSERVICE_ROLES', 'SELFSERVICE_RESOURCES', 'SELF_SUB_ORGS_MEMEBERSHIP', 'SS_ORG_BACK_SEARCH', 'MENUS_SEARCH');
DELETE FROM RESOURCE_GROUP WHERE RESOURCE_ID IN('REQUEST_APPROVAL', 'ORG_APROVER_ASSOC', 'SELFSERVICE_GROUPS', 'SELFSERVICE_ROLES', 'SELFSERVICE_RESOURCES', 'SELF_SUB_ORGS_MEMEBERSHIP', 'SS_ORG_BACK_SEARCH', 'MENUS_SEARCH');
DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID IN('REQUEST_APPROVAL', 'SELFSERVICE_GROUPS', 'SELFSERVICE_ROLES', 'SELFSERVICE_RESOURCES', 'SELF_SUB_ORGS_MEMEBERSHIP', 'SS_ORG_BACK_SEARCH', 'MENUS_SEARCH');
DELETE FROM res_to_res_membership WHERE RESOURCE_ID IN('REQUEST_APPROVAL', 'ORG_APROVER_ASSOC', 'SELFSERVICE_GROUPS', 'SELFSERVICE_ROLES', 'SELFSERVICE_RESOURCES', 'SELF_SUB_ORGS_MEMEBERSHIP', 'SS_ORG_BACK_SEARCH', 'MENUS_SEARCH');
DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN('REQUEST_APPROVAL', 'REQINBOX', 'MANAGEREQ', 'ORG_APROVER_ASSOC', 'SELFSERVICE_GROUPS', 'SELFSERVICE_ROLES', 'SELFSERVICE_RESOURCES', 'SELF_SUB_ORGS_MEMEBERSHIP', 'SS_ORG_BACK_SEARCH', 'MENUS_SEARCH');
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('REQUEST_APPROVAL', 'ORG_APROVER_ASSOC', 'SELFSERVICE_GROUPS', 'SELFSERVICE_ROLES', 'SELFSERVICE_RESOURCES', 'SELF_SUB_ORGS_MEMEBERSHIP', 'SS_ORG_BACK_SEARCH', 'MENUS_SEARCH');
DELETE FROM RES  WHERE RESOURCE_ID IN('REQUEST_APPROVAL', 'ORG_APROVER_ASSOC', 'SELFSERVICE_GROUPS', 'SELFSERVICE_ROLES', 'SELFSERVICE_RESOURCES', 'SELF_SUB_ORGS_MEMEBERSHIP', 'SS_ORG_BACK_SEARCH', 'MENUS_SEARCH');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, IS_PUBLIC, URL) VALUES('REQUEST_APPROVAL', 'MENU_ITEM', 'REQUEST_APPROVAL', 'Request Approval','N', 'javascript:void(0);');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('REQUEST_APPROVAL_PUB', 'REQUEST_APPROVAL', 'MENU_IS_PUBLIC', 'false');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('REQUEST_APPROVAL_DESC', 'REQUEST_APPROVAL', 'MENU_DISPLAY_NAME', 'Request Approval');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES('REQUEST_APPROVAL_DESC_ICON', 'REQUEST_APPROVAL', 'MENU_ICON', '/openiam-ui-static/images/common/icons/admin.png');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('REQUEST_APPROVAL', 'REQINBOX');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('REQUEST_APPROVAL', 'MANAGEREQ');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('SELFSERVICE', 'REQUEST_APPROVAL');

UPDATE RES SET IS_PUBLIC='N' WHERE RESOURCE_ID='SELFSRVS_ACCESS_MNGMNT_ORG';
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID='SELFSRVS_ACCESS_MNGMNT_ORG' AND NAME='MENU_IS_PUBLIC';
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES('SEFSERV_ORG_PUBLIC' ,'SELFSRVS_ACCESS_MNGMNT_ORG', 'MENU_IS_PUBLIC', 'false');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, IS_PUBLIC, URL) VALUES ('SELFSERVICE_GROUPS', 'MENU_ITEM', 'SELFSERVICE_GROUPS', 'Selfservice Groups', 'N', '/selfservice/groups.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERVICE_GROUPS_DN', 'SELFSERVICE_GROUPS', 'MENU_DISPLAY_NAME', 'Groups');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERVICE_GROUPS_PUB', 'SELFSERVICE_GROUPS', 'MENU_IS_PUBLIC', 'false');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, IS_PUBLIC, URL) VALUES ('SELFSERVICE_ROLES', 'MENU_ITEM', 'SELFSERVICE_ROLES', 'Selfservice Roles', 'N', '/selfservice/roles.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERVICE_ROLES_DN', 'SELFSERVICE_ROLES', 'MENU_DISPLAY_NAME', 'Roles');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERVICE_ROLES_PUB', 'SELFSERVICE_ROLES', 'MENU_IS_PUBLIC', 'false');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, IS_PUBLIC, URL) VALUES ('SELFSERVICE_RESOURCES', 'MENU_ITEM', 'SELFSERVICE_RESOURCES', 'Selfservice Resources', 'N', '/selfservice/resources.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERVICE_RESOURCES_DN', 'SELFSERVICE_RESOURCES', 'MENU_DISPLAY_NAME', 'Resources');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERVICE_RESOURCES_PUB', 'SELFSERVICE_RESOURCES', 'MENU_IS_PUBLIC', 'false');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('ACCESSCENTER', 'SELFSERVICE_GROUPS');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('ACCESSCENTER', 'SELFSERVICE_ROLES');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('ACCESSCENTER', 'SELFSERVICE_RESOURCES');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SS_ORG_BACK_SEARCH', 'MENU_ITEM', 'SS_ORG_BACK_SEARCH', 'Selfservice Resources', '/selfservice/organizations.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SS_ORG_BACK_SEARCH_DN', 'SS_ORG_BACK_SEARCH', 'MENU_DISPLAY_NAME', 'Back to Search');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SS_ORG_BACK_SEARCH_PUB', 'SS_ORG_BACK_SEARCH', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('SELF_SUB_ORGS_EDIT_ROOT', 'SS_ORG_BACK_SEARCH');

/* groups */
DELETE FROM res_to_res_membership WHERE RESOURCE_ID IN('SELFSRV_GRP_SRCH_ROOT', 'SELFSERV_GRP_NEW', 'SELFSRV_GRP_EDIT_ROOT', 'SELFSERV_GRP_EDIT', 'SELFSERV_GRP_BACK_SRCH');
DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN('SELFSRV_GRP_SRCH_ROOT', 'SELFSERV_GRP_NEW', 'SELFSRV_GRP_EDIT_ROOT', 'SELFSERV_GRP_EDIT', 'SELFSERV_GRP_BACK_SRCH');
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('SELFSRV_GRP_SRCH_ROOT', 'SELFSERV_GRP_NEW', 'SELFSRV_GRP_EDIT_ROOT', 'SELFSERV_GRP_EDIT', 'SELFSERV_GRP_BACK_SRCH');
DELETE FROM RES  WHERE RESOURCE_ID IN('SELFSRV_GRP_SRCH_ROOT', 'SELFSERV_GRP_NEW', 'SELFSRV_GRP_EDIT_ROOT', 'SELFSERV_GRP_EDIT', 'SELFSERV_GRP_BACK_SRCH');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION) VALUES('SELFSRV_GRP_SRCH_ROOT', 'MENU_ITEM', 'SELFSRV_GRP_SRCH_ROOT', 'SelfService Group Root');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_GRP_SRCH_ROOT_PUB', 'SELFSRV_GRP_SRCH_ROOT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_GRP_SRCH_ROOT_DESC', 'SELFSRV_GRP_SRCH_ROOT', 'MENU_DISPLAY_NAME', 'SelfService Group Root');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SELFSERV_GRP_NEW', 'MENU_ITEM', 'SELFSERV_GRP_NEW', 'Create New Group', '/selfservice/editGroup.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_GRP_NEW_DN', 'SELFSERV_GRP_NEW', 'MENU_DISPLAY_NAME', 'Create New Group');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_GRP_NEW_PUB', 'SELFSERV_GRP_NEW', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('SELFSRV_GRP_SRCH_ROOT', 'SELFSERV_GRP_NEW');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION) VALUES('SELFSRV_GRP_EDIT_ROOT', 'MENU_ITEM', 'SELFSRV_GRP_EDIT_ROOT', 'SelfService Group Edit Root');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_GRP_EDIT_ROOT_DN', 'SELFSRV_GRP_EDIT_ROOT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_GRP_EDIT_ROOT_DESC', 'SELFSRV_GRP_EDIT_ROOT', 'MENU_DISPLAY_NAME', 'SelfService Group Edit Root');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SELFSERV_GRP_EDIT', 'MENU_ITEM', 'SELFSERV_GRP_EDIT', 'Edit Group', '/selfservice/editGroup.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_GRP_EDIT_DN', 'SELFSERV_GRP_EDIT', 'MENU_DISPLAY_NAME', 'Edit Group');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_GRP_EDIT_PUB', 'SELFSERV_GRP_EDIT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('SELFSRV_GRP_EDIT_ROOT', 'SELFSERV_GRP_EDIT');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SELFSERV_GRP_BACK_SRCH', 'MENU_ITEM', 'SELFSERV_GRP_BACK_SRCH', 'Back to Search', '/selfservice/groups.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_GRP_BACK_SRCH_DN', 'SELFSERV_GRP_BACK_SRCH', 'MENU_DISPLAY_NAME', 'Back to Search');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_GRP_BACK_SRCH_PUB', 'SELFSERV_GRP_BACK_SRCH', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('SELFSRV_GRP_EDIT_ROOT', 'SELFSERV_GRP_BACK_SRCH');
/* groups */

/* roles */
DELETE FROM res_to_res_membership WHERE RESOURCE_ID IN('SELFSRV_ROLE_SRCH_ROOT', 'SELFSERV_ROLE_NEW', 'SELFSRV_ROLE_EDIT_ROOT', 'SELFSRV_ROLE_EDIT', 'SELFSRV_ROLE_BACK_SRCH');
DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN('SELFSRV_ROLE_SRCH_ROOT', 'SELFSERV_ROLE_NEW', 'SELFSRV_ROLE_EDIT_ROOT', 'SELFSRV_ROLE_EDIT', 'SELFSRV_ROLE_BACK_SRCH');
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('SELFSRV_ROLE_SRCH_ROOT', 'SELFSERV_ROLE_NEW', 'SELFSRV_ROLE_EDIT_ROOT', 'SELFSRV_ROLE_EDIT', 'SELFSRV_ROLE_BACK_SRCH');
DELETE FROM RES  WHERE RESOURCE_ID IN('SELFSRV_ROLE_SRCH_ROOT', 'SELFSERV_ROLE_NEW', 'SELFSRV_ROLE_EDIT_ROOT', 'SELFSRV_ROLE_EDIT', 'SELFSRV_ROLE_BACK_SRCH');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION) VALUES('SELFSRV_ROLE_SRCH_ROOT', 'MENU_ITEM', 'SELFSRV_ROLE_SRCH_ROOT', 'SelfService Role Root');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_ROLE_SRCH_ROOT_PB', 'SELFSRV_ROLE_SRCH_ROOT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_ROLE_SRCH_ROOT_DN', 'SELFSRV_ROLE_SRCH_ROOT', 'MENU_DISPLAY_NAME', 'SelfService Role Root');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SELFSERV_ROLE_NEW', 'MENU_ITEM', 'SELFSERV_ROLE_NEW', 'Create New Role', '/selfservice/editRole.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_ROLE_NEW_DN', 'SELFSERV_ROLE_NEW', 'MENU_DISPLAY_NAME', 'Create New Role');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSERV_ROLE_NEW_PB', 'SELFSERV_ROLE_NEW', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('SELFSRV_ROLE_SRCH_ROOT', 'SELFSERV_ROLE_NEW');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION) VALUES('SELFSRV_ROLE_EDIT_ROOT', 'MENU_ITEM', 'SELFSRV_ROLE_EDIT_ROOT', 'SelfService Role Edit Root');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_ROLE_EDIT_ROOT_DN', 'SELFSRV_ROLE_EDIT_ROOT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_ROLE_EDIT_ROOT_DESC', 'SELFSRV_ROLE_EDIT_ROOT', 'MENU_DISPLAY_NAME', 'SelfService Role Edit Root');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SELFSRV_ROLE_EDIT', 'MENU_ITEM', 'SELFSRV_ROLE_EDIT', 'Edit Role', '/selfservice/editRole.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_ROLE_EDIT_DN', 'SELFSRV_ROLE_EDIT', 'MENU_DISPLAY_NAME', 'Edit Role');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_ROLE_EDIT_PUB', 'SELFSRV_ROLE_EDIT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('SELFSRV_ROLE_EDIT_ROOT', 'SELFSRV_ROLE_EDIT');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SELFSRV_ROLE_BACK_SRCH', 'MENU_ITEM', 'SELFSRV_ROLE_BACK_SRCH', 'Back to Search', '/selfservice/roles.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_ROLE_BACK_SRCH_DN', 'SELFSRV_ROLE_BACK_SRCH', 'MENU_DISPLAY_NAME', 'Back to Search');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_ROLE_BACK_SRCH_PUB', 'SELFSRV_ROLE_BACK_SRCH', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('SELFSRV_ROLE_EDIT_ROOT', 'SELFSRV_ROLE_BACK_SRCH');
/* roles */

/* resources */
DELETE FROM res_to_res_membership WHERE RESOURCE_ID IN('SELFSRV_RES_SRCH_ROOT', 'SELFSRV_RES_NEW',  'SELFSRV_RES_EDIT_ROOT', 'SELFSRV_RES_EDIT', 'SELFSRV_RES_BACK_SRCH');
DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN('SELFSRV_RES_SRCH_ROOT', 'SELFSRV_RES_NEW',  'SELFSRV_RES_EDIT_ROOT', 'SELFSRV_RES_EDIT', 'SELFSRV_RES_BACK_SRCH');
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('SELFSRV_RES_SRCH_ROOT', 'SELFSRV_RES_NEW',  'SELFSRV_RES_EDIT_ROOT', 'SELFSRV_RES_EDIT', 'SELFSRV_RES_BACK_SRCH');
DELETE FROM RES  WHERE RESOURCE_ID IN('SELFSRV_RES_SRCH_ROOT', 'SELFSRV_RES_NEW',  'SELFSRV_RES_EDIT_ROOT', 'SELFSRV_RES_EDIT', 'SELFSRV_RES_BACK_SRCH');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION) VALUES('SELFSRV_RES_SRCH_ROOT', 'MENU_ITEM', 'SELFSRV_RES_SRCH_ROOT', 'SelfService Resource Root');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_RES_SRCH_ROOT_PB', 'SELFSRV_RES_SRCH_ROOT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_RES_SRCH_ROOT_DN', 'SELFSRV_RES_SRCH_ROOT', 'MENU_DISPLAY_NAME', 'SelfService Resource Root');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SELFSRV_RES_NEW', 'MENU_ITEM', 'SELFSRV_RES_NEW', 'Create New Resource', '/selfservice/editResource.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_RES_NEW_DN', 'SELFSRV_RES_NEW', 'MENU_DISPLAY_NAME', 'Create New Resource');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_RES_NEW_PB', 'SELFSRV_RES_NEW', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('SELFSRV_RES_SRCH_ROOT', 'SELFSRV_RES_NEW');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION) VALUES('SELFSRV_RES_EDIT_ROOT', 'MENU_ITEM', 'SELFSRV_RES_EDIT_ROOT', 'SelfService Resource Edit Root');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_RES_EDIT_ROOT_DN', 'SELFSRV_RES_EDIT_ROOT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_RES_EDIT_ROOT_DESC', 'SELFSRV_RES_EDIT_ROOT', 'MENU_DISPLAY_NAME', 'SelfService Resource Edit Root');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SELFSRV_RES_EDIT', 'MENU_ITEM', 'SELFSRV_RES_EDIT', 'Edit Resource', '/selfservice/editResource.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_RES_EDIT_DN', 'SELFSRV_RES_EDIT', 'MENU_DISPLAY_NAME', 'Edit Resource');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_RES_EDIT_PUB', 'SELFSRV_RES_EDIT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('SELFSRV_RES_EDIT_ROOT', 'SELFSRV_RES_EDIT');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('SELFSRV_RES_BACK_SRCH', 'MENU_ITEM', 'SELFSRV_RES_BACK_SRCH', 'Back to Search', '/selfservice/resources.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_RES_BACK_SRCH_DN', 'SELFSRV_RES_BACK_SRCH', 'MENU_DISPLAY_NAME', 'Back to Search');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SELFSRV_RES_BACK_SRCH_PUB', 'SELFSRV_RES_BACK_SRCH', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('SELFSRV_RES_EDIT_ROOT', 'SELFSRV_RES_BACK_SRCH');
/* resources */



IF EXISTS (SELECT * FROM ROLE WHERE ROLE_ID='4') 
BEGIN
	INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES('4', 'REQUEST_APPROVAL');
END;

IF EXISTS (SELECT * FROM ROLE WHERE ROLE_ID='9') 
BEGIN
	INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES('9', 'REQUEST_APPROVAL');
	INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES('9', 'SELFSERVICE_GROUPS');
	INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES('9', 'SELFSERVICE_ROLES');
	INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES('9', 'SELFSERVICE_RESOURCES');
	IF NOT EXISTS (SELECT * FROM RESOURCE_ROLE WHERE ROLE_ID='9' and RESOURCE_ID='SELFSRVS_ACCESS_MNGMNT_ORG') 
	BEGIN
		INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES('9', 'SELFSRVS_ACCESS_MNGMNT_ORG');
	END;
END;

IF EXISTS (SELECT * FROM ROLE WHERE ROLE_ID='2') 
BEGIN
	INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES('2', 'SELFSERVICE_GROUPS');
	INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES('2', 'SELFSERVICE_ROLES');
	INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES('2', 'SELFSERVICE_RESOURCES');
	IF NOT EXISTS (SELECT * FROM RESOURCE_ROLE WHERE ROLE_ID='2' and RESOURCE_ID='SELFSRVS_ACCESS_MNGMNT_ORG') 
	BEGIN
		INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES('2', 'SELFSRVS_ACCESS_MNGMNT_ORG');
	END;
END;





/* webconsole */
INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES ('ORG_APROVER_ASSOC', 'MENU_ITEM', 'ORG_APROVER_ASSOC', 'Approver Associations', '/webconsole-idm/provisioning/organizationApproverAssociations.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORG_APROVER_ASSOC_DN', 'ORG_APROVER_ASSOC', 'MENU_DISPLAY_NAME', 'Approver Associations');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ORG_APROVER_ASSOC_PUB', 'ORG_APROVER_ASSOC', 'MENU_IS_PUBLIC', 'true');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES ('ORGANIZATION_EDIT_ID', 'ORG_APROVER_ASSOC');




INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('MENUS_SEARCH', 'MENU_ITEM', 'MENUS_SEARCH', 'Menus Search', '/webconsole/menus.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('MENUS_SEARCH_PB', 'MENUS_SEARCH', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('MENUS_SEARCH_DC', 'MENUS_SEARCH', 'MENU_DISPLAY_NAME', 'Menus');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('ACC_CONTROL', 'MENUS_SEARCH');

