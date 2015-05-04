use openiam;

DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID IN('BATCH_TASK_ROOT', 'SEARCH_BATCH_NEW', 'NEW_BATCH_TASK', 'BATCH_TASK_EDIT', 'SEARCH_BATCH_EDIT', 'EDIT_BATCH_TASK', 'ADMIN_BATCH_TASKS');
DELETE FROM res_to_res_membership WHERE RESOURCE_ID IN('BATCH_TASK_ROOT', 'SEARCH_BATCH_NEW', 'NEW_BATCH_TASK', 'BATCH_TASK_EDIT', 'SEARCH_BATCH_EDIT', 'EDIT_BATCH_TASK', 'ADMIN_BATCH_TASKS');
DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID IN('BATCH_TASK_ROOT', 'SEARCH_BATCH_NEW', 'NEW_BATCH_TASK', 'BATCH_TASK_EDIT', 'SEARCH_BATCH_EDIT', 'EDIT_BATCH_TASK', 'ADMIN_BATCH_TASKS');
DELETE FROM RES WHERE RESOURCE_ID IN('BATCH_TASK_ROOT', 'SEARCH_BATCH_NEW', 'NEW_BATCH_TASK', 'BATCH_TASK_EDIT', 'SEARCH_BATCH_EDIT', 'EDIT_BATCH_TASK', 'ADMIN_BATCH_TASKS');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION) VALUES('BATCH_TASK_ROOT', 'MENU_ITEM', 'BATCH_TASK_ROOT', 'Batch Task Root');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('BATCH_TASK_ROOT_PUB', 'BATCH_TASK_ROOT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('BATCH_TASK_ROOT_DESC', 'BATCH_TASK_ROOT', 'MENU_DISPLAY_NAME', 'Batch Task Root');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('SEARCH_BATCH_NEW', 'MENU_ITEM', 'SEARCH_BATCH_NEW', 'Search Batch Tasks', '/webconsole-idm/provisioning/batchTaskSearch.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SEARCH_BATCH_NEW_PUB', 'SEARCH_BATCH_NEW', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SEARCH_BATCH_NEW_DESC', 'SEARCH_BATCH_NEW', 'MENU_DISPLAY_NAME', 'Search Batch Tasks');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('NEW_BATCH_TASK', 'MENU_ITEM', 'NEW_BATCH_TASK', 'New Batch Task', '/webconsole-idm/provisioning/batchTask.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('NEW_BATCH_TASK_PUB', 'NEW_BATCH_TASK', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('NEW_BATCH_TASK_DESC', 'NEW_BATCH_TASK', 'MENU_DISPLAY_NAME', 'New Batch Task');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('BATCH_TASK_ROOT', 'SEARCH_BATCH_NEW');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('BATCH_TASK_ROOT', 'NEW_BATCH_TASK');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION) VALUES('BATCH_TASK_EDIT', 'MENU_ITEM', 'BATCH_TASK_EDIT', 'Batch Task Edit');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('BATCH_TASK_EDIT_PUB', 'BATCH_TASK_EDIT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('BATCH_TASK_EDIT_DESC', 'BATCH_TASK_EDIT', 'MENU_DISPLAY_NAME', 'Batch Task Edit');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('SEARCH_BATCH_EDIT', 'MENU_ITEM', 'SEARCH_BATCH_EDIT', 'Search Batch Tasks', '/webconsole-idm/provisioning/batchTaskSearch.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SEARCH_BATCH_EDIT_PUB', 'SEARCH_BATCH_EDIT', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('SEARCH_BATCH_EDIT_DESC', 'SEARCH_BATCH_EDIT', 'MENU_DISPLAY_NAME', 'Search Batch Tasks');

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('EDIT_BATCH_TASK', 'MENU_ITEM', 'EDIT_BATCH_TASK', 'Edit Batch Task', '/webconsole-idm/provisioning/batchTask.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('EDIT_BATCH_TASK_PUB', 'EDIT_BATCH_TASK', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('EDIT_BATCH_TASK_DESC', 'EDIT_BATCH_TASK', 'MENU_DISPLAY_NAME', 'Edit Batch Task');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('BATCH_TASK_EDIT', 'SEARCH_BATCH_EDIT');
INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('BATCH_TASK_EDIT', 'EDIT_BATCH_TASK');


INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, URL) VALUES('ADMIN_BATCH_TASKS', 'MENU_ITEM', 'ADMIN_BATCH_TASKS', 'Batch Tasks', '/webconsole-idm/provisioning/batchTaskSearch.html');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ADMIN_BATCH_TASKS_PUB', 'ADMIN_BATCH_TASKS', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES ('ADMIN_BATCH_TASKS_DESC', 'ADMIN_BATCH_TASKS', 'MENU_DISPLAY_NAME', 'Batch Tasks');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('ADMIN', 'ADMIN_BATCH_TASKS');