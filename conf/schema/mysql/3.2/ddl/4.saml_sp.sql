use openiam;

DELETE FROM AUTH_ATTRIBUTE WHERE PROVIDER_TYPE IN('SAML_SP_PROVIDER');
DELETE FROM AUTH_PROVIDER_TYPE WHERE PROVIDER_TYPE IN('SAML_SP_PROVIDER');

INSERT INTO AUTH_PROVIDER_TYPE (PROVIDER_TYPE, DESCRIPTION, ACTIVE) VALUES('SAML_SP_PROVIDER', 'SAML Service Provider', 'Y');
UPDATE AUTH_PROVIDER_TYPE SET DESCRIPTION='SAML IDP Provider' WHERE PROVIDER_TYPE='SAML_PROVIDER';


INSERT INTO AUTH_ATTRIBUTE (AUTH_ATTRIBUTE_ID, ATTRIBUTE_NAME, PROVIDER_TYPE, DESCRIPTION, REQUIRED, DATA_TYPE)
	VALUES('SamlSPLoginURL', 'Sign-in page URL', 'SAML_SP_PROVIDER', 'URL for signing in to your system', 'Y', 'singleValue');
	

INSERT INTO AUTH_ATTRIBUTE (AUTH_ATTRIBUTE_ID, ATTRIBUTE_NAME, PROVIDER_TYPE, DESCRIPTION, REQUIRED, DATA_TYPE)
	VALUES('SamlSPLogoutURL', 'Sign-out page URL', 'SAML_SP_PROVIDER', 'URL to redirect users to when they sign out', 'Y', 'singleValue');
	

INSERT INTO AUTH_ATTRIBUTE (AUTH_ATTRIBUTE_ID, ATTRIBUTE_NAME, PROVIDER_TYPE, DESCRIPTION, REQUIRED, DATA_TYPE)
	VALUES('SamlSPIssuerName', 'SAML Issuer Name', 'SAML_SP_PROVIDER', 'The Issuer to use.  This will be the Request Issuer in the IDP', 'Y', 'singleValue');
	
ALTER TABLE AUTH_PROVIDER_TYPE ADD COLUMN HAS_PUBLIC_KEY CHAR(1) NOT NULL DEFAULT 'Y';
ALTER TABLE AUTH_PROVIDER_TYPE ADD COLUMN HAS_PRIVATE_KEY CHAR(1) NOT NULL DEFAULT 'Y';

UPDATE AUTH_PROVIDER_TYPE SET HAS_PRIVATE_KEY='N' WHERE PROVIDER_TYPE='SAML_SP_PROVIDER';