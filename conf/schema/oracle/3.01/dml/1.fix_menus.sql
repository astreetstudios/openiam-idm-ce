UPDATE RES SET IS_PUBLIC='N' WHERE RESOURCE_ID IN ('SUP_SUB_PAGE','USER_MENUS', 'USER_DELEGATION', 'ROLE_MENUS', 'GROUP_MENUS');	

UPDATE RESOURCE_PROP SET PROP_VALUE='false' WHERE RESOURCE_ID IN ('SUP_SUB_PAGE','USER_MENUS', 'USER_DELEGATION', 'ROLE_MENUS', 'GROUP_MENUS') AND NAME LIKE '%_IS_PUBLIC';


DELETE FROM RESOURCE_USER WHERE USER_ID='3000' AND RESOURCE_ID IN ('SUP_SUB_PAGE', 'USER_MENUS', 'USER_DELEGATION', 'ROLE_MENUS', 'GROUP_MENUS');

INSERT INTO RESOURCE_USER (RESOURCE_ID, USER_ID) VALUES ('USER_MENUS', '3000');
INSERT INTO RESOURCE_USER (RESOURCE_ID, USER_ID) VALUES ('USER_DELEGATION', '3000');
INSERT INTO RESOURCE_USER (RESOURCE_ID, USER_ID) VALUES ('ROLE_MENUS', '3000');
INSERT INTO RESOURCE_USER (RESOURCE_ID, USER_ID) VALUES ('GROUP_MENUS', '3000');
INSERT INTO RESOURCE_USER (RESOURCE_ID, USER_ID) VALUES ('SUP_SUB_PAGE','3000');
