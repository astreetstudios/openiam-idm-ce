use openiam;

/*
 * This Script should be called by an external source to initialize the content providers.
 * The Installer calls this.  Do NOT delete.
 */

DELETE FROM METADATA_URI_XREF WHERE TEMPLATE_ID IN('NEW_USER_TEMPLATE');
DELETE FROM CONTENT_PROVIDER_SERVER WHERE CONTENT_PROVIDER_ID IN('DEFAULT_CP');
DELETE FROM CP_AUTH_LEVEL_GRP_XREF WHERE CONTENT_PROVIDER_ID IN('DEFAULT_CP');


DELETE FROM URI_AUTH_LEVEL_GRP_XREF WHERE URI_PATTERN_ID IN(
		'SELFREG_PATTERN', 
		'UI_STATIC', 
		'CHANGE_PASSWORD', 
		'UNLOCK_PASSWORD', 
		'LOGOUT_PATTERN', 
		'SAML_LOGIN_PATTERN', 
		'SAML_METADATA_PATTERN', 
		'UNLOCK_PASSWORD_QUESTIONS', 
		'UNLOCK_USER_RESET_FORM', 
		'WEBCONSOLE_CLEAR_CNTX',
		'WEBCONSOLE_AM_CLEAR_CNTX', 
		'WEBCONSOLE_IDM_CLEAR_CNTX', 
		'SELFSERVICE_CLEAR_CNTX', 
		'SEARCH_ORG_PATTERN', 
		'REPORTVIEWER_PATTERN',
		'LANGUAGE_SUPPORT_PATTERN',
		'SELFSERVICE_EXT_CLEAR_CNTX',
		'ROLE_METADATA_PATTERN',
		'SEARCH_ROLES_PATTERN',
		'GROUP_METADATA_PATTERN',
		'SEARCH_GROUPS_PATTERN',
		'ORG_METADATA_PATTERN',
		'FORGOT_USERNAME'
	);
DELETE FROM URI_PATTERN WHERE URI_PATTERN_ID IN(
	'DEF_CP_SELSERVICE_SLASH', 
	'DEF_CP_WEBCONSOLE_AM_SLASH', 
	'DEF_CP_WEBCONSOLE_IDM_SLASH', 
	'DEF_CP_WEBCONSOLE_SLASH', 
	'SELFREG_PATTERN', 
	'UI_STATIC', 
	'CHANGE_PASSWORD', 
	'UNLOCK_PASSWORD', 
	'LOGOUT_PATTERN', 
	'SAML_LOGIN_PATTERN', 
	'SAML_METADATA_PATTERN', 
	'UNLOCK_PASSWORD_QUESTIONS', 
	'UNLOCK_USER_RESET_FORM', 
	'WEBCONSOLE_CLEAR_CNTX',
	'WEBCONSOLE_AM_CLEAR_CNTX', 
	'WEBCONSOLE_IDM_CLEAR_CNTX', 
	'SELFSERVICE_CLEAR_CNTX', 
	'SEARCH_ORG_PATTERN', 
	'REPORTVIEWER_PATTERN', 
	'LANGUAGE_SUPPORT_PATTERN',
	'SELFSERVICE_EXT_CLEAR_CNTX',
	'ROLE_METADATA_PATTERN',
	'SEARCH_ROLES_PATTERN',
	'GROUP_METADATA_PATTERN',
	'SEARCH_GROUPS_PATTERN',
	'ORG_METADATA_PATTERN',
	'FORGOT_USERNAME'
);
DELETE FROM CONTENT_PROVIDER WHERE CONTENT_PROVIDER_ID IN('DEFAULT_CP');
DELETE FROM METADATA_ELEMENT_PAGE_TEMPLATE WHERE ID IN('NEW_USER_TEMPLATE');
DELETE FROM RES WHERE RESOURCE_ID IN(
	'DEFAULT_CP', 
	'DEF_CP_SELSERVICE_SLASH', 
	'DEF_CP_WEBCONSOLE_AM_SLASH', 
	'DEF_CP_WEBCONSOLE_IDM_SLASH', 
	'DEF_CP_WEBCONSOLE_SLASH', 
	'NEW_USER_TEMPLATE', 
	'SELFREG_PATTERN', 
	'UI_STATIC', 
	'CHANGE_PASSWORD', 
	'UNLOCK_PASSWORD', 
	'LOGOUT_PATTERN', 
	'SAML_LOGIN_PATTERN', 
	'SAML_METADATA_PATTERN', 
	'UNLOCK_PASSWORD_QUESTIONS', 
	'UNLOCK_USER_RESET_FORM', 
	'WEBCONSOLE_CLEAR_CNTX',
	'WEBCONSOLE_AM_CLEAR_CNTX', 
	'WEBCONSOLE_IDM_CLEAR_CNTX', 
	'SELFSERVICE_CLEAR_CNTX', 
	'SEARCH_ORG_PATTERN', 
	'REPORTVIEWER_PATTERN', 
	'LANGUAGE_SUPPORT_PATTERN',
	'SELFSERVICE_EXT_CLEAR_CNTX',
	'ROLE_METADATA_PATTERN',
	'SEARCH_ROLES_PATTERN',
	'GROUP_METADATA_PATTERN',
	'SEARCH_GROUPS_PATTERN',
	'ORG_METADATA_PATTERN',
	'FORGOT_USERNAME'
);

DELIMITER $$

DROP PROCEDURE IF EXISTS SETUP_CONTENT_PROVIDERS$$
CREATE PROCEDURE SETUP_CONTENT_PROVIDERS(IN cpDomain VARCHAR(255), IN serverDomain VARCHAR(255))
	BEGIN
 		IF NOT EXISTS (SELECT * FROM CONTENT_PROVIDER) THEN
 			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC, URL) VALUES('DEFAULT_CP', 'CONTENT_PROVIDER', 'Default Content Provider', 'Y', cpDomain);
			INSERT INTO CONTENT_PROVIDER (CONTENT_PROVIDER_ID, CONTENT_PROVIDER_NAME, IS_PUBLIC, DOMAIN_PATTERN, IS_SSL, RESOURCE_ID, MANAGED_SYS_ID) 
								   VALUES('DEFAULT_CP', 'Default Content Provider', 'Y', cpDomain, NULL, 'DEFAULT_CP', '0');
			INSERT INTO CP_AUTH_LEVEL_GRP_XREF (CONTENT_PROVIDER_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES ('DEFAULT_CP', 'PASSWORD_AUTH', 0);
			INSERT INTO CONTENT_PROVIDER_SERVER (CONTENT_PROVIDER_SERVER_ID, CONTENT_PROVIDER_ID, SERVER_URL) VALUES ('DEFAULT_CP', 'DEFAULT_CP', serverDomain);					   
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('DEF_CP_SELSERVICE_SLASH', 'URL_PATTERN', 'Default Content Provider /selfservice/*', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('DEF_CP_SELSERVICE_SLASH', 'DEFAULT_CP', '/selfservice/*', 'Y', 'DEF_CP_SELSERVICE_SLASH');
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('DEF_CP_WEBCONSOLE_AM_SLASH', 'URL_PATTERN', 'Default Content Provider /webconsole-am/*', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('DEF_CP_WEBCONSOLE_AM_SLASH', 'DEFAULT_CP', '/webconsole-am/*', 'Y', 'DEF_CP_WEBCONSOLE_AM_SLASH');
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('DEF_CP_WEBCONSOLE_IDM_SLASH', 'URL_PATTERN', 'Default Content Provider /webconsole-idm/*', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('DEF_CP_WEBCONSOLE_IDM_SLASH', 'DEFAULT_CP', '/webconsole-idm/*', 'Y', 'DEF_CP_WEBCONSOLE_IDM_SLASH');
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('DEF_CP_WEBCONSOLE_SLASH', 'URL_PATTERN', 'Default Content Provider /webconsole/*', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('DEF_CP_WEBCONSOLE_SLASH', 'DEFAULT_CP', '/webconsole/*', 'Y', 'DEF_CP_WEBCONSOLE_SLASH');
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('NEW_USER_TEMPLATE', 'UI_TEMPLATE', 'New User Template', 'Y');
			INSERT INTO METADATA_ELEMENT_PAGE_TEMPLATE (ID, NAME, RESOURCE_ID, IS_PUBLIC, TEMPLATE_TYPE_ID) VALUES('NEW_USER_TEMPLATE', 'New User Template', 'NEW_USER_TEMPLATE', 'Y', 'USER_TEMPLATE');
			INSERT INTO METADATA_URI_XREF (TEMPLATE_ID, URI_PATTERN_ID) VALUES('NEW_USER_TEMPLATE', 'DEF_CP_SELSERVICE_SLASH');
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('SELFREG_PATTERN', 'URL_PATTERN', 'Default Content Provider /selfservice/selfRegistration.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('SELFREG_PATTERN', 'DEFAULT_CP', '/selfservice/selfRegistration.html', 'Y', 'SELFREG_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('SELFREG_PATTERN', 'NONE', 0);
			INSERT INTO METADATA_URI_XREF (TEMPLATE_ID, URI_PATTERN_ID) VALUES('NEW_USER_TEMPLATE', 'SELFREG_PATTERN');
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('UI_STATIC', 'URL_PATTERN', 'Default Content Provider /openiam-ui-static/*', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('UI_STATIC', 'DEFAULT_CP', '/openiam-ui-static/*', 'Y', 'UI_STATIC');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('UI_STATIC', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('FORGOT_USERNAME', 'URL_PATTERN', 'Default Content Provider /idp/forgotUsername.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('FORGOT_USERNAME', 'DEFAULT_CP', '/idp/forgotUsername.html', 'Y', 'FORGOT_USERNAME');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('FORGOT_USERNAME', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('CHANGE_PASSWORD', 'URL_PATTERN', 'Default Content Provider /idp/changePassword.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('CHANGE_PASSWORD', 'DEFAULT_CP', '/idp/changePassword.html', 'Y', 'CHANGE_PASSWORD');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('CHANGE_PASSWORD', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('UNLOCK_PASSWORD', 'URL_PATTERN', 'Default Content Provider /idp/unlockPassword.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('UNLOCK_PASSWORD', 'DEFAULT_CP', '/idp/unlockPassword.html', 'Y', 'UNLOCK_PASSWORD');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('UNLOCK_PASSWORD', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('LOGOUT_PATTERN', 'URL_PATTERN', 'Default Content Provider /idp/logout.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('LOGOUT_PATTERN', 'DEFAULT_CP', '/idp/logout.html', 'Y', 'LOGOUT_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('LOGOUT_PATTERN', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('SAML_LOGIN_PATTERN', 'URL_PATTERN', 'Default Content Provider /idp/SAMLLogin.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('SAML_LOGIN_PATTERN', 'DEFAULT_CP', '/idp/SAMLLogin.html', 'Y', 'SAML_LOGIN_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('SAML_LOGIN_PATTERN', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('SAML_METADATA_PATTERN', 'URL_PATTERN', 'Default Content Provider /idp/SAMLMetadata.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('SAML_METADATA_PATTERN', 'DEFAULT_CP', '/idp/SAMLMetadata.html', 'Y', 'SAML_METADATA_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('SAML_METADATA_PATTERN', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('UNLOCK_PASSWORD_QUESTIONS', 'URL_PATTERN', 'Default Content Provider /idp/unlockPasswordQuestions.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('UNLOCK_PASSWORD_QUESTIONS', 'DEFAULT_CP', '/idp/unlockPasswordQuestions.html', 'Y', 'UNLOCK_PASSWORD_QUESTIONS');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('UNLOCK_PASSWORD_QUESTIONS', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('UNLOCK_USER_RESET_FORM', 'URL_PATTERN', 'Default Content Provider /idp/unlockUserResetPasswordForm.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('UNLOCK_USER_RESET_FORM', 'DEFAULT_CP', '/idp/unlockUserResetPasswordForm.html', 'Y', 'UNLOCK_USER_RESET_FORM');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('UNLOCK_USER_RESET_FORM', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('WEBCONSOLE_CLEAR_CNTX', 'URL_PATTERN', 'Default Content Provider /webconsole/clearContext.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('WEBCONSOLE_CLEAR_CNTX', 'DEFAULT_CP', '/webconsole/clearContext.html', 'Y', 'WEBCONSOLE_CLEAR_CNTX');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('WEBCONSOLE_CLEAR_CNTX', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('WEBCONSOLE_AM_CLEAR_CNTX', 'URL_PATTERN', 'Default Content Provider /webconsole-am/clearContext.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('WEBCONSOLE_AM_CLEAR_CNTX', 'DEFAULT_CP', '/webconsole-am/clearContext.html', 'Y', 'WEBCONSOLE_AM_CLEAR_CNTX');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('WEBCONSOLE_AM_CLEAR_CNTX', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('WEBCONSOLE_IDM_CLEAR_CNTX', 'URL_PATTERN', 'Default Content Provider /webconsole-idm/clearContext.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('WEBCONSOLE_IDM_CLEAR_CNTX', 'DEFAULT_CP', '/webconsole-idm/clearContext.html', 'Y', 'WEBCONSOLE_IDM_CLEAR_CNTX');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('WEBCONSOLE_IDM_CLEAR_CNTX', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('SELFSERVICE_CLEAR_CNTX', 'URL_PATTERN', 'Default Content Provider /selfservice/clearContext.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('SELFSERVICE_CLEAR_CNTX', 'DEFAULT_CP', '/selfservice/clearContext.html', 'Y', 'SELFSERVICE_CLEAR_CNTX');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('SELFSERVICE_CLEAR_CNTX', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('SELFSERVICE_EXT_CLEAR_CNTX', 'URL_PATTERN', 'Default Content Provider /selfservice-ext/clearContext.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('SELFSERVICE_EXT_CLEAR_CNTX', 'DEFAULT_CP', '/selfservice-ext/clearContext.html', 'Y', 'SELFSERVICE_EXT_CLEAR_CNTX');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('SELFSERVICE_EXT_CLEAR_CNTX', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('SEARCH_ORG_PATTERN', 'URL_PATTERN', 'Default Content Provider /selfservice/rest/api/entitlements/searchOrganizations', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('SEARCH_ORG_PATTERN', 'DEFAULT_CP', '/selfservice/rest/api/entitlements/searchOrganizations', 'Y', 'SEARCH_ORG_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('SEARCH_ORG_PATTERN', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('REPORTVIEWER_PATTERN', 'URL_PATTERN', 'Default Content Provider /reportviewer/*', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('REPORTVIEWER_PATTERN', 'DEFAULT_CP', '/reportviewer/*', 'Y', 'REPORTVIEWER_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('REPORTVIEWER_PATTERN', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('LANGUAGE_SUPPORT_PATTERN', 'URL_PATTERN', 'Default Content Provider /selfservice/language/languageSupport.html', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('LANGUAGE_SUPPORT_PATTERN', 'DEFAULT_CP', '/selfservice/language/languageSupport.html', 'Y', 'LANGUAGE_SUPPORT_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('LANGUAGE_SUPPORT_PATTERN', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('ROLE_METADATA_PATTERN', 'URL_PATTERN', 'Default Content Provider /selfservice/rest/api/metadata/roleMetadata', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('ROLE_METADATA_PATTERN', 'DEFAULT_CP', '/selfservice/rest/api/metadata/roleMetadata', 'Y', 'ROLE_METADATA_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('ROLE_METADATA_PATTERN', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('SEARCH_ROLES_PATTERN', 'URL_PATTERN', 'Default Content Provider /selfservice/rest/api/entitlements/searchRoles', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('SEARCH_ROLES_PATTERN', 'DEFAULT_CP', '/selfservice/rest/api/entitlements/searchRoles', 'Y', 'SEARCH_ROLES_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('SEARCH_ROLES_PATTERN', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('GROUP_METADATA_PATTERN', 'URL_PATTERN', 'Default Content Provider /selfservice/rest/api/metadata/groupMetadata', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('GROUP_METADATA_PATTERN', 'DEFAULT_CP', '/selfservice/rest/api/metadata/groupMetadata', 'Y', 'GROUP_METADATA_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('GROUP_METADATA_PATTERN', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('SEARCH_GROUPS_PATTERN', 'URL_PATTERN', 'Default Content Provider /selfservice/rest/api/entitlements/searchGroups', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('SEARCH_GROUPS_PATTERN', 'DEFAULT_CP', '/selfservice/rest/api/entitlements/searchGroups', 'Y', 'SEARCH_GROUPS_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('SEARCH_GROUPS_PATTERN', 'NONE', 0);
			
			INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, IS_PUBLIC) VALUES('ORG_METADATA_PATTERN', 'URL_PATTERN', 'Default Content Provider /selfservice/rest/api/metadata/organizationMetadata', 'Y');
			INSERT INTO URI_PATTERN (URI_PATTERN_ID, CONTENT_PROVIDER_ID, PATTERN, IS_PUBLIC, RESOURCE_ID) VALUES('ORG_METADATA_PATTERN', 'DEFAULT_CP', '/selfservice/rest/api/metadata/organizationMetadata', 'Y', 'ORG_METADATA_PATTERN');
			INSERT INTO URI_AUTH_LEVEL_GRP_XREF (URI_PATTERN_ID, AUTH_LEVEL_GROUPING_ID, EXEC_ORDER) VALUES('ORG_METADATA_PATTERN', 'NONE', 0);
			
 		END IF;
	END$$
DELIMITER ;
