use openiam;

UPDATE USERS SET TYPE_ID=NULL;

DELETE FROM METADATA_TYPE WHERE GROUPING IN('USER_OBJECT_TYPE');
DELETE FROM LANGUAGE_MAPPING WHERE ID IN('DEFAULT_USER_TYPE', 'INTERNAL_USER_TYPE');

INSERT INTO METADATA_TYPE (TYPE_ID, DESCRIPTION, ACTIVE, GROUPING, IS_BINARY) VALUES('DEFAULT_USER', 'Default User', 'Y', 'USER_OBJECT_TYPE', 'N');
INSERT INTO METADATA_TYPE (TYPE_ID, DESCRIPTION, ACTIVE, GROUPING, IS_BINARY) VALUES('INTERNAL_USER', 'Internal User', 'Y', 'USER_OBJECT_TYPE', 'N');

INSERT INTO LANGUAGE_MAPPING (ID, LANGUAGE_ID, REFERENCE_ID, REFERENCE_TYPE, TEXT_VALUE) VALUES('DEFAULT_USER_TYPE', '1', 'DEFAULT_USER', 'MetadataTypeEntity.displayNameMap', 'Default User');
INSERT INTO LANGUAGE_MAPPING (ID, LANGUAGE_ID, REFERENCE_ID, REFERENCE_TYPE, TEXT_VALUE) VALUES('INTERNAL_USER_TYPE', '1', 'INTERNAL_USER', 'MetadataTypeEntity.displayNameMap', 'Internal User');