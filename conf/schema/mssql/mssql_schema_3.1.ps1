#D:\_mssql\mssql_schema_3.1.ps1 -Server <Server Name> -Login <SQL login> -Password <Password>

param($Server, $Login, $Password)

Add-PSSnapin SqlServerCmdletSnapin100    #uncomment if throw exception: "Invoke-Sqlcmd..."            
Add-PSSnapin SqlServerProviderSnapin100                


$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath

$path = $dir + "\3.1\ddl\1.supervisor_table.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\2.refactor_membership.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\3.org_admin.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\1.update_approver_associatons.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\2.access_review_menu.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\3.webconsole_menu.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\4.simplify_resources.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\4.linux_connector_policy_map.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\5.entity_menus.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\5.add_searchable_flag.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\6.ui_theme.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\6.ui_theme_menus.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\7.entitlements_menus.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\8.googleAppsConnector.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\7.remove_sec_domain.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\9.remove_secdomain_menu.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\10.metaData_menu.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\8.add_risk_to_resource.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\9.modify_uri_pattern_schema.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\10.modify_uri_pattern_schema.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\11.modify_uri_pattern_schema.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\12.modify_uri_pattern_schema.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\12.add_url_resource_type.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\11.recource_type.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\12.auth_group_menus.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\13.add_kerberos_auth.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\13.resource_type.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\14.appTabe_policy_map.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\15.recource_type_icons.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\14.alter_resource_table.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\16.fix_user_info.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\15.alter_template_xref.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\17.preset_groovy_script_connector.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\18.remove_field_types.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\19.rename_object_class.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\16.hide_orgs.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\17.add_multiple_attribute_values.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\20.impersonation.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\21.manual_reconciliation.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\22.selfservice_ext.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\18.alter_report_table.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\23.add_inbox_reports.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\24.peoplesoft_prepopulation.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\19.create_identity_table.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\20.add_log_indexes.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\25.metadata_type_display_name.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\26.language_entity_localization.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\21.modify_metadata_type.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\27.set_sensitive_metadata_types.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\28.migrate_menu_display_name.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\22.modify_group_desc.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\30.metdata_element_display.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\23.modify_report_param.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\31.report_param_metatype.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\32.migrate_organization_types.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\33.migrate_resource_types.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\34.migrate_challenge_questions.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\24.drop_question_text.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\25.resume_handler_msys.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\35.report_param_metatype.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\26.extend_attribute_entities.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\27.adding_foreign_keys.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\29.language_menu.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\28.alter_audit_log_target.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\36.report_param_multivalue.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\29.group_org_fk.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\30.add_sysuser_identity_login_table.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\31.refactor_attributes.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\32.add_type_id.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\33.alter_prop_references.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\34.rename_attribue_value.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\37.remove_invalid_metadata_grouping.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\35.alter_user_entuty.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\38.user_bulk_operations_menu.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\39.fix_reference_types.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password

$path = $dir + "\3.1\ddl\36.add_type_id_in_role.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\37.add_type_id_in_grp.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password


$path = $dir + "\3.1\dml\40.private_menus.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password

$path = $dir + "\3.1\dml\41.managed_system_viewer_menu.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\42.add_user_object_types.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\43.groovy_script_managed_sys.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\44.entitle_menu_to_sysadmin.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\45.remove_unnecessary_languages.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\38.remove_attr_group.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\46.Metadata_menu.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\47.rename_object_class.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password

$path = $dir + "\3.1\dml\48.initial_cp_setup.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\49.change_report_param.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\39.alter_challenge_response.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\40.alter_user_contact_tables.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\41.rename_VALUE_to_ATTR_VALUE.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password



$path = $dir + "\3.1\dml\50.ldap_connector_preconfig.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\42.change_identity_character_type.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\43.add_prov_status_to_login.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\51.fix_login_status.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\52.delete_default_group.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\53.update_change_password_menu.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\44.add_type_id_in_org.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password


$path = $dir + "\3.1\dml\54.es_localization.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\55.remove_custom_pwd_policy.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\ddl\45.alter_type_id_in_user.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\56.add_def_pwd_policy_attr.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\57.de_localization.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\58.ru_localization.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password
$path = $dir + "\3.1\dml\59.remove_unnecessary_locale.sql"
invoke-sqlcmd -inputfile $path -serverinstance $Server -Username $Login -Password $Password

