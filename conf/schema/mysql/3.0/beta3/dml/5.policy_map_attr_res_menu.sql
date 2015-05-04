use openiam;

DELETE FROM res_to_res_membership WHERE RESOURCE_ID='RESOURCE_EDIT_PAGE_ROOT' AND MEMBER_RESOURCE_ID = 'RESPOLICYMAP';

DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN ('MNGSYS_ATTR_PAGE');
DELETE FROM RESOURCE_USER WHERE RESOURCE_ID IN ('MNGSYS_ATTR_PAGE');
DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID IN ('MNGSYS_ATTR_PAGE');
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN ('MNGSYS_ATTR_PAGE');
DELETE FROM RESOURCE_GROUP WHERE RESOURCE_ID IN ('MNGSYS_ATTR_PAGE');
DELETE FROM RES WHERE RESOURCE_ID IN ('MNGSYS_ATTR_PAGE');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, DESCRIPTION, NAME, URL) VALUES ('MNGSYS_ATTR_PAGE', 'MENU_ITEM', 'Resource Attributes', 'MNGSYS_ATTR_PAGE', '/webconsole/resourceAttributes.html');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('MNGSYS_ATTR_PAGE_PUB', 'MNGSYS_ATTR_PAGE', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('MNGSYS_ATTR_PAGE_DIS', 'MNGSYS_ATTR_PAGE', 'MENU_DISPLAY_NAME', 'Attributes & Patterns');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('MNGSYS_EDIT_MENU_ROOT', 'MNGSYS_ATTR_PAGE');
