use openiam;

DELETE FROM RESOURCE_GROUP WHERE RESOURCE_ID = 'BULK_OPS';
DELETE FROM RESOURCE_USER WHERE RESOURCE_ID = 'BULK_OPS';
DELETE FROM RESOURCE_ROLE WHERE RESOURCE_ID = 'BULK_OPS';
DELETE FROM RESOURCE_PROP WHERE RESOURCE_ID = 'BULK_OPS';
DELETE FROM res_to_res_membership WHERE MEMBER_RESOURCE_ID = 'BULK_OPS';
DELETE FROM RES WHERE RESOURCE_ID = 'BULK_OPS';
DELETE FROM LANGUAGE_MAPPING WHERE REFERENCE_ID='BULK_OPS';

INSERT INTO RES (RESOURCE_ID, RESOURCE_TYPE_ID, NAME, DESCRIPTION, IS_PUBLIC, URL) VALUES('BULK_OPS', 'MENU_ITEM', 'BULK_OPS', 'User Bulk Operations Root', 'N', '/webconsole/bulkOperations.html');

INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, _VALUE) VALUES ('BULK_OPS_PUB', 'BULK_OPS', 'MENU_IS_PUBLIC', 'true');
INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, _VALUE) VALUES ('BULK_OPS_DESC', 'BULK_OPS', 'MENU_DISPLAY_NAME', 'User Bulk Operations');

INSERT INTO res_to_res_membership (RESOURCE_ID, MEMBER_RESOURCE_ID) VALUES('IDMAN', 'BULK_OPS');


DELIMITER $$

DROP PROCEDURE IF EXISTS ADD_MENU_ENTITLEMENTS$$
CREATE PROCEDURE ADD_MENU_ENTITLEMENTS()
	BEGIN
 		IF EXISTS (SELECT * FROM ROLE WHERE ROLE_ID='9') THEN
			IF NOT EXISTS (SELECT * FROM RESOURCE_ROLE WHERE ROLE_ID='9' and RESOURCE_ID='BULK_OPS') THEN
				INSERT INTO RESOURCE_ROLE (ROLE_ID, RESOURCE_ID) VALUES('9', 'BULK_OPS');
			END IF;
 		END IF;

	END$$
DELIMITER ;

call ADD_MENU_ENTITLEMENTS();
DROP PROCEDURE ADD_MENU_ENTITLEMENTS;

DELIMITER $$

DROP PROCEDURE IF EXISTS LOCALIZE_MENU_ITEM$$
CREATE PROCEDURE LOCALIZE_MENU_ITEM()
	BEGIN
		IF NOT EXISTS (SELECT * FROM LANGUAGE_MAPPING WHERE REFERENCE_ID='BULK_OPS') THEN
			INSERT INTO LANGUAGE_MAPPING(ID, LANGUAGE_ID, REFERENCE_TYPE, REFERENCE_ID, TEXT_VALUE) VALUES('BULK_OPS_DESC', '1', 'ResourceEntity.displayNameMap', 'BULK_OPS', 'User Bulk Operations');
		END IF;
	END$$
DELIMITER ;

call LOCALIZE_MENU_ITEM();
DROP PROCEDURE LOCALIZE_MENU_ITEM;