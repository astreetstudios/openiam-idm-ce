use openiam;
insert into IDENTITY (IDENTITY_ID,MANAGED_SYS_ID, IDENTITY, REFERRED_OBJECT_ID, IDENTITY_TYPE, CREATE_DATE, CREATED_BY, STATUS) 
  select CONCAT(GRP_NAME,'_0_','GROUP'), '0', GRP_NAME, GRP_ID, 'GROUP', NOW(), '3000', 'ACTIVE' from GRP where GRP.GRP_ID not in (select REFERRED_OBJECT_ID from IDENTITY); 
