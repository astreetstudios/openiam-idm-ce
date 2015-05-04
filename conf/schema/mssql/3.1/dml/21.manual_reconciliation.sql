use openiam;

IF ((SELECT count(*) FROM RESOURCE_PROP WHERE RESOURCE_ID='MANUALRECON' AND NAME='IS_VISIBLE') >= 1) 
BEGIN
	UPDATE RESOURCE_PROP SET PROP_VALUE='false' WHERE  RESOURCE_ID='MANUALRECON' AND NAME='IS_VISIBLE';
END;
ELSE
BEGIN
	INSERT INTO RESOURCE_PROP (RESOURCE_PROP_ID, RESOURCE_ID, NAME, PROP_VALUE) VALUES('MANUALRECON_VISIBLE', 'MANUALRECON', 'IS_VISIBLE', 'false');
END;
