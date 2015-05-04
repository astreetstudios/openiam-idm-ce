#D:\_mssql\mssql_schema_3.06.ps1 -Server <Server Name> -Login <SQL login> -Password <Password>

param($Server, $Login, $Password)

#Add-PSSnapin SqlServerCmdletSnapin100  uncomment if throw exception: "Invoke-Sqlcmd..."                 
#Add-PSSnapin SqlServerProviderSnapin100                


$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath

$path = $dir + "\3.0\beta1\ddl\1.mssql_schema_v3-NEW.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta1\ddl\2.activiti.mssql.create.engine.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta1\ddl\3.activiti.mssql.create.history.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta1\ddl\4.activiti.mssql.create.identity.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta1\dml\1.mssql_data_v3.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta1\dml\2.1.mssql_idm_data_AD.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
#$path = $dir + "\3.0\beta1\dml\2.2.mssql_idm_data_Exchange.sql"
#invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta2\ddl\1.mssql.schema.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta2\dml\1.mssql.data.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta3\ddl\mssql.schema.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta3\dml\mssql.data.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta4\ddl\mssql.schema.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta4\dml\mssql.data.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta5\ddl\mssql.schema.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta6\ddl\mssql.schema.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta6\dml\mssql.data.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.0\beta6\ddl\mssql.schema_after_run_mssql.data.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password

$path = $dir + "\3.01\ddl\1.fix_fk.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.01\dml\1.fix_menus.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.01\dml\2.fix_identity_question_typo.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password

$path = $dir + "\3.02\ddl\1.mssql_schema.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.02\ddl\2.mssql_schema.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password

$path = $dir + "\3.03\ddl\1.reconciliation_config_updates.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.03\ddl\2.reconciliation_config_updates.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.03\ddl\3.mng_system_updates.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.03\dml\1.email_ui_fields.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password

$path = $dir + "\3.04\ddl\1.recon_config_updates.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.04\ddl\2.openiam_log_attr_updates.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password

$path = $dir + "\3.05\ddl\1.sync_config_updates.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.05\ddl\2.synch_config_org_updates.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.05\dml\14.appTabe_policy_map.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password

$path = $dir + "\3.06\ddl\1.attr_lookup_search_scope.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.06\ddl\2.increase_domain_name_org_description.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
 
