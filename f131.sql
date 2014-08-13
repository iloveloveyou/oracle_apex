set define off
set verify off
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end;
/
 
 
--application/set_environment
prompt  APPLICATION 131 - Bootstrap 3
--
-- Application Export:
--   Application:     131
--   Name:            Bootstrap 3
--   Date and Time:   00:09 Wednesday July 9, 2014
--   Exported By:     RMARTENS
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         4.2.2.00.11
--   Instance ID:     63429063249235
--
-- Import:
--   Using Application Builder
--   or
--   Using SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application
 
-- Application Statistics:
--   Pages:                      9
--     Items:                   68
--     Computations:             1
--     Processes:               14
--     Regions:                 88
--     Buttons:                 38
--     Dynamic Actions:          7
--   Shared Components:
--     Logic:
--     Navigation:
--       Parent Tabs:            1
--       Tab Sets:               1
--         Tabs:                 1
--       Lists:                  5
--       Breadcrumbs:            1
--         Entries:              3
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 5
--         Region:              16
--         Label:                5
--         List:                 3
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:              15
--         Report:               1
--       Shortcuts:              1
--       Plug-ins:               1
--     Globalization:
--     Reports:
 
 
--       AAAA       PPPPP   EEEEEE  XX      XX
--      AA  AA      PP  PP  EE       XX    XX
--     AA    AA     PP  PP  EE        XX  XX
--    AAAAAAAAAA    PPPPP   EEEE       XXXX
--   AA        AA   PP      EE        XX  XX
--  AA          AA  PP      EE       XX    XX
--  AA          AA  PP      EEEEEE  XX      XX
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to SQL*Plus as the Oracle user APEX_040200 or as the owner (parsing schema) of the application.
  wwv_flow_api.set_security_group_id(p_security_group_id=>nvl(wwv_flow_application_install.get_workspace_id,9833610753147009));
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2012.01.01');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := nvl(wwv_flow_application_install.get_application_id,131);
   wwv_flow_api.g_id_offset := nvl(wwv_flow_application_install.get_offset,0);
null;
 
end;
/

--application/delete_application
 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(nvl(wwv_flow_application_install.get_application_id,131));
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(nvl(wwv_flow_application_install.get_application_id,131));
null;
 
end;
/

prompt  ...ui types
--
 
begin
 
null;
 
end;
/

--application/create_application
 
begin
 
wwv_flow_api.create_flow(
  p_id    => nvl(wwv_flow_application_install.get_application_id,131),
  p_display_id=> nvl(wwv_flow_application_install.get_application_id,131),
  p_owner => nvl(wwv_flow_application_install.get_schema,'BOOTSTRAP'),
  p_name  => nvl(wwv_flow_application_install.get_application_name,'Bootstrap 3'),
  p_alias => nvl(wwv_flow_application_install.get_application_alias,'BS3131'),
  p_page_view_logging => 'YES',
  p_page_protection_enabled_y_n=> 'Y',
  p_checksum_salt_last_reset => '20140709000913',
  p_max_session_length_sec=> null,
  p_compatibility_mode=> '4.2',
  p_html_escaping_mode=> 'E',
  p_flow_language=> 'nl',
  p_flow_language_derived_from=> '0',
  p_allow_feedback_yn=> 'Y',
  p_date_format=> 'DD-MON-YYYY',
  p_date_time_format=> 'DD-MON-YYYY HH24:MI',
  p_timestamp_format=> 'DD-MON-YYYY HH24.MI.SSXFF',
  p_timestamp_tz_format=> 'DD-MON-YYYY HH24.MI.SSXFF TZR',
  p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,''),
  p_publish_yn=> 'N',
  p_documentation_banner=> '',
  p_authentication=> 'PLUGIN',
  p_authentication_id=> 60030938599501235 + wwv_flow_api.g_id_offset,
  p_logout_url=> '',
  p_application_tab_set=> 1,
  p_logo_image => 'TEXT:TEXT:TEXT:TEXT:TEXT:TEXT:TEXT:TEXT:TEXT:TEXT:TEXT:',
  p_public_url_prefix => '',
  p_public_user=> 'APEX_PUBLIC_USER',
  p_dbauth_url_prefix => '',
  p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,''),
  p_cust_authentication_process=> '',
  p_cust_authentication_page=> '',
  p_flow_version=> 'release 1.0',
  p_flow_status=> 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status=> 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_browser_cache=>'N',
  p_browser_frame=>'S',
  p_deep_linking=>'Y',
  p_vpd=> 'begin'||unistr('\000a')||
'  execute immediate(''ALTER SESSION SET '''||unistr('\000a')||
'                || '' NLS_LANGUAGE= ''''DUTCH'''' '''||unistr('\000a')||
'                || '' NLS_TERRITORY= ''''THE NETHERLANDS'''' '''||unistr('\000a')||
'                || '' NLS_CURRENCY= ''''€'''' '''||unistr('\000a')||
'                || '' NLS_NUMERIC_CHARACTERS= '''',.'''' '''||unistr('\000a')||
'                || '' NLS_CALENDAR= ''''GREGORIAN'''' '''||unistr('\000a')||
'                || '' NLS_DATE_FORMAT= ''''DD-MON-RR'''' '''||unistr('\000a')||
'                || '' NLS_DATE_LANGUAGE= ''''DUTCH'''' '''||unistr('\000a')||
'                || '' NLS_SORT= ''''BINARY'''''');'||unistr('\000a')||
'end;',
  p_vpd_teardown_code=> '',
  p_authorize_public_pages_yn=>'N',
  p_csv_encoding=> 'Y',
  p_auto_time_zone=> 'Y',
  p_javascript_file_urls=> '&S4ATB_LIBRARIES./bootstrap/3.1.1/js/bootstrap#MIN#.js',
  p_include_legacy_javascript=> 'Y',
  p_default_error_display_loc=> 'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_substitution_string_01 => 'S4ATB_LIBRARIES',
  p_substitution_value_01  => '/s4atb',
  p_substitution_string_02 => 'S4ATB_LIBRARIES2',
  p_substitution_value_02  => '//dev.smart4apex.nl/s4atb',
  p_last_updated_by => 'RMARTENS',
  p_last_upd_yyyymmddhh24miss=> '20140709000913',
  p_ui_type_name => null,
  p_required_roles=> wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

----------------
--package app map
--
prompt  ...user interfaces
--
 
begin
 
--application/user interface/desktop
wwv_flow_api.create_user_interface (
  p_id => 60030732015501210 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_ui_type_name => 'DESKTOP'
 ,p_display_name => 'Desktop'
 ,p_display_seq => 10
 ,p_use_auto_detect => false
 ,p_is_default => true
 ,p_theme_id => 101
 ,p_home_url => 'f?p=&APP_ID.:1:&SESSION.'
 ,p_login_url => 'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
 ,p_global_page_id => 0
  );
null;
 
end;
/

prompt  ...plug-in settings
--
 
begin
 
--application/plug-in setting/item_type_native_yes_no
wwv_flow_api.create_plugin_setting (
  p_id => 60019821036501142 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'ITEM TYPE'
 ,p_plugin => 'NATIVE_YES_NO'
 ,p_attribute_01 => 'Y'
 ,p_attribute_03 => 'N'
  );
null;
 
end;
/

prompt  ...authorization schemes
--
 
begin
 
null;
 
end;
/

--application/shared_components/navigation/navigation_bar
prompt  ...navigation bar entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id => 60030847168501232 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_icon_sequence=> 10,
  p_icon_image => '',
  p_icon_subtext=> 'Logout',
  p_icon_target=> '&LOGOUT_URL.',
  p_icon_image_alt=> 'Logout',
  p_icon_height=> 32,
  p_icon_width=> 32,
  p_icon_height2=> 24,
  p_icon_width2=> 24,
  p_nav_entry_is_feedback_yn => 'N',
  p_icon_bar_disp_cond=> '',
  p_icon_bar_disp_cond_type=> 'NEVER',
  p_begins_on_new_line=> 'NO',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

prompt  ...application processes
--
prompt  ...application items
--
prompt  ...application level computations
--
 
begin
 
null;
 
end;
/

prompt  ...Application Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/standard/t_home
wwv_flow_api.create_tab (
  p_id=> 60032341800501284 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_HOME',
  p_tab_text => 'Home',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'main',
  p_tab_comment  => '');
 
 
end;
/

prompt  ...Application Parent Tabs
--
 
begin
 
--application/shared_components/navigation/tabs/parent/t_home
wwv_flow_api.create_toplevel_tab (
  p_id=> 60032439135501286 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'main',
  p_tab_sequence=> 10,
  p_tab_name  => 'T_HOME',
  p_tab_text  => 'Home',
  p_tab_target=> 'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.',
  p_current_on_tabset=> 'TS1',
  p_tab_comment=> '');
 
 
end;
/

prompt  ...Shared Lists of values
--
prompt  ...Application Trees
--
--application/pages/page_groups
prompt  ...page groups
--
 
begin
 
null;
 
end;
/

 
--application/pages/page_00000
prompt  ...PAGE 0: Global Page - Desktop
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 0
 ,p_user_interface_id => 60030732015501210 + wwv_flow_api.g_id_offset
 ,p_name => 'Global Page - Desktop'
 ,p_step_title => 'Global Page - Desktop'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'N'
 ,p_protection_level => 'D'
 ,p_cache_page_yn => 'N'
 ,p_last_updated_by => 'RMARTENS'
 ,p_last_upd_yyyymmddhh24miss => '20140708234824'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 63533626829597725 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 0,
  p_plug_name=> 'Bootstrap',
  p_region_name=>'',
  p_region_attributes=> 'href="#"',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 63397727518290172+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'REGION_POSITION_06',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_template_id=> 63353737518920993+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'N',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => 'CURRENT_PAGE_NOT_IN_CONDITION',
  p_plug_display_when_condition => '1003,1004,1005,1006,1007,1008,1009,1010,101',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 63533831999597769 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 0,
  p_button_sequence=> 10,
  p_button_plug_id => 63533626829597725+wwv_flow_api.g_id_offset,
  p_button_name    => 'ABOUT',
  p_button_action  => 'REDIRECT_PAGE',
  p_button_image   => 'template:'||to_char(68259836777658534+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'About',
  p_button_position=> 'REGION_TEMPLATE_HELP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 0
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00001
prompt  ...PAGE 1: HOME
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 1
 ,p_user_interface_id => 60030732015501210 + wwv_flow_api.g_id_offset
 ,p_name => 'HOME'
 ,p_step_title => 'HOME'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'HOME'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_inline_css => 
'.bs-masthead {'||unistr('\000a')||
'    padding-bottom: 140px;'||unistr('\000a')||
'    padding-top: 140px;'||unistr('\000a')||
'    text-align: left;'||unistr('\000a')||
'    position: relative;'||unistr('\000a')||
'    text-shadow: 0 1px 0 rgba(0, 0, 0, 0.15);'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.bs-masthead h1 {'||unistr('\000a')||
'    font-size: 100px;'||unistr('\000a')||
'    color: #FFFFFF;'||unistr('\000a')||
'    line-height: 1;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.bs-masthead .lead {'||unistr('\000a')||
'    font-size: 30px;'||unistr('\000a')||
'    margin-right: 25%;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.bs-docs-home, .bs-header {'||unistr('\000a')||
'    background-color: #032370; '||unistr('\000a')||
'    color: #ffffff;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'body '||
'{'||unistr('\000a')||
'    position: relative;'||unistr('\000a')||
'}'||unistr('\000a')||
''||unistr('\000a')||
'.navbar-brand, .navbar-nav > li > a {'||unistr('\000a')||
'    text-shadow: none;'||unistr('\000a')||
'}'||unistr('\000a')||
''
 ,p_step_template => 63373724209057776 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'SMARTENS'
 ,p_last_upd_yyyymmddhh24miss => '20140706170142'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<h1>Bootstrap</h1>'||unistr('\000a')||
'<p class="lead">Sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development.</p>'||unistr('\000a')||
'<p>'||unistr('\000a')||
'    <a href="http://getbootstrap.com/" target="_blank" class="btn btn-outline-inverse btn-lg">Download Bootstrap</a>'||unistr('\000a')||
'    <a href="http://apex.nl/apex/f?p=125:2:0:ITEM:::P2_NSIM_ID:10902" target="_blank" class="btn btn-outline-inverse btn-lg">Download sou';

s:=s||'rce</a>'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 65559940558171048 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Bootstrap Title',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00003
prompt  ...PAGE 3: Components
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 3
 ,p_user_interface_id => 60030732015501210 + wwv_flow_api.g_id_offset
 ,p_name => 'Components'
 ,p_alias => 'COMPONENTS'
 ,p_step_title => 'Components'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'CSS'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_inline_css => 
'.modaliframe {border: none;'||unistr('\000a')||
'              margin: 2px;'||unistr('\000a')||
'              width: 99%; }'
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'RMARTENS'
 ,p_last_upd_yyyymmddhh24miss => '20140709000436'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select * from all_objects';

wwv_flow_api.create_report_region (
  p_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_name=> 'All Objects',
  p_region_name=>'',
  p_template=> 60046847338690666+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 40,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_grid_column_span => 12,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_condition_type=> 'NEVER',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_rest_enabled=> 'N',
  p_query_row_template=> 60051927122690679+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '15',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'ROW_RANGES',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'TOP_AND_BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65554141686166370 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'OWNER',
  p_column_display_sequence=> 1,
  p_column_heading=> 'OWNER',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65552731663166369 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'OBJECT_NAME',
  p_column_display_sequence=> 2,
  p_column_heading=> 'OBJECT_NAME',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65552829876166369 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'SUBOBJECT_NAME',
  p_column_display_sequence=> 3,
  p_column_heading=> 'SUBOBJECT_NAME',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65552935314166369 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'OBJECT_ID',
  p_column_display_sequence=> 4,
  p_column_heading=> 'OBJECT_ID',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65553025555166369 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'DATA_OBJECT_ID',
  p_column_display_sequence=> 5,
  p_column_heading=> 'DATA_OBJECT_ID',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65553143943166369 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'OBJECT_TYPE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'OBJECT_TYPE',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65553228137166369 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED',
  p_column_display_sequence=> 7,
  p_column_heading=> 'CREATED',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65553327966166369 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'LAST_DDL_TIME',
  p_column_display_sequence=> 8,
  p_column_heading=> 'LAST_DDL_TIME',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65553446909166369 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'TIMESTAMP',
  p_column_display_sequence=> 9,
  p_column_heading=> 'TIMESTAMP',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65553534498166370 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 10,
  p_form_element_id=> null,
  p_column_alias=> 'STATUS',
  p_column_display_sequence=> 10,
  p_column_heading=> 'STATUS',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65553640992166370 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 11,
  p_form_element_id=> null,
  p_column_alias=> 'TEMPORARY',
  p_column_display_sequence=> 11,
  p_column_heading=> 'TEMPORARY',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65553732200166370 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 12,
  p_form_element_id=> null,
  p_column_alias=> 'GENERATED',
  p_column_display_sequence=> 12,
  p_column_heading=> 'GENERATED',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65553845099166370 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 13,
  p_form_element_id=> null,
  p_column_alias=> 'SECONDARY',
  p_column_display_sequence=> 13,
  p_column_heading=> 'SECONDARY',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65553934098166370 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 14,
  p_form_element_id=> null,
  p_column_alias=> 'NAMESPACE',
  p_column_display_sequence=> 14,
  p_column_heading=> 'NAMESPACE',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 65554024347166370 + wwv_flow_api.g_id_offset,
  p_region_id=> 65552520047166367 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 15,
  p_form_element_id=> null,
  p_column_alias=> 'EDITION_NAME',
  p_column_display_sequence=> 15,
  p_column_heading=> 'EDITION_NAME',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 69845648770391799 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'MD-9',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_grid_column_span => 9,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_list_template_id=> 69529626439723033+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 68239643367036078 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Buttons',
  p_region_name=>'Buttons',
  p_parent_plug_id=>69845648770391799 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 440,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'Use any of the available <code>button templates</code> to quickly create a styled button.';

wwv_flow_api.create_page_plug (
  p_id=> 68239844191045777 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Options',
  p_region_name=>'ButtonsOptions',
  p_parent_plug_id=>68239643367036078 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 60,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'Fancy larger or smaller buttons? Simply add one of the classes <code>.btn-lg</code>, <code>.btn-sm</code>, or <code>.btn-xs</code> to the <code>Button CSS Classes</code> for additional sizes.';

wwv_flow_api.create_page_plug (
  p_id=> 68243026847163685 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Sizes',
  p_region_name=>'ButtonsSizes',
  p_parent_plug_id=>68239643367036078 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 70,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 68243820146228024 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Large Buttons',
  p_region_name=>'ButtonsSizesLarge',
  p_parent_plug_id=>68243026847163685 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 90,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 68244349235236434 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Default Buttons',
  p_region_name=>'ButtonsSizesDefault',
  p_parent_plug_id=>68243026847163685 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 110,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 68245243479244242 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Small Buttons',
  p_region_name=>'ButtonsSizesSmall',
  p_parent_plug_id=>68243026847163685 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 130,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 68246421924256870 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Extra small Buttons',
  p_region_name=>'ButtonsSizesExtraSmall',
  p_parent_plug_id=>68243026847163685 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 150,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    Font awesome is built-in, so you can use icons in your buttons by using an <code>iconic button template</code> and add the icons name in the <code>Button CSS Classes</code>.'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 68251037367526255 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Iconic buttons',
  p_region_name=>'ButtonsIconic',
  p_parent_plug_id=>68239643367036078 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 80,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 69497643184661693 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Reports',
  p_region_name=>'Reports',
  p_parent_plug_id=>69845648770391799 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 430,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 69503950569685281 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Classic report',
  p_region_name=>'ReportsClassicReport',
  p_parent_plug_id=>69497643184661693 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 100,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_num_rows => 15,
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select e.*'||unistr('\000a')||
'from   emp  e';

wwv_flow_api.create_report_region (
  p_id=> 69671636997038303 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_name=> 'EMP',
  p_region_name=>'',
  p_parent_plug_id=>69503950569685281 + wwv_flow_api.g_id_offset,
  p_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 180,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_rest_enabled=> 'N',
  p_query_row_template=> 60051927122690679+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '5',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> '0',
  p_query_row_count_max=> '5',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 69671926427038365 + wwv_flow_api.g_id_offset,
  p_region_id=> 69671636997038303 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'EMPNO',
  p_column_display_sequence=> 2,
  p_column_heading=> 'EMPNO',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 69672028767038370 + wwv_flow_api.g_id_offset,
  p_region_id=> 69671636997038303 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'ENAME',
  p_column_display_sequence=> 3,
  p_column_heading=> 'ENAME',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 69672127502038371 + wwv_flow_api.g_id_offset,
  p_region_id=> 69671636997038303 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'JOB',
  p_column_display_sequence=> 5,
  p_column_heading=> 'JOB',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 69672246097038371 + wwv_flow_api.g_id_offset,
  p_region_id=> 69671636997038303 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'MGR',
  p_column_display_sequence=> 1,
  p_column_heading=> 'MGR',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 69672334118038371 + wwv_flow_api.g_id_offset,
  p_region_id=> 69671636997038303 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'HIREDATE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'HIREDATE',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 69672441917038371 + wwv_flow_api.g_id_offset,
  p_region_id=> 69671636997038303 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'SAL',
  p_column_display_sequence=> 4,
  p_column_heading=> 'SAL',
  p_use_as_row_header=> 'N',
  p_column_format=> 'FML999G999G999G999G990D00',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 69672533634038371 + wwv_flow_api.g_id_offset,
  p_region_id=> 69671636997038303 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'COMM',
  p_column_display_sequence=> 7,
  p_column_heading=> 'COMM',
  p_use_as_row_header=> 'N',
  p_column_format=> 'FML999G999G999G999G990D00',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 69672642457038371 + wwv_flow_api.g_id_offset,
  p_region_id=> 69671636997038303 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'DEPTNO',
  p_column_display_sequence=> 8,
  p_column_heading=> 'DEPTNO',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 69504123533685296 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Interactive report',
  p_region_name=>'ReportsInteractiveReport',
  p_parent_plug_id=>69497643184661693 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 160,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_num_rows => 15,
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => 'NEVER',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select e.*'||unistr('\000a')||
'from   emp  e';

wwv_flow_api.create_page_plug (
  p_id=> 69871636575482855 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Emp',
  p_region_name=>'',
  p_parent_plug_id=>69504123533685296 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'N',
  p_plug_template=> 69879618483496597+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 190,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'DYNAMIC_QUERY',
  p_translate_title=> 'Y',
  p_rest_enabled=> 'N',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
 a1 varchar2(32767) := null;
begin
a1:=a1||'select e.*'||unistr('\000a')||
'from   emp  e';

wwv_flow_api.create_worksheet(
  p_id=> 69871734183482858+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_region_id=> 69871636575482855+wwv_flow_api.g_id_offset,
  p_name=> 'Emp',
  p_folder_id=> null, 
  p_alias=> '',
  p_report_id_item=> '',
  p_max_row_count=> '1000000',
  p_max_row_count_message=> 'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.',
  p_no_data_found_message=> 'No data found.',
  p_max_rows_per_page=>'',
  p_search_button_label=>'Search',
  p_sort_asc_image=>'',
  p_sort_asc_image_attr=>'',
  p_sort_desc_image=>'',
  p_sort_desc_image_attr=>'',
  p_sql_query => a1,
  p_status=>'AVAILABLE_FOR_OWNER',
  p_allow_report_saving=>'Y',
  p_allow_save_rpt_public=>'N',
  p_allow_report_categories=>'N',
  p_show_nulls_as=>'-',
  p_pagination_type=>'ROWS_X_TO_Y',
  p_pagination_display_pos=>'BOTTOM_RIGHT',
  p_button_template=> 68240325752059387+wwv_flow_api.g_id_offset,
  p_show_finder_drop_down=>'Y',
  p_show_display_row_count=>'N',
  p_show_search_bar=>'Y',
  p_show_search_textbox=>'Y',
  p_show_actions_menu=>'Y',
  p_report_list_mode=>'TABS',
  p_show_detail_link=>'N',
  p_show_select_columns=>'Y',
  p_show_rows_per_page=>'Y',
  p_show_filter=>'Y',
  p_show_sort=>'Y',
  p_show_control_break=>'Y',
  p_show_highlight=>'Y',
  p_show_computation=>'Y',
  p_show_aggregate=>'Y',
  p_show_chart=>'Y',
  p_show_group_by=>'Y',
  p_show_notify=>'N',
  p_show_calendar=>'N',
  p_show_flashback=>'Y',
  p_show_reset=>'Y',
  p_show_download=>'Y',
  p_show_help=>'Y',
  p_download_formats=>'CSV:HTML:EMAIL',
  p_allow_exclude_null_values=>'N',
  p_allow_hide_extra_columns=>'N',
  p_icon_view_enabled_yn=>'N',
  p_icon_view_use_custom=>'N',
  p_icon_view_columns_per_row=>1,
  p_detail_view_enabled_yn=>'N',
  p_owner=>'RMARTENS',
  p_internal_uid=> 27112516332676665);
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 69872234911482916+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_worksheet_id => 69871734183482858+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'MGR',
  p_display_order          =>1,
  p_column_identifier      =>'D',
  p_column_label           =>'Mgr',
  p_report_label           =>'Mgr',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 69871922331482904+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_worksheet_id => 69871734183482858+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'EMPNO',
  p_display_order          =>2,
  p_column_identifier      =>'A',
  p_column_label           =>'Empno',
  p_report_label           =>'Empno',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 69872047793482915+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_worksheet_id => 69871734183482858+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'ENAME',
  p_display_order          =>3,
  p_column_identifier      =>'B',
  p_column_label           =>'Ename',
  p_report_label           =>'Ename',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 69872418103482916+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_worksheet_id => 69871734183482858+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'SAL',
  p_display_order          =>4,
  p_column_identifier      =>'F',
  p_column_label           =>'Sal',
  p_report_label           =>'Sal',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 69872131982482915+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_worksheet_id => 69871734183482858+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'JOB',
  p_display_order          =>5,
  p_column_identifier      =>'C',
  p_column_label           =>'Job',
  p_report_label           =>'Job',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'STRING',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 69872335876482916+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_worksheet_id => 69871734183482858+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'HIREDATE',
  p_display_order          =>6,
  p_column_identifier      =>'E',
  p_column_label           =>'Hiredate',
  p_report_label           =>'Hiredate',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'DATE',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'LEFT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 69872518621482916+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_worksheet_id => 69871734183482858+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'COMM',
  p_display_order          =>7,
  p_column_identifier      =>'G',
  p_column_label           =>'Comm',
  p_report_label           =>'Comm',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
begin
wwv_flow_api.create_worksheet_column(
  p_id => 69872625741482916+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_worksheet_id => 69871734183482858+wwv_flow_api.g_id_offset,
  p_db_column_name         =>'DEPTNO',
  p_display_order          =>8,
  p_column_identifier      =>'H',
  p_column_label           =>'Deptno',
  p_report_label           =>'Deptno',
  p_sync_form_label        =>'Y',
  p_display_in_default_rpt =>'Y',
  p_is_sortable            =>'Y',
  p_allow_sorting          =>'Y',
  p_allow_filtering        =>'Y',
  p_allow_highlighting     =>'Y',
  p_allow_ctrl_breaks      =>'Y',
  p_allow_aggregations     =>'Y',
  p_allow_computations     =>'Y',
  p_allow_charting         =>'Y',
  p_allow_group_by         =>'Y',
  p_allow_hide             =>'Y',
  p_others_may_edit        =>'Y',
  p_others_may_view        =>'Y',
  p_column_type            =>'NUMBER',
  p_display_as             =>'TEXT',
  p_display_text_as        =>'ESCAPE_SC',
  p_heading_alignment      =>'CENTER',
  p_column_alignment       =>'RIGHT',
  p_tz_dependent           =>'N',
  p_rpt_distinct_lov       =>'Y',
  p_rpt_show_filter_lov    =>'D',
  p_rpt_filter_date_ranges =>'ALL',
  p_help_text              =>'');
end;
/
declare
    rc1 varchar2(32767) := null;
begin
rc1:=rc1||'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO';

wwv_flow_api.create_worksheet_rpt(
  p_id => 69873638653483448+wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_worksheet_id => 69871734183482858+wwv_flow_api.g_id_offset,
  p_session_id  => null,
  p_base_report_id  => null+wwv_flow_api.g_id_offset,
  p_application_user => 'APXWS_DEFAULT',
  p_report_seq              =>10,
  p_report_alias            =>'271145',
  p_status                  =>'PUBLIC',
  p_category_id             =>null+wwv_flow_api.g_id_offset,
  p_is_default              =>'Y',
  p_display_rows            =>15,
  p_report_columns          =>rc1,
  p_flashback_enabled       =>'N',
  p_calendar_display_column =>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 69504331329685297 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Pagination',
  p_region_name=>'ReportsPagination',
  p_parent_plug_id=>69497643184661693 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 170,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_num_rows => 15,
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select e.*'||unistr('\000a')||
'from   emp  e';

wwv_flow_api.create_report_region (
  p_id=> 71301637356565295 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_name=> 'EMP',
  p_region_name=>'PaginationExample',
  p_parent_plug_id=>69504331329685297 + wwv_flow_api.g_id_offset,
  p_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 240,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_rest_enabled=> 'N',
  p_query_row_template=> 60051927122690679+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '5',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'SEARCH_ENGINE',
  p_query_row_count_max=> '99',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71301837577565350 + wwv_flow_api.g_id_offset,
  p_region_id=> 71301637356565295 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'EMPNO',
  p_column_display_sequence=> 2,
  p_column_heading=> 'EMPNO',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71301923073565354 + wwv_flow_api.g_id_offset,
  p_region_id=> 71301637356565295 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'ENAME',
  p_column_display_sequence=> 3,
  p_column_heading=> 'ENAME',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71302034525565354 + wwv_flow_api.g_id_offset,
  p_region_id=> 71301637356565295 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'JOB',
  p_column_display_sequence=> 5,
  p_column_heading=> 'JOB',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71302144307565354 + wwv_flow_api.g_id_offset,
  p_region_id=> 71301637356565295 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'MGR',
  p_column_display_sequence=> 1,
  p_column_heading=> 'MGR',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71302233972565354 + wwv_flow_api.g_id_offset,
  p_region_id=> 71301637356565295 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'HIREDATE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'HIREDATE',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71302323915565354 + wwv_flow_api.g_id_offset,
  p_region_id=> 71301637356565295 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'SAL',
  p_column_display_sequence=> 4,
  p_column_heading=> 'SAL',
  p_use_as_row_header=> 'N',
  p_column_format=> 'FML999G999G999G999G990D00',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71302448321565354 + wwv_flow_api.g_id_offset,
  p_region_id=> 71301637356565295 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'COMM',
  p_column_display_sequence=> 7,
  p_column_heading=> 'COMM',
  p_use_as_row_header=> 'N',
  p_column_format=> 'FML999G999G999G999G990D00',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71302536123565354 + wwv_flow_api.g_id_offset,
  p_region_id=> 71301637356565295 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'DEPTNO',
  p_column_display_sequence=> 8,
  p_column_heading=> 'DEPTNO',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 70151635110727500 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Forms',
  p_region_name=>'Forms',
  p_parent_plug_id=>69845648770391799 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 410,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>All input items are automatically transformed to Bootstrap items and get default 100% width. Set the <code>Label template</code> to <code>TB Label</code></p>';

wwv_flow_api.create_page_plug (
  p_id=> 70157637319737599 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Basic form',
  p_region_name=>'FormsBasicForm',
  p_parent_plug_id=>70151635110727500 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 120,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>Simply type <code>form-inline</code> into <code>Attributes &#8594; Region CSS Classes</code> and change the <code>Label template</code> to <code>TB Label inline</code></p>';

wwv_flow_api.create_page_plug (
  p_id=> 70209629270104258 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Inline form',
  p_region_name=>'FormsInlineForm',
  p_parent_plug_id=>70151635110727500 + wwv_flow_api.g_id_offset,
  p_region_css_classes=>'form-inline',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 200,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    Simply type <code>form-horizontal</code> into <code>Attributes &#8594; Region CSS Classes</code> and change the item labels to <code>TB Label horizontal</code>'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 70237636428288568 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Horizontal form',
  p_region_name=>'FormsHorizontalForm',
  p_parent_plug_id=>70151635110727500 + wwv_flow_api.g_id_offset,
  p_region_css_classes=>'form-horizontal',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 210,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 70393631939289182 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Form controls',
  p_region_name=>'FormsFormControls',
  p_parent_plug_id=>70151635110727500 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 220,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 70639648083684570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Lists',
  p_region_name=>'Lists',
  p_parent_plug_id=>69845648770391799 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 420,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 70645634970709195 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Standard list withoud bullets',
  p_region_name=>'ListsStandardList',
  p_parent_plug_id=>70639648083684570 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 230,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 70643743843702242 + wwv_flow_api.g_id_offset,
  p_list_template_id=> 70637639163663022+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<div>'||unistr('\000a')||
'    <p>'||unistr('\000a')||
'        Just use the breadcrumbs in the page-wizard, or define a breadcrumb yourself in Apex''s Shared Components'||unistr('\000a')||
'    </p>'||unistr('\000a')||
'</div>';

wwv_flow_api.create_page_plug (
  p_id=> 71823621697949317 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Breadcrumbs',
  p_region_name=>'Breadcrumbs',
  p_parent_plug_id=>69845648770391799 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 560,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 71851632741999877 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Breadcrumb',
  p_region_name=>'',
  p_parent_plug_id=>71823621697949317 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'N',
  p_plug_template=> 71953633490454171+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 250,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'M'|| to_char(60032019707501280 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 71857623308016069+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 71827635549953377 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Tabs',
  p_region_name=>'Tabs',
  p_parent_plug_id=>69845648770391799 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 470,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'To create Tabs:'||unistr('\000a')||
'<ol>'||unistr('\000a')||
'  <li>Create a container region to hold the different tabs and set the region template to "TB Tab container - Tabs"</li>'||unistr('\000a')||
'  <li>Create a subregion within the container for every tab and set the region template to "TB Tabbed region"</li>'||unistr('\000a')||
'</ol> '||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 71933620069431424 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Tabs',
  p_region_name=>'TabsTabs',
  p_parent_plug_id=>71827635549953377 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 330,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 71835732694971417 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Tab container',
  p_region_name=>'',
  p_parent_plug_id=>71933620069431424 + wwv_flow_api.g_id_offset,
  p_region_css_classes=>'nav-tabs',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 71803748138890720+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 310,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'Within the subregion all kinds of data can be put, like Reports, Form items and so on.';

wwv_flow_api.create_page_plug (
  p_id=> 71841627284979321 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Tab 1',
  p_region_name=>'',
  p_parent_plug_id=>71835732694971417 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 71813843945936883+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 270,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<span style="font-weight:bold;">Just some stupid data</span>'||unistr('\000a')||
'<p>'||unistr('\000a')||
'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet ';

s:=s||'nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus ';

s:=s||'varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 71843639751982955 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Tab 2',
  p_region_name=>'',
  p_parent_plug_id=>71835732694971417 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 71813843945936883+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 280,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'To create Pills:'||unistr('\000a')||
'<ol>'||unistr('\000a')||
'  <li>Create a container region to hold the different tabs and set the region template to "TB Tab container - Pills"</li>'||unistr('\000a')||
'  <li>Create a subregion within the container for every tab and set the region template to "TB Tabbed region"</li>'||unistr('\000a')||
'</ol> '||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 71941627818443118 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Pills',
  p_region_name=>'TabsPills',
  p_parent_plug_id=>71827635549953377 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 340,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 71929738507417759 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Pills container',
  p_region_name=>'',
  p_parent_plug_id=>71941627818443118 + wwv_flow_api.g_id_offset,
  p_region_css_classes=>'nav-pills',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 71971641848484989+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 300,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'Within the subregion all kinds of data can be put, like Reports, Form items and so on.';

wwv_flow_api.create_page_plug (
  p_id=> 71929920737417785 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Tab 1',
  p_region_name=>'',
  p_parent_plug_id=>71929738507417759 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 71813843945936883+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 260,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<span style="font-weight:bold;">Just some stupid data</span>'||unistr('\000a')||
'<p>'||unistr('\000a')||
'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet ';

s:=s||'nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus ';

s:=s||'varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 71930124805417785 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Tab 2',
  p_region_name=>'',
  p_parent_plug_id=>71929738507417759 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 71813843945936883+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 290,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'The selected tab will be stored in a local storage, so after a page refresh the selected tab is automatically activated.';

wwv_flow_api.create_page_plug (
  p_id=> 82889735787371253 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Selected tab, pill and accordion',
  p_region_name=>'',
  p_parent_plug_id=>71827635549953377 + wwv_flow_api.g_id_offset,
  p_region_css_classes=>'bs-callout-info',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 82880240729729345+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 320,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 72175621340273701 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Accordion',
  p_region_name=>'Accordion',
  p_parent_plug_id=>69845648770391799 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 500,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'To create an Accordion:'||unistr('\000a')||
'<ol>'||unistr('\000a')||
'  <li>Create a container region to hold the different accordion-panels and set the region template to "TB Accordion container"</li>'||unistr('\000a')||
'  <li>Create one a subregions within the container for every accordion-panel (no specific region template necessary)</li>'||unistr('\000a')||
'</ol> '||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72203624345416523 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Basic accordion',
  p_region_name=>'AccordionBasicAccordion',
  p_parent_plug_id=>72175621340273701 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 380,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 72179636231278074 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Accordion container',
  p_region_name=>'',
  p_parent_plug_id=>72203624345416523 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 72077633705794803+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 390,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>Lorem ipsum is een tekst die vaak door drukkers, zetters, grafisch ontwerpers en dergelijken gebruikt wordt om te kijken hoe een tekst of lettertype eruit ziet, bijvoorbeeld in letterproeven, op een webpagina of op een kaft van een boek. De standaardversie van het Lorem ipsum stamt uit circa 1500 en begint als volgt:'||unistr('\000a')||
'</P>'||unistr('\000a')||
'<em>'||unistr('\000a')||
'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiu';

s:=s||'smod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'||unistr('\000a')||
'</em>';

wwv_flow_api.create_page_plug (
  p_id=> 72183633732371931 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'First Accordion',
  p_region_name=>'',
  p_parent_plug_id=>72179636231278074 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 350,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'Op deze tekst bestaan echter talloze varianten, die alleen de eerste zinsnede (Lorem ipsum dolor sit amet, consectetur adipisicing elit) steeds gemeen hebben. Zo is bijvoorbeeld ook de volgende tekst in omloop:'||unistr('\000a')||
'</p>'||unistr('\000a')||
'<em>'||unistr('\000a')||
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus libero leo, pellentesque ornare, adipiscing vitae, rhoncus commodo, nulla. Fusce quis ipsum. Nulla neque massa';

s:=s||', feugiat sed, commodo in, adipiscing ut, est. In fermentum mattis ligula. Nulla ipsum. Vestibulum condimentum condimentum augue. Nunc purus risus, volutpat sagittis, lobortis at, dignissim sed, sapien. Fusce porttitor iaculis ante. Curabitur eu arcu. Morbi quam purus, tempor eget, ullamcorper feugiat, commodo ullamcorper, neque.'||unistr('\000a')||
'</em>';

wwv_flow_api.create_page_plug (
  p_id=> 72185644814375177 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Second Accordion',
  p_region_name=>'',
  p_parent_plug_id=>72179636231278074 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 360,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'De teksten zijn een vorm van pseudo-Latijn: ze lijken op het eerste gezicht origineel Latijn te zijn, maar hebben in werkelijkheid volstrekt geen betekenis. De tekst staat vol met spelfouten en verbasteringen. Dat is ook de reden waarom de teksten gebruikt worden door drukkers en zetters: bij een leesbare tekst zou de lezer afgeleid worden door de inhoud, terwijl het alleen om de vormgeving ga';

s:=s||'at. Bovendien heeft het Lorem ipsum een redelijk normale afwisseling van de verschillende letters en korte en lange woorden, waardoor het beter bruikbaar is dan bijvoorbeeld:'||unistr('\000a')||
'</p>'||unistr('\000a')||
'<em>'||unistr('\000a')||
'Dit is een voorbeeldtekst. Dit is een voorbeeldtekst. Dit is een voorbeeldtekst, ...'||unistr('\000a')||
'</em>';

wwv_flow_api.create_page_plug (
  p_id=> 72187628669379951 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Third Accordion',
  p_region_name=>'',
  p_parent_plug_id=>72179636231278074 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 370,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    <br/>'||unistr('\000a')||
'    Tooltips can be added to every element by adding data attributes to it in the "Element Attributes".<br/>'||unistr('\000a')||
'    <code>data-toggle="tooltip"</code> enables the tooltip<br/>'||unistr('\000a')||
'    <code>data-placement="right"</code> (optional) {top|right|bottom|left} placement of the tooltip<br/>'||unistr('\000a')||
'    <code>title="<em>tooltip content</em>"</code> Contents of the tooltip'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72533630361280618 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Tooltips',
  p_region_name=>'Tooltips',
  p_parent_plug_id=>69845648770391799 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 700,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 82808640407592581 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Modal',
  p_region_name=>'Modal',
  p_parent_plug_id=>69845648770391799 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 690,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows => 15,
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<ol>'||unistr('\000a')||
'    <li>Create a classical report</li>'||unistr('\000a')||
'    <li>add a link to a column</li>'||unistr('\000a')||
'    <li>add <code>data-value="#COLUMN_NAME#" data-modal="iframeforreport"</code> to the Link attributes'||unistr('\000a')||
'        <ul>'||unistr('\000a')||
'            <li>here #COLUMN_NAME# is the reference to the column-value that needs to be transferred to the iFramed form</li>'||unistr('\000a')||
'            <li>"iframeforreport" is the reference to hook the Plugin on</li>';

s:=s||''||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'    </li>'||unistr('\000a')||
'    <li>add a Dynamic Action to the page'||unistr('\000a')||
'        <ul>'||unistr('\000a')||
'            <li>give it a proper name</li>'||unistr('\000a')||
'            <li>event = Click</li>'||unistr('\000a')||
'            <li>selection type = jQuery selector</li>'||unistr('\000a')||
'            <li>jQuery selector = [data-modal="iframeforreport"]</li>'||unistr('\000a')||
'            <li>condition = no condition</li>'||unistr('\000a')||
'            <li>Click "Next"</li>'||unistr('\000a')||
'            <li>Action = S4A TB Iframed';

s:=s||' Modal [Plug-in]</li>'||unistr('\000a')||
'            <li>fill width, height, page, and item appropriate for your situation</li>'||unistr('\000a')||
'            <li>value-type = "link-attribute"</li>'||unistr('\000a')||
'            <li>value = data-value (this is the attribute you used to refer to the column-value in step 3.</li>'||unistr('\000a')||
'            <li>Click "Next"</li>'||unistr('\000a')||
'            <li>Click "Create dynamic action"</li>'||unistr('\000a')||
'        </ul>'||unistr('\000a')||
'    </li>'||unistr('\000a')||
'</ol>';

wwv_flow_api.create_page_plug (
  p_id=> 40806527589086748 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'iFrame Modal on Report',
  p_region_name=>'IframeModalReport',
  p_parent_plug_id=>82808640407592581 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 710,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_num_rows => 15,
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select e.*'||unistr('\000a')||
'from   emp  e';

wwv_flow_api.create_report_region (
  p_id=> 40806727039086777 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_name=> 'EMP',
  p_region_name=>'',
  p_parent_plug_id=>40806527589086748 + wwv_flow_api.g_id_offset,
  p_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 240,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_rest_enabled=> 'N',
  p_query_row_template=> 60051927122690679+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '5',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'SEARCH_ENGINE',
  p_query_row_count_max=> '99',
  p_pagination_display_position=> 'BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 40806904723086781 + wwv_flow_api.g_id_offset,
  p_region_id=> 40806727039086777 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'EMPNO',
  p_column_display_sequence=> 1,
  p_column_heading=> 'EMPNO',
  p_use_as_row_header=> 'N',
  p_column_link=>'javascript:void();',
  p_column_linktext=>'#EMPNO#',
  p_column_link_attr=>'data-value="#EMPNO#" data-modal="iframeforreport"',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 40807030628086782 + wwv_flow_api.g_id_offset,
  p_region_id=> 40806727039086777 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'ENAME',
  p_column_display_sequence=> 3,
  p_column_heading=> 'ENAME',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 40807100364086782 + wwv_flow_api.g_id_offset,
  p_region_id=> 40806727039086777 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'JOB',
  p_column_display_sequence=> 5,
  p_column_heading=> 'JOB',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 40807200594086782 + wwv_flow_api.g_id_offset,
  p_region_id=> 40806727039086777 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'MGR',
  p_column_display_sequence=> 2,
  p_column_heading=> 'MGR',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 40807304069086782 + wwv_flow_api.g_id_offset,
  p_region_id=> 40806727039086777 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'HIREDATE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'HIREDATE',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 40807418920086782 + wwv_flow_api.g_id_offset,
  p_region_id=> 40806727039086777 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'SAL',
  p_column_display_sequence=> 4,
  p_column_heading=> 'SAL',
  p_use_as_row_header=> 'N',
  p_column_format=> 'FML999G999G999G999G990D00',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 40807523852086782 + wwv_flow_api.g_id_offset,
  p_region_id=> 40806727039086777 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'COMM',
  p_column_display_sequence=> 7,
  p_column_heading=> 'COMM',
  p_use_as_row_header=> 'N',
  p_column_format=> 'FML999G999G999G999G990D00',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 40807631179086782 + wwv_flow_api.g_id_offset,
  p_region_id=> 40806727039086777 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'DEPTNO',
  p_column_display_sequence=> 8,
  p_column_heading=> 'DEPTNO',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'RIGHT',
  p_heading_alignment=>'RIGHT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<div>'||unistr('\000a')||
'    <p><br/>Steps:</p>'||unistr('\000a')||
'    <ol>'||unistr('\000a')||
'        <li>Specify the "TB Modal Region" template for modal regions. This will make the region hidden at start.</li>'||unistr('\000a')||
'        <li>Specify the Static ID for this region.</li>'||unistr('\000a')||
'        <li>Add any content (forms, html, lists etc) for the newly created region.</li>'||unistr('\000a')||
'        <li>'||unistr('\000a')||
'            Now you have a few options to call (open) the region.'||unistr('\000a')||
'            <ul>'||unistr('\000a')||
'    ';

s:=s||'            <li>Using data attributes on the calling element (The easy way)<br/>'||unistr('\000a')||
'                    Add <code>data-toggle="modal" data-target="#<em>ModalRegionStaticID</em>"</code> to the Button Attributes. Where <em>ModalRegionStaticID</em> '||unistr('\000a')||
'                    is the ID of the region you specified in step 2.'||unistr('\000a')||
'                </li>'||unistr('\000a')||
'                <li>Using JavaScript:<br/>'||unistr('\000a')||
'                    <c';

s:=s||'ode>'||unistr('\000a')||
'                        javascript: $(''#<em>ModalRegionStaticID</em>'').modal();'||unistr('\000a')||
'                    </code>'||unistr('\000a')||
'                    <br/>'||unistr('\000a')||
'                    The static ID you specified in step 2 should be inserted at <em>ModalRegionStaticID</em>.<br/>'||unistr('\000a')||
'                    The JavaScript can be attached using:'||unistr('\000a')||
'                    <ul>'||unistr('\000a')||
'                        <li>Dynamic actions</li>'||unistr('\000a')||
'              ';

s:=s||'          <li>The link directly on the button</li>'||unistr('\000a')||
'                    </ul>'||unistr('\000a')||
'                </li>'||unistr('\000a')||
'            </ul>'||unistr('\000a')||
'        </li>'||unistr('\000a')||
'    </ol>'||unistr('\000a')||
'</div>';

wwv_flow_api.create_page_plug (
  p_id=> 72029631272718444 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Basic Modal',
  p_region_name=>'BasicModal',
  p_parent_plug_id=>82808640407592581 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 580,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||''||unistr('\000a')||
'          <h4>Text in a modal</h4>'||unistr('\000a')||
'          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>'||unistr('\000a')||
''||unistr('\000a')||
'          <h4>Popover in a modal</h4>'||unistr('\000a')||
'          <p>This <a data-original-title="A Title" href="#" role="button" class="btn btn-default popover-test" title="" data-content="And here''s some amazing content. It''s very engaging. right?">button</a> should trigger a popover on click.</p';

s:=s||'>'||unistr('\000a')||
''||unistr('\000a')||
'          <h4>Tooltips in a modal</h4>'||unistr('\000a')||
'          <p><a data-original-title="Tooltip" href="#" class="tooltip-test" title="">This link</a> and <a data-original-title="Tooltip" href="#" class="tooltip-test" title="">that link</a> should have tooltips on hover.</p>'||unistr('\000a')||
''||unistr('\000a')||
'          <hr>'||unistr('\000a')||
''||unistr('\000a')||
'          <h4>Overflowing text to show scroll behavior</h4>'||unistr('\000a')||
'          <p>Cras mattis consectetur purus sit amet ferme';

s:=s||'ntum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>'||unistr('\000a')||
'          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'||unistr('\000a')||
'          <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl';

s:=s||' consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>'||unistr('\000a')||
'          <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>'||unistr('\000a')||
'          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue lao';

s:=s||'reet rutrum faucibus dolor auctor.</p>'||unistr('\000a')||
'          <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>'||unistr('\000a')||
'          <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consect';

s:=s||'etur ac, vestibulum at eros.</p>'||unistr('\000a')||
'          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'||unistr('\000a')||
'          <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>'||unistr('\000a')||
'       ';

s:=s||' ';

wwv_flow_api.create_page_plug (
  p_id=> 72079632628841799 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Modal Region',
  p_region_name=>'ModalRegion',
  p_parent_plug_id=>72029631272718444 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 72073633920785435+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 340,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<div>'||unistr('\000a')||
'    <p>'||unistr('\000a')||
'        Iframe modals simplify your page-logic because you can have all procedures (for CRUD for example) on a separate page. This page will then be loaded when opening the modal.'||unistr('\000a')||
'    </p>'||unistr('\000a')||
'    <p><br/>Steps:</p>'||unistr('\000a')||
'    <ol>'||unistr('\000a')||
'        <li>Create the page you want to open in the modal.</li>'||unistr('\000a')||
'        <li>Use "TB iFramed Form" as the region template.</li>'||unistr('\000a')||
'        <li>Use "TB Modal" as the page';

s:=s||' template.</li>'||unistr('\000a')||
'        <li>'||unistr('\000a')||
'            You must make a few adjustments to the generated page to make the modal act on saving, canceling and closing the modal.'||unistr('\000a')||
'            <ul>'||unistr('\000a')||
'                <li>'||unistr('\000a')||
'                    Add a dynamic action type "javascript" to the Cancel-button you should execute <code>closemodal();</code>.<br/>'||unistr('\000a')||
'                    This javascript function is provided in the page-';

s:=s||'template for your convenience.'||unistr('\000a')||
'                </li>'||unistr('\000a')||
'                <li>'||unistr('\000a')||
'                    Next to the cancel-button you may also want to close the modal after CRUD operations. To do this:'||unistr('\000a')||
'                    <ul>'||unistr('\000a')||
'                        <li>'||unistr('\000a')||
'                            The branch that branches to the same page should give the request back to that page.<br/>'||unistr('\000a')||
'                            Put <cod';

s:=s||'e>&amp;REQUEST.</code> into the request-field of the branch'||unistr('\000a')||
'                        </li>'||unistr('\000a')||
'                        <li>'||unistr('\000a')||
'                            The rendering part of your page can now read the <code>&amp;REQUEST.</code><br/>'||unistr('\000a')||
'                            Create a javascript dynamic-action for the "Page Load" event<br/>'||unistr('\000a')||
'                            <code>'||unistr('\000a')||
'                                var request';

s:=s||'s = "SAVE,DELETE,CREATE";'||unistr('\000a')||
'                            </code><br/>'||unistr('\000a')||
'                            <code>'||unistr('\000a')||
'								if (requests.indexOf("&amp;REQUEST.")>-1)'||unistr('\000a')||
'                            </code><br/>'||unistr('\000a')||
'                            <code>'||unistr('\000a')||
'                                &nbsp;&nbsp;&nbsp;&nbsp;closemodal();'||unistr('\000a')||
'                            </code>'||unistr('\000a')||
'                        </li>'||unistr('\000a')||
'                    </ul>'||unistr('\000a')||
'          ';

s:=s||'      </li>'||unistr('\000a')||
'                <li>'||unistr('\000a')||
'                    We''re working on a way to have the save and error messages displayed correctly on the calling page.'||unistr('\000a')||
'                </li>'||unistr('\000a')||
'            </ul>'||unistr('\000a')||
'        </li>'||unistr('\000a')||
'    </ol>'||unistr('\000a')||
'</div>';

wwv_flow_api.create_page_plug (
  p_id=> 82811722062662936 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'iFrame Modal',
  p_region_name=>'IframeModal',
  p_parent_plug_id=>82808640407592581 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 690,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 69853620635402533 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'MD-3',
  p_region_name=>'',
  p_region_attributes=> 'style="margin-top:30px;"',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => false,
  p_plug_new_grid_column  => true,
  p_plug_grid_column_span => 3,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_list_template_id=> 69529626439723033+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 69819629976329629 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'NavListCss',
  p_region_name=>'',
  p_parent_plug_id=>69853620635402533 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 30,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_template_id=> 69529626439723033+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>Bring Bootstrap''s components to life in Oracle Application Express, with over a dozen custom jQuery plugins. Easily include them all, or one by one.</p>'||unistr('\000a')||
'<div id="carbonads-container" class="visible-lg visible-md">'||unistr('\000a')||
'    <div class="carbonad">'||unistr('\000a')||
'        <div id="azcarbon">'||unistr('\000a')||
'            <a target="_blank" title="SMART4apex" href="http://www.smart4apex.nl">'||unistr('\000a')||
'                '||unistr('\000a')||
'                <img border=';

s:=s||'"0" alt="S4ALOGO" src="&S4ATB_LIBRARIES./images/smart4apex_logo.png">'||unistr('\000a')||
'            </a>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>';

wwv_flow_api.create_page_plug (
  p_id=> 70117630178394914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Twitter bootstrap theme',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 70123634034424390+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 400,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'REGION_POSITION_06',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 68240030470051199 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 20,
  p_button_plug_id => 68239844191045777+wwv_flow_api.g_id_offset,
  p_button_name    => 'DEFAULT',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(68240325752059387+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Default',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> 'http://www.google.com',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68240719352101196 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 30,
  p_button_plug_id => 68239844191045777+wwv_flow_api.g_id_offset,
  p_button_name    => 'PRIMARY',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240525930097273+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Primary',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68241134867109217 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 40,
  p_button_plug_id => 68239844191045777+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUCCESS',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240922252105646+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Success',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68241427966112463 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 50,
  p_button_plug_id => 68239844191045777+wwv_flow_api.g_id_offset,
  p_button_name    => 'INFO',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68242136235119091+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Info',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68241624084114192 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 60,
  p_button_plug_id => 68239844191045777+wwv_flow_api.g_id_offset,
  p_button_name    => 'WARNING',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68242244546121502+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Warning',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68241820202116005 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 70,
  p_button_plug_id => 68239844191045777+wwv_flow_api.g_id_offset,
  p_button_name    => 'DANGER',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68242320090123902+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Danger',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68242049735117483 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 80,
  p_button_plug_id => 68239844191045777+wwv_flow_api.g_id_offset,
  p_button_name    => 'LINK',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68242428401126353+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Link',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68252424522526278 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 90,
  p_button_plug_id => 68251037367526255+wwv_flow_api.g_id_offset,
  p_button_name    => 'DEFAULT',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68250444377509381+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Default',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_css_classes=>'fa-flag',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68251235672526266 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 100,
  p_button_plug_id => 68251037367526255+wwv_flow_api.g_id_offset,
  p_button_name    => 'PRIMARY',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68250739314517332+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Primary',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_css_classes=>'fa-flag',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68251428951526269 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 110,
  p_button_plug_id => 68251037367526255+wwv_flow_api.g_id_offset,
  p_button_name    => 'SUCCESS',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68250846586519493+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Success',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_css_classes=>'fa-flag',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68251641913526272 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 120,
  p_button_plug_id => 68251037367526255+wwv_flow_api.g_id_offset,
  p_button_name    => 'INFO',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68250521999512334+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Info',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_css_classes=>'fa-flag',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68251822750526278 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 130,
  p_button_plug_id => 68251037367526255+wwv_flow_api.g_id_offset,
  p_button_name    => 'WARNING',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68250921091521590+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Warning',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_css_classes=>'fa-flag',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68252045433526278 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 140,
  p_button_plug_id => 68251037367526255+wwv_flow_api.g_id_offset,
  p_button_name    => 'DANGER',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(68250326454485234+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Danger',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_cattributes=>'fa-flag',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68252223197526278 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 150,
  p_button_plug_id => 68251037367526255+wwv_flow_api.g_id_offset,
  p_button_name    => 'LINK',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68250631003515013+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Link',
  p_button_position=> 'BOTTOM',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_cattributes=>'fa-flag',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 72245643878507286 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 240,
  p_button_plug_id => 72079632628841799+wwv_flow_api.g_id_offset,
  p_button_name    => 'CLOSE',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68242136235119091+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Close',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_cattributes=>'data-dismiss="modal"',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 72041641146759142 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 10,
  p_button_plug_id => 72029631272718444+wwv_flow_api.g_id_offset,
  p_button_name    => 'OPEN_MODAL',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68250521999512334+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Open Modal',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_cattributes=>'data-toggle="modal" data-target="#ModalRegion"',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68243345169165199 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 160,
  p_button_plug_id => 68243820146228024+wwv_flow_api.g_id_offset,
  p_button_name    => 'DEFAULT',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240325752059387+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Large button',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_css_classes=>'btn-lg',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68243541072167142 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 170,
  p_button_plug_id => 68243820146228024+wwv_flow_api.g_id_offset,
  p_button_name    => 'PRIMARY',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240525930097273+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Large button',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_css_classes=>'btn-lg',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68244533372236446 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 180,
  p_button_plug_id => 68244349235236434+wwv_flow_api.g_id_offset,
  p_button_name    => 'DEFAULT',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240325752059387+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Default button',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68244736761236447 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 190,
  p_button_plug_id => 68244349235236434+wwv_flow_api.g_id_offset,
  p_button_name    => 'PRIMARY',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240525930097273+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Default button',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68245427850244252 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 200,
  p_button_plug_id => 68245243479244242+wwv_flow_api.g_id_offset,
  p_button_name    => 'DEFAULT',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240325752059387+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Small button',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_css_classes=>'btn-sm',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68245641694244253 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 210,
  p_button_plug_id => 68245243479244242+wwv_flow_api.g_id_offset,
  p_button_name    => 'PRIMARY',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240525930097273+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Small button',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_css_classes=>'btn-sm',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68246738841259290 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 220,
  p_button_plug_id => 68246421924256870+wwv_flow_api.g_id_offset,
  p_button_name    => 'DEFAULT',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240325752059387+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Extra small button',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_css_classes=>'btn-xs',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 68246934312261446 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 230,
  p_button_plug_id => 68246421924256870+wwv_flow_api.g_id_offset,
  p_button_name    => 'PRIMARY',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240525930097273+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Extra small button',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_css_classes=>'btn-xs',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 72537934950355340 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 250,
  p_button_plug_id => 72533630361280618+wwv_flow_api.g_id_offset,
  p_button_name    => 'TOOLTIP_ON_LEFT',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240325752059387+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Tooltip On Left',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_cattributes=>'data-toggle="tooltip" data-placement="left" title="Some tooltip text!"',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 72538420716361855 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 260,
  p_button_plug_id => 72533630361280618+wwv_flow_api.g_id_offset,
  p_button_name    => 'TOOLTIP_ON_TOP',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240325752059387+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Tooltip On Top',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_cattributes=>'data-toggle="tooltip" data-placement="top" title="Some tooltip text!"',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 72539043133366665 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 290,
  p_button_plug_id => 72533630361280618+wwv_flow_api.g_id_offset,
  p_button_name    => 'TOOLTIP_ON_BOTTOM',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240325752059387+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Tooltip On Bottom',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_cattributes=>'data-toggle="tooltip" data-placement="bottom" title="Some tooltip text!"',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 72533849061285995 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 300,
  p_button_plug_id => 72533630361280618+wwv_flow_api.g_id_offset,
  p_button_name    => 'TOOLTIP_ON_RIGHT',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68240325752059387+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Tooltip On Right',
  p_button_position=> 'TOP',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_cattributes=>'data-toggle="tooltip" data-placement="right" title="Some tooltip text!"',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 82814130766693830 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 310,
  p_button_plug_id => 82811722062662936+wwv_flow_api.g_id_offset,
  p_button_name    => 'OPEN_IFRAME_MODAL',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68242136235119091+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Open Iframe Modal',
  p_button_position=> 'TOP',
  p_button_alignment=> 'LEFT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'N',
  p_button_cattributes=>'data-width="700" data-height="500" data-target="" data-url="f?p=&APP_ID.:14:&APP_SESSION."',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70161127644752216 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_EMAIL_ADDRESS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 70157637319737599+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Email Address',
  p_placeholder=>'Enter email',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70181745875865248 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_PASSWORD',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 70157637319737599+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Password',
  p_placeholder=>'Password',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70187721277891896 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_CHECK_ME_OUT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 70157637319737599+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Does not matter',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_CHECKBOX',
  p_lov=> 'STATIC2:Check me out;Y',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70189622361903540+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => '1',
  p_attribute_02 => 'VERTICAL',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70199624926989440 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_SUBMIT_FOR_ERROR',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 70157637319737599+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Submit for error',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_tag_css_classes=> 'fa-exclamation-triangle',
  p_tag_attributes  => 'template:'||to_char(68250326454485234 + wwv_flow_api.g_id_offset),
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'N',
  p_button_execute_validations=>'Y',
  p_button_action => 'SUBMIT',
  p_button_is_hot=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70211833601114061 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_EMAIL_ADDRESS_INLINE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 70209629270104258+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Email Address',
  p_placeholder=>'Enter email',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70217625984141065+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70219848013152868 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_PASSWORD_INLINE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 70209629270104258+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Password',
  p_placeholder=>'Password',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70217625984141065+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70225720156211428 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_REMEMBER_ME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 70209629270104258+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Remember me',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_CHECKBOX',
  p_lov=> 'STATIC2:Remember me;Y',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70189622361903540+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_attribute_01 => '1',
  p_attribute_02 => 'VERTICAL',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70229638245229752 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_SIGN_IN',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 90,
  p_item_plug_id => 70209629270104258+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Sign in',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(68240922252105646 + wwv_flow_api.g_id_offset),
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'N',
  p_button_execute_validations=>'Y',
  p_button_action => 'SUBMIT',
  p_button_is_hot=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70241742045299912 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_EMAIL_HORIZONTAL',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 100,
  p_item_plug_id => 70237636428288568+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Email',
  p_placeholder=>'Email',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70275622650540088+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70265731989471618 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_PASSWORD_HORIZONTAL',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 110,
  p_item_plug_id => 70237636428288568+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Password',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70275622650540088+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70393945911293594 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_TEXTAREA',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 120,
  p_item_plug_id => 70393631939289182+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Textarea',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXTAREA',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 80,
  p_cMaxlength=> 4000,
  p_cHeight=> 5,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'N',
  p_attribute_03 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70417722940441004 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_DISABLED',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 130,
  p_item_plug_id => 70393631939289182+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Disabled',
  p_placeholder=>'Disabled item',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'Y',
  p_attribute_03 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70421747716459821 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_CANT_CHECK_THIS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 140,
  p_item_plug_id => 70393631939289182+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Cant check this',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_CHECKBOX',
  p_lov=> 'STATIC2:You can not check this;Y,And also this one is disabled;N',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_attributes  => 'disabled="disabled"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70189622361903540+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => '1',
  p_attribute_02 => 'VERTICAL',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Add <code>has-success</code> to <code>HTML Form Element CSS Classes</code>';

wwv_flow_api.create_page_item(
  p_id=>70431822829577781 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_ITEM_SUCCES',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 150,
  p_item_plug_id => 70393631939289182+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Item succes',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'has-success',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Add <code>has-warning</code> to <code>HTML Form Element CSS Classes</code>';

wwv_flow_api.create_page_item(
  p_id=>70452025484758856 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_ITEM_WARNING',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 160,
  p_item_plug_id => 70393631939289182+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Item warning',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'has-warning',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Add <code>has-error</code> to <code>HTML Form Element CSS Classes</code>';

wwv_flow_api.create_page_item(
  p_id=>70455749194763009 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_HAS_ERROR',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 170,
  p_item_plug_id => 70393631939289182+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Item error',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'has-error',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_help_text=> h,
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70493748614945587 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_DATEPICKER',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 180,
  p_item_plug_id => 70393631939289182+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Datepicker',
  p_pre_element_text=>'<div>'||unistr('\000a')||
'    The date-picker javascript library is included. You don''t have to do anything for a bootstrap styled datepicker.<br/>'||unistr('\000a')||
'    However the default dateformat for the library is different than the one apex uses.<br/>'||unistr('\000a')||
'    You therefore must take this into account<br/>'||unistr('\000a')||
'    <ul>'||unistr('\000a')||
'        <li>Default: &quot;mm/dd/yyyy&quot;</li>'||unistr('\000a')||
'        <li>The date format, combination of d, dd, D, DD, m, mm, M, MM, yy, yyyy.</li>'||unistr('\000a')||
'        <li>d, dd: Numeric date, no leading zero and leading zero, respectively. Eg, 5, 05.</li>'||unistr('\000a')||
'        <li>D, DD: Abbreviated and full weekday names, respectively. Eg, Mon, Monday.</li>'||unistr('\000a')||
'        <li>m, mm: Numeric month, no leading zero and leading zero, respectively. Eg, 7, 07.</li>'||unistr('\000a')||
'        <li>M, MM: Abbreviated and full month names, respectively. Eg, Jan, January</li>'||unistr('\000a')||
'        <li>yy, yyyy: 2- and 4-digit years, respectively. Eg, 12, 2012.</li>'||unistr('\000a')||
'        <li>These format strings are case sensitive!</li>'||unistr('\000a')||
'    </ul>'||unistr('\000a')||
'    The format string must be added to the &quot;HTML Form Element Attributes&quot; as follows:<br/>'||unistr('\000a')||
'    data-date-format=&quot;d-M-yyyy&quot;<br/>'||unistr('\000a')||
'    Keep the format for the datepicker library in line with the dateformat in the &quot;Format Mask&quot; under the &quot;Settings&quot; section of the page-item.<br/>'||unistr('\000a')||
'    You must set both properties: &quot;Format mask&quot; and &quot;HTML Form Element Attributes&quot;.<br/>'||unistr('\000a')||
'    <ul>for example'||unistr('\000a')||
'        <li>data-date-format=&quot;d-M-yyyy&quot; corresponds with &quot;D-Mon-YYYY&quot; in the &quot;Format Mask&quot;</li>'||unistr('\000a')||
'        <li>data-date-format=&quot;d-m-yyyy&quot; corresponds with &quot;D-M-YYYY&quot; in the &quot;Format Mask&quot;</li>'||unistr('\000a')||
'    </ul>'||unistr('\000a')||
'    Additional settings can be found on the libraries <a href="http://bootstrap-datepicker.readthedocs.org/en/release/options.html" target="_blank">documentation</a> site.<br/>'||unistr('\000a')||
'    You can for example add <code>data-date-autoclose="true"</code> to the &quot;HTML Form Element Attributes&quot; to automatically close the picker after choosing a date.'||unistr('\000a')||
'</div>',
  p_format_mask=>'D-Mon-YYYY',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DATE_PICKER',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_attributes  => 'data-date-format="d-M-yyyy" data-date-autoclose="true"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_04 => 'button',
  p_attribute_05 => 'N',
  p_attribute_07 => 'NONE',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>70610223178473859 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_SUBMIT_FOR_SUCCESS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 70157637319737599+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Submit for success',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_tag_css_classes=> 'fa-flag',
  p_tag_attributes  => 'template:'||to_char(68250846586519493 + wwv_flow_api.g_id_offset),
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'N',
  p_button_execute_validations=>'Y',
  p_button_action => 'SUBMIT',
  p_button_is_hot=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72589727362467874 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_SELECTLIST',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 190,
  p_item_plug_id => 70393631939289182+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Select list',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 82816734837414068 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_name => 'Open iFrame Modal'
 ,p_event_sequence => 10
 ,p_triggering_element_type => 'BUTTON'
 ,p_triggering_button_id => 82814130766693830 + wwv_flow_api.g_id_offset
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'click'
  );
wwv_flow_api.create_page_da_action (
  p_id => 82817030680414073 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 82816734837414068 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'PLUGIN_NL.SMART4APEX.MODAL.IFRAME'
 ,p_attribute_01 => '500'
 ,p_attribute_02 => '500'
 ,p_attribute_03 => '14'
 ,p_attribute_04 => 'P14_EMPNO'
 ,p_attribute_05 => 'fixed value'
 ,p_attribute_06 => '7521'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 40830511977205273 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_name => 'Open iframe for report'
 ,p_event_sequence => 20
 ,p_triggering_element_type => 'JQUERY_SELECTOR'
 ,p_triggering_element => '[data-modal="iframeforreport"]'
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'click'
  );
wwv_flow_api.create_page_da_action (
  p_id => 40830820398205309 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 3
 ,p_event_id => 40830511977205273 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'PLUGIN_NL.SMART4APEX.MODAL.IFRAME'
 ,p_attribute_01 => '500'
 ,p_attribute_02 => '500'
 ,p_attribute_03 => '14'
 ,p_attribute_04 => 'P14_EMPNO'
 ,p_attribute_05 => 'link-attribute'
 ,p_attribute_06 => 'data-value'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'raise_application_error(-20000,''Something went very wrong! Please solve the problem.'');';

wwv_flow_api.create_page_process(
  p_id     => 70495745958955477 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Raise Error for demo',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>70199624926989440 + wwv_flow_api.g_id_offset,
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'null;';

wwv_flow_api.create_page_process(
  p_id     => 70609929616471052 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 3,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Succes message',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>70610223178473859 + wwv_flow_api.g_id_offset,
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> 'Everything went ok!',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 3
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00004
prompt  ...PAGE 4: Extra components
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 4
 ,p_user_interface_id => 60030732015501210 + wwv_flow_api.g_id_offset
 ,p_name => 'Extra components'
 ,p_alias => 'EXTRACOMPONENTS'
 ,p_step_title => 'Extra components'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Components'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'RMARTENS'
 ,p_last_upd_yyyymmddhh24miss => '20140624180545'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 71780245599876327 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'MD-9',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 21,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_grid_column_span => 9,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_list_template_id=> 69529626439723033+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    By Silvio Moreto, Ana Carolina, caseyjhol, and Matt Bryson. (<a href="https://github.com/silviomoreto/bootstrap-select" target="_blank"><i class="fa fa-github"></i>&nbsp;GitHub</a>)'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72613728092316882 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Bootstrap-select',
  p_region_name=>'Bootstrap-select',
  p_parent_plug_id=>71780245599876327 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 80,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 72621627661335681 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Standard example',
  p_region_name=>'BS-Standard',
  p_parent_plug_id=>72613728092316882 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 80,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>Set <code>Allow Multi Selection</code> to yes, to allow multiple selections</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72631841307424711 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Multiple',
  p_region_name=>'BS-Multiple',
  p_parent_plug_id=>72613728092316882 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 90,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    Set <code>HTML Form Element Attributes</code> to one of the Bootstrap styles:'||unistr('\000a')||
'    <ul>'||unistr('\000a')||
'        <li><code>data-style="btn-primary"</code></li>'||unistr('\000a')||
'        <li><code>data-style="btn-info"</code></li>'||unistr('\000a')||
'        <li><code>data-style="btn-success"</code></li>'||unistr('\000a')||
'        <li><code>data-style="btn-warning"</code></li>'||unistr('\000a')||
'        <li><code>data-style="btn-danger"</code></li>'||unistr('\000a')||
'        <li><code>data-style="btn-';

s:=s||'inverse"</code></li>'||unistr('\000a')||
'</ul>'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72637736852451814 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Bootstrap classes',
  p_region_name=>'BS-Bootstrap-classes',
  p_parent_plug_id=>72613728092316882 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 110,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>Add <code>data-live-search="true"</code> into the elements "HTML Form Element Attributes" for a searchable selectlist</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72669632275545140 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Search input',
  p_region_name=>'BS-Search',
  p_parent_plug_id=>72613728092316882 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 120,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 72677646099672101 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Title',
  p_region_name=>'BS-Title',
  p_parent_plug_id=>72613728092316882 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 130,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    Using the <code>data-selected-text-format="<em>value</em>"</code> attribute on a multiple select you can specify how the selection is displayed.'||unistr('\000a')||
'</p>'||unistr('\000a')||
'<p>'||unistr('\000a')||
'    The supported values are:'||unistr('\000a')||
'    <ul>'||unistr('\000a')||
'        <li><code>values</code> A comma delimted list of selected values. (default)</li>'||unistr('\000a')||
'        <li><code>count</code> If one item is selected, then the value is shown, if more than one is selected ';

s:=s||'then the number of selected items is displayed, eg 2 of 6 selected</li>'||unistr('\000a')||
'        <li><code>count &gt; x</code> Where X is the number of items selected when the display format changes from values to count</li>'||unistr('\000a')||
'</ul>'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72711648325833619 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Count selected items',
  p_region_name=>'BS-Count',
  p_parent_plug_id=>72613728092316882 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 140,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    You can also show the <code>tick icon</code> on single select with the <code>show-tick</code> class:'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72723634698895851 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Tick',
  p_region_name=>'BS-Tick',
  p_parent_plug_id=>72613728092316882 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 150,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    The bootstrap menu arrow can be added with the <code>show-menu-arrow</code> class:'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72733627472922128 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Menu arrow',
  p_region_name=>'BS-Arrow',
  p_parent_plug_id=>72613728092316882 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 160,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    Alternatively, use the <code>data-width</code> attribute to set the width of the select. Set data-width to <code>auto</code> to automatically adjust the width of the select to its widest option. An exact value can also be specified, e.g., <code>300px</code> or <code>50%</code>.'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72739622193939545 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Width',
  p_region_name=>'BSWidth',
  p_parent_plug_id=>72613728092316882 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 170,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    Add a header to the dropdown menu, e.g. <code>header: ''Select a country''</code> or <code>data-header="Select a country"</code>'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72773630300027051 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Data header',
  p_region_name=>'BS-Data-header',
  p_parent_plug_id=>72613728092316882 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 180,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    Please see the Methods section on the <a href="http://silviomoreto.github.io/bootstrap-select/3/" target="_blank">demo</a> page for additional possibilties using javascript'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72789648017136207 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Options &amp; Methods',
  p_region_name=>'BS-Options',
  p_parent_plug_id=>72613728092316882 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 190,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    We''ve included several extra components for your convenience.'||unistr('\000a')||
'</p>'||unistr('\000a')||
'<p>'||unistr('\000a')||
'    These extra components work out of the box.'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72659630019506650 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Extra components',
  p_region_name=>'',
  p_parent_plug_id=>71780245599876327 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 70,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    Parsley, the ultimate javascript form validation library<br/>'||unistr('\000a')||
'    Validating forms frontend have never been so powerful and easy.<br/>'||unistr('\000a')||
'    Visit the <a href="http://parsleyjs.org" target="_blank">Parsley website</a> for all options'||unistr('\000a')||
'</p>'||unistr('\000a')||
'<p>'||unistr('\000a')||
'    The theme uses a slightly different approach for adding validations to form elements.<br/>'||unistr('\000a')||
'    Parsley normally is turned on by adding a data-attri';

s:=s||'bute to the form. In Apex there are very limited possibilities to alter the way the form element is rendered.<br/>'||unistr('\000a')||
'    The theme therefore expects the data-attribute on the form-elements individually.'||unistr('\000a')||
'</p>'||unistr('\000a')||
'<p>'||unistr('\000a')||
'    Beautifying the error messages by giving them CSS and/or putting them in nice error-boxes as shown in the Components page is a work in progress.'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72911731450652397 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Parsley',
  p_region_name=>'Parsley-main',
  p_parent_plug_id=>71780245599876327 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 200,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    Below are some fields using a number of checks.<br/>'||unistr('\000a')||
'    The check is done using a dynamic action on the "Validate" button.'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72911941126652419 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Simple examples',
  p_region_name=>'Parsley-simple',
  p_parent_plug_id=>72911731450652397 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 91,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>&nbsp;</p>'||unistr('\000a')||
'<p>'||unistr('\000a')||
'    The validate button should have a dynamic action that triggers the Parsley validation.<br/>'||unistr('\000a')||
'    Simply create a javascript dynamic action on the button, without firing the script at page-load.<br/>'||unistr('\000a')||
'</p>'||unistr('\000a')||
'<code>'||unistr('\000a')||
'// in this example only one group is validated (''simple'')<br/>'||unistr('\000a')||
'// you can make the check as complicated as you want.<br/>'||unistr('\000a')||
'if($(''form'').parsley().validate(''simple''))<br/';

s:=s||'>'||unistr('\000a')||
'{<br/>'||unistr('\000a')||
'    // destroy parsley to prevent other checks to fire <br/>'||unistr('\000a')||
'    $(''form'').parsley().destroy();<br/>'||unistr('\000a')||
'    apex.submit();<br/>'||unistr('\000a')||
'}'||unistr('\000a')||
'</code>'||unistr('\000a')||
'<p>'||unistr('\000a')||
'    This will bind the validation for the entire form, but only validates the fields that are part of the "simple" group.<br/>'||unistr('\000a')||
'    You can add fields to a group by adding <code>data-parsley-group="simple"</code> to the fields'' attributes.'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 82894148245965824 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Dynamic Action',
  p_region_name=>'',
  p_parent_plug_id=>72911941126652419 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 270,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'    Add the attribute <code>parsley</code> to commit the field to the Parsley engine.<br/>'||unistr('\000a')||
'    Other data attributes on the field define what Parsley should do with the field.<br/>'||unistr('\000a')||
'    Simply use one of the Parsley data attributes (all starting with <code>data-parsley-*</code>, to the elements attributes.'||unistr('\000a')||
'</p>';

wwv_flow_api.create_page_plug (
  p_id=> 72913523932652424 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Adding Parsley to a field',
  p_region_name=>'Parsley-adding',
  p_parent_plug_id=>72911731450652397 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69241630586354609+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 81,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<div style="height: 50px;">&nbsp;</div>';

wwv_flow_api.create_page_plug (
  p_id=> 72919649851686138 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Spacer',
  p_region_name=>'',
  p_parent_plug_id=>71780245599876327 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 210,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 82885744210881674 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Callout',
  p_region_name=>'Callout-main',
  p_parent_plug_id=>71780245599876327 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 220,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'To create this callout just create a region with template "TB callout" and add "bs-callout-danger" to "Region CSS classes".';

wwv_flow_api.create_page_plug (
  p_id=> 82886042263890635 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Danger callout',
  p_region_name=>'Callout-danger',
  p_parent_plug_id=>82885744210881674 + wwv_flow_api.g_id_offset,
  p_region_css_classes=>'bs-callout-danger',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 82880240729729345+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 230,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'To create this callout just create a region with template "TB callout" and add "bs-callout-warning" to "Region CSS classes".';

wwv_flow_api.create_page_plug (
  p_id=> 82886332482906704 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Warning callout',
  p_region_name=>'Callout-warning',
  p_parent_plug_id=>82885744210881674 + wwv_flow_api.g_id_offset,
  p_region_css_classes=>'bs-callout-warning',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 82880240729729345+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 240,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'To create this callout just create a region with template "TB callout" and add "bs-callout-info" to "Region CSS classes".';

wwv_flow_api.create_page_plug (
  p_id=> 82886737462917561 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Info callout',
  p_region_name=>'Callout-info',
  p_parent_plug_id=>82885744210881674 + wwv_flow_api.g_id_offset,
  p_region_css_classes=>'bs-callout-info',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 82880240729729345+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 250,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'To create this callout just create a region with template "TB callout" and add "bs-callout-success" to "Region CSS classes".<br/>'||unistr('\000a')||
'You can also add items to the callout.<br/>';

wwv_flow_api.create_page_plug (
  p_id=> 82887049367930495 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Success callout',
  p_region_name=>'Callout-success',
  p_parent_plug_id=>82885744210881674 + wwv_flow_api.g_id_offset,
  p_region_css_classes=>'bs-callout-success',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 82880240729729345+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 260,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 71796419212876565 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'MD-3',
  p_region_name=>'',
  p_region_attributes=> 'style="margin-top:30px;"',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 31,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => false,
  p_plug_new_grid_column  => true,
  p_plug_grid_column_span => 3,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_list_template_id=> 69529626439723033+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 71796630061876566 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'NavListCss',
  p_region_name=>'',
  p_parent_plug_id=>71796419212876565 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 0,
  p_plug_display_sequence=> 51,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_template_id=> 69529626439723033+ wwv_flow_api.g_id_offset,
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>Bring Bootstrap''s components to life in Oracle Application Express, with over a dozen custom jQuery plugins. Easily include them all, or one by one.</p>'||unistr('\000a')||
'<div id="carbonads-container" class="hidden-xs">'||unistr('\000a')||
'    <div class="carbonad">'||unistr('\000a')||
'        <div id="azcarbon">'||unistr('\000a')||
'            <a target="_blank" title="SMART4apex" href="http://www.smart4apex.nl">'||unistr('\000a')||
'                '||unistr('\000a')||
'                <img border="0" alt="S4A';

s:=s||'LOGO" src="&S4ATB_LIBRARIES./images/smart4apex_logo.png">'||unistr('\000a')||
'            </a>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>';

wwv_flow_api.create_page_plug (
  p_id=> 71796842477876573 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Twitter bootstrap theme',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 70123634034424390+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 11,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'REGION_POSITION_06',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select * from all_objects';

wwv_flow_api.create_report_region (
  p_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_name=> 'All Objects',
  p_region_name=>'',
  p_template=> 60046847338690666+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 60,
  p_new_grid         => false,
  p_new_grid_row     => true,
  p_new_grid_column  => true,
  p_grid_column_span => 12,
  p_display_column=> null,
  p_display_point=> 'BODY_3',
  p_item_display_point=> 'ABOVE',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_condition_type=> 'NEVER',
  p_plug_caching=> 'NOT_CACHED',
  p_customized=> '0',
  p_translate_title=> 'Y',
  p_ajax_enabled=> 'Y',
  p_rest_enabled=> 'N',
  p_query_row_template=> 60051927122690679+ wwv_flow_api.g_id_offset,
  p_query_headings_type=> 'COLON_DELMITED_LIST',
  p_query_num_rows=> '15',
  p_query_options=> 'DERIVED_REPORT_COLUMNS',
  p_query_show_nulls_as=> ' - ',
  p_query_break_cols=> '0',
  p_query_no_data_found=> 'no data found',
  p_query_num_rows_type=> 'ROW_RANGES',
  p_query_row_count_max=> '500',
  p_pagination_display_position=> 'TOP_AND_BOTTOM_RIGHT',
  p_break_type_flag=> 'DEFAULT_BREAK_FORMATTING',
  p_csv_output=> 'N',
  p_query_asc_image=> 'apex/builder/dup.gif',
  p_query_asc_image_attr=> 'width="16" height="16" alt="" ',
  p_query_desc_image=> 'apex/builder/ddown.gif',
  p_query_desc_image_attr=> 'width="16" height="16" alt="" ',
  p_plug_query_strip_html=> 'Y',
  p_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71798221653876575 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'OWNER',
  p_column_display_sequence=> 1,
  p_column_heading=> 'OWNER',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71798327782876575 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'OBJECT_NAME',
  p_column_display_sequence=> 2,
  p_column_heading=> 'OBJECT_NAME',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71798436851876575 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'SUBOBJECT_NAME',
  p_column_display_sequence=> 3,
  p_column_heading=> 'SUBOBJECT_NAME',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71798536296876575 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'OBJECT_ID',
  p_column_display_sequence=> 4,
  p_column_heading=> 'OBJECT_ID',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71798618594876575 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'DATA_OBJECT_ID',
  p_column_display_sequence=> 5,
  p_column_heading=> 'DATA_OBJECT_ID',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71797242929876574 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'OBJECT_TYPE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'OBJECT_TYPE',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71797322087876574 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'CREATED',
  p_column_display_sequence=> 7,
  p_column_heading=> 'CREATED',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71797445483876574 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'LAST_DDL_TIME',
  p_column_display_sequence=> 8,
  p_column_heading=> 'LAST_DDL_TIME',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71797545673876574 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'TIMESTAMP',
  p_column_display_sequence=> 9,
  p_column_heading=> 'TIMESTAMP',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71797629631876574 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 10,
  p_form_element_id=> null,
  p_column_alias=> 'STATUS',
  p_column_display_sequence=> 10,
  p_column_heading=> 'STATUS',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71797722527876574 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 11,
  p_form_element_id=> null,
  p_column_alias=> 'TEMPORARY',
  p_column_display_sequence=> 11,
  p_column_heading=> 'TEMPORARY',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71797822084876574 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 12,
  p_form_element_id=> null,
  p_column_alias=> 'GENERATED',
  p_column_display_sequence=> 12,
  p_column_heading=> 'GENERATED',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71797948064876574 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 13,
  p_form_element_id=> null,
  p_column_alias=> 'SECONDARY',
  p_column_display_sequence=> 13,
  p_column_heading=> 'SECONDARY',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'CENTER',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=>'ESCAPE_SC',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71798035807876575 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 14,
  p_form_element_id=> null,
  p_column_alias=> 'NAMESPACE',
  p_column_display_sequence=> 14,
  p_column_heading=> 'NAMESPACE',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 71798126725876575 + wwv_flow_api.g_id_offset,
  p_region_id=> 71797026807876574 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 15,
  p_form_element_id=> null,
  p_column_alias=> 'EDITION_NAME',
  p_column_display_sequence=> 15,
  p_column_heading=> 'EDITION_NAME',
  p_use_as_row_header=> 'N',
  p_column_alignment=>'LEFT',
  p_heading_alignment=>'LEFT',
  p_default_sort_column_sequence=>0,
  p_disable_sort_column=>'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=>'ESCAPE_SC',
  p_lov_show_nulls=> 'NO',
  p_is_required=> false,
  p_pk_col_source=> s,
  p_include_in_export=> 'Y',
  p_column_comment=>'');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72625740710345488 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_SELECT_STANDARD',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 72621627661335681+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Make this',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72625929927350495 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_SELECT_STANDARD_BS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 72621627661335681+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Into this',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72632227709427456 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_MULTIPLE_BS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 72631841307424711+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bootstrap Select',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72639733507455137 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_PRIMARY',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 72637736852451814+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bootstrap Select',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-style="btn-primary"',
  p_new_grid=> true,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 3,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72643747944463647 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_INFO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 72637736852451814+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bootstrap Select',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-style="btn-info"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 3,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72645830260471860 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_SUCCESS',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 72637736852451814+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bootstrap Select',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-style="btn-success"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 3,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72652031326486556 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_WARNING',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 72637736852451814+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bootstrap Select',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-style="btn-warning"',
  p_new_grid=> true,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 3,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72654420543491513 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_DANGER',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 72637736852451814+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bootstrap Select',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-style="btn-danger"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 3,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72655846194494827 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_INVERSE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 90,
  p_item_plug_id => 72637736852451814+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bootstrap Select',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-style="btn-inverse"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 3,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72670024159550645 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_SEARCH_INPUT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 72669632275545140+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bootstrap Select',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'SELECT country_name d'||unistr('\000a')||
',      country_code r '||unistr('\000a')||
'FROM   countries '||unistr('\000a')||
'ORDER BY 1',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-live-search="true"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72681719100674494 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_TITLE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 72677646099672101+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bootstrap Select',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'SELECT country_name d'||unistr('\000a')||
',      country_code r '||unistr('\000a')||
'FROM   countries '||unistr('\000a')||
'ORDER BY 1',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-live-search="true" title="Pick a county" data-size="5"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72691737129772536 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_TITLE_2',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 72677646099672101+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'PLSQL',
  p_attribute_03 => 'sys.htp.p(''Using the <code>title</code> attribute on a multiple select will show the default prompt text when nothing is selected (note: this will not work on single select elements as they must have a selected value):'');',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72697743802784630 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_TITLE_1',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 72677646099672101+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_DISPLAY_ONLY',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'PLSQL',
  p_attribute_03 => 'sys.htp.p(''<p>Add <code>title="<em>Yourtitle</em>"</code> into the elements "HTML Form Element Attributes" as an alternative to display when the option is selected.</p>'');',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72713726511838204 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_COUNT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 100,
  p_item_plug_id => 72711648325833619+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bootstrap Select',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'SELECT country_name d'||unistr('\000a')||
',      country_code r '||unistr('\000a')||
'FROM   countries '||unistr('\000a')||
'ORDER BY 1',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'title="Pick a county" data-selected-text-format="count > 2"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72724027756898371 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_TICK',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 110,
  p_item_plug_id => 72723634698895851+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker show-tick',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72733938514923722 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_MENU',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 120,
  p_item_plug_id => 72733627472922128+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker show-tick show-menu-arrow',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72743727288944116 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_WIDTH_AUTO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 130,
  p_item_plug_id => 72739622193939545+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Width auto',
  p_pre_element_text=>'<div class="row-fluid">',
  p_post_element_text=>'</div>',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>' ',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-width="auto"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'NO',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72765720985007835 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_WIDTH_300',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 140,
  p_item_plug_id => 72739622193939545+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Width 300',
  p_pre_element_text=>'<div class="row-fluid">',
  p_post_element_text=>'</div>',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>' ',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-width="300px"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'NO',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72769741676013485 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_WIDTH_75PCT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 150,
  p_item_plug_id => 72739622193939545+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Width 75%',
  p_pre_element_text=>'<div class="row-fluid">',
  p_post_element_text=>'</div>',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'STATIC:Cow,Dog,Cat,Lion',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>' ',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-width="75%"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'NO',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72775736056031231 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_BS_DATA_HEADER',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 160,
  p_item_plug_id => 72773630300027051+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Bootstrap Select',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_SELECT_LIST',
  p_lov=> 'SELECT country_name d'||unistr('\000a')||
',      country_code r '||unistr('\000a')||
'FROM   countries '||unistr('\000a')||
'ORDER BY 1',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_css_classes=> 'selectpicker',
  p_tag_attributes  => 'data-header="Select a country"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 60059233763690688+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'NONE',
  p_attribute_02 => 'N',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72912137608652420 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_PS_NAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 72911941126652419+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Requird field',
  p_pre_element_text=>'<div>'||unistr('\000a')||
'    HTML Form Element Attributes is set to <code>parsley</code>, Value Required is set to <code>Yes</code>'||unistr('\000a')||
'</div>',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_attributes  => 'parsley data-parsley-group="simple"',
  p_new_grid=> true,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 8,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72912344863652423 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_PS_VALIDATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 130,
  p_item_plug_id => 72911941126652419+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Validate',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(68242136235119091 + wwv_flow_api.g_id_offset),
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'N',
  p_button_execute_validations=>'N',
  p_button_action => 'DEFINED_BY_DA',
  p_button_is_hot=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72912523905652423 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_PS_EMAIL',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 72911941126652419+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Email field',
  p_pre_element_text=>'<div>'||unistr('\000a')||
'    HTML Form Element Attributes is set to <code>parsley data-parsley-type="email"</code>'||unistr('\000a')||
'</div>',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_attributes  => 'parsley data-parsley-group="simple" data-parsley-type="email"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 8,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72912727026652423 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_PS_NUMBER',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 72911941126652419+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Number field (decimal digits allowed)',
  p_pre_element_text=>'<div>'||unistr('\000a')||
'    HTML Form Element Attributes is set to <code>parsley data-parsley-type="number"</code>'||unistr('\000a')||
'</div>',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_attributes  => 'parsley data-parsley-group="simple" data-parsley-type="number"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 8,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72912938300652424 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_PS_INTEGER',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 72911941126652419+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Integer field (no digits allowed)',
  p_pre_element_text=>'<div>'||unistr('\000a')||
'    HTML Form Element Attributes is set to <code>parsley data-parsley-type="integer"</code>'||unistr('\000a')||
'</div>',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_attributes  => 'parsley data-parsley-group="simple" data-parsley-type="integer"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 8,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72913147887652424 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_PS_EQUAL_1',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 72911941126652419+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Checked field',
  p_pre_element_text=>'<div>'||unistr('\000a')||
'    HTML Form Element Attributes is set to <code>parsley data-parsley-required="true"</code>'||unistr('\000a')||
'</div>',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_attributes  => 'parsley data-parsley-group="simple" parsley data-parsley-required="true"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 4,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72913335766652424 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_PS_EQUAL_2',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 72911941126652419+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Checked field must be same as to the left',
  p_pre_element_text=>'<div>'||unistr('\000a')||
'    HTML Form Element Attributes is set to <code>parsley data-parsley-equalto="#<em>APEX_ITEM_NAME</em>"</code>'||unistr('\000a')||
'</div>',
  p_source_type=> 'ALWAYS_NULL',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_attributes  => 'parsley data-parsley-group="simple" parsley data-parsley-equalto="#P4_PS_EQUAL_1"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 4,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72913736159652425 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_PS_SIMPLE',
  p_data_type=> 'VARCHAR',
  p_is_required=> true,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 72913523932652424+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Enter fiield and leave it, without filling out',
  p_pre_element_text=>'<div>'||unistr('\000a')||
'    Element attributes: <code>parsley data-parsley-trigger="focusout"</code>'||unistr('\000a')||
'</div>',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_tag_attributes  => 'parsley data-parsley-trigger="focusout"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> 8,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82888023571982100 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_ITEM_IN_CALLOUT',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 82887049367930495+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Item in callout',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 82893327850912614 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 4
 ,p_name => 'validate parsley simple group'
 ,p_event_sequence => 10
 ,p_triggering_element_type => 'BUTTON'
 ,p_triggering_button_id => 72912344863652423 + wwv_flow_api.g_id_offset
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'click'
  );
wwv_flow_api.create_page_da_action (
  p_id => 82893649198912616 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 4
 ,p_event_id => 82893327850912614 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_attribute_01 => 'if($(''form'').parsley().validate(''simple''))'||unistr('\000a')||
'{'||unistr('\000a')||
'    // remove parsley'||unistr('\000a')||
'    $(''form'').parsley().destroy();'||unistr('\000a')||
'    apex.submit();'||unistr('\000a')||
'}'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'raise_application_error(-20000,''Something went very wrong! Please solve the problem.'');';

wwv_flow_api.create_page_process(
  p_id     => 71798929232876585 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Raise Error for demo',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>71785728175876432 + wwv_flow_api.g_id_offset,
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'null;';

wwv_flow_api.create_page_process(
  p_id     => 71798721924876577 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Succes message',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>71785343219876432 + wwv_flow_api.g_id_offset,
  p_only_for_changed_rows=> 'Y',
  p_process_success_message=> 'Everything went ok!',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 4
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00010
prompt  ...PAGE 10: About this theme
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 10
 ,p_user_interface_id => 60030732015501210 + wwv_flow_api.g_id_offset
 ,p_name => 'About this theme'
 ,p_alias => 'ABOUT'
 ,p_step_title => 'About this theme'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code_onload => 
'//alert("The templates used in this page are currently under construction and will not be part of version 2.0 of the Bootstrap theme.");'
 ,p_step_template => 82239741943345126 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'SMARTENS'
 ,p_last_upd_yyyymmddhh24miss => '20140706185106'
  );
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 10
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00011
prompt  ...PAGE 11: Before you Begin
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 11
 ,p_user_interface_id => 60030732015501210 + wwv_flow_api.g_id_offset
 ,p_name => 'Before you begin'
 ,p_alias => 'BEFORE'
 ,p_step_title => 'Before you begin'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'NO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_step_template => 65573621967190074 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'SMARTENS'
 ,p_last_upd_yyyymmddhh24miss => '20140708221558'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>'||unistr('\000a')||
'When positioning a region on a page, please keep in mind that Bootstrap uses a relative positioning and Apex uses absolute positioning.'||unistr('\000a')||
'</p>'||unistr('\000a')||
'<p style="margin-bottom:25px;">'||unistr('\000a')||
'To solve this, use &quot;col-md-offset-#&quot; in column attributes in stead of using the item &quot;Column&quot;. &quot;#&quot; stands for the amount of columns you want to push the region to the right.'||unistr('\000a')||
'</p>'||unistr('\000a')||
'<img src="&S4A';

s:=s||'TB_LIBRARIES./images/apex_grid.png" width="500px;">'||unistr('\000a')||
'';

wwv_flow_api.create_page_plug (
  p_id=> 40822514139187012 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_plug_name=> 'Before you begin',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 69214834744802138+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_grid_column_span => 6,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_column_width => 'col-md-offset-3',
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<p>Bring Bootstrap''s components to life in Oracle Application Express, with over a dozen custom jQuery plugins. Easily include them all, or one by one.</p>'||unistr('\000a')||
'<div id="carbonads-container" class="hidden-xs">'||unistr('\000a')||
'    <div class="carbonad">'||unistr('\000a')||
'        <div id="azcarbon">'||unistr('\000a')||
'            <a target="_blank" title="SMART4apex" href="http://www.smart4apex.nl">'||unistr('\000a')||
'                '||unistr('\000a')||
'                <img border="0" alt="S4A';

s:=s||'LOGO" src="&S4ATB_LIBRARIES./images/smart4apex_logo.png">'||unistr('\000a')||
'            </a>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>';

wwv_flow_api.create_page_plug (
  p_id=> 40880513081385339 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_plug_name=> 'Twitter bootstrap theme',
  p_region_name=>'',
  p_escape_on_http_output=>'Y',
  p_plug_template=> 70123634034424390+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 20,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'REGION_POSITION_06',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 11
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00014
prompt  ...PAGE 14: Modal on EMP
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 14
 ,p_user_interface_id => 60030732015501210 + wwv_flow_api.g_id_offset
 ,p_tab_set => 'TS1'
 ,p_name => 'Modal on EMP'
 ,p_step_title => 'Form on EMP'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_step_template => 82852248559145926 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'RMARTENS'
 ,p_last_upd_yyyymmddhh24miss => '20140708223245'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 82860335250110858 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 14,
  p_plug_name=> 'Form on EMP',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 82832120671807044+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 82860618764110870 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 30,
  p_button_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(68250521999512334+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P14_EMPNO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_button_css_classes=>'fa-check',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 82860948497110871 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 10,
  p_button_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68250846586519493+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_css_classes=>'fa-reply',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 82860538773110870 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 40,
  p_button_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(68240325752059387+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P14_EMPNO',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 82860750318110871 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 14,
  p_button_sequence=> 20,
  p_button_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(68250326454485234+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''DELETE'');',
  p_button_execute_validations=>'N',
  p_button_condition=> 'P14_EMPNO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_button_css_classes=>' fa-trash-o ',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>82861547330110873 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:14:&SESSION.:&REQUEST.:&DEBUG.:&DEBUG.::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82861727492110886 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_EMPNO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Empno',
  p_source=>'EMPNO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82861943326110906 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_ENAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Ename',
  p_source=>'ENAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 10,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82862135785110907 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_JOB',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Job',
  p_source=>'JOB',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 9,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82862347080110908 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_MGR',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Mgr',
  p_source=>'MGR',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_NUMBER_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_03 => 'right',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82862534460110909 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_HIREDATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Hiredate',
  p_format_mask=>'DD-Mon-YYYY',
  p_source=>'HIREDATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_DATE_PICKER',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_tag_attributes  => 'data-date-format="d-M-yyyy"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_04 => 'button',
  p_attribute_05 => 'N',
  p_attribute_07 => 'NONE',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82862734305110923 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_SAL',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Sal',
  p_source=>'SAL',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_NUMBER_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_03 => 'right',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82862934462110923 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_COMM',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Comm',
  p_source=>'COMM',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_NUMBER_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_03 => 'right',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>82863137193110923 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 14,
  p_name=>'P14_DEPTNO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 82860335250110858+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Deptno',
  p_source=>'DEPTNO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_NUMBER_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_03 => 'right',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 82864325870151757 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 14
 ,p_name => 'closemodal'
 ,p_event_sequence => 10
 ,p_triggering_element_type => 'BUTTON'
 ,p_triggering_button_id => 82860948497110871 + wwv_flow_api.g_id_offset
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'click'
  );
wwv_flow_api.create_page_da_action (
  p_id => 82864619986151761 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 14
 ,p_event_id => 82864325870151757 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_attribute_01 => 'closemodal();'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 82865342193184816 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 14
 ,p_name => 'closemodal on save'
 ,p_event_sequence => 20
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'ready'
  );
wwv_flow_api.create_page_da_action (
  p_id => 82865622614184817 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 14
 ,p_event_id => 82865342193184816 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_attribute_01 => 'var requests = "SAVE,DELETE,CREATE";'||unistr('\000a')||
'if (requests.indexOf("&REQUEST.")>-1)'||unistr('\000a')||
'    closemodal();'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:EMP:P14_EMPNO:EMPNO';

wwv_flow_api.create_page_process(
  p_id     => 82863526854110926 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 14,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from EMP',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:EMP:P14_EMPNO:EMPNO|IUD';

wwv_flow_api.create_page_process(
  p_id     => 82863731505110936 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 14,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of EMP',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when=>'',
  p_process_when_type=>'NEVER',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'14';

wwv_flow_api.create_page_process(
  p_id     => 82863945172110937 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 14,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>82860750318110871 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 14
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00101
prompt  ...PAGE 101: Login
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 101
 ,p_user_interface_id => 60030732015501210 + wwv_flow_api.g_id_offset
 ,p_name => 'Login'
 ,p_alias => 'LOGIN_DESKTOP'
 ,p_step_title => 'Login'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'OFF'
 ,p_step_template => 65573621967190074 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_last_updated_by => 'SMARTENS'
 ,p_last_upd_yyyymmddhh24miss => '20140706181541'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'<span>'||unistr('\000a')||
'    Welcome to the SMART4apex Bootrstrap theme for Apex.'||unistr('\000a')||
'    To login, you can use username &quot;demo&quot; and password &quot;SMART4apex&quot;'||unistr('\000a')||
'</span>';

wwv_flow_api.create_page_plug (
  p_id=> 60031224315501258 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login container',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 72357836734615024+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 30,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_grid_column_span => 4,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'BELOW',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_column_width => 'col-md-offset-4',
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 72451643107051988 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login',
  p_region_name=>'',
  p_parent_plug_id=>60031224315501258 + wwv_flow_api.g_id_offset,
  p_escape_on_http_output=>'Y',
  p_plug_template=> 60042621181690661+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 40,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'QUERY_COLUMNS',
  p_plug_query_num_rows_type => 'NEXT_PREVIOUS_LINKS',
  p_plug_query_row_count_max => 500,
  p_plug_query_show_nulls_as => ' - ',
  p_plug_display_condition_type => '',
  p_pagination_display_position=>'BOTTOM_RIGHT',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>60031331402501269 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 72451643107051988+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Username',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> 1,
  p_tag_css_classes=> 'sergei',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>60031447949501273 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 72451643107051988+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Password',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_PASSWORD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_attribute_02 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>60031522483501276 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 72451643107051988+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default=> 'LOGIN',
  p_prompt=>'Login',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(68240922252105646 + wwv_flow_api.g_id_offset),
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'LEFT',
  p_field_alignment=> 'LEFT',
  p_is_persistent=> 'Y',
  p_button_execute_validations=>'Y',
  p_button_action => 'SUBMIT',
  p_button_is_hot=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>72393746697836871 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_REMEMBER_ME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 72451643107051988+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Remember me',
  p_source_type=> 'STATIC',
  p_display_as=> 'NATIVE_CHECKBOX',
  p_lov=> 'STATIC2:Remember me;Y',
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 4000,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT-CENTER',
  p_field_template=> 70189622361903540+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => '1',
  p_attribute_02 => 'VERTICAL',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'apex_authentication.send_login_username_cookie ('||unistr('\000a')||
'    p_username => lower(:P101_USERNAME) );';

wwv_flow_api.create_page_process(
  p_id     => 60031731459501279 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'apex_authentication.login('||unistr('\000a')||
'    p_username => :P101_USERNAME,'||unistr('\000a')||
'    p_password => :P101_PASSWORD );';

wwv_flow_api.create_page_process(
  p_id     => 60031639729501277 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 60031947793501280 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear Page(s) Cache',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||':P101_USERNAME := apex_authentication.get_login_username_cookie;';

wwv_flow_api.create_page_process(
  p_id     => 60031832230501279 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

 
--application/pages/page_00105
prompt  ...PAGE 105: Form on EMP
--
 
begin
 
wwv_flow_api.create_page (
  p_flow_id => wwv_flow.g_flow_id
 ,p_id => 105
 ,p_user_interface_id => 60030732015501210 + wwv_flow_api.g_id_offset
 ,p_name => 'Form on EMP'
 ,p_step_title => 'Form on EMP'
 ,p_allow_duplicate_submissions => 'Y'
 ,p_step_sub_title => 'Form on EMP'
 ,p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS'
 ,p_first_item => 'AUTO_FIRST_ITEM'
 ,p_include_apex_css_js_yn => 'Y'
 ,p_autocomplete_on_off => 'ON'
 ,p_javascript_code => 
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
 ,p_step_template => 65573621967190074 + wwv_flow_api.g_id_offset
 ,p_page_is_public_y_n => 'Y'
 ,p_protection_level => 'N'
 ,p_cache_page_yn => 'N'
 ,p_cache_timeout_seconds => 21600
 ,p_cache_by_user_yn => 'N'
 ,p_help_text => 
'No help is available for this page.'
 ,p_last_updated_by => 'SMARTENS'
 ,p_last_upd_yyyymmddhh24miss => '20140708225954'
  );
null;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 40912830265595055 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 105,
  p_plug_name=> 'Form on EMP',
  p_region_name=>'',
  p_escape_on_http_output=>'N',
  p_plug_template=> 60046847338690666+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_new_grid         => false,
  p_plug_new_grid_row     => true,
  p_plug_new_grid_column  => true,
  p_plug_grid_column_span => 6,
  p_plug_display_column=> null,
  p_plug_display_point=> 'BODY_3',
  p_plug_item_display_point=> 'ABOVE',
  p_plug_source=> s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_translate_title=> 'Y',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_column_width => 'col-md-offset-3',
  p_plug_display_condition_type => '',
  p_plug_customized=>'0',
  p_plug_caching=> 'NOT_CACHED',
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 40913027318595059 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 105,
  p_button_sequence=> 30,
  p_button_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(68250521999512334+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P105_EMPNO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_button_css_classes=>'fa-check',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 40913223970595068 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 105,
  p_button_sequence=> 10,
  p_button_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_action  => 'DEFINED_BY_DA',
  p_button_image   => 'template:'||to_char(68250846586519493+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_css_classes=>'fa-reply',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 40913402905595068 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 105,
  p_button_sequence=> 40,
  p_button_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_action  => 'SUBMIT',
  p_button_image   => 'template:'||to_char(68240325752059387+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> '',
  p_button_execute_validations=>'Y',
  p_button_condition=> 'P105_EMPNO',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 40913617527595069 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 105,
  p_button_sequence=> 20,
  p_button_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_action  => 'REDIRECT_URL',
  p_button_image   => 'template:'||to_char(68250326454485234+wwv_flow_api.g_id_offset),
  p_button_is_hot=>'N',
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:apex.confirm(htmldb_delete_message,''DELETE'');',
  p_button_execute_validations=>'N',
  p_button_condition=> 'P105_EMPNO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_button_css_classes=>' fa-trash-o ',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>40916912955595093 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 105,
  p_branch_name=> '',
  p_branch_action=> 'f?p=&APP_ID.:105:&SESSION.:&REQUEST.:&DEBUG.:&DEBUG.::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_save_state_before_branch_yn=>'N',
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>40913805243595070 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 105,
  p_name=>'P105_EMPNO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Empno',
  p_source=>'EMPNO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_HIDDEN',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> null,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'Y',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>40914025082595073 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 105,
  p_name=>'P105_ENAME',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Ename',
  p_source=>'ENAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 10,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>40914209965595073 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 105,
  p_name=>'P105_JOB',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Job',
  p_source=>'JOB',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_TEXT_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 9,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_01 => 'N',
  p_attribute_02 => 'N',
  p_attribute_04 => 'TEXT',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>40914404870595073 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 105,
  p_name=>'P105_MGR',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Mgr',
  p_source=>'MGR',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_NUMBER_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_03 => 'right',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>40914617177595074 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 105,
  p_name=>'P105_HIREDATE',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Hiredate',
  p_format_mask=>'DD-Mon-YYYY',
  p_source=>'HIREDATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_DATE_PICKER',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_tag_attributes  => 'data-date-format="d-M-yyyy"',
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_04 => 'button',
  p_attribute_05 => 'N',
  p_attribute_07 => 'NONE',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>40914802024595074 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 105,
  p_name=>'P105_SAL',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Sal',
  p_source=>'SAL',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_NUMBER_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_03 => 'right',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>40915019461595074 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 105,
  p_name=>'P105_COMM',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Comm',
  p_source=>'COMM',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_NUMBER_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_03 => 'right',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>40915221374595074 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 105,
  p_name=>'P105_DEPTNO',
  p_data_type=> 'VARCHAR',
  p_is_required=> false,
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 40912830265595055+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type=> 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Deptno',
  p_source=>'DEPTNO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'NATIVE_NUMBER_FIELD',
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_new_grid=> false,
  p_begin_on_new_line=> 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan=> null,
  p_rowspan=> null,
  p_grid_column=> null,
  p_label_alignment=> 'RIGHT',
  p_field_alignment=> 'LEFT',
  p_field_template=> 70163620098789334+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'YES',
  p_protection_level => 'N',
  p_escape_on_http_output => 'Y',
  p_attribute_03 => 'right',
  p_show_quick_picks=>'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_computation(
  p_id=> 40948624395672196 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 105,
  p_computation_sequence => 10,
  p_computation_item=> 'P105_EMPNO',
  p_computation_point=> 'AFTER_HEADER',
  p_computation_type=> 'STATIC_ASSIGNMENT',
  p_computation_processed=> 'REPLACE_EXISTING',
  p_computation=> '7369',
  p_compute_when => '',
  p_compute_when_type=>'');
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 40916019049595088 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 105
 ,p_name => 'closemodal'
 ,p_event_sequence => 10
 ,p_triggering_element_type => 'BUTTON'
 ,p_triggering_button_id => 40913223970595068 + wwv_flow_api.g_id_offset
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'click'
  );
wwv_flow_api.create_page_da_action (
  p_id => 40916313850595091 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 105
 ,p_event_id => 40916019049595088 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_attribute_01 => 'closemodal();'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_da_event (
  p_id => 40916420929595091 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 105
 ,p_name => 'closemodal on save'
 ,p_event_sequence => 20
 ,p_bind_type => 'bind'
 ,p_bind_event_type => 'ready'
  );
wwv_flow_api.create_page_da_action (
  p_id => 40916708084595092 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_id => 105
 ,p_event_id => 40916420929595091 + wwv_flow_api.g_id_offset
 ,p_event_result => 'TRUE'
 ,p_action_sequence => 10
 ,p_execute_on_page_init => 'N'
 ,p_action => 'NATIVE_JAVASCRIPT_CODE'
 ,p_attribute_01 => 'var requests = "SAVE,DELETE,CREATE";'||unistr('\000a')||
'if (requests.indexOf("&REQUEST.")>-1)'||unistr('\000a')||
'    closemodal();'
 ,p_stop_execution_on_error => 'Y'
 );
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:EMP:P105_EMPNO:EMPNO';

wwv_flow_api.create_page_process(
  p_id     => 40915408589595078 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 105,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from EMP',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'ON_ERROR_PAGE',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:EMP:P105_EMPNO:EMPNO|IUD';

wwv_flow_api.create_page_process(
  p_id     => 40915606030595087 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 105,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of EMP',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when=>'',
  p_process_when_type=>'NEVER',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'14';

wwv_flow_api.create_page_process(
  p_id     => 40915811741595087 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 105,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p,
  p_process_error_message=> '',
  p_error_display_location=> 'INLINE_IN_NOTIFICATION',
  p_process_when_button_id=>40913617527595069 + wwv_flow_api.g_id_offset,
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 105
--
 
begin
 
null;
end;
null;
 
end;
/

prompt  ...lists
--
--application/shared_components/navigation/lists/mainmenutop
 
begin
 
wwv_flow_api.create_list (
  p_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'MainMenuTop',
  p_list_type=> 'STATIC',
  p_list_query=>'',
  p_list_status=> 'PUBLIC',
  p_list_displayed=> 'BY_DEFAULT' );
 
wwv_flow_api.create_list_item (
  p_id=> 63358049231956429 + wwv_flow_api.g_id_offset,
  p_list_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>10,
  p_list_item_link_text=> 'Getting started',
  p_list_item_link_target=> 'f?p=&APP_ID.::&SESSION.:',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 63367749749991282 + wwv_flow_api.g_id_offset,
  p_list_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>60,
  p_list_item_link_text=> 'Download theme',
  p_list_item_link_target=> 'http://apex.nl/apex/f?p=125:2::ITEM:::P2_NSIM_ID:10902',
  p_parent_list_item_id=> 63358049231956429 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 63387736243164644 + wwv_flow_api.g_id_offset,
  p_list_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>80,
  p_list_item_link_text=> 'Compiled CSS, JS, and fonts',
  p_list_item_link_target=> '',
  p_list_item_disp_cond_type=> 'NEVER',
  p_list_item_disp_condition=> '',
  p_parent_list_item_id=> 63367749749991282 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 63385747673159331 + wwv_flow_api.g_id_offset,
  p_list_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>70,
  p_list_item_link_text=> 'Before you begin',
  p_list_item_link_target=> 'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::',
  p_parent_list_item_id=> 63358049231956429 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 63358325348956438 + wwv_flow_api.g_id_offset,
  p_list_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>20,
  p_list_item_link_text=> 'Components',
  p_list_item_link_target=> 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 63358622966956438 + wwv_flow_api.g_id_offset,
  p_list_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>30,
  p_list_item_link_text=> 'Extra components',
  p_list_item_link_target=> 'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 63358934118956438 + wwv_flow_api.g_id_offset,
  p_list_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>40,
  p_list_item_link_text=> 'JavaScript',
  p_list_item_link_target=> 'f?p=&APP_ID.::&SESSION.:',
  p_list_item_disp_cond_type=> 'NEVER',
  p_list_item_disp_condition=> '',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 63359237056956438 + wwv_flow_api.g_id_offset,
  p_list_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>50,
  p_list_item_link_text=> 'Customize',
  p_list_item_link_target=> 'f?p=&APP_ID.::&SESSION.:',
  p_list_item_disp_cond_type=> 'NEVER',
  p_list_item_disp_condition=> '',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 40922606125604684 + wwv_flow_api.g_id_offset,
  p_list_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>90,
  p_list_item_link_text=> 'Example pages',
  p_list_item_link_target=> '',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82236242300285555 + wwv_flow_api.g_id_offset,
  p_list_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>95,
  p_list_item_link_text=> 'Login',
  p_list_item_link_target=> 'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::',
  p_parent_list_item_id=> 40922606125604684 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 40924630698608548 + wwv_flow_api.g_id_offset,
  p_list_id=> 63357833503956386 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>100,
  p_list_item_link_text=> 'Form on emp',
  p_list_item_link_target=> 'f?p=&APP_ID.:105:&SESSION.::&DEBUG.::::',
  p_parent_list_item_id=> 40922606125604684 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
null;
 
end;
/

--application/shared_components/navigation/lists/mainmenuright
 
begin
 
wwv_flow_api.create_list (
  p_id=> 63415618443339915 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'MainMenuRight',
  p_list_type=> 'STATIC',
  p_list_query=>'',
  p_list_status=> 'PUBLIC',
  p_list_displayed=> 'BY_DEFAULT' );
 
wwv_flow_api.create_list_item (
  p_id=> 63415828890339939 + wwv_flow_api.g_id_offset,
  p_list_id=> 63415618443339915 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>10,
  p_list_item_link_text=> 'About',
  p_list_item_link_target=> 'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
null;
 
end;
/

--application/shared_components/navigation/lists/navlistcss
 
begin
 
wwv_flow_api.create_list (
  p_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'NavListCss',
  p_list_type=> 'STATIC',
  p_list_query=>'',
  p_list_status=> 'PUBLIC',
  p_list_displayed=> 'BY_DEFAULT' );
 
wwv_flow_api.create_list_item (
  p_id=> 70258020393416225 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>10,
  p_list_item_link_text=> 'Forms',
  p_list_item_link_target=> '#Forms',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 70259747553418913 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>20,
  p_list_item_link_text=> 'Basic form',
  p_list_item_link_target=> '#FormsBasicForm',
  p_parent_list_item_id=> 70258020393416225 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 70259941731421594 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>30,
  p_list_item_link_text=> 'Inline forms',
  p_list_item_link_target=> '#FormsInlineForm',
  p_parent_list_item_id=> 70258020393416225 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 70260135261424611 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>40,
  p_list_item_link_text=> 'Horizontal form',
  p_list_item_link_target=> '#FormsHorizontalForm',
  p_parent_list_item_id=> 70258020393416225 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 70397735128298585 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>50,
  p_list_item_link_text=> 'Form controls',
  p_list_item_link_target=> '#FormsFormControls',
  p_parent_list_item_id=> 70258020393416225 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 70667728703835896 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>60,
  p_list_item_link_text=> 'Lists',
  p_list_item_link_target=> '#Lists',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 70667923959838127 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>70,
  p_list_item_link_text=> 'Standard list',
  p_list_item_link_target=> '#ListsStandardList',
  p_parent_list_item_id=> 70667728703835896 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 69499917972675767 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>80,
  p_list_item_link_text=> 'Reports',
  p_list_item_link_target=> '#overview_Reports',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'NEVER',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 69500236555675775 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>90,
  p_list_item_link_text=> 'Classic report',
  p_list_item_link_target=> '#overview_ReportsClassicReport',
  p_parent_list_item_id=> 69499917972675767 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'NEVER',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 69500524414675775 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>100,
  p_list_item_link_text=> 'Interactive report',
  p_list_item_link_target=> '#overview_ReportsInteractiveReport',
  p_parent_list_item_id=> 69499917972675767 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 69500848771675776 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>110,
  p_list_item_link_text=> 'Pagination',
  p_list_item_link_target=> '#overview_ReportsPagination',
  p_parent_list_item_id=> 69499917972675767 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 69503719742684343 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>120,
  p_list_item_link_text=> 'Buttons',
  p_list_item_link_target=> '#overview_Buttons',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 69504549491685813 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>130,
  p_list_item_link_text=> 'Options',
  p_list_item_link_target=> '#overview_ButtonsOptions',
  p_parent_list_item_id=> 69503719742684343 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 69505845609687559 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>140,
  p_list_item_link_text=> 'Sizes',
  p_list_item_link_target=> '#overview_ButtonsSizes',
  p_parent_list_item_id=> 69503719742684343 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 69805731731316884 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>150,
  p_list_item_link_text=> 'Iconic',
  p_list_item_link_target=> '#overview_ButtonsIconic',
  p_parent_list_item_id=> 69503719742684343 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71904031462304237 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>160,
  p_list_item_link_text=> 'Tabs',
  p_list_item_link_target=> '#Tabs',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71904223698307790 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>170,
  p_list_item_link_text=> 'Tabs',
  p_list_item_link_target=> '#TabsTabs',
  p_parent_list_item_id=> 71904031462304237 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71905719169309894 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>180,
  p_list_item_link_text=> 'Pills',
  p_list_item_link_target=> '#TabsPills',
  p_parent_list_item_id=> 71904031462304237 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 72215724724431548 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>190,
  p_list_item_link_text=> 'Accordion',
  p_list_item_link_target=> '#Accordion',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 72217750591434763 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>200,
  p_list_item_link_text=> 'Basic accordion',
  p_list_item_link_target=> '#AccordionBasicAccordion',
  p_parent_list_item_id=> 72215724724431548 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82808132089572174 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>210,
  p_list_item_link_text=> 'Modal',
  p_list_item_link_target=> '#Modal',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82811024300606217 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>220,
  p_list_item_link_text=> 'Basic modal',
  p_list_item_link_target=> '#BasicModal',
  p_parent_list_item_id=> 82808132089572174 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82811250383609248 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>230,
  p_list_item_link_text=> 'iFrame Modal',
  p_list_item_link_target=> '#IframeModal',
  p_parent_list_item_id=> 82808132089572174 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 40992632250820504 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>235,
  p_list_item_link_text=> 'iFrame Modal on Report',
  p_list_item_link_target=> '#IframeModalReport',
  p_parent_list_item_id=> 82808132089572174 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82820343239418861 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>240,
  p_list_item_link_text=> 'Tooltips',
  p_list_item_link_target=> '#Tooltips',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82834017926079213 + wwv_flow_api.g_id_offset,
  p_list_id=> 69499726477675746 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>9000,
  p_list_item_link_text=> 'Back to top',
  p_list_item_link_target=> '#top',
  p_list_item_icon_attributes=> 'style="margin-top: 10px;"',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
null;
 
end;
/

--application/shared_components/navigation/lists/departmentslist
 
begin
 
wwv_flow_api.create_list (
  p_id=> 70643743843702242 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DepartmentsList',
  p_list_type=> 'SQL_QUERY',
  p_list_query=>'SELECT null, '||unistr('\000a')||
'       ENAME ||'||unistr('\000a')||
'       case when rownum = 1  then '' (image_attrib = list-group-item-success)'' '||unistr('\000a')||
'            when rownum = 2  then '' (image_attrib = list-group-item-info)'''||unistr('\000a')||
'            when rownum = 3  then '' (image_attrib = list-group-item-warning)'''||unistr('\000a')||
'            when rownum = 4  then '' (image_attrib = list-group-item-danger)'''||unistr('\000a')||
'            when rownum = 10 then '' (is_current = YES)'''||unistr('\000a')||
'       end label, '||unistr('\000a')||
'       ''#'' target, '||unistr('\000a')||
'       decode(rownum,10,''YES'',''NO'') is_current, '||unistr('\000a')||
'       case when rownum< 10 then ''fa-flag'' else ''fa-coffee'' end image, '||unistr('\000a')||
'       case when rownum = 1 then ''list-group-item-success'' '||unistr('\000a')||
'            when rownum = 2 then ''list-group-item-info'''||unistr('\000a')||
'            when rownum = 3 then ''list-group-item-warning'''||unistr('\000a')||
'            when rownum = 4 then ''list-group-item-danger'''||unistr('\000a')||
'       end image_attrib, '||unistr('\000a')||
'       ENAME image_alt'||unistr('\000a')||
'FROM  emp ',
  p_list_status=> 'PUBLIC',
  p_list_displayed=> 'BY_DEFAULT' );
 
null;
 
end;
/

--application/shared_components/navigation/lists/navlistextras
 
begin
 
wwv_flow_api.create_list (
  p_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'NavListExtras',
  p_list_type=> 'STATIC',
  p_list_query=>'',
  p_list_status=> 'PUBLIC',
  p_list_displayed=> 'BY_DEFAULT' );
 
wwv_flow_api.create_list_item (
  p_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>10,
  p_list_item_link_text=> 'Bootstrap-select',
  p_list_item_link_target=> '#Bootstrap-select',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71814923262938838 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>20,
  p_list_item_link_text=> 'Standard example',
  p_list_item_link_target=> '#BS-Standard',
  p_parent_list_item_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71815224350938838 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>30,
  p_list_item_link_text=> 'Multiple selections',
  p_list_item_link_target=> '#BS-Multiple',
  p_parent_list_item_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71815550163938839 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>40,
  p_list_item_link_text=> 'Bootstrap classes',
  p_list_item_link_target=> '#BS-Bootstrap-classes',
  p_parent_list_item_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71815819703938839 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>50,
  p_list_item_link_text=> 'Search input',
  p_list_item_link_target=> '#BS-Search',
  p_parent_list_item_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71816149480938840 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>60,
  p_list_item_link_text=> 'Title',
  p_list_item_link_target=> '#BS-Title',
  p_parent_list_item_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71816426596938844 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>70,
  p_list_item_link_text=> 'Count selected items',
  p_list_item_link_target=> '#BS-Count',
  p_parent_list_item_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71816725414938844 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>80,
  p_list_item_link_text=> 'Show tick',
  p_list_item_link_target=> '#BS-Tick',
  p_parent_list_item_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'NEVER',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71817043437938844 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>90,
  p_list_item_link_text=> 'Menu arrow',
  p_list_item_link_target=> '#BS-Arrow',
  p_parent_list_item_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'NEVER',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71817325666938845 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>100,
  p_list_item_link_text=> 'Width',
  p_list_item_link_target=> '#BSWidth',
  p_parent_list_item_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71817620146938845 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>110,
  p_list_item_link_text=> 'Data header',
  p_list_item_link_target=> '#BS-Data-header',
  p_parent_list_item_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 71817934372938845 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>120,
  p_list_item_link_text=> 'Options &amp; Methods',
  p_list_item_link_target=> '#BS-Options',
  p_parent_list_item_id=> 71814643079938831 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 72915944220658618 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>130,
  p_list_item_link_text=> 'Parsley',
  p_list_item_link_target=> '#Parsley-main',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 72916232359664151 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>140,
  p_list_item_link_text=> 'Adding parsley',
  p_list_item_link_target=> '#Parsley-adding',
  p_parent_list_item_id=> 72915944220658618 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 72917849599671295 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>150,
  p_list_item_link_text=> 'Simple examples',
  p_list_item_link_target=> '#Parsley-simple',
  p_parent_list_item_id=> 72915944220658618 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82882446746849810 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>160,
  p_list_item_link_text=> 'Callout',
  p_list_item_link_target=> '#Callout-main',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82882732944856163 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>170,
  p_list_item_link_text=> 'Danger',
  p_list_item_link_target=> '#Callout-danger',
  p_parent_list_item_id=> 82882446746849810 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82882928630858166 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>180,
  p_list_item_link_text=> 'Warning',
  p_list_item_link_target=> '#Callout-warning',
  p_parent_list_item_id=> 82882446746849810 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82883348027864373 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>190,
  p_list_item_link_text=> 'Info',
  p_list_item_link_target=> '#Callout-info',
  p_parent_list_item_id=> 82882446746849810 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 82883541342867457 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>200,
  p_list_item_link_text=> 'Success',
  p_list_item_link_target=> '#Callout-success',
  p_parent_list_item_id=> 82882446746849810 + wwv_flow_api.g_id_offset,
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
wwv_flow_api.create_list_item (
  p_id=> 42764014523995666 + wwv_flow_api.g_id_offset,
  p_list_id=> 71814418103938826 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>9000,
  p_list_item_link_text=> 'Back to top',
  p_list_item_link_target=> '#top',
  p_list_item_icon_attributes=> 'style="margin-top: 10px;"',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'TARGET_PAGE',
  p_list_item_owner=> '');
 
null;
 
end;
/

--application/shared_components/navigation/breadcrumbs
prompt  ...breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 60032019707501280 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=>71831721178959581 + wwv_flow_api.g_id_offset,
  p_menu_id=>60032019707501280 + wwv_flow_api.g_id_offset,
  p_parent_id=>0,
  p_option_sequence=>10,
  p_short_name=>'Home',
  p_long_name=>'Home',
  p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP::',
  p_page_id=>300,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>71833939928966006 + wwv_flow_api.g_id_offset,
  p_menu_id=>60032019707501280 + wwv_flow_api.g_id_offset,
  p_parent_id=>71831721178959581 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Library',
  p_long_name=>'Library',
  p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP::',
  p_page_id=>301,
  p_also_current_for_pages=> '');
 
wwv_flow_api.create_menu_option (
  p_id=>71845817918991463 + wwv_flow_api.g_id_offset,
  p_menu_id=>60032019707501280 + wwv_flow_api.g_id_offset,
  p_parent_id=>71833939928966006 + wwv_flow_api.g_id_offset,
  p_option_sequence=>10,
  p_short_name=>'Data',
  p_long_name=>'Data',
  p_link=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP::',
  p_page_id=>3,
  p_also_current_for_pages=> '');
 
null;
 
end;
/

prompt  ...page templates for application: 131
--
--application/shared_components/user_interface/templates/page/printer_friendly
prompt  ......Page template 60037848488690651
 
begin
 
wwv_flow_api.create_template (
  p_id => 60037848488690651 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 101
 ,p_name => 'Printer Friendly'
 ,p_is_popup => false
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'<!--[if !HTML5]>'||unistr('\000a')||
'  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'  <meta charset="UTF-8">'||unistr('\000a')||
'  <title>#TITLE#</title>'||unistr('\000a')||
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">'||unistr('\000a')||
'  #APEX_CSS#'||unistr('\000a')||
'#TEMPLATE_CSS#'||unistr('\000a')||
'#THEME_CSS#'||unistr('\000a')||
'#PAGE_CSS#'||unistr('\000a')||
'#APEX_JAVASCRIPT#'||unistr('\000a')||
'#TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'#APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'#PAGE_JAVASCRIPT#'||unistr('\000a')||
'#HEAD#'||unistr('\000a')||
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">'||unistr('\000a')||
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">'||unistr('\000a')||
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD# id="uPrinterFriendly">'||unistr('\000a')||
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'  #FORM_OPEN#'||unistr('\000a')||
'  <div id="uBodyContainer">'
 ,p_box => 
'<header id="uHeader">'||unistr('\000a')||
'  #REGION_POSITION_07#'||unistr('\000a')||
'  <hgroup>'||unistr('\000a')||
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>'||unistr('\000a')||
'    <div class="userBlock">'||unistr('\000a')||
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">'||unistr('\000a')||
'      <span>&APP_USER.</span>'||unistr('\000a')||
'      #NAVIGATION_BAR#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </hgroup>'||unistr('\000a')||
'  #REGION_POSITION_04#'||unistr('\000a')||
'</header>'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'<div'||
' id="uOneCol">'||unistr('\000a')||
'  #REGION_POSITION_02#'||unistr('\000a')||
'  #BOX_BODY#'||unistr('\000a')||
'  #REGION_POSITION_03#'||unistr('\000a')||
'</div>'
 ,p_footer_template => 
'<footer id="uFooter">'||unistr('\000a')||
'  <div class="uFooterContent">'||unistr('\000a')||
'    <div id="customize">#CUSTOMIZE#</div>'||unistr('\000a')||
'    #REGION_POSITION_05#'||unistr('\000a')||
'    #SCREEN_READER_TOGGLE#'||unistr('\000a')||
'    <span class="uFooterVersion">'||unistr('\000a')||
'      #APP_VERSION#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uFooterBG">'||unistr('\000a')||
'    <div class="uLeft"></div>'||unistr('\000a')||
'    <div class="uRight"></div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</footer>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'#FORM_CLOSE#'||unistr('\000a')||
'#DEVELOPER_TOOLBAR#'||unistr('\000a')||
'#GENERATED_CSS#'||unistr('\000a')||
'#GENERATED_JAVAS'||
'CRIPT#'||unistr('\000a')||
'</body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>'||unistr('\000a')||
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'    <div class="uMessageText">'||unistr('\000a')||
'      #SUCCESS_MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'||unistr('\000a')||
''
 ,p_current_tab => '<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_non_current_tab => '<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
 ,p_notification_message => '<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">'||unistr('\000a')||
'  <div class="uRegionContent clearfix">'||unistr('\000a')||
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>'||unistr('\000a')||
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'    <div class="uMessageText">'||unistr('\000a')||
'      #MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'||unistr('\000a')||
''
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_theme_class_id => 5
 ,p_grid_type => 'TABLE'
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => true
 ,p_grid_emit_empty_trail_cols => false
 ,p_has_edit_links => true
 ,p_template_comment => '3'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/tb_landing_page
prompt  ......Page template 63373724209057776
 
begin
 
wwv_flow_api.create_template (
  p_id => 63373724209057776 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 101
 ,p_name => 'TB Landing Page'
 ,p_is_popup => false
 ,p_css_file_urls => '&S4ATB_LIBRARIES./bootstrap/3.1.1/css/bootstrap#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap/3.1.1/css/bootstrap-theme#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./font-awesome/4.1.0/css/font-awesome#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-datepicker/1.3.0/css/datepicker.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-select/1.5.2/bootstrap-select#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./s4a-bootstrap.css'
 ,p_header_template => '<!doctype html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'    <head>'||unistr('\000a')||
'        <!-- Meta -->'||unistr('\000a')||
'        <meta charset="UTF-8">'||unistr('\000a')||
'        <!-- Use IE latest "super standards" -->'||unistr('\000a')||
'        <meta http-equiv="X-UA-Compatible" content="IE=edge">'||unistr('\000a')||
'        <meta name="viewport" content="width=device-width, initial-scale=1.0">'||unistr('\000a')||
'        <meta name="description" content="">'||unistr('\000a')||
'        <meta name="author" content="">'||unistr('\000a')||
'        <title>#TITLE#</title>'||unistr('\000a')||
''||unistr('\000a')||
'        <!-- Favicons -->'||unistr('\000a')||
'        <link rel="apple-touch-icon-precomposed" href="&S4ATB_LIBRARIES./images/apple-touch-icon-precomposed.png">'||unistr('\000a')||
'        <link rel="shortcut icon" href="&S4ATB_LIBRARIES./images/favicon.ico" type="image/x-icon">'||unistr('\000a')||
'        '||unistr('\000a')||
'        <!-- APEX_CSS -->        '||unistr('\000a')||
'        #APEX_CSS#'||unistr('\000a')||
'        <!-- TEMPLATE_CSS -->'||unistr('\000a')||
'        #TEMPLATE_CSS#'||unistr('\000a')||
'        <!-- THEME_CSS -->'||unistr('\000a')||
'        <!-- # THEME_CSS # -->'||unistr('\000a')||
'        <!-- PAGE_CSS -->'||unistr('\000a')||
'        #PAGE_CSS#'||unistr('\000a')||
'        <!-- APEX_JAVASCRIPT -->'||unistr('\000a')||
'        #APEX_JAVASCRIPT#'||unistr('\000a')||
'        <!-- TEMPLATE_JAVASCRIPT -->'||unistr('\000a')||
'        #TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'        <!-- APPLICATION_JAVASCRIPT -->'||unistr('\000a')||
'        #APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'        <!-- PAGE_JAVASCRIPT -->'||unistr('\000a')||
'        #PAGE_JAVASCRIPT#'||unistr('\000a')||
'        <!-- HEAD -->'||unistr('\000a')||
'        #HEAD#'||unistr('\000a')||
'        <!-- / HEAD -->'||unistr('\000a')||
'    </head>'||unistr('\000a')||
'    <body class="bs-docs-home" #ONLOAD#>'||unistr('\000a')||
'        <!-- Bootstrap 3 supports IE v8 and higher -->'||unistr('\000a')||
'        <!--[if lte IE 7]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'        <!-- FORM_OPEN -->'||unistr('\000a')||
'        #FORM_OPEN#'
 ,p_box => 
'        <!-- otherwise contents is default shown under menu. Now the content is scrolled to top -->'||unistr('\000a')||
'        <a class="sr-only" href="#content">Skip to main content</a>'||unistr('\000a')||
'        #REGION_POSITION_05#      '||unistr('\000a')||
'        #NAVIGATION_BAR#'||unistr('\000a')||
'        #REGION_POSITION_06#     '||unistr('\000a')||
''||unistr('\000a')||
'        <!-- Page content -->'||unistr('\000a')||
'        <main class="bs-masthead" id="content" role="main">'||unistr('\000a')||
'            <div class="container">'||unistr('\000a')||
'           '||
'     #REGION_POSITION_01#'||unistr('\000a')||
'                #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'                #REGION_POSITION_02#'||unistr('\000a')||
'                #BOX_BODY#'||unistr('\000a')||
'                #REGION_POSITION_03#'||unistr('\000a')||
'                #REGION_POSITION_04#'||unistr('\000a')||
'            </div>'||unistr('\000a')||
'        </main>'
 ,p_footer_template => 
'        <footer class="container" role="contentinfo">   '||unistr('\000a')||
'            #REGION_POSITION_07#'||unistr('\000a')||
'            #REGION_POSITION_08#'||unistr('\000a')||
'        </footer>'||unistr('\000a')||
'        #FORM_CLOSE#'||unistr('\000a')||
'        #DEVELOPER_TOOLBAR#'||unistr('\000a')||
'        #GENERATED_CSS#'||unistr('\000a')||
'        #GENERATED_JAVASCRIPT#'||unistr('\000a')||
'    </body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<div class="alert alert-success alert-dismissable" id="uSuccessMessage">'||unistr('\000a')||
'    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'||unistr('\000a')||
'    <div class="MessageText">'||unistr('\000a')||
'        #SUCCESS_MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_notification_message => '<div class="alert alert-info alert-dismissable" id="uSuccessMessage">'||unistr('\000a')||
'    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'||unistr('\000a')||
'    <div class="MessageText">'||unistr('\000a')||
'        #SUCCESS_MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 3
 ,p_error_page_template => '<section class="uRegion uNoHeading uErrorRegion">'||unistr('\000a')||
'  <div class="uRegionContent">'||unistr('\000a')||
'    <p><strong>#MESSAGE#</strong></p>'||unistr('\000a')||
'    <p>#ADDITIONAL_INFO#</p>'||unistr('\000a')||
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_grid_type => 'VARIABLE'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => false
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '<div style="padding: 0 15px;">'||unistr('\000a')||
'    #ROWS#'||unistr('\000a')||
'</div>'
 ,p_grid_row_template => '<div class="row">'||unistr('\000a')||
'    #COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="col-md-#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES# #ATTRIBUTES#">'||unistr('\000a')||
'    #CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'firstcol'
 ,p_grid_last_column_attributes => 'lastcol'
 ,p_has_edit_links => true
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 63374033076057805 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 63373724209057776 + wwv_flow_api.g_id_offset
 ,p_name => 'BOX_BODY'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/tb_non_fluid_no_tabs
prompt  ......Page template 65573621967190074
 
begin
 
wwv_flow_api.create_template (
  p_id => 65573621967190074 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 101
 ,p_name => 'TB Non Fluid No Tabs'
 ,p_is_popup => false
 ,p_javascript_file_urls => '&S4ATB_LIBRARIES./bootstrap/3.1.1/js/bootstrap#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-growl-master/jquery.bootstrap-growl#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-select/1.5.2/bootstrap-select#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./parsley/2.0.0-rc4/dist/parsley#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./jquery-cookie/1.4.1/jquery.cookie#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./s4a-library.js'
 ,p_css_file_urls => '&S4ATB_LIBRARIES./bootstrap/3.1.1/css/bootstrap#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap/3.1.1/css/bootstrap-theme#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./font-awesome/4.1.0/css/font-awesome#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-datepicker/1.3.0/css/datepicker.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-select/1.5.2/bootstrap-select#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./s4a-bootstrap.css'
 ,p_header_template => '<!doctype html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'    <head>'||unistr('\000a')||
'        <!-- Meta -->'||unistr('\000a')||
'        <meta charset="UTF-8">'||unistr('\000a')||
'        <!-- Use IE latest "super standards" -->'||unistr('\000a')||
'        <meta http-equiv="X-UA-Compatible" content="IE=edge">'||unistr('\000a')||
'        <meta name="viewport" content="width=device-width, initial-scale=1.0">'||unistr('\000a')||
'        <meta name="description" content="">'||unistr('\000a')||
'        <meta name="author" content="">'||unistr('\000a')||
'        <title>#TITLE#</title>'||unistr('\000a')||
'        <!-- Favicons -->'||unistr('\000a')||
'        <link rel="apple-touch-icon-precomposed" href="&S4ATB_LIBRARIES./images/apple-touch-icon-precomposed.png">'||unistr('\000a')||
'        <link rel="shortcut icon" href="&S4ATB_LIBRARIES./images/favicon.ico" type="image/x-icon">'||unistr('\000a')||
'        <!-- APEX_CSS -->        '||unistr('\000a')||
'        #APEX_CSS#'||unistr('\000a')||
'        <!-- TEMPLATE_CSS -->'||unistr('\000a')||
'        #TEMPLATE_CSS#'||unistr('\000a')||
'        <!-- THEME_CSS -->'||unistr('\000a')||
'        <!-- # THEME_CSS # -->'||unistr('\000a')||
'        <!-- PAGE_CSS -->'||unistr('\000a')||
'        #PAGE_CSS#'||unistr('\000a')||
'        <!-- APEX_JAVASCRIPT -->'||unistr('\000a')||
'        #APEX_JAVASCRIPT#'||unistr('\000a')||
'        <!-- TEMPLATE_JAVASCRIPT -->'||unistr('\000a')||
'        #TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'        <!-- APPLICATION_JAVASCRIPT -->'||unistr('\000a')||
'        #APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'        <!-- PAGE_JAVASCRIPT -->'||unistr('\000a')||
'        #PAGE_JAVASCRIPT#'||unistr('\000a')||
'        <!-- HEAD -->'||unistr('\000a')||
'        #HEAD#'||unistr('\000a')||
'        <!-- / HEAD -->'||unistr('\000a')||
'    </head>'||unistr('\000a')||
'    <body class="bs-docs-home" #ONLOAD#>'||unistr('\000a')||
'        <!-- Bootstrap 3 supports IE v8 and higher -->'||unistr('\000a')||
'        <!--[if lte IE 7]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'        <!-- FORM_OPEN -->'||unistr('\000a')||
'        #FORM_OPEN#'
 ,p_box => 
'        <!-- otherwise contents is default shown under menu. Now the content is scrolled to top -->'||unistr('\000a')||
'        <a class="sr-only" href="#content">Skip to main content</a>'||unistr('\000a')||
'        #REGION_POSITION_05#      '||unistr('\000a')||
'        #NAVIGATION_BAR#'||unistr('\000a')||
'        #REGION_POSITION_06#     '||unistr('\000a')||
''||unistr('\000a')||
'        <!-- Page content -->'||unistr('\000a')||
''||unistr('\000a')||
'            <!--<div class="container">-->'||unistr('\000a')||
'                #REGION_POSITION_01#'||unistr('\000a')||
'                #SUCCESS_M'||
'ESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'                #REGION_POSITION_02#'||unistr('\000a')||
'                #BOX_BODY#'||unistr('\000a')||
'                #REGION_POSITION_03#'||unistr('\000a')||
'                #REGION_POSITION_04#'||unistr('\000a')||
'            <!--</div>-->'
 ,p_footer_template => 
'        <footer class="container" role="contentinfo">   '||unistr('\000a')||
'            #REGION_POSITION_07#'||unistr('\000a')||
'            #REGION_POSITION_08#'||unistr('\000a')||
'        </footer>'||unistr('\000a')||
'        #FORM_CLOSE#'||unistr('\000a')||
'        <div id="devtoolbar">#DEVELOPER_TOOLBAR#</div>'||unistr('\000a')||
'        #GENERATED_CSS#'||unistr('\000a')||
'        #GENERATED_JAVASCRIPT#'||unistr('\000a')||
'    </body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<script>'||unistr('\000a')||
'$(function() {'||unistr('\000a')||
'    $.bootstrapGrowl(''#SUCCESS_MESSAGE#'', { type: ''success'', allow_dismiss: false });'||unistr('\000a')||
'});'||unistr('\000a')||
'</script>'||unistr('\000a')||
''
 ,p_notification_message => '<div class="alert alert-danger alert-dismissable" id="uNotificationMessage" style="margin-top:25px;">'||unistr('\000a')||
'    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'||unistr('\000a')||
'    <i class="fa fa-exclamation-triangle" style="margin-right:5px;"></i>'||unistr('\000a')||
'    <div class="MessageText" style="display:inline;">'||unistr('\000a')||
'    #MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 3
 ,p_error_page_template => '<section class="uRegion uNoHeading uErrorRegion">'||unistr('\000a')||
'  <div class="uRegionContent">'||unistr('\000a')||
'    <p><strong>#MESSAGE#</strong></p>'||unistr('\000a')||
'    <p>#ADDITIONAL_INFO#</p>'||unistr('\000a')||
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_grid_type => 'VARIABLE'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => false
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '<div class="container" style="padding: 0 15px;">'||unistr('\000a')||
'    #ROWS#'||unistr('\000a')||
'</div>'
 ,p_grid_row_template => '<div class="row">'||unistr('\000a')||
'    #COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="col-md-#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES# #ATTRIBUTES#">'||unistr('\000a')||
'    #CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'firstcol'
 ,p_grid_last_column_attributes => 'lastcol'
 ,p_has_edit_links => true
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 65573919008190099 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 65573621967190074 + wwv_flow_api.g_id_offset
 ,p_name => 'BOX_BODY'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/tb_working_template_about
prompt  ......Page template 82239741943345126
 
begin
 
wwv_flow_api.create_template (
  p_id => 82239741943345126 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 101
 ,p_name => 'TB Working template About'
 ,p_is_popup => false
 ,p_javascript_file_urls => '&S4ATB_LIBRARIES./bootstrap-growl-master/jquery.bootstrap-growl#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-select/1.5.2/bootstrap-select#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./parsley/2.0.0-rc4/dist/parsley#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./jquery-cookie/1.4.1/jquery.cookie#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./s4a-library.js'
 ,p_css_file_urls => '&S4ATB_LIBRARIES./bootstrap/3.1.1/css/bootstrap#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap/3.1.1/css/bootstrap-theme#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./font-awesome/4.1.0/css/font-awesome#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-datepicker/1.3.0/css/datepicker.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-select/1.5.2/bootstrap-select#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./s4a-bootstrap.css'
 ,p_header_template => '<!doctype html>'||unistr('\000a')||
'<html lang="&BROWSER_LANGUAGE.">'||unistr('\000a')||
'    <head>'||unistr('\000a')||
'        <!-- Meta -->'||unistr('\000a')||
'        <meta charset="UTF-8">'||unistr('\000a')||
'        <!-- Use IE latest "super standards" -->'||unistr('\000a')||
'        <meta http-equiv="X-UA-Compatible" content="IE=edge">'||unistr('\000a')||
'        <meta name="viewport" content="width=device-width, initial-scale=1.0">'||unistr('\000a')||
'        <meta name="description" content="">'||unistr('\000a')||
'        <meta name="author" content="">'||unistr('\000a')||
'        <title>#TITLE#</title>'||unistr('\000a')||
'        <!-- Favicons -->'||unistr('\000a')||
'        <link rel="apple-touch-icon-precomposed" href="&S4ATB_LIBRARIES./images/apple-touch-icon-precomposed.png">'||unistr('\000a')||
'        <link rel="shortcut icon" href="&S4ATB_LIBRARIES./images/favicon.ico" type="image/x-icon">'||unistr('\000a')||
'        <!-- APEX_CSS -->        '||unistr('\000a')||
'        #APEX_CSS#'||unistr('\000a')||
'        <!-- TEMPLATE_CSS -->'||unistr('\000a')||
'        #TEMPLATE_CSS#'||unistr('\000a')||
'        <!-- THEME_CSS -->'||unistr('\000a')||
'        <!-- # THEME_CSS # -->'||unistr('\000a')||
'        <!-- PAGE_CSS -->'||unistr('\000a')||
'        #PAGE_CSS#'||unistr('\000a')||
'        <!-- APEX_JAVASCRIPT -->'||unistr('\000a')||
'        #APEX_JAVASCRIPT#'||unistr('\000a')||
'        <!-- TEMPLATE_JAVASCRIPT -->'||unistr('\000a')||
'        #TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'        <!-- APPLICATION_JAVASCRIPT -->'||unistr('\000a')||
'        #APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'        <!-- PAGE_JAVASCRIPT -->'||unistr('\000a')||
'        #PAGE_JAVASCRIPT#'||unistr('\000a')||
'        <!-- HEAD -->'||unistr('\000a')||
'        #HEAD#'||unistr('\000a')||
'        <!-- / HEAD -->'||unistr('\000a')||
'    </head>'||unistr('\000a')||
'    <body class="bs-docs-home" #ONLOAD#>'||unistr('\000a')||
'        <!-- Bootstrap 3 supports IE v8 and higher -->'||unistr('\000a')||
'        <!--[if lte IE 7]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'        <!-- FORM_OPEN -->'||unistr('\000a')||
'        #FORM_OPEN#'
 ,p_box => 
'<!-- otherwise contents is default shown under menu. Now the content is scrolled to top -->'||unistr('\000a')||
'<a class="sr-only" href="#content">Skip to main content</a>'||unistr('\000a')||
'#REGION_POSITION_05#      '||unistr('\000a')||
'#NAVIGATION_BAR#'||unistr('\000a')||
'#REGION_POSITION_06#     '||unistr('\000a')||
''||unistr('\000a')||
'<!-- Page content -->'||unistr('\000a')||
''||unistr('\000a')||
'<!--<div class="container">-->'||unistr('\000a')||
'#REGION_POSITION_01#'||unistr('\000a')||
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'#REGION_POSITION_02#'||unistr('\000a')||
'#BOX_BODY#'||unistr('\000a')||
'#REGION_P'||
'OSITION_03#'||unistr('\000a')||
'#REGION_POSITION_04#'||unistr('\000a')||
'<!--</div>-->'||unistr('\000a')||
'<!--TB STYLE -->'||unistr('\000a')||
'<style>'||unistr('\000a')||
'    /* BOOTSTRAP 3.x GLOBAL STYLES'||unistr('\000a')||
'    -------------------------------------------------- */'||unistr('\000a')||
'    body {'||unistr('\000a')||
'        padding-bottom: 40px;'||unistr('\000a')||
'        color: #5a5a5a;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'    '||unistr('\000a')||
'    '||unistr('\000a')||
'    /* CUSTOMIZE THE NAVBAR'||unistr('\000a')||
'    -------------------------------------------------- */'||unistr('\000a')||
'    '||unistr('\000a')||
'    /* Special class on .container surrounding .navbar, us'||
'ed for positioning it into place. */'||unistr('\000a')||
'    .navbar-wrapper {'||unistr('\000a')||
'        position: absolute;'||unistr('\000a')||
'        top: 0;'||unistr('\000a')||
'        left: 0;'||unistr('\000a')||
'        right: 0;'||unistr('\000a')||
'        z-index: 10;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'    '||unistr('\000a')||
'    '||unistr('\000a')||
'    /* CUSTOMIZE THE CAROUSEL'||unistr('\000a')||
'    -------------------------------------------------- */'||unistr('\000a')||
'    '||unistr('\000a')||
'    /* Carousel base class */'||unistr('\000a')||
'    .carousel {'||unistr('\000a')||
'        margin-bottom: 10px;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    /* Since positioning the image, we need to'||
' help out the caption */'||unistr('\000a')||
'    .carousel-caption {'||unistr('\000a')||
'        z-index: 10;'||unistr('\000a')||
'        padding-bottom: 100px;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'    /* Declare heights because of positioning of img element */'||unistr('\000a')||
'    .carousel .item {'||unistr('\000a')||
'        height: 400px;'||unistr('\000a')||
'        background-color:#555;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    .carousel img {'||unistr('\000a')||
'        position: absolute;'||unistr('\000a')||
'        top: 0;'||unistr('\000a')||
'        left: 0;'||unistr('\000a')||
'        min-height: 400px;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'    '||unistr('\000a')||
'    '||unistr('\000a')||
'    /* MARKET'||
'ING CONTENT'||unistr('\000a')||
'    -------------------------------------------------- */'||unistr('\000a')||
'    '||unistr('\000a')||
'    /* Pad the edges of the mobile views a bit */'||unistr('\000a')||
'    .marketing {'||unistr('\000a')||
'        padding-left: 15px;'||unistr('\000a')||
'        padding-right: 15px;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'    /* Center align the text within the three columns below the carousel */'||unistr('\000a')||
'    .marketing .col-lg-4 {'||unistr('\000a')||
'        text-align: center;'||unistr('\000a')||
'        margin-bottom: 20px;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    .marketing h2 {'||unistr('\000a')||
'    '||
'    font-weight: normal;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    .marketing .col-lg-4 p {'||unistr('\000a')||
'        margin-left: 10px;'||unistr('\000a')||
'        margin-right: 10px;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'    '||unistr('\000a')||
'    /* Featurettes'||unistr('\000a')||
'    ------------------------- */'||unistr('\000a')||
'    '||unistr('\000a')||
'    .featurette-divider {'||unistr('\000a')||
'        margin: 80px 0; /* Space out the Bootstrap <hr> more */'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'    '||unistr('\000a')||
'    /* Give some space on the sides of the floated elements so text doesn''t run right into it. */'||unistr('\000a')||
'    .fea'||
'turette-image.pull-left {'||unistr('\000a')||
'        margin-right: 40px;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    .featurette-image.pull-right {'||unistr('\000a')||
'        margin-left: 40px;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'    /* Thin out the marketing headings */'||unistr('\000a')||
'    .featurette-heading {'||unistr('\000a')||
'        font-size: 50px;'||unistr('\000a')||
'        font-weight: 300;'||unistr('\000a')||
'        line-height: 1;'||unistr('\000a')||
'        letter-spacing: -1px;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'    .carousel-caption {display:none;}'||unistr('\000a')||
'    '||unistr('\000a')||
'    /* RESPONSIVE CSS'||unistr('\000a')||
'    --------------'||
'------------------------------------ */'||unistr('\000a')||
'    '||unistr('\000a')||
'    @media (min-width: 768px) {'||unistr('\000a')||
'    '||unistr('\000a')||
'    /* Remve the edge padding needed for mobile */'||unistr('\000a')||
'    .marketing {'||unistr('\000a')||
'        padding-left: 0;'||unistr('\000a')||
'        padding-right: 0;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'    /* Navbar positioning foo */'||unistr('\000a')||
'    .navbar-wrapper {'||unistr('\000a')||
'        margin-top: 20px;'||unistr('\000a')||
'        margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of'||
' navbar. */'||unistr('\000a')||
'    }'||unistr('\000a')||
'    /* The navbar becomes detached from the top, so we round the corners */'||unistr('\000a')||
'    .navbar-wrapper .navbar {'||unistr('\000a')||
'        border-radius: 4px;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'    /* Bump up size of carousel content */'||unistr('\000a')||
'    .carousel-caption p {'||unistr('\000a')||
'        margin-bottom: 20px;'||unistr('\000a')||
'        font-size: 21px;'||unistr('\000a')||
'        line-height: 1.4;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'}'||unistr('\000a')||
'</style>'||unistr('\000a')||
''||unistr('\000a')||
'<!--- TB stuff-->'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<!-- Carousel================================'||
'==================-->'||unistr('\000a')||
'<div id="myCarousel" class="carousel slide">'||unistr('\000a')||
'    <!-- Indicators -->'||unistr('\000a')||
'    <ol class="carousel-indicators">'||unistr('\000a')||
'        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>'||unistr('\000a')||
'        <li class="" data-target="#myCarousel" data-slide-to="1"></li>'||unistr('\000a')||
'        <li class="" data-target="#myCarousel" data-slide-to="2"></li>'||unistr('\000a')||
'    </ol>'||unistr('\000a')||
'    <div class="carousel-inner">'||unistr('\000a')||
'        <d'||
'iv class="item active" style="background-color:#032370;">'||unistr('\000a')||
'            <img src="/s4atb/images/SMRT_CorpImage01.jpg" class="img-responsive">'||unistr('\000a')||
'            <div class="container">'||unistr('\000a')||
'                <div class="carousel-caption">'||unistr('\000a')||
'                    <h1 class="">Bootstrap 3 Carousel (Work in progress)</h1>'||unistr('\000a')||
'                    <p class="">Just create a new list and with list template TB Carousel</p>'||unistr('\000a')||
'     '||
'           </div>'||unistr('\000a')||
'            </div>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <div class="item" style="background-color:#407ADD;">'||unistr('\000a')||
'            <img src="/s4atb/images/SMRT_CorpImage02.jpg" class="img-responsive">'||unistr('\000a')||
'            <div class="container">'||unistr('\000a')||
'                <div class="carousel-caption">'||unistr('\000a')||
'                    <h1 class="">Changes to the Grid</h1>'||unistr('\000a')||
'                    '||unistr('\000a')||
'                    <p class="">Bootstrap 3'||
' still features a 12-column grid, but many of the CSS class'||unistr('\000a')||
'                        names have completely changed.</p>'||unistr('\000a')||
'                </div>'||unistr('\000a')||
'            </div>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <div class="item" style="background-color:#0F0937;">'||unistr('\000a')||
'            <img src="/s4atb/images/SMRT_CorpImage03.jpg" class="img-responsive">'||unistr('\000a')||
'            <div class="container">'||unistr('\000a')||
'                <div class="carousel-caption"'||
'>'||unistr('\000a')||
'                    <h1 class="">Percentage-based sizing</h1>'||unistr('\000a')||
'                    '||unistr('\000a')||
'                    <p class="">With "mobile-first" there is now only one percentage-based grid.</p>'||unistr('\000a')||
'                </div>'||unistr('\000a')||
'            </div>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <!-- Controls --> <a class="left carousel-control" href="#myCarousel" data-slide="prev">'||unistr('\000a')||
'    <span class="icon-prev"></span>'||unistr('\000a')||
'    </a>'||unistr('\000a')||
'    <a c'||
'lass="right carousel-control" href="#myCarousel" data-slide="next">'||unistr('\000a')||
'        <span class="icon-next"></span>'||unistr('\000a')||
'    </a> '||unistr('\000a')||
'</div>'||unistr('\000a')||
'<!-- /.carousel -->'||unistr('\000a')||
'<!-- Marketing messaging and featurettes==================================================-->'||unistr('\000a')||
'<!-- Wrap the rest of the page in another container to center all the'||unistr('\000a')||
'content. -->'||unistr('\000a')||
'<div class="container marketing">'||unistr('\000a')||
'    <div class="row">'||unistr('\000a')||
'        <div class="co'||
'l-md-12 ">            '||unistr('\000a')||
'            <div class="bs-docs-section">'||unistr('\000a')||
'                <h1 class="page-header" id="license-faqs">Twitter Bootstrap theme for Oracle Application Express.</h1>'||unistr('\000a')||
'                <h4>Current Apex theme version: 2.0.0</h4>'||unistr('\000a')||
'                <h4>Current Bootstrap version: 3.1.1</h4>'||unistr('\000a')||
'                '||unistr('\000a')||
'                '||unistr('\000a')||
'                <p class="lead" style="margin-top:50px;">'||unistr('\000a')||
'       '||
'             Bootstrap and the Apex-theme is released under the MIT license. Boiled down to smaller chunks, it can be described with the following conditions.'||unistr('\000a')||
'                </p>                '||unistr('\000a')||
'                <h4>It requires you to:</h4>'||unistr('\000a')||
'                <ul>'||unistr('\000a')||
'                    <li>Include the license and copyright notice in your works</li>'||unistr('\000a')||
'                </ul>'||unistr('\000a')||
'                '||unistr('\000a')||
'               '||
' <h4>It permits you to:</h4>'||unistr('\000a')||
'                <ul>'||unistr('\000a')||
'                    <li>Freely download and use Bootstrap and the theme, in whole or in part, for personal, private, company internal, or commercial purposes</li>'||unistr('\000a')||
'                    <li>Use Bootstrap and the theme in packages or distributions that you create</li>'||unistr('\000a')||
'                    <li>Modify the source code</li>'||unistr('\000a')||
'                    <li>Grant a s'||
'ublicense to modify and distribute Bootstrap and the theme to third parties not included in the license</li>'||unistr('\000a')||
'                </ul>'||unistr('\000a')||
'                '||unistr('\000a')||
'                <h4>It forbids you to:</h4>'||unistr('\000a')||
'                <ul>'||unistr('\000a')||
'                    <li>Hold the authors and license owners liable for damages as Bootstrap and the theme is provided without warranty</li>'||unistr('\000a')||
'                    <li>Hold the creators or co'||
'pyright holders of Bootstrap and the theme liable</li>'||unistr('\000a')||
'                    <li>Redistribute any piece of Bootstrap or the theme without proper attribution</li>'||unistr('\000a')||
'                    <li>Use any marks owned by Twitter or SMART4apex in any way that might state or imply that Twitter or SMART4apex endorses your distribution</li>'||unistr('\000a')||
'                    <li>Use any marks owned by Twitter or SMART4apex in any'||
' way that might state or imply that you created the Twitter software or the theme in question</li>'||unistr('\000a')||
'                </ul>'||unistr('\000a')||
'                '||unistr('\000a')||
'                <h4>It does not require you to:</h4>'||unistr('\000a')||
'                <ul>'||unistr('\000a')||
'                    <li>Include the source of Bootstrap or the theme itself, or of any modifications you may have made to it, in any redistribution you may assemble that includes it</li>'||unistr('\000a')||
' '||
'                   <li>Submit changes that you make to Bootstrap or the theme back to the Bootstrap project (though such feedback is encouraged)</li>'||unistr('\000a')||
'                </ul>'||unistr('\000a')||
'                '||unistr('\000a')||
'                <p>The full Bootstrap license is located <a href="https://github.com/twbs/bootstrap/blob/master/LICENSE">in the project repository</a> for more information.</p>'||unistr('\000a')||
'            </div>'||unistr('\000a')||
'            '||unistr('\000a')||
'  '||
'          '||unistr('\000a')||
'            '||unistr('\000a')||
'            '||unistr('\000a')||
'            '||unistr('\000a')||
'            '||unistr('\000a')||
'            '||unistr('\000a')||
'            '||unistr('\000a')||
'        </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    '||unistr('\000a')||
'    <div class="row">'||unistr('\000a')||
'        <div class="col-md-12"> '||unistr('\000a')||
'            '||unistr('\000a')||
'            <div class="bs-docs-section">'||unistr('\000a')||
'                <h1 class="page-header" id="devlopers">About the Bootstrap Apex-theme developers</h1>       '||unistr('\000a')||
'            </div>'||unistr('\000a')||
'            '||unistr('\000a')||
'            '||unistr('\000a')||
'            '||unistr('\000a')||
'   '||
'         '||unistr('\000a')||
'        </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <!-- Two columns of text below the carousel -->'||unistr('\000a')||
'    <div class="row">'||unistr('\000a')||
'        <div class="col-md-6 text-center">'||unistr('\000a')||
'            <img class="img-circle" src="http://www.smart4apex.nl/s4a/SergeiMartens.jpg" width="200px" height="200px">'||unistr('\000a')||
'            <h2 class="">Sergei Martens</h2>'||unistr('\000a')||
'            '||unistr('\000a')||
'            <p class="">Sergei Martens has been working with Oracle si'||
'nce 1998. Since 2008, he has worked as an independent contractor and specialized in Oracle Application Express. Sergei has a special interest in user interface design, trends (what is hot and what is not), and how to make a modern and user-friendly web application. </p>'||unistr('\000a')||
'            <p class=""><a class="btn btn-default" href="http://www.smart4apex.nl/apex/f?p=100:25:0::NO:::" target="_blank">More '||
'about Sergei »</a>'||unistr('\000a')||
'                '||unistr('\000a')||
'            </p>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <div class="col-md-6 text-center">'||unistr('\000a')||
'            <img class="img-circle" src="/s4atb/images/rmartens_591.png" width="200px" height="200px">'||unistr('\000a')||
'            <h2 class="">Richard Martens</h2>'||unistr('\000a')||
'            '||unistr('\000a')||
'            <p class="">'||unistr('\000a')||
'                Richard has been involved in information technology for more than 15 years.<br/>'||unistr('\000a')||
'     '||
'           He started as a web-developer using the Oracle database as no more than a data-storage. Richard has been responsible for major European multilingual websites and has been working with the Oracle database since 2000. During those years he developed himself using a multitude of technologies and specialized in PL/SQL and Oracle Apex.<br/>'||unistr('\000a')||
'                With Apex he combines the things he'||
' loves most: The Oracle Database and Web technologies.'||unistr('\000a')||
'            </p>'||unistr('\000a')||
'            <p class=""><a class="btn btn-default" href="http://www.smart4apex.nl/apex/f?p=100:25:0::NO:::" target="_blank">More about Richard »</a>'||unistr('\000a')||
'                '||unistr('\000a')||
'            </p>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <!-- /.row -->'||unistr('\000a')||
'    <!-- START THE FEATURETTES -->'||unistr('\000a')||
'    <hr class="featurette-divider">'||unistr('\000a')||
'    <div class="featurette">'||unistr('\000a')||
''||
'        <img class="featurette-image pull-right" src="/s4atb/images/smart4apexteam.png" height="300px">'||unistr('\000a')||
'        <h2 class="featurette-heading">The SMART4apex team.</h2><h2><span class="text-muted">A Guild of Apex specialists specialized in providing'||unistr('\000a')||
'        web solutions for your organization, in a unique way.'||unistr('\000a')||
'        </span></h2>'||unistr('\000a')||
'        '||unistr('\000a')||
'        <p class="lead">We distinguish ourselves by courag'||
'e; by asking that'||unistr('\000a')||
'            one  additional question, by thinking out-of-the-box and  by focusing'||unistr('\000a')||
'            on the  solution and  not on the  method. <a href="http://www.slideshare.net/SergeiMartens/smrt-i-padfinal-newnew" target="_blank">More about SMART4apex </a>'||unistr('\000a')||
'        </p>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <hr class="featurette-divider">'||unistr('\000a')||
'    <!-- /END THE FEATURETTES -->'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<!-- /.container -->'
 ,p_footer_template => 
'        <footer class="container" role="contentinfo">   '||unistr('\000a')||
'            #REGION_POSITION_07#'||unistr('\000a')||
'            #REGION_POSITION_08#'||unistr('\000a')||
'        </footer>'||unistr('\000a')||
'        #FORM_CLOSE#'||unistr('\000a')||
'<div id="devtoolbar">#DEVELOPER_TOOLBAR#</div>'||unistr('\000a')||
'        #GENERATED_CSS#'||unistr('\000a')||
'        #GENERATED_JAVASCRIPT#'||unistr('\000a')||
'    </body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<script>'||unistr('\000a')||
'$(function() {'||unistr('\000a')||
'    $.bootstrapGrowl(''#SUCCESS_MESSAGE#'', { type: ''success'', allow_dismiss: false });'||unistr('\000a')||
'});'||unistr('\000a')||
'</script>'||unistr('\000a')||
''
 ,p_notification_message => '<div class="alert alert-danger alert-dismissable" id="uNotificationMessage" style="margin-top:25px;">'||unistr('\000a')||
'    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'||unistr('\000a')||
'    <i class="fa fa-exclamation-triangle" style="margin-right:5px;"></i>'||unistr('\000a')||
'    <div class="MessageText" style="display:inline;">'||unistr('\000a')||
'    #MESSAGE#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>'
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>#EDIT#'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 3
 ,p_error_page_template => '<section class="uRegion uNoHeading uErrorRegion">'||unistr('\000a')||
'  <div class="uRegionContent">'||unistr('\000a')||
'    <p><strong>#MESSAGE#</strong></p>'||unistr('\000a')||
'    <p>#ADDITIONAL_INFO#</p>'||unistr('\000a')||
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'  <div class="uRegionHeading">'||unistr('\000a')||
'    <span class="uButtonContainer">'||unistr('\000a')||
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'  </div>'||unistr('\000a')||
'</section>'
 ,p_grid_type => 'VARIABLE'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => false
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '<div class="container" style="padding: 0 15px;">'||unistr('\000a')||
'    #ROWS#'||unistr('\000a')||
'</div>'
 ,p_grid_row_template => '<div class="row">'||unistr('\000a')||
'    #COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="col-md-#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES# #ATTRIBUTES#">'||unistr('\000a')||
'    #CONTENT#'||unistr('\000a')||
'</div>'
 ,p_grid_first_column_attributes => 'firstcol'
 ,p_grid_last_column_attributes => 'lastcol'
 ,p_has_edit_links => true
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 82240030881345178 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 82239741943345126 + wwv_flow_api.g_id_offset
 ,p_name => 'BOX_BODY'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/page/tb_modal
prompt  ......Page template 82852248559145926
 
begin
 
wwv_flow_api.create_template (
  p_id => 82852248559145926 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_theme_id => 101
 ,p_name => 'TB Modal'
 ,p_is_popup => false
 ,p_javascript_file_urls => '&S4ATB_LIBRARIES./bootstrap/3.1.1/js/bootstrap#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-growl-master/jquery.bootstrap-growl#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-select/1.5.2/bootstrap-select#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./parsley/2.0.0-rc4/dist/parsley#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./jquery-cookie/1.4.1/jquery.cookie#MIN#.js'||unistr('\000a')||
'&S4ATB_LIBRARIES./s4a-library.js'
 ,p_javascript_code_onload => 
'// save modal-id in cookie'||unistr('\000a')||
'if ( QueryString("modalid") )'||unistr('\000a')||
'    $.cookie( ''s4atb-modalid'', QueryString("modalid") );'||unistr('\000a')||
'// add click listener to the "close"-button'||unistr('\000a')||
'$(''button.close'').click(function() {'||unistr('\000a')||
'            closemodal();'||unistr('\000a')||
'        } );'||unistr('\000a')||
'// set the height of the form'||unistr('\000a')||
'$(''.modal-body-container'').height( $(document).height() - 105 );'
 ,p_css_file_urls => '&S4ATB_LIBRARIES./bootstrap/3.1.1/css/bootstrap#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap/3.1.1/css/bootstrap-theme#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./font-awesome/4.1.0/css/font-awesome#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-datepicker/1.3.0/css/datepicker.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./bootstrap-select/1.5.2/bootstrap-select#MIN#.css'||unistr('\000a')||
'&S4ATB_LIBRARIES./s4a-bootstrap.css'
 ,p_inline_css => 
'#apex-dev-toolbar{'||unistr('\000a')||
'  padding-bottom: 15px;'||unistr('\000a')||
'}'
 ,p_header_template => '<!--[if HTML5]><![endif]-->'||unistr('\000a')||
'<!doctype html>'||unistr('\000a')||
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->'||unistr('\000a')||
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->'||unistr('\000a')||
'<head>'||unistr('\000a')||
'    <!--[if !HTML5]>'||unistr('\000a')||
'<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">'||unistr('\000a')||
'<![endif]-->'||unistr('\000a')||
'    <meta charset="UTF-8">'||unistr('\000a')||
'    <title>#TITLE#</title>'||unistr('\000a')||
'    <link rel="apple-touch-icon-precomposed" href="&S4ATB_LIBRARIES./images/apple-touch-icon-precomposed.png">'||unistr('\000a')||
'    <link rel="shortcut icon" href="&S4ATB_LIBRARIES./images/favicon.ico" type="image/x-icon">'||unistr('\000a')||
'    #APEX_CSS#'||unistr('\000a')||
'    #TEMPLATE_CSS#'||unistr('\000a')||
'    #THEME_CSS#'||unistr('\000a')||
'    #PAGE_CSS#'||unistr('\000a')||
'    #APEX_JAVASCRIPT#'||unistr('\000a')||
'    #TEMPLATE_JAVASCRIPT#'||unistr('\000a')||
'    #APPLICATION_JAVASCRIPT#'||unistr('\000a')||
'    #PAGE_JAVASCRIPT#'||unistr('\000a')||
'    #HEAD#'||unistr('\000a')||
'    <meta name="viewport" content="width=device-width, initial-scale=1.0">'||unistr('\000a')||
'    <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>'||unistr('\000a')||
'</head>'||unistr('\000a')||
'<body #ONLOAD# id="modalpopup">'||unistr('\000a')||
'    <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->'||unistr('\000a')||
'    #FORM_OPEN#'
 ,p_box => 
'    <!-- NOTIFICATION REGIONS -->'||unistr('\000a')||
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#'||unistr('\000a')||
'    <!-- REGION_POSITION_01 -->'||unistr('\000a')||
'    #REGION_POSITION_01#'||unistr('\000a')||
'    <!-- REGION_POSITION_02 -->'||unistr('\000a')||
'    #REGION_POSITION_02#'||unistr('\000a')||
'    <!-- BOX_BODY -->'||unistr('\000a')||
'    #BOX_BODY#'||unistr('\000a')||
'    <!-- REGION_POSITION_04 -->'||unistr('\000a')||
'    #REGION_POSITION_04#'||unistr('\000a')||
'    <!-- REGION_POSITION_05 -->'||unistr('\000a')||
'    #REGION_POSITION_05#'||unistr('\000a')||
'    <!-- REGION_POSITION_06 -->'||unistr('\000a')||
'    '||
'<!-- REGION_POSITION_07 -->'||unistr('\000a')||
'    #REGION_POSITION_07#'||unistr('\000a')||
'    <!-- REGION_POSITION_03 -->'||unistr('\000a')||
'    #REGION_POSITION_03#'||unistr('\000a')||
'    <!-- ./REGION_POSITION_03 -->'
 ,p_footer_template => 
'        <!-- REGION_POSITION_08 -->'||unistr('\000a')||
'        #REGION_POSITION_08#'||unistr('\000a')||
'        <!-- FORM_CLOSE -->'||unistr('\000a')||
'        #FORM_CLOSE#'||unistr('\000a')||
'        <!-- DEVELOPER_TOOLBAR -->'||unistr('\000a')||
'        #DEVELOPER_TOOLBAR#'||unistr('\000a')||
'        <!-- GENERATED_CSS -->'||unistr('\000a')||
'        #GENERATED_CSS#'||unistr('\000a')||
'        <!-- GENERATED_JAVASCRIPT -->'||unistr('\000a')||
'        #GENERATED_JAVASCRIPT#'||unistr('\000a')||
'        <!-- /GENERATED_JAVASCRIPT -->'||unistr('\000a')||
'    </body>'||unistr('\000a')||
'</html>'
 ,p_success_message => '<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">'||unistr('\000a')||
'    <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'            #SUCCESS_MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</section>'||unistr('\000a')||
''
 ,p_notification_message => '<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">'||unistr('\000a')||
'    <div class="uRegionContent clearfix">'||unistr('\000a')||
'        <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>'||unistr('\000a')||
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />'||unistr('\000a')||
'        <div class="uMessageText">'||unistr('\000a')||
'            #MESSAGE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</section>'||unistr('\000a')||
''
 ,p_navigation_bar => '#BAR_BODY#'
 ,p_navbar_entry => '<a href="#LINK#">#TEXT#</a>'
 ,p_region_table_cattributes => ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
 ,p_sidebar_def_reg_pos => 'REGION_POSITION_02'
 ,p_breadcrumb_def_reg_pos => 'REGION_POSITION_01'
 ,p_theme_class_id => 4
 ,p_grid_type => 'FIXED'
 ,p_grid_max_columns => 12
 ,p_grid_always_use_max_columns => false
 ,p_grid_has_column_span => true
 ,p_grid_emit_empty_leading_cols => false
 ,p_grid_emit_empty_trail_cols => false
 ,p_grid_template => '<div class="container">'||unistr('\000a')||
'    #ROWS#'||unistr('\000a')||
'</div>'
 ,p_grid_row_template => '<div class="row">'||unistr('\000a')||
'    #COLUMNS#'||unistr('\000a')||
'</div>'
 ,p_grid_column_template => '<div class="col-md-#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES# #ATTRIBUTES#">'||unistr('\000a')||
'    #CONTENT#'||unistr('\000a')||
'</div>'
 ,p_has_edit_links => true
  );
wwv_flow_api.create_page_tmpl_display_point (
  p_id => 82854624666678018 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_page_template_id => 82852248559145926 + wwv_flow_api.g_id_offset
 ,p_name => 'BOX_BODY'
 ,p_placeholder => 'BOX_BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
null;
 
end;
/

prompt  ...button templates
--
--application/shared_components/user_interface/templates/button/tb_default
prompt  ......Button Template 68240325752059387
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68240325752059387 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Default'
 ,p_template => 
'<a onclick="#JAVASCRIPT#" class="btn btn-default #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-primary #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_primary
prompt  ......Button Template 68240525930097273
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68240525930097273 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Primary'
 ,p_template => 
'<a href="#LINK#" class="btn btn-primary #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-default #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_success
prompt  ......Button Template 68240922252105646
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68240922252105646 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Success'
 ,p_template => 
'<a href="#LINK#" class="btn btn-success #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-primary #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_info
prompt  ......Button Template 68242136235119091
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68242136235119091 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Info'
 ,p_template => 
'<a href="#LINK#" class="btn btn-info #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-warning #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_warning
prompt  ......Button Template 68242244546121502
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68242244546121502 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Warning'
 ,p_template => 
'<a href="#LINK#" class="btn btn-warning #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-primary #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_danger
prompt  ......Button Template 68242320090123902
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68242320090123902 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Danger'
 ,p_template => 
'<a href="#LINK#" class="btn btn-danger #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-primary #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_link
prompt  ......Button Template 68242428401126353
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68242428401126353 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Link'
 ,p_template => 
'<a href="#LINK#" class="btn btn-link #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-link #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_iconic_danger
prompt  ......Button Template 68250326454485234
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68250326454485234 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Iconic Danger'
 ,p_template => 
'<a href="#LINK#" class="btn btn-danger" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-primary" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_iconic_default
prompt  ......Button Template 68250444377509381
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68250444377509381 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Iconic Default'
 ,p_template => 
'<a href="#LINK#" class="btn btn-default" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-primary " role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_iconic_info
prompt  ......Button Template 68250521999512334
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68250521999512334 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Iconic Info'
 ,p_template => 
'<a href="#LINK#" class="btn btn-info" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-warning" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_iconic_link
prompt  ......Button Template 68250631003515013
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68250631003515013 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Iconic Link '
 ,p_template => 
'<a href="#LINK#" class="btn btn-link" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-link" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_iconic_primary
prompt  ......Button Template 68250739314517332
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68250739314517332 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Iconic Primary'
 ,p_template => 
'<a href="#LINK#" class="btn btn-primary" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-default" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_iconic_success
prompt  ......Button Template 68250846586519493
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68250846586519493 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Iconic Success'
 ,p_template => 
'<a href="#LINK#" class="btn btn-success" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-primary" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_iconic_warning
prompt  ......Button Template 68250921091521590
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68250921091521590 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Iconic Warning'
 ,p_template => 
'<a href="#LINK#" class="btn btn-warning" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-primary" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>'||unistr('\000a')||
'    <i class="fa #BUTTON_CSS_CLASSES#"></i>&nbsp;#LABEL#'||unistr('\000a')||
'</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/button/tb_anchor_link
prompt  ......Button Template 68259836777658534
 
begin
 
wwv_flow_api.create_button_templates (
  p_id => 68259836777658534 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_template_name => 'TB Anchor Link'
 ,p_template => 
'<a href="#LINK#" class="btn btn-link #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_hot_template => 
'<a href="#LINK#" class="btn btn-link #BUTTON_CSS_CLASSES#" role="button" id="#BUTTON_ID#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
 ,p_translate_this_template => 'N'
 ,p_theme_class_id => 1
 ,p_theme_id => 101
  );
null;
 
end;
/

---------------------------------------
prompt  ...region templates
--
--application/shared_components/user_interface/templates/region/div_region_with_id
prompt  ......region template 60042621181690661
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 60042621181690661 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> '||unistr('\000a')||
'#BODY#'||unistr('\000a')||
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'DIV Region with ID'
 ,p_theme_id => 101
 ,p_theme_class_id => 22
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_panel_left_title_buttons_right
prompt  ......region template 60046847338690666
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 60046847338690666 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="panel panel-default #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'    <div class="panel-heading">'||unistr('\000a')||
'        <div class="pull-left">'||unistr('\000a')||
'            #TITLE#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        &nbsp;<!-- needed for minimal header height -->'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'    <div class="panel-body">'||unistr('\000a')||
'    <div style="text-align: right;">'||unistr('\000a')||
'        #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2'||
'##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'        #BODY#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'TB Panel - Left Title - Buttons Right'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 101
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_navigation_region
prompt  ......region template 63397727518290172
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 63397727518290172 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<header role="banner" class="navbar" id="#REGION_ID#">'||unistr('\000a')||
'    <div class="container">'||unistr('\000a')||
'        <div class="navbar-header">'||unistr('\000a')||
'            <button data-target=".bs-navbar-collapse" data-toggle="collapse" type="button" class="navbar-toggle">'||unistr('\000a')||
'                <span class="sr-only">Toggle navigation</span>'||unistr('\000a')||
'                <span class="icon-bar"></span>'||unistr('\000a')||
'                <span class="icon-bar"></span>'||unistr('\000a')||
'          '||
'      <span class="icon-bar"></span>'||unistr('\000a')||
'            </button>'||unistr('\000a')||
'            <a class="navbar-brand" href="f?p=&APP_ID.:1">#TITLE#</a>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'        <nav role="navigation" class="collapse navbar-collapse bs-navbar-collapse #REGION_CSS_CLASSES#">'||unistr('\000a')||
'            #BODY#'||unistr('\000a')||
'            <ul class="nav navbar-nav navbar-right">'||unistr('\000a')||
'                <li>#CLOSE#</li>'||unistr('\000a')||
'                <li>#PREVIOUS#</li>'||unistr('\000a')||
'          '||
'      <li>#NEXT#</li>'||unistr('\000a')||
'                <li>#DELETE#</li>'||unistr('\000a')||
'                <li>#EDIT#</li>'||unistr('\000a')||
'                <li>#CHANGE#</li>'||unistr('\000a')||
'                <li>#CREATE#</li>'||unistr('\000a')||
'                <li>#CREATE2#</li>'||unistr('\000a')||
'                <li>#EXPAND#</li>'||unistr('\000a')||
'                <li>#COPY#</li>'||unistr('\000a')||
'                <li>#HELP#</li>'||unistr('\000a')||
'            </ul>'||unistr('\000a')||
'        </nav>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</header>'
 ,p_page_plug_template_name => 'TB Navigation Region'
 ,p_theme_id => 101
 ,p_theme_class_id => 5
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_docs_section
prompt  ......region template 69214834744802138
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 69214834744802138 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="bs-docs-section #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'    <h1 class="page-header" id="overview_#REGION_STATIC_ID#">#TITLE#</h1>'||unistr('\000a')||
'    <span class="bs-docs-sectionbuttons">'||unistr('\000a')||
'        #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'    <div class="bs-docs-sectioncontent">'||unistr('\000a')||
'        #BODY#'||unistr('\000a')||
'        #SUB_REGIONS#'||unistr('\000a')||
'    </di'||
'v>'||unistr('\000a')||
'</div>'
 ,p_sub_plug_template => '#SUB_REGION#'
 ,p_page_plug_template_name => 'TB docs-section'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 101
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_docs_sub_section
prompt  ......region template 69241630586354609
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 69241630586354609 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="bs-docs-subsection" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'    <h3 id="overview_#REGION_STATIC_ID#">#TITLE#</h3>'||unistr('\000a')||
'    <span class="bs-docs-subsectionbuttons">'||unistr('\000a')||
'        #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </span>'||unistr('\000a')||
'    <div class="bs-docs-subsectioncontent">'||unistr('\000a')||
'      <!--deze heb ik tijdelijk even toegevoegd-->'||unistr('\000a')||
'      <div class="#REGION_'||
'CSS_CLASSES#" role="form">'||unistr('\000a')||
'        #BODY#'||unistr('\000a')||
'        #SUB_REGIONS#'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>'
 ,p_sub_plug_template => '<h3 id="overview-#SUB_REGION_ID#">#SUB_REGION_TITLE#</h3>'||unistr('\000a')||
'#SUB_REGION#'
 ,p_page_plug_template_name => 'TB docs-sub-section'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 101
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_interactive_report_region
prompt  ......region template 69879618483496597
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 69879618483496597 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<section class="uIRRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">'||unistr('\000a')||
'    <h1 class="visuallyhidden">#TITLE#</h1>'||unistr('\000a')||
'    #BODY#'||unistr('\000a')||
'</section>'||unistr('\000a')||
'<script>'||unistr('\000a')||
'    /*'||unistr('\000a')||
'    function alterIR() {'||unistr('\000a')||
'        //alert(''alterIR'');'||unistr('\000a')||
'        // alter the default Apex behaviour for the Interactive report:'||unistr('\000a')||
'        apexirtable = $(''table.apexir_WORKSHEET_DATA'');'||unistr('\000a')||
'        // 1. set the containertable'||
' to have a width of 100%'||unistr('\000a')||
'        apexirtable.parents(''table'').attr(''style'', ''width: 100%'');'||unistr('\000a')||
'        // 2. remove the "apexir_WORKSHEET_DATA" class and replace it by the "table" class'||unistr('\000a')||
'        apexirtable.attr(''class'', ''table'');'||unistr('\000a')||
'        // 3. Set the IR search area icons'||unistr('\000a')||
'        // 3.1 Search icon'||unistr('\000a')||
'        //subj = $(''section##REGION_STATIC_ID# #apexir_SEARCHDROPROOT'');'||unistr('\000a')||
'        //subj.removeClass(''ap'||
'exir_SEARCHICON'');'||unistr('\000a')||
'        //subj.html(''<i class="fa fa-search fa-2x"></i>'');'||unistr('\000a')||
'        //$(''ul#apexir_ACTIONSMENU img[src="/i/ws/edit_col_32.gif"]'').replaceWith(''<i class="fa fa-table fa-2x"></i>'');'||unistr('\000a')||
'        //4 Alter buttons'||unistr('\000a')||
'        // 4.1 Go button and Action button'||unistr('\000a')||
'        $(''#apexir_btn_SEARCH'').attr(''class'', ''btn btn-primary'');'||unistr('\000a')||
'        $(''#apexir_ACTIONSMENUROOT'').attr(''class'', ''btn btn-default'||
''');'||unistr('\000a')||
'        $(''#apexir_SEARCHDROPROOT'').attr(''class'', ''btn btn-default'');'||unistr('\000a')||
'        $(''#apexir_SEARCHDROPROOT'').html(''<i class="fa fa-search"></i>'');'||unistr('\000a')||
'        $(''INPUT#apexir_SEARCH'').attr(''class'', ''form-control'');'||unistr('\000a')||
'    }'||unistr('\000a')||
'    // Function to call our Application Process to log the search'||unistr('\000a')||
'    function fDoIRSearch(){'||unistr('\000a')||
'        // Call APEX IR Search'||unistr('\000a')||
'        alert(''fDoIRSearch'');'||unistr('\000a')||
'        gReport.search(''SEA'||
'RCH'');'||unistr('\000a')||
'        alterIR();'||unistr('\000a')||
'    }'||unistr('\000a')||
'        '||unistr('\000a')||
'    $(function() {'||unistr('\000a')||
'        alert(''$'');'||unistr('\000a')||
'        // Unbind all events. Important for order of execution'||unistr('\000a')||
'        $(''button#apexir_btn_SEARCH'').attr(''onclick'',''''); //unbind click event'||unistr('\000a')||
'        // Rebind events'||unistr('\000a')||
'        $(''button#apexir_btn_SEARCH'').click(function(){fDoIRSearch()});'||unistr('\000a')||
'        // -- Handle "Enter" in input field --'||unistr('\000a')||
'        $(''input#apexir_SEARCH'').a'||
'ttr(''onkeydown'',''''); //unbind onkeyup event'||unistr('\000a')||
'        // Rebind Events'||unistr('\000a')||
'        //$(''input#apexir_SEARCH'').keydownup(function(event){($f_Enter(event))?fDoIRSearch():null;});'||unistr('\000a')||
'        // rebuild the IR for the first time'||unistr('\000a')||
'        alterIR();'||unistr('\000a')||
'    });'||unistr('\000a')||
'/**/'||unistr('\000a')||
'</script>'||unistr('\000a')||
'<style>'||unistr('\000a')||
'    /* overrule apex css for interactive reports */'||unistr('\000a')||
'    div#apexir_TOOLBAR_OPEN, div#apexir_TOOLBAR_CLOSE { background: none; }'||unistr('\000a')||
'</styl'||
'e>'
 ,p_page_plug_template_name => 'TB - Interactive Report Region'
 ,p_theme_id => 101
 ,p_theme_class_id => 21
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_form_table_attr => 
'class="table"'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_fluid_content_region
prompt  ......region template 70123634034424390
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 70123634034424390 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div id="content" class="bs-docs-header">'||unistr('\000a')||
'    <div class="container #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'        <h1 id="overview_#REGION_STATIC_ID#">#TITLE#</h1>'||unistr('\000a')||
'          #BODY#'||unistr('\000a')||
'          #SUB_REGIONS#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>'
 ,p_sub_plug_template => '#SUB_REGION#'
 ,p_page_plug_template_name => 'TB fluid content region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 101
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_tab_container_tabs
prompt  ......region template 71803748138890720
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 71803748138890720 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="tab-container #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" style="margin-top:20px;" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'    #SUB_REGION_HEADERS#'||unistr('\000a')||
'    <div id="header-#REGION_STATIC_ID#" class="tab-content">'||unistr('\000a')||
'        #SUB_REGIONS#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="buttons-#REGION_STATIC_ID#" class="btn-group" style="margin-top:20px;">#EDIT##CLOSE##CREATE##CREATE2##CHANGE##EXPAND##HELP##DELETE##COPY##NEXT##PRE'||
'VIOUS#</div>'
 ,p_sub_plug_header_template => '<ul id="list-#REGION_STATIC_ID#" class="nav nav-tabs">'||unistr('\000a')||
'    #ENTRIES#'||unistr('\000a')||
'</ul>'||unistr('\000a')||
''
 ,p_sub_plug_header_entry_templ => '<li>'||unistr('\000a')||
'    <a data-toggle="tab" href="##REGION_STATIC_ID#-tab-#SUB_REGION_ID#">'||unistr('\000a')||
'        #SUB_REGION_TITLE#'||unistr('\000a')||
'    </a>'||unistr('\000a')||
'</li>'
 ,p_sub_plug_template => '<div id="#REGION_STATIC_ID#-tab-#SUB_REGION_ID#" class="tab-pane fade">'||unistr('\000a')||
'    #SUB_REGION#'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'TB Tab container - Tabs'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 101
 ,p_theme_class_id => 5
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 71855839461011834 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 71803748138890720 + wwv_flow_api.g_id_offset
 ,p_name => 'Sub region'
 ,p_placeholder => 'SUB_REGION'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_tabbed_region
prompt  ......region template 71813843945936883
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 71813843945936883 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'    <div id="#REGION_STATIC_ID#-buttons" class="btn-group">#EXPAND##CHANGE##EDIT##CLOSE##CREATE##CREATE2##EXPAND##HELP##DELETE##COPY##NEXT##PREVIOUS#</div>'||unistr('\000a')||
'    <div id="#REGION_STATIC_ID#-body">#BODY#</div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''
 ,p_sub_plug_template => '<h3 id="overview-#SUB_REGION_ID#">#SUB_REGION_TITLE#</h3>'||unistr('\000a')||
'#SUB_REGION#'
 ,p_page_plug_template_name => 'TB Tabbed region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 101
 ,p_theme_class_id => 7
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 71814147738936908 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 71813843945936883 + wwv_flow_api.g_id_offset
 ,p_name => 'Sub Region'
 ,p_placeholder => '#SUB_REGION#'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_breadcrumb_region
prompt  ......region template 71953633490454171
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 71953633490454171 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div id="BreadcrumbsRegion" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">'||unistr('\000a')||
'  #BODY#'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'TB Breadcrumb Region'
 ,p_theme_id => 101
 ,p_theme_class_id => 6
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_tab_container_pills
prompt  ......region template 71971641848484989
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 71971641848484989 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="tab-container #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'    #SUB_REGION_HEADERS#'||unistr('\000a')||
'    <div id="buttons-#REGION_STATIC_ID#" class="pull-right btn-group">#EDIT##CLOSE##CREATE##CREATE2##CHANGE##EXPAND##HELP##DELETE##COPY##NEXT##PREVIOUS#</div>'||unistr('\000a')||
'    <div id="header-#REGION_STATIC_ID#" class="tab-content">'||unistr('\000a')||
'        #SUB_REGIONS#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>'
 ,p_sub_plug_header_template => '<ul id="list-#REGION_STATIC_ID#" class="nav nav-pills">'||unistr('\000a')||
'    #ENTRIES#'||unistr('\000a')||
'</ul>'||unistr('\000a')||
''
 ,p_sub_plug_header_entry_templ => '<li>'||unistr('\000a')||
'    <a data-toggle="tab" href="##REGION_STATIC_ID#-tab-#SUB_REGION_ID#">'||unistr('\000a')||
'        #SUB_REGION_TITLE#'||unistr('\000a')||
'    </a>'||unistr('\000a')||
'</li>'
 ,p_sub_plug_template => '<div id="#REGION_STATIC_ID#-tab-#SUB_REGION_ID#" class="tab-pane fade">'||unistr('\000a')||
'    #SUB_REGION#'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'TB Tab container - Pills'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 101
 ,p_theme_class_id => 5
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 71971919399485016 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 71971641848484989 + wwv_flow_api.g_id_offset
 ,p_name => 'Sub region'
 ,p_placeholder => 'SUB_REGION'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_modal_region
prompt  ......region template 72073633920785435
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 72073633920785435 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="modal fade" id="#REGION_STATIC_ID#" tabindex="-1" role="dialog" aria-labelledby="#REGION_STATIC_ID#Label" aria-hidden="true">'||unistr('\000a')||
'    <div class="modal-dialog #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'        <div class="modal-content">'||unistr('\000a')||
'            <div class="modal-header">'||unistr('\000a')||
'                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>'||unistr('\000a')||
'      '||
'          <h4 class="modal-title" id="#REGION_STATIC_ID#Label">#TITLE#</h4>'||unistr('\000a')||
'            </div>'||unistr('\000a')||
'            <div class="modal-body">'||unistr('\000a')||
'                #BODY#'||unistr('\000a')||
'            </div>'||unistr('\000a')||
'            <div class="modal-footer">'||unistr('\000a')||
'                #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'            </div>'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'TB Modal Region'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 101
 ,p_theme_class_id => 9
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_accordion_container_tabs
prompt  ......region template 72077633705794803
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 72077633705794803 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div id="#REGION_STATIC_ID#" class="panel-group #REGION_CSS_CLASSES#">'||unistr('\000a')||
'    #SUB_REGIONS#'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<div id="buttons-#REGION_STATIC_ID#" class="pull-right btn-group">'||unistr('\000a')||
'    #EDIT##CLOSE##CREATE##CREATE2##CHANGE##EXPAND##HELP##DELETE##COPY##NEXT##PREVIOUS#'||unistr('\000a')||
'</div>'||unistr('\000a')||
''
 ,p_sub_plug_template => '<div class="panel panel-default">'||unistr('\000a')||
'    <div class="panel-heading">'||unistr('\000a')||
'        <h4 class="panel-title">'||unistr('\000a')||
'            <a  data-toggle="collapse" data-parent="##REGION_STATIC_ID#" href="##SUB_REGION_ID#">'||unistr('\000a')||
'                #SUB_REGION_TITLE#'||unistr('\000a')||
'            </a>'||unistr('\000a')||
'        </h4>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'      <div id="#SUB_REGION_ID#" class="panel-collapse collapse">'||unistr('\000a')||
'          <div class="panel-body">'||unistr('\000a')||
'              #SUB_REGION#'||unistr('\000a')||
'          </div>'||unistr('\000a')||
'      </div>'||unistr('\000a')||
'</div>'
 ,p_page_plug_template_name => 'TB Accordion container - Tabs'
 ,p_plug_table_bgcolor => '#ffffff'
 ,p_theme_id => 101
 ,p_theme_class_id => 5
 ,p_plug_heading_bgcolor => '#ffffff'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 72077935692794824 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 72077633705794803 + wwv_flow_api.g_id_offset
 ,p_name => 'Sub region'
 ,p_placeholder => 'SUB_REGION'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_boxed_login_region
prompt  ......region template 72357836734615024
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 72357836734615024 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="#REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" style="margin-top:100px;" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'    <div class="box-shadow">'||unistr('\000a')||
'        '||unistr('\000a')||
'        <div class="login-header">'||unistr('\000a')||
'            <span class="login-title">#TITLE#</span>    '||unistr('\000a')||
'            <div style="margin-top:15px;">'||unistr('\000a')||
'            #BODY#'||unistr('\000a')||
'            </div>'||unistr('\000a')||
'        </div>        '||unistr('\000a')||
'        '||unistr('\000a')||
'        <div class="box-background">'||unistr('\000a')||
'            <sp'||
'an>'||unistr('\000a')||
'                #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'            </span>'||unistr('\000a')||
'            #SUB_REGIONS#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'<style>'||unistr('\000a')||
'    .login-header {'||unistr('\000a')||
'        background-color: #032370;'||unistr('\000a')||
'        background-image: linear-gradient(to bottom, #032370 0px, #0F4E93 100%);'||unistr('\000a')||
'        background-repeat: repeat-x;'||unistr('\000a')||
'        color: #4FA1F2;'||unistr('\000a')||
'        pa'||
'dding: 30px 15px;'||unistr('\000a')||
'        position: relative;'||unistr('\000a')||
'        text-align: center;'||unistr('\000a')||
'        text-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);'||unistr('\000a')||
'    }  '||unistr('\000a')||
'    '||unistr('\000a')||
'    .login-title {'||unistr('\000a')||
'        color: #FFFFFF;'||unistr('\000a')||
'        font-size: 40px;'||unistr('\000a')||
'        line-height: 1;'||unistr('\000a')||
'        margin-top: 0;'||unistr('\000a')||
'        font-weight: 500;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    '||unistr('\000a')||
'</style>'||unistr('\000a')||
''
 ,p_sub_plug_template => '#SUB_REGION#'
 ,p_page_plug_template_name => 'TB Boxed login region'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 101
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_iframed_form
prompt  ......region template 82832120671807044
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 82832120671807044 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<style>'||unistr('\000a')||
'    html, body, form, ##REGION_STATIC_ID# { '||unistr('\000a')||
'        height: 100%; '||unistr('\000a')||
'        margin: 0; '||unistr('\000a')||
'        padding: 0;'||unistr('\000a')||
'        overflow: hidden;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    .modal-header, '||unistr('\000a')||
'    .modal-footer { '||unistr('\000a')||
'        width: 100%;'||unistr('\000a')||
'        height: 48px;'||unistr('\000a')||
'        margin: 0;'||unistr('\000a')||
'        /*border: 1px solid red;/**/'||unistr('\000a')||
'    }'||unistr('\000a')||
'    .modal-footer { '||unistr('\000a')||
'        padding: 10px;'||unistr('\000a')||
'    }'||unistr('\000a')||
'    .modal-body-container { '||unistr('\000a')||
'        /*height: 100%;/**/'||
''||unistr('\000a')||
'        overflow: hidden; '||unistr('\000a')||
'        box-sizing: border-box;'||unistr('\000a')||
'        -webkit-box-sizing: border-box; '||unistr('\000a')||
'        -moz-box-sizing: border-box; '||unistr('\000a')||
'        -ms-box-sizing: border-box; '||unistr('\000a')||
'        /*padding: 57px 0;/**/'||unistr('\000a')||
'        /*margin: -57px 0;/**/'||unistr('\000a')||
'        padding:0; '||unistr('\000a')||
'        margin: 0;'||unistr('\000a')||
'        /*border: 1px solid green;/**/'||unistr('\000a')||
'    }'||unistr('\000a')||
'    .modal-body { '||unistr('\000a')||
'        overflow: auto;'||unistr('\000a')||
'        height: 100%; }'||unistr('\000a')||
'    #apex-d'||
'ev-toolbar {height: 18px;}'||unistr('\000a')||
'</style>'||unistr('\000a')||
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'    <div class="modal-header">'||unistr('\000a')||
'        <button type="button" class="close" aria-hidden="true">&times;</button>'||unistr('\000a')||
'        <h4 class="modal-title">#TITLE#</h4>'||unistr('\000a')||
'    </div><!-- /.modal-header -->'||unistr('\000a')||
'    <div class="modal-body-container">'||unistr('\000a')||
'        <div class="modal-body #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#_body">'||unistr('\000a')||
'  '||
'          #BODY#'||unistr('\000a')||
'            #SUB_REGIONS#'||unistr('\000a')||
'        </div><!-- /.modal-body -->'||unistr('\000a')||
'    </div><!-- /.modal-body-container -->'||unistr('\000a')||
'    <div class="modal-footer" id="#REGION_STATIC_ID#_footer">'||unistr('\000a')||
'        #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'    </div><!-- /.modal-footer -->'||unistr('\000a')||
'</div>'
 ,p_sub_plug_template => '#SUB_REGION#'
 ,p_page_plug_template_name => 'TB iFramed Form'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 101
 ,p_theme_class_id => 0
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
wwv_flow_api.create_plug_tmpl_display_point (
  p_id => 42813717240336074 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plug_template_id => 82832120671807044 + wwv_flow_api.g_id_offset
 ,p_name => 'BODY'
 ,p_placeholder => 'BODY'
 ,p_has_grid_support => true
 ,p_max_fixed_grid_columns => 12
  );
null;
 
end;
/

--application/shared_components/user_interface/templates/region/tb_callout
prompt  ......region template 82880240729729345
 
begin
 
wwv_flow_api.create_plug_template (
  p_id => 82880240729729345 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_layout => 'TABLE'
 ,p_template => 
'<div class="bs-callout #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>'||unistr('\000a')||
'    <h3>#TITLE#</h3>'||unistr('\000a')||
'    <p>'||unistr('\000a')||
'        <span>'||unistr('\000a')||
'            #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#'||unistr('\000a')||
'        </span>'||unistr('\000a')||
'        <div>'||unistr('\000a')||
'            #BODY#'||unistr('\000a')||
'            #SUB_REGIONS#'||unistr('\000a')||
'    </div>'||unistr('\000a')||
'</p>'||unistr('\000a')||
'</div>'
 ,p_sub_plug_template => '#SUB_REGION#'
 ,p_page_plug_template_name => 'TB callout'
 ,p_plug_table_bgcolor => '#f7f7e7'
 ,p_theme_id => 101
 ,p_theme_class_id => 8
 ,p_plug_heading_bgcolor => '#f7f7e7'
 ,p_plug_font_size => '-1'
 ,p_default_label_alignment => 'RIGHT'
 ,p_default_field_alignment => 'LEFT'
 ,p_translate_this_template => 'N'
 ,p_template_comment => 'Red Theme'
  );
null;
 
end;
/

prompt  ...List Templates
--
--application/shared_components/user_interface/templates/list/tb_menu
prompt  ......list template 63353737518920993
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<!-- List Template Current -->'||unistr('\000a')||
'<li><a href="#LINK#">#TEXT#</a>';

t2:=t2||'<!-- List Template Noncurrent -->'||unistr('\000a')||
'<li><a href="#LINK#">#TEXT#</a>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a>';

t5:=t5||'<!-- List Template Current with Sublist Items -->'||unistr('\000a')||
'<li class="dropdown">'||unistr('\000a')||
'    <a href="#LINK#" class="dropdown-toggle" data-toggle="dropdown">#TEXT# <b class="caret"></b></a>'||unistr('\000a')||
'        <ul class="dropdown-menu">';

t6:=t6||'<!-- List Template Noncurrent with Sublist Items -->'||unistr('\000a')||
'<li class="dropdown">'||unistr('\000a')||
'    <a href="#LINK#" class="dropdown-toggle" data-toggle="dropdown">#TEXT# <b class="caret"></b></a>'||unistr('\000a')||
'        <ul class="dropdown-menu">';

t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>63353737518920993 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'TB Menu',
  p_theme_id  => 101,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<!-- List Template Before Rows -->'||unistr('\000a')||
'<ul class="nav navbar-nav">',
  p_list_template_after_rows=>'</li>'||unistr('\000a')||
'</ul>',
  p_between_items=>'<!-- Between List Elements -->'||unistr('\000a')||
'</li>',
  p_after_sub_list=>'</li></ul>',
  p_between_sub_list_items=>'</li>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tb_sidenavlist
prompt  ......list template 69529626439723033
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="active" #IMAGE_ATTR#><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li #IMAGE_ATTR#><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="active" #IMAGE_ATTR#><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li #IMAGE_ATTR#><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li class="active" #IMAGE_ATTR#><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li #IMAGE_ATTR#><a href="#LINK#">#TEXT#</a></li>';

t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>69529626439723033 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'TB SideNavList',
  p_theme_id  => 101,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<div class="bs-docs-sidebar hidden-print visible-lg visible-md" data-spy="affix" data-offset-top="250" role="complementary">'||unistr('\000a')||
'  <ul class="nav">',
  p_list_template_after_rows=>'  </ul>'||unistr('\000a')||
'</div>'||unistr('\000a')||
''||unistr('\000a')||
'<script>'||unistr('\000a')||
'$(document).ready(function(){'||unistr('\000a')||
'    $(''body'').scrollspy({ target: ''.bs-docs-sidebar'' })'||unistr('\000a')||
'});'||unistr('\000a')||
'</script>',
  p_before_sub_list=>'<ul class="nav" >',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_list_template_comment=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/list/tb_unordered_list_without_bullets
prompt  ......list template 70637639163663022
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="list-group-item active #IMAGE_ATTR#">#TEXT#<i class="fa #IMAGE#" style="float:right;"></i></a>';

t2:=t2||'  <a href="#LINK#" class="list-group-item #IMAGE_ATTR#">#TEXT#<i class="fa #IMAGE#" style="float:right;"></i></a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>70637639163663022 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'TB unordered list without bullets',
  p_theme_id  => 101,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<div class="list-group">'||unistr('\000a')||
''||unistr('\000a')||
''||unistr('\000a')||
'',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ...report templates
--
--application/shared_components/user_interface/templates/report/tb_standard_with_bootstrap_pagination_no_select_pagination_supported
prompt  ......report template 60051927122690679
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'            <td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 60051927122690679 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'TB - Standard with bootstrap pagination (NO select pagination supported)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div class="tb-top-pagination #REGION_STATIC_ID# clearfix">'||unistr('\000a')||
'    #TOP_PAGINATION#'||unistr('\000a')||
'</div>'||unistr('\000a')||
'<table class="table" id="report_#REGION_STATIC_ID#" summary="#REGION_TITLE#">',
  p_row_template_after_rows =>'</tbody>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'        <div class="tb-pagination uReportPagination clearfix">'||unistr('\000a')||
'            #PAGINATION#'||unistr('\000a')||
'        </div>'||unistr('\000a')||
'<div class="ReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'||unistr('\000a')||
'<script>'||unistr('\000a')||
'    tbpaginate("#REGION_ID#");'||unistr('\000a')||
'</script>',
  p_row_template_table_attr =>'',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_before_column_heading=>'    <thead>',
  p_column_heading_template=>'            <th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>',
  p_after_column_heading=>'    </thead>'||unistr('\000a')||
'<tbody>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_pagination_template=>'<ul class="pagination">#TEXT#</ul>',
  p_next_page_template=>'<li><a href="#LINK#" title="#PAGINATION_NEXT#">&raquo;</a></li>',
  p_previous_page_template=>'<li><a href="#LINK#" title="#PAGINATION_PREVIOUS#">&laquo;</a></li>',
  p_next_set_template=>'<li><a href="#LINK#" title="#PAGINATION_NEXT_SET#">&raquo;</a></li>',
  p_previous_set_template=>'<li><a href="#LINK#" title="#PAGINATION_PREVIOUS_SET#">&laquo;</a></li>',
  p_row_style_mouse_over=>'#F0F0F0',
  p_row_style_checked=>'#E8E8E8',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 60051927122690679 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'        <tr>',
  p_row_template_after_last =>'        </tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ...label templates
--
--application/shared_components/user_interface/templates/label/no_label
prompt  ......label template 60059233763690688
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 60059233763690688 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span style="display: none;">',
  p_template_body2=>'</span>',
  p_before_item=>'',
  p_after_item=>'',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 101,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/tb_label
prompt  ......label template 70163620098789334
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 70163620098789334 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'TB Label',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="control-label">',
  p_template_body2=>'</label>',
  p_before_item=>'<div class="form-group">',
  p_after_item=>'<span class="help-block">#CURRENT_ITEM_HELP_TEXT#</span> '||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 101,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/tb_checkbox_no_label
prompt  ......label template 70189622361903540
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 70189622361903540 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'TB Checkbox no label',
  p_template_body1=>'<label style="display:none;">',
  p_template_body2=>'</label>',
  p_before_item=>'<div class="checkbox">',
  p_after_item=>' </div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 101,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/tb_label_inline
prompt  ......label template 70217625984141065
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 70217625984141065 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'TB Label inline',
  p_template_body1=>'<label class="sr-only" for="#CURRENT_ITEM_NAME#" class="control-label">',
  p_template_body2=>'</label>',
  p_before_item=>'<div class="form-group">',
  p_after_item=>'<span class="help-block">#CURRENT_ITEM_HELP_TEXT#</span>  '||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 101,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/label/tb_label_horizontal
prompt  ......label template 70275622650540088
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 70275622650540088 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'TB Label horizontal',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" class="col-sm-2 control-label">',
  p_template_body2=>'</label>'||unistr('\000a')||
'<div class="col-sm-10">',
  p_before_item=>'<div class="form-group">',
  p_after_item=>'<span class="help-block">#CURRENT_ITEM_HELP_TEXT#</span> '||unistr('\000a')||
'</div> '||unistr('\000a')||
'</div>',
  p_on_error_before_label=>'',
  p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>',
  p_theme_id  => 101,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ...breadcrumb templates
--
--application/shared_components/user_interface/templates/breadcrumb/tb_breadcrumb_menu
prompt  ......template 71857623308016069
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 71857623308016069 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'TB Breadcrumb Menu',
  p_before_first=>'<ol class="breadcrumb">',
  p_current_page_option=>'<li class="active"><span>#NAME#</span></li> ',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> ',
  p_menu_link_attributes=>'',
  p_between_levels=>'<!-- <li class="uSeparator"><img src="#IMAGE_PREFIX#f_spacer.gif" class="uBreadcrumbSeparator" alt="" /></li> -->',
  p_after_last=>'</ol>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

--application/shared_components/user_interface/templates/popuplov
prompt  ...popup list of values templates
--
prompt  ......template 60062245190690694
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 60062245190690694 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif',
  p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"',
  p_popup_icon2=>'',
  p_popup_icon_attr2=>'',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge" /><![endif]-->'||unistr('\000a')||
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#" type="text/css" media="all"/>'||unistr('\000a')||
'#THEME_CSS#',
  p_page_body_attr=>'class="uPopUpLOV"',
  p_before_field_text=>'<div class="uActionBar">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'class="searchField"',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'class="smallButton"',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'class="smallButton hotButton"',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'class="smallButton"',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'class="smallButton"',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>500,
  p_before_result_set=>'<div class="lovLinks">',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

prompt  ...calendar templates
--
--application/shared_components/user_interface/templates/calendar/calendar
prompt  ......template 60061924927690692
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 60061924927690692 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'N',
  p_day_of_week_format=> '<th valign="bottom" class="DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> '||unistr('\000a')||
' <tr>'||unistr('\000a')||
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>'||unistr('\000a')||
' </tr>'||unistr('\000a')||
' <tr>'||unistr('\000a')||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="CalendarAlternative1">',
  p_month_close_format=> '</table></td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'</table>'||unistr('\000a')||
'',
  p_day_title_format=> '<div class="DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="Day" valign="top" height="100" height="100">#TITLE_FORMAT##DATA#',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="Today">#TITLE_FORMAT##DATA#',
  p_weekend_title_format=> '<div class="WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_weekly_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td class="MonthTitle">#WTITLE#</td>'||unistr('\000a')||
'</tr>'||unistr('\000a')||
'<tr>'||unistr('\000a')||
'<td>',
  p_weekly_day_of_week_format => '<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>',
  p_weekly_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendarAlternative1">',
  p_weekly_month_close_format => '</table></td></tr></table>',
  p_weekly_day_title_format => '',
  p_weekly_day_open_format => '<td class="Day" valign="top">',
  p_weekly_day_close_format => '<br /></td>',
  p_weekly_today_open_format => '<td class="Today" valign="top">',
  p_weekly_weekend_title_format => '',
  p_weekly_weekend_open_format => '<td valign="top" class="NonDay">',
  p_weekly_weekend_close_format => '<br /></td>',
  p_weekly_time_open_format => '<th class="Hour">',
  p_weekly_time_close_format => '<br /></th>',
  p_weekly_time_title_format => '#TIME#',
  p_weekly_hour_open_format => '<tr>',
  p_weekly_hour_close_format => '</tr>',
  p_daily_day_of_week_format => '<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>',
  p_daily_month_title_format => '<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>'||unistr('\000a')||
'',
  p_daily_month_open_format => '<table border="0" cellpadding="0" cellspacing="0" summary="0" class="DayCalendarAlternative1">',
  p_daily_month_close_format => '</table></td> </tr> </table>',
  p_daily_day_title_format => '',
  p_daily_day_open_format => '<td valign="top" class="Day">',
  p_daily_day_close_format => '<br /></td>',
  p_daily_today_open_format => '<td valign="top" class="Today">',
  p_daily_time_open_format => '<th class="Hour">',
  p_daily_time_close_format => '<br /></th>',
  p_daily_time_title_format => '#TIME#',
  p_daily_hour_open_format => '<tr>',
  p_daily_hour_close_format => '</tr>',
  p_cust_month_title_format => '',
  p_cust_day_of_week_format => '',
  p_cust_month_open_format => '',
  p_cust_month_close_format => '',
  p_cust_week_title_format => '',
  p_cust_week_open_format => '',
  p_cust_week_close_format => '',
  p_cust_day_title_format => '',
  p_cust_day_open_format => '',
  p_cust_day_close_format => '',
  p_cust_today_open_format => '',
  p_cust_daily_title_format => '',
  p_cust_daily_open_format => '',
  p_cust_daily_close_format => '',
  p_cust_nonday_title_format => '',
  p_cust_nonday_open_format => '',
  p_cust_nonday_close_format => '',
  p_cust_weekend_title_format => '',
  p_cust_weekend_open_format => '',
  p_cust_weekend_close_format => '',
  p_cust_hour_open_format => '',
  p_cust_hour_close_format => '',
  p_cust_time_title_format => '',
  p_cust_time_open_format => '',
  p_cust_time_close_format => '',
  p_cust_wk_month_title_format => '',
  p_cust_wk_day_of_week_format => '',
  p_cust_wk_month_open_format => '',
  p_cust_wk_month_close_format => '',
  p_cust_wk_week_title_format => '',
  p_cust_wk_week_open_format => '',
  p_cust_wk_week_close_format => '',
  p_cust_wk_day_title_format => '',
  p_cust_wk_day_open_format => '',
  p_cust_wk_day_close_format => '',
  p_cust_wk_today_open_format => '',
  p_cust_wk_weekend_title_format => '',
  p_cust_wk_weekend_open_format => '',
  p_cust_wk_weekend_close_format => '',
  p_cust_month_day_height_pix => '',
  p_cust_month_day_height_per => '',
  p_cust_week_day_width_pix => '',
  p_cust_week_day_width_per => '',
  p_agenda_format => '',
  p_agenda_past_day_format => '',
  p_agenda_today_day_format => '',
  p_agenda_future_day_format => '',
  p_agenda_past_entry_format => '',
  p_agenda_today_entry_format => '',
  p_agenda_future_entry_format => '',
  p_month_data_format => '#DAYS#',
  p_month_data_entry_format => '#DATA#',
  p_theme_id  => 101,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ...application themes
--
--application/shared_components/user_interface/themes/bootstrap_3
prompt  ......theme 60062420430690700
begin
wwv_flow_api.create_theme (
  p_id =>60062420430690700 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 101,
  p_theme_name=>'Bootstrap 3',
  p_ui_type_name=>'DESKTOP',
  p_is_locked=>false,
  p_default_page_template=>65573621967190074 + wwv_flow_api.g_id_offset,
  p_error_template=>65573621967190074 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>60037848488690651 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template=>60033734124690619 + wwv_flow_api.g_id_offset,
  p_default_button_template=>68240325752059387 + wwv_flow_api.g_id_offset,
  p_default_region_template=>60046847338690666 + wwv_flow_api.g_id_offset,
  p_default_chart_template =>60042621181690661 + wwv_flow_api.g_id_offset,
  p_default_form_template  =>60046847338690666 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>60046847338690666 + wwv_flow_api.g_id_offset,
  p_default_tabform_template=>60046847338690666 + wwv_flow_api.g_id_offset,
  p_default_wizard_template=>null + wwv_flow_api.g_id_offset,
  p_default_menur_template=>71953633490454171 + wwv_flow_api.g_id_offset,
  p_default_listr_template=>null + wwv_flow_api.g_id_offset,
  p_default_irr_template=>null + wwv_flow_api.g_id_offset,
  p_default_report_template   =>60051927122690679 + wwv_flow_api.g_id_offset,
  p_default_label_template=>70163620098789334 + wwv_flow_api.g_id_offset,
  p_default_menu_template=>71857623308016069 + wwv_flow_api.g_id_offset,
  p_default_calendar_template=>60061924927690692 + wwv_flow_api.g_id_offset,
  p_default_list_template=>70637639163663022 + wwv_flow_api.g_id_offset,
  p_default_option_label=>60059432018690688 + wwv_flow_api.g_id_offset,
  p_default_header_template=>null + wwv_flow_api.g_id_offset,
  p_default_footer_template=>null + wwv_flow_api.g_id_offset,
  p_default_page_transition=>'NONE',
  p_default_popup_transition=>'NONE',
  p_theme_description=>'Theme based on Boodstrap v3.1.1'||unistr('\000a')||
''||unistr('\000a')||
'Current version: 2.0',
  p_default_required_label=>60059642769690688 + wwv_flow_api.g_id_offset);
end;
/
 
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000080000000800806000000C33E61CB000000097048597300000EC300000EC301C76FA86400000A4F6943435050686F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7DEF4424B';
wwv_flow_api.g_varchar2_table(2) := '8880944B6F5215082052428B801491262A2109104A8821A1D91551C1114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE17BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E11E083C7C4C6E1E4';
wwv_flow_api.g_varchar2_table(3) := '2E40810A2470001008B3642173FD230100F87E3C3C2B22C007BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08801400407A8E42A600404601809D98265300A0040060CB6362E300502D0060277FE6D300809DF8997B01005B';
wwv_flow_api.g_varchar2_table(4) := '94211501A09100201365884400683B00ACCF568A450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00305188852900047B0060C8232378008499001446F2573CF12BAE10E72A00007899B23CB9243945815B082D710757572E';
wwv_flow_api.g_varchar2_table(5) := '1E28CE49172B14366102619A402EC27999193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEABF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225EE04685E0BA075F78B66B20F40B500A0E9DA57F3';
wwv_flow_api.g_varchar2_table(6) := '70F87E3C3C45A190B9D9D9E5E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9582A14E35112718E449A8CF332A52289429229C525D2FF64';
wwv_flow_api.g_varchar2_table(7) := 'E2DF2CFB033EDF3500B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D4280803806883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC708000044A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C242';
wwv_flow_api.g_varchar2_table(8) := '10420A64801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F821C14804128B2420C9881451224B91354831528A542055481DF23D720239875C';
wwv_flow_api.g_varchar2_table(9) := '46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD06474319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C46C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704128145C0';
wwv_flow_api.g_varchar2_table(10) := '093604774220611E4148584C584ED848A8201C243411DA093709038451C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C437241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9DA646BB20739942C';
wwv_flow_api.g_varchar2_table(11) := '202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11DD951E4E97D057D2CBE947E8';
wwv_flow_api.g_varchar2_table(12) := '97E803F4770C0D861583C7886728199B18071867197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353E3A909D496AB55AA9D50EB531B5367A9';
wwv_flow_api.g_varchar2_table(13) := '3BA887AA67A86F543FA47E59FD890659C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CDD97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C744E09E728A797F37E8ADE14EF29E2291BA6344C';
wwv_flow_api.g_varchar2_table(14) := 'B931655C6BAA96979658AB48AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE753D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C';
wwv_flow_api.g_varchar2_table(15) := '2406DB0CCE183CC535716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2C';
wwv_flow_api.g_varchar2_table(16) := 'B6A8B6B86549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D6167621767B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A';
wwv_flow_api.g_varchar2_table(17) := 'DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD347671767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F59D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5D13F0B9F';
wwv_flow_api.g_varchar2_table(18) := '95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF437F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65F6B2D9ED418CA0B9';
wwv_flow_api.g_varchar2_table(19) := '4115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE690E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3FC62E6659CCD5589D58496C4B';
wwv_flow_api.g_varchar2_table(20) := '1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA8168C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC91BC357924C533A52CE5B98427A990BC';
wwv_flow_api.g_varchar2_table(21) := '4C0D4CDD9B3A9E169A76206D323D3ABD31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6';
wwv_flow_api.g_varchar2_table(22) := 'A5864B572D1D58E6BDAC6A39B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC';
wwv_flow_api.g_varchar2_table(23) := '94B4A9ABC4B964CF66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB561D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566';
wwv_flow_api.g_varchar2_table(24) := 'D565FB49FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51DD23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B';
wwv_flow_api.g_varchar2_table(25) := '625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8BE73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB9CBB9AAE';
wwv_flow_api.g_varchar2_table(26) := 'B95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393DDDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43058F998FCB860D86';
wwv_flow_api.g_varchar2_table(27) := 'EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECBAE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C61EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553D0A7FB93199393FF040398F3';
wwv_flow_api.g_varchar2_table(28) := 'FC63332DDB000000206348524D00007A25000080830000F9FF000080E9000075300000EA6000003A980000176F925FC54600002CB74944415478DAEC7D7B90A45775DFEFDCFB75F7CCCEEECEEEECAE40AC16B17A1961B140781AC7B1809040149298383C';
wwv_flow_api.g_varchar2_table(29) := '02C84ED9AE98B731855324761595B21D83CB18E240123B31E115302E8321C6E6211E12460284C08078498010124848FB985DEDCE744FF73D277F9CC7BDBD5029EFECD833EBF447A9D8DDE9E9FEFABBE77D7EE777484430BBFEFFBDD2EC11CC046076CD04';
wwv_flow_api.g_varchar2_table(30) := '6076CD046076CD046076CD046076CD046076CD046076CD046076CD046076CD046076CD046076CD046076CD046076CD046076FD5DBCBAB37D03229A073001400018400F00E7D48D44B89FA9EBF66E3F6F652C6BE9E2F32EBBE482A50B1E32E1C9E384CBA3';
wwv_flow_api.g_varchar2_table(31) := '41F4C02E754B48E89190008294120804880010E49421108830880889483F48183975106188080840A2040220A477D3430243FC3EEDB500250002644A2088FD4C201000849C130A337A29DBEF223E9F90C028C894C15C40949013814500117B0D20246016';
wwv_flow_api.g_varchar2_table(32) := '7429812861C2453F3365943246973BCA94C613991C9930DF311C8DBE4089AEFFDEB1EF7FE1A2BD17DCFAEECF7F08CBABF761753222007D00E3E6F9260005C0E46CF11C74D66F40B4603734063004306F3F5ABDFFAE07D0627F09979F7FC5A3BBB974F570';
wwv_flow_api.g_varchar2_table(33) := '347A32112E2BE3098405E3C918287AE820405840094842A0A48723265980205186A0A8E9A20408C028E852A70FDD6E241161C28294804C2A0D458A1EAE1D1091FE86FF1ED5938640D0A55C0F13822205990809593F9B0012C1840BBAAC425A984122E872';
wwv_flow_api.g_varchar2_table(34) := '0722A094829C3252224C984120F472C6B84C90429809BD5E0F9C8141AF8F6DFDF9AF9C189DFCE8E1A3F7BEE3AE1347AE978E70E3ED5FC4EA7844A6B0C904A100E88BC870B30560603736B27F9A105177D1BECB2697EFBFE2C0B84C5ED1517A5699F0BEB5';
wwv_flow_api.g_varchar2_table(35) := 'D11AC66B6B902280E8F3661490242422A81110644A761880809140FAB5ED56732224F75EA44222AC5A99928A0D2181B9A8254819AC760409FAE0C307C6A1EB9F4D2E5C169053320B2426346A396042A9B7A6BFC4C22024A4A44297C82C152588A880E494';
wwv_flow_api.g_varchar2_table(36) := 'C302F957CA290189F45EFB7D2CCCCF23F7BAC385CBDB77CF2FBEF693B77DEE3B1FFAEA273B7BCE62FF75008A888C365B00B2492400F4BAD4AD3DFCC2C76061B0FDC98BDB76FDF670387CD8706588F1DA1885272002BAD40BD3EA9A4444203D05D5391304';
wwv_flow_api.g_varchar2_table(37) := 'D56A3D98D072A230DB990862863E534211464A8424FA734AFA5AD8411025B0B05910FDB95B02B7102C7AB02C05993A24B3184440B1E7954160300042472E748464020311A4F82CD2FB220209811261CC6374D4A14B092C0529DC952021A137E86361FB36';
wwv_flow_api.g_varchar2_table(38) := '504E37DF73F2E82BFEFCE66B3F706AB4DA5F2B63B6E7DDD9F96DBA0024BF997E37C0C5E7FDC8E8823D079F37DF9BFFDDE3CBCB7B86ABC3E6B5FA90DC27EBE19B494E00094066F889600220A64D049080590F8F288144545E00301894926A384C5AEC61FA';
wwv_flow_api.g_varchar2_table(39) := '9F092664846ADE4520C42A60A2F187CA86589C40400A7B13F746500133B9A956413CEA0032920A98C5107E5FCC120AE0AE08027585F67DD51D120673036CDBBE7054485EF2FE9BAF7DFB37EEB9DD1FE700402722A7363B0B7001980CBAC1E882A50B9F9B';
wwv_flow_api.g_varchar2_table(40) := '24FDFE912347F6ACAE0CCDF0DA17B68F0B032C542D9AE85FD91E009936EB4367302C8023D768B51A4C1A7091693400FD3D7BDB220C6686B09AE3B14C50B880CDEC33F440FCBD61BE5CA4C6262482228C8968FC210214664C5042F35D08D982CA440426A9';
wwv_flow_api.g_varchar2_table(41) := 'EE0349FFCED552B48F9090202CE1E6281198196BAB23ACDC776A692E0DFEE0D10FBCE2EA1D830590DE28376E777363802EF7467BB79F8783E75DFAC45DF37BFF68F9E8F2DEF1781C12ADCF550F89A6CCB99AC9D04EF399046A7EAEBE146EB2ED27295113';
wwv_flow_api.g_varchar2_table(42) := 'BD6950A8D1518DC4ABA7B798239159186EFCB83ECBD6ADA89FCF1012F5D3A2D62B518E9F2713BCC28C8E72B82677217AC8FAFEA46F00094FE91683AA2B44F34CCC0A16D1EFCFA520F77AD8BDB4FBD8F2F0C4333E7EEB67AEB9EDF09D3D3BBFB5CDB60065';
wwv_flow_api.g_varchar2_table(43) := 'AE378FC5853D07772FDCEFF5478F1EDBBB361E47C0043795F670D9D23636CD806913C3FEBF09B6C82C016B94E7B61B207D6D816ABAA77F13D37CD53A0FE6C85C860A0CB3D9A3F8991DB6103493532129AC96832385543BE4EEA3889A2C3F7CBFE3EA005C';
wwv_flow_api.g_varchar2_table(44) := '9BA59E30C8EE97C0C2602E606614564BC1667D5804A514C0E2869C33A4304E9D38B97BF7FCCEDFBD64EF850FEC5237B6F47B730B4104EA2665D2DBB7E3FC971F3F7EFC8AD168AC876CFE550F9CF410FDF0C44C21697A46EA18237A976A5EAA6B108248D1';
wwv_flow_api.g_varchar2_table(45) := '83172021453AC6A20F4D444D7012B326667259C4023B42A684248489B09AF15285CE8DA158769150330F810670858BDEB3A5A168B28AC2051366FD7E2690A570B84111D167C11EF46820C9C220D1DA4332D727444894CD8212724A188D46189D1A5E71D1';
wwv_flow_api.g_varchar2_table(46) := '9EFDFF6EAED727D2FAC0E60AC0C2DC8EE1632E7DC223CB5AF9D7A74E9E0ADF66CA6DE993BBFA9AFE81EC4178964FB02FAC5AAABE591F76420D8E92BB0F3D61F3C705850B20AAED62EF01A1D0BE282E91FD8DC852C37A4020446EEE81262C7D03D4B46773';
wwv_flow_api.g_varchar2_table(47) := '032C6C665DAD91D60E1248CC8D91BB1B3306EE3A12857502690A988930E112A96D2242973220A4CF42186B3C4622C27075888CFCACABAEF8C9C72CCEEF186EBA00EC5F3A4859F273C723DEAD5F92C3DC172E9A0AB13429542DB67870C8E481D50442120F';
wwv_flow_api.g_varchar2_table(48) := '4B8820041416B520502D21A8095517A0350121F5F122B0504CCCA34A68A4FF0C042449FA5FCA2A97CC166E5A7028826242E16EAA88A79B59FDBA797513190D3E49B476E0F10A992568D2424A2AB424149649D313D3112B3009C4E209532A128C7982C970';
wwv_flow_api.g_varchar2_table(49) := '6D69DFC2D2F3FADDA0DB740178E0DE4B1E786A65E51F69D097C10233C505705F49AE01FA80592CFD2331D36D811B2590587A682697C4AB9E40117F281CB5023681CB94238CF2F7709F0B124C44AD09AC3EC0A4BFC7E2FE570594EDE10364FE59B539530E';
wwv_flow_api.g_varchar2_table(50) := 'F3EC9E61C2A596924DA5197E96148264798D5AA9F02A54B31520DC212C304E49853A599EDB2147B6311A8DC0E3F294C5F9ED07375D00964F1D7B7419974BD56C7B38A41A01CBEB2335B39F886B0523DC432925A4DF35C30F5B249EAAD6FF2DA5CCE147AB';
wwv_flow_api.g_varchar2_table(51) := '197601D3B4CF04AC78C997AA86B3BE9ACCB447DC66598816A092BA25AB587A1632E6A2DF55DCE2B8D56090D069A92F858010257D7D299175B0B918618BF845B0E6CFC2BE69E1A2CF8C4B58D2D168EDE2A75CFEF77F74D30520A3FBB1F1A44CA550F1E0A9';
wwv_flow_api.g_varchar2_table(52) := '46B6B0A0C94D23919A6E367F4A29D9EF5823454A3C58A20C48323FAC66BF58F0140F19A487CE6C7501CFCD2D5E30BFCE1680BA6B12AF0AFA3D51D6B2340A261E5C7A04DF1C64A68CEC3E9F598543921DB2D513A4E83DB2A68DC52A05D4B8086A84445D8C';
wwv_flow_api.g_varchar2_table(53) := 'C612CC6CF184C7436C6A95D0A584321E43581EB7F9EDE0420F1D4FC6EA83CD6C26CBB149AC5E41AAD542494DB675CEC45C80964F4D09ADE8E202D204E2D1708155ED3490E48829A288E4E6D7E2002F2A89E5D5E4F57D8B0FFC43BC00E44292937E86D8BF';
wwv_flow_api.g_varchar2_table(54) := '8BA7765253565875934505AF886AB7179672CAE6AE3CFAAF56D015435003E66C1DC894C88A581A7852F33A02615C26585B5B7BC4A60BC0686DFC2037F7E2DDB530DF12BD59B69C5D048DF6DACF3C42B3FC9DC4727FA0A9B259AB36E508D59811D17C1457';
wwv_flow_api.g_varchar2_table(55) := '28D51CDE2375B1C0CDD2CA828202464AEAD727A29A992DA78765242A8C256A016A792C62B04AD3C4AC1621451A39112FE79269B00A4B82BE075BE18BCD4A546B902C6DADC2EA6ED0EB19EE4E734A00F383361D0FC0CC4B64DD2F891C4F0F32A564011F40';
wwv_flow_api.g_varchar2_table(56) := 'C49A978B3777C8BE64D572F12FE60522304E9D3869D134D564900464CA98499B28C9BA72D2B68E8591B39B5B01A50493366D1891B591A5E8CF4C2873B2260E12880448842E6774B987D41124791FC1AA93B9ADE97B05B09622C59A4C96089A4FA7687845';
wwv_flow_api.g_varchar2_table(57) := '97D1B41F66FABB9C21960DD4543387959BAC8DF76CBA008CC7E3BEA7282435B7CE56ED72848648EDC37BE0959AFEBB173C588A065E02F4073D3CFFD5BF84B9B941AD285A942C6DA9D7537C6ACBBF98EEF5377FAECDA2A69C652EC15A4960A82B13662C1F';
wwv_flow_api.g_varchar2_table(58) := '5DC6F2E165DCF6D56FE2EEDBBE87C9A460B8BA8A321AA2EB7560E990B2024E347FF732B10155520D8293594B248A36B217BB0864819E815E4A75092A0088E72622184F26FDCDB7002292ACD191502D8188356D5823201500A9D1AD094832A48EA68029FA';
wwv_flow_api.g_varchar2_table(59) := '01C28C5E6F1B9EFD0BCF40AFD7DB12F0A9F1788C95FB5670FBB76EC7973FFB257CFDB35FC137BE780BBEFF9DBBD1EFF7D09BEB85BB2213C8228C249E49D4EE65134E046E209995202B6FAB8B294861956AE3493386249B2E00816E10829075EC50032D97';
wwv_flow_api.g_varchar2_table(60) := 'F3A8C0C1801FD6DDD3C3D78E9B248BFACD621414AC0DD7B68C00F47A3D2C2E2DE2D0D2211C7AD42100C0CD377D099FBEE67A7CF89D1FC0F17B9781B93EBAAE8B4AA6B6B129802E125549447AA87D05067BD592120A69FB584BE30DACCDFB1C84D33A8A9B';
wwv_flow_api.g_varchar2_table(61) := '85091417022BF658C3BDED9517336B20053F90381CCADAB8D127E7E8AD13597B748B5F573CF2A1B8E2910FC513FEF993F0AE37FC6F7CE24F3F0E6141AFDF0B84115BB751B30B46CA09E2452052404981F6293C92F46030E72E5244CF368808B9118C4DCD';
wwv_flow_api.g_varchar2_table(62) := '023CDA6714055DD6567C53F34E1607B01D38A2F60E8F8CBD5D2CA8F9B3D03983AEBDE8C197E0E5AF7D259EF9B2E7626538C468B41619482BC8893C10B5EA854863DAAD2F62E8252660524A0048841056B385A86D6E0C00A82C72EDB76B3146532F1609A8';
wwv_flow_api.g_varchar2_table(63) := '97A377C9DC06339093447B950CD891E005219C5357AFD7C3737FE96791BA843F7ADDDBC18521C9B2130B0CBD60158DA1C01B5073C89AB564CAA1A2220270AD63682F216DBE05D0D2A7B93996A94E98670102064B096894447B5683C5008608452BD9DBAE';
wwv_flow_api.g_varchar2_table(64) := 'E7DA9552C2735FF233F887CF7A0A4E9D5AB19E87B5BD85309162822D8144F28295447B39871B15164330A9F510520BA945B0B2355C8046FE2D885BD5B70A4106216B40D3A07EBCC51A260E1CAD5682FAB973F322FCF4BF7D260E5CFA408C4763EB892433';
wwv_flow_api.g_varchar2_table(65) := 'ED39002A0130F51E81F53D3430642B98D5E610AC3A4A92A6F3DB4D15002BEB3A8E2F8218425309AC3D016FC946499810081F36F7A0AF01CE650ACBFD175E80A73EE76948A95603C52A91136F26911DB405BF1153396ED090B2627EC24125DA17408334DA';
wwv_flow_api.g_varchar2_table(66) := 'CC5E80A15AA28469F5798966904B759DACF1FE7631E1E10632E61AE43D8173F97AE2D39F8C85BD3B20456BFA121D53759D99A21454BB99E642C5504F026D7C8DA5448F440B66A16B9B1B040AB396BAACB51A396A600111A00609D00305E0D38543CBB214';
wwv_flow_api.g_varchar2_table(67) := '48A244291042677A0D57873872CF91C022D20F715B14F346AA480B3B163475CB09F373F31B22004B7B97F0D0C73F1CD7BFE75A74733DB000D9308180C3C3B52EE2292003C8E43D0E360454065BCF400CC7800DA2F8ED36C2028035DAF5028708A1A4822C';
wwv_flow_api.g_varchar2_table(68) := '35C717E198E783A17EB4B5AAF141E1A27D80C0CEE960C67AAECF7DFA7378E58B7F0D93D5097ABD2ECC2BC5545594A754D332E18283E763C7AE9D989B9BC3F907CEC7FE03FB71E8D18770F915979F5D9DE0518770CD3B3F88DDDB06562F23AB8B001DE58A';
wwv_flow_api.g_varchar2_table(69) := '0974BC22D4F727586B42809C0D1564588064DDC48D0802CEDE0278658B1584E9081992047678B64C8F0068B74D5B37CCDA88218B6A551BB2BA9175DED37038C2E13B8FA28C18FD7EAFB9576FF0207000EE468F7EEF98DE0B1C48C6386FFF79B8F29F5E89';
wwv_flow_api.g_varchar2_table(70) := '17BDF24558DCB5B8AE7BD977FF7DFAFDFD018854F0A975113BB38413298631204C64A281B043EAAC77A081758926DAE65B0093C6A84B1145E44A11A93A445AF100C404248916A958110854B1756469E17AAEDC652C6E5B04F7055DBF8B7114210EE102B4';
wwv_flow_api.g_varchar2_table(71) := 'DB56EBF2D690F2289C273879EF49BCE3F7DE89BB6EBF0BAFFABD5761EFBEBD677C2F7B1FB00FFB0EDC0F278FDC87FEA017E36C0E6EF191B09807B0664076EB606DEAD3BB5FFABAB38F91CE5A8CF4612270F2E2BD703B740EA34B3569243248969865207F';
wwv_flow_api.g_varchar2_table(72) := 'FC5638A2E8CBAF4F24C90A2ADA549A7009B8164BD3792C8289055FAE9962C5995E1E60FBC20E9CB7F73C7CECBD1FC37FFDAD37623259070C3F914D9154CDF7C0D9CD3A37B8426940A9D48CC8B4B8083674D14694CA37260B309CBC3EF43ADB2FA4B56F37';
wwv_flow_api.g_varchar2_table(73) := 'E7DE2A70F46C1243E6D8EB1C4E50485DC37AA7961C9FC7912A51688D70ED55442A0AAA1076A9DF8985913261D7E22E5CF3EE6B70CB976F594F9E1C8D6605A64A534237D0A95008BD2B0ED97C601109C08A38D43DE0EF5B200D1447C9BACFB6A60F18CD9C';
wwv_flow_api.g_varchar2_table(74) := '5CB654CFC7A13CA8B15821062A6BFA1328A2F5DD540036BD3B19E82042D419FC53BD09A5A0104BBFCC4A91242C6CDB86E3DF3F81AF7DE1EBEBAF95404BE3093E299CAD4A5A31926D138D6C1C2E7810AC30A44D214470BDF91600C9D213D8642CDBCD4A20';
wwv_flow_api.g_varchar2_table(75) := '640B0C2DEB5A09AA87201CC2C08E17B0A9A1B4EEDBA39843ACE85A7DDF80A00B55CDB77636DBB899832F1D042A4C180C06180DCF7C169392CF1E5811C7A04C6C0041B27671314BE1C19D630C093E87E0730736CD5836A646B221A1641DE7322C3FB9065B';
wwv_flow_api.g_varchar2_table(76) := '99576AC4DB0221D0CC0C688F80C317FA035A6F795A6708AC2A1D20513DDC124825F762369163471F3304A850723A8D58E2AF7B1DBBE7280EDF752FA84B98F0243EAF8E96D572BA5BAD62A362513514A9984069E3A8AD500A461DEE7024AEC4C1721462EA';
wwv_flow_api.g_varchar2_table(77) := '1096D7FB4B8DC0636A2B05E9022C105A7710288D7B8A299D7A801C45227541DE60418C85E580AC03402982AE77E649D3DD77DE8DD55343201352CA01372B36BF342916079847F7EAA7E227351B627356EE1AC5DE015B010FA0C11E457937CC2A7333112C';
wwv_flow_api.g_varchar2_table(78) := '81D215F18F4DCD10071B485211644C7E38EBB50035F8631B4F174BBC7D2AB746D85E20F2C6548982450C7D9682B9ED73D87F70FF19DFCB57BEF015F4FB7D80F5704B31EB169DBF8AF4F552815B54B7923E2ECE4D6CA341F7161000B6311C76608897AFA8';
wwv_flow_api.g_varchar2_table(79) := 'C29E60F56B1FD9621BD1828F8159CDC07D1EB10D5D62BD16C0619E343560E9562A04D3D2439F3462A9F8454F698908A7964FE1B2875F8A071F7AF019DDC7F163C771E3C73E8DC15C3FE28A183E0162F8C59D4FCC48783D3CD0D388DE0AC8EB98B4B56200';
wwv_flow_api.g_varchar2_table(80) := '4C9975AAAD4DF1FC1E5342A1F841695234771DA999329275BB258F2BC222A00E766853A6A26CBD4CEDAD69963AAA7E62F93EE4B98CE7BCF039D8B57BD719DDC7FBDEF13EDC73C7BD089CB8B82BAC43748A19D4117A2F0A797AEA2412811FF2A0DA905709';
wwv_flow_api.g_varchar2_table(81) := '5B001308276602D974AE584938DBA42F234B8224FD622409492AAD8B22BF4A70F44CB994B3687814AB23B0059719D91E2C6BFF415220198A41D1BD97514443BF932757B1E7FCDD78C1AFFD229E70D513CEE8F3EFF8CE1D78EFDBFE5447C8285B7681A87D';
wwv_flow_api.g_varchar2_table(82) := '1430B2599D143C4235E6504B50798494F700184B416743B8D88042D0D9F70202F5E3B3711CFF4E3AF4AF932CF6C0A3ED6B426085721398A6C388CA31B0AE3200DB18599954CCBF77D188E340C80A751399A0D7EB05F5CCE2D2229EFEF33F817FF6ECA7E1';
wwv_flow_api.g_varchar2_table(83) := '92075F7C469FBFBAB28237FEE61B70E72D7760D7CEDDFAFD0D102B496C2692B5EA286CD0381D9825C098C338E61763788648A784A58E936F89669018FF9D9A6D6BB6382F90A5853E1AE6FC01667FD56A34A68CC51A326CEE601DF774F0920BF1D2FFF88B';
wwv_flow_api.g_varchar2_table(84) := '06A3328EA15A3EA9D343D6C1D0B2F004F7DF7F7F2C6C5FC0F6C51DB8E8D283D8B9B8E38C3F7B757515BFF5EF5F8D8FFCC947B0B8B06823F0C0980B3AD3EA8212D989581D859C4FD0026390FE4E90CB18D76003A9DD1054F08634832A7B468536D1540BD6';
wwv_flow_api.g_varchar2_table(85) := 'BB61A8E8D7003FC2DA9C8C2449E16304B04C6AD07686D7832EBA10FFE6F9CFC3DFF675CFDDDFC7EB7EFDF5F8C0DB3F80A59DBB915232761154F8BBF73F80D0644A1A2311D9DCA1103AEB127AB12C9B564992603BD92202E000076AA671A9695E1480119C';
wwv_flow_api.g_varchar2_table(86) := 'BF5136261BF162CD8C29516805370C22E7023078341CE186EB6EC01FFCCEFFC0CD9FBA197B762E21E5CE62A314E3683AE5838847C47A1E300EA096095540964AA3D17641727008B02199C006C400D38635E0CDE6C31CF21CC5A1F0C58614B414303A805E';
wwv_flow_api.g_varchar2_table(87) := '77A3DC16EBB6EC554AC19BFECBFFC29B5EFF261CBEF3082EB8FF03D0F53B70A955CD38281150CAD12EF752B158F621243AF06120AB42622415A6505489A6F4A16D812C405019B863BC39F07F4DAB977446CE93A01C654D7F5016D724C3C9319F13FA9F52';
wwv_flow_api.g_varchar2_table(88) := 'C255FFF29FE0B21FBD0CD7FE9F6B71C3876EC0A9E3A730B730174D1CD8C068A2DA37D1F9893AA91CADDD5479829CB84284A3249D50B4A2B0950021DAD573A62D89460B47151E410811BC4B96DEA4A6A104387AC8BA76E7C0681811E1C0C1033870F000AE';
wwv_flow_api.g_varchar2_table(89) := 'FCC73F89CF7DEAF3F89FAFF9437CE1FABF42BFD743D7534A7B762E64B308DE0E7632EA20B1F4EC08842CDAFB8FD13002C6C2E80820C91B23C01BD30EAED0656A66FF55C329CA9B68DAC5DE192C96A747AB36E2808D8972FFB6ADC1A31EFF48FCF6DB5E83';
wwv_flow_api.g_varchar2_table(90) := '67BDE8991001D6D62A9127D7E6AF51C4659B173456322B5127AB87B05BC2500EE538A4C016F05610009BFC319FC4AC8CFE8EEFF764BB16F69C310351F9B36501150FE3E452E7D868985FDBB72FE005FFE105B8FA15572B731A7BB1D9C7DF616829AE7C4A';
wwv_flow_api.g_varchar2_table(91) := '56067690A8C2E26D5E926ADBDAE96E9C9676D305200EBACD4B99CD6F894930EA971067E4AC2C5A0E0733E6E7981E3AE786035BDF9A3BFCEC4B7F06CF7EF1B3305C19A2948959C57AA0A8FC19A8C5136A46E95394A72B9925B59C9B9B1F03B00338D968D7';
wwv_flow_api.g_varchar2_table(92) := 'A309E3357F2784B278A1996AF52FE12B563CED2363F85C2F24ECBEFB4EE2AEEFDE353574795AAF30C89A4EBF06FD018808BD7E0F4BFB76A3DF5B3F09474E1957BFE46ADCFAA55BF189F77F023B1677849BAC674D53AE4E6266B2A19933FA1A2680C4C9A9';
wwv_flow_api.g_varchar2_table(93) := '656B0800993F0F6E406ABA7151E871ADE748019D3DBBA02023079B388245CCE9DDCEFCBAE9339FC78B7FE157305929E8F53AEB9D092498C9A7A7AAB422C8B1BE45C058DCB513871E7B052EBAE422FCD83F782C1EFEC843EBBA97F9F9793CEFA557E38B9F';
wwv_flow_api.g_varchar2_table(94) := 'FE1256EF5BC5FCFC9C59465B562136AD609D489D07509E21312B28CC01571318AA081B13246F04495433E6CC48826007A989BCD4D168B3060995BF97518CD4094D2560FD21C0646D82938757315965F4FA4AD3E6358994AA157259AC035A125C8647EF3E';
wwv_flow_api.g_varchar2_table(95) := '816F7EF5768CC723DC6FFF3E5CF5D34FC58B5FF97C2C2D2D9DF1FD1C7AD443F1C49F7A22DEFDFBEFC1606E503381E02E5621D4A250AA534246AEE5B840B2F45911430DA9D4E65A80DA3797A6D103AA59BC7FD12A0F1AE1D64211A6983513114A29EB9E0C';
wwv_flow_api.g_varchar2_table(96) := 'CA39635B7F01253106FD81D51AACAF60E355D918C228B00B3EB44FC112AE8CA205ABC74678DB1BDE89AF7FF916BCFABFFF3A0E1C3870C6CFE8094FBB121FFE936BB0361CA3DFEB69C7539CF409CD2E05E34A686A7DCA224E46552B5123E0AD9005B0A57A';
wwv_flow_api.g_varchar2_table(97) := 'C10DE466DC425DDD9AE19C7995D5D31B44B56CEC5B41DA356F67539E32048E814F1C66EE5DCACA53C0C105285E919456983ACC6FDB865D8BBB71E3C76FC2AB7FF577B0B2B272C67774C5DFBB02173FE4220C57469132D7553364C4D42946E2DA21D2E009';
wwv_flow_api.g_varchar2_table(98) := '6A7620C4E694CDCF026C6953B30822E0EB5CC99AFD408330D96051BE664547054C308C469ED6391C1A5545AE425A67011004147AF89A5F5794B258C74E0C24528C8FB0C38E6D8BF8F89F7D027FF9D14F9EF13D2D2C2CE0A2CB2F0E74943800C521A18C48';
wwv_flow_api.g_varchar2_table(99) := 'FF5ABA7A8EAD2915460E9B1816D90A9030277B680238FD821EC953C30852A35E463341E461B9542069692769CE58286BFD014D654DA257A1ED198F53A4DD63E0FD0D1FDF168AAE64BF3F40190A3E7DDD67D6657E1FF6F84398DF3EC0DA781C1D824A435B';
wwv_flow_api.g_varchar2_table(100) := 'DD4E50E05AB4206DCE1728EA8D490337A0A05CF37ABF590EBFCE31C94CA4D841B17C37D6C2B0973F294825448A154CD60909F3A1103F7421A7A450BA572EDE78300E63DFF4C953F58CC25C91C3BA9D00B9CBB8F9735FC3D123C7CEF8BEEE77FE79E8FA7D';
wwv_flow_api.g_varchar2_table(101) := '4809BDAFA968C31FC876F0C560E432B515C541341B3321BE21A8E018E8901A504970E657BC8093B6B31F52C4DE2D3E10D5459CC5F0A3FA7A69489E9D8CA23295A1F96C7136F0D869C1E193FD54F45519F7DC7904AB2757CFF89E762DED46D7EB3029A55A';
wwv_flow_api.g_varchar2_table(102) := '42B752D62B115B79E315126E18CB2BDCBDB6CEB7840570AD89F1AE46136BD125A18E3E71A49075A54A25778631639C9599236A1849118197CF26E91692D2EC0AA89B3962F1548374660ADF8094684A88FEDA42C986904ABED68663D0834500A6E809703B';
wwv_flow_api.g_varchar2_table(103) := '1DEBEBF08257B136D3B6442FA0F2ECD635680E0F672E53EBD204A9296B36F0B16685AB34EFB7DEAFC801553737145B483DFB485A960D31AEFB05345B319A77341A684119175EA7FD95D358D2656A6691FD609D4F56A8A996FAB08C7DB7B3E04FD8D03A00';
wwv_flow_api.g_varchar2_table(104) := '8217B8CED8B5DB3102D7DE9032189D48F4B99D3057D70BD4E148C1FABE642C78906A7528524B0B4A92A38F7305B67AA0EA285CA668D38209923485DCB16B077A83DEBAAC12C8E711242685D4DDD54CA9BA46894387915B385A44788B8C8787C64615AFCE';
wwv_flow_api.g_varchar2_table(105) := '06784DDB7D1711A696234467CC7D6D330B2092A246B73EA794DAB03AE60D7DB8C2D3C01868F12E2517B35A885845BFA732760ED7C678CC958FC4DEFBED59970B00F2D41838B7692B2A68049682C690ACEF34F6721AA5AD6101DAA589C1F43175C87E1035';
wwv_flow_api.g_varchar2_table(106) := 'F1236B0C693DBC5D2CABB468EC877516FC00019A742BD3DE87B39585B552F64E6FBCE87492EE09F029A69408E3B50976EEDA899F78E28FAFAB0C7BECD8318CD646513D2DD2D2E308127BCDC428EB7D7B0A80EC8CE3A2AFA3B455B28086FAC50FDDF52972';
wwv_flow_api.g_varchar2_table(107) := '7B337FD4068C360BC7D63AAED98434A3DBB2FED9201732DB13140D28A90527899CBA5626A2E0466818BD09E3B582D1DA08CFF8B9A7E1C79FB4BE553DB7DD7A1B56575690732F9667C7F00A21D6DAE8D24999A287770BE6554B2E0545265BC1053433FF53';
wwv_flow_api.g_varchar2_table(108) := '94A781018EBE3EFBBF739333343B745BB68EBA6A6EBD9949ED3A52CA752D9DB7A84901182951FCCC97453B6DCB783CC168750D27EF3B0516C6739EFFAFF0D25F7D21BA6E7D86F3C66B6FC2A9FB86C8BD6C3DFE9AE6C126ABB859B1E7B880008D7801CB86';
wwv_flow_api.g_varchar2_table(109) := '67B7C468984E04E90A148FB0B599A253424A269DA3E9218D6FD6DD3B29889988AC292B5E2C5ADF179C8C27585E3D81322CE8ADF6A696487BEA943C500D2D304E43DB65D7E58C9D8B3B30373FC0A1C75C8E9F7ACE5578EABF78F2BA7717DC75D7DDF8D6AD';
wwv_flow_api.g_varchar2_table(110) := 'B7636E30C0842781F475F65096A26E2510D4D26C5B4F75DDBD675EEED236BD1B689A4FCDDA93085524015457AC4720E8E558AF6A3963A63186074C669D88A07DE7EDC153AEBA1265CCE8A52E84CD1B4FAAF1757F71D4E40858D8B10D10606969171EF6B8';
wwv_flow_api.g_varchar2_table(111) := '87E0471E72290E5CB81F3B766E3FABE7F4D9EB3F8B5BBE742B766EDBD9E021ACFB99C828F2053908AE2C616EF60B562C83C64FBC012C611B3419E441209B56D5A167ED09343C6152F1ECD40045F4DF521318AE3709041EF1A84378CBBB5E5FB752C67DCA';
wwv_flow_api.g_varchar2_table(112) := '0FB97799AA696CC4168ED3AFD5E12ADEF78EF7A38C18B2CD8BA51C4D0B5F17E793BF9508C2D8C242201A3A7961246C013C40EC06F208608A15C4088D24E938B89B332FB7FA2A39D3BE5895C61281E17A3B94532BDB7F4058F143FF8DFE8620881F78EF07';
wwv_flow_api.g_varchar2_table(113) := 'F197D77C0ADBB7EF404C50D941EBCE440EC674DF33949D3BC8D6CE241B13CBA8CF7B2350C11B1203D4ED15EEC3CDB3923382D9BA38AA8162046811FFF9D6306EF2F8731714EAD7B7BE751BFEDB6BFE109DF4D1EBF782FBC889A34A29566CAAA5DDD4F026';
wwv_flow_api.g_varchar2_table(114) := 'B5FB026168EAECEB6EB7064B584D0769EAEDAAF65666304F05CDDCB70C5ED20A92EF1E3CB7D9C2574E9DC26FFCCA6BF09D5BBE8B8585855A88B2D2281121A534B53B216622A8024218BAFC5AD3EDBAAB185B8127104D1CCDA8BB6F6AA5ABB25DD61491E3';
wwv_flow_api.g_varchar2_table(115) := 'B5B10ED22D08D7ADDE1BC588BD19D7891327F0AA97FF26AEFBF31BB073FBCEDABD939AD7A359344DE4ABE27C42A8B2996BEFA1C6CC678798FC1BA90472A46FBE0EE58765076CAF8505868214B38389AAC6335B8A46E7A60BB8FDDBB7E3552FFF4FF8E8FB';
wwv_flow_api.g_varchar2_table(116) := 'AEC39EDD7B6A779492BAC78649C51BA064413448BB7EE2C31F462801CF5C44002967CDA0B28141A0933B891D2842A3A3FB2F4E28DDCCC81B4824F6E8FAB2447B4561C1B916034CCA187FF1BE0FE175BFF1467CE38BDFC6E2E2EEC82ADCFC276823472960';
wwv_flow_api.g_varchar2_table(117) := '5C192818CA93318465B30631096C0C2C885501EBE651DDF83A805A33869755046C917E258122416C1765A06109AFCC1DCEE8C141DE7CEEC400D75F7703FEF8EDEFC59FFDF107B1B632C69EA5BD31CBEF2D6F6709836D0E234A4092B07ACE0BE4E4966482';
wwv_flow_api.g_varchar2_table(118) := '43D693E8EC3D9457286123982237240B001824D94CBD04E1238918B0B3991046B6AE2035D9804C5906AFCA111272DEBA8BA38E2F1FC7751FFB24DEFBAEBFC08D9FB80987EF3E861DDB776069D7A2C53F656A71A6F86E6453121F88F1A766DBE44D193838';
wwv_flow_api.g_varchar2_table(119) := '019423201B938AEE0A98D8D289AD50082267AF0C1315717F8ADCBEE2592B1768540DC38DA4E9752E84B31ACDDAB00447042B2B2B38B6BC8C7BEEBA175FFBF22DF8FC4D5FC4B51FFC248EDCBD6C8B290658DABD27163B47306CBEDCD7C6A7A650C64DFA0C';
wwv_flow_api.g_varchar2_table(120) := '1F87B75D80C926AE52CACD3342A5B60BBBBAE91680D7EA515A6017487F099F163B85402067C5445DE3A28A5080204114ACAEAEE2E77FEE97D11FE48611ADAD8137302EE3DF9F422635616A1BB24EA380A47975C374D2BC7AF5D42A4E2C1FC791C3C7F0BD';
wwv_flow_api.g_varchar2_table(121) := '3BEEC6F7BF7F2FB6F716303FBF0D836E1EB99FA7D6C73BD68FCC95B9C03B0F2044D7DBB7750FB2AFE62B652591D2E949E5116036D615E36048945637DF02081D21C29E805D4B9D62A5B6EA65038DF1C81D08D2F2E05A2FC07BF46B6B63BCF9ADEF0674E0';
wwv_flow_api.g_varchar2_table(122) := 'FCFF59866EEB0EE9078EB419B4ACED9598074CCD7BD5A4D50F2621A343878C416F80C1608007ECD91FF50CDF7E1E0255C7A16C864F3726BAF986C056CC5B24444D1C653B86D56DB269BC7E778F05FC7F0C46613EBE055C00BECDC297D50D5F12294ACC03';
wwv_flow_api.g_varchar2_table(123) := 'FA81DBDA969A224A0447211CB1803A23510F7BE71E8064106E18A1B30326C80F91EADC9957D4A8E9F0D52E650AFE5FEDB44AAC6FAFF38226885199AB0DA3644C286ECE238B6F6BF550ED6EC932B86143AB9BD5688AFBDF4BE1443982689F918CCE216A92';
wwv_flow_api.g_varchar2_table(124) := 'A5AC6CB87DF30B41943ED7F2F2B7D4EC75129B6A6347EA9F6355BCBD8AFD964471F85E3666B1E9A366D78EFAC2024716C5D835101CC06C29A8336F009589A3A00427703BDEE6107169BE53B1B1A1587A19011AC56E640FF22029C02E3EE615C9AEB184FA';
wwv_flow_api.g_varchar2_table(125) := '7DF9245200457DB14650C3A40AB7878058825A2621A1CBFD1B375D00267CD7676A8FBFD6FA5B066E69B4856D7944D385B794AFEDFF51D0C6BA20F8B087FBCC7A50B0D5F3A8D33AD659F440C3BB8E8CBA93A09DCB274953A558C0D039D35CF6D6A4F2F901';
wwv_flow_api.g_varchar2_table(126) := '8E496769A69A242AA3A787BB95F4427C058C754F1D2296A2248C185675A228360899A39412257CFBF837BFB0E90250E4C4D700BA459A30CBB3007668A5B47EB89D0F881687F9DC34355FE0C3A453E363443FD0238C6E629B9C8ACF1E56BEA14A3C495325';
wwv_flow_api.g_varchar2_table(127) := 'D95ABB6A700ABE07C1AC56BBE02A80EBFE1936605AA9F02AF94568B4944A56DD0040B941983B4ED0772F71D0E6981B354A3911A0CBBDAF2C8F96BFB8E902C0B2FA8D82E56B60D13C49BB1E90222BA87C6175CA85ADB5D1D008441F816313699A0AE4D0AE';
wwv_flow_api.g_varchar2_table(128) := '7A317C7C541641F16F42328DEB33A05F6C24119EDAD8A10CDC1266D95138EC3E9EC9104CB6E6B5A17B0BA491C5128CE98117F80A3CA13AB8688860A7922D36184352A1728464F87FDB6F6069764E1947570E7F7865EDD4AD9B2E008232161EBE19C84739';
wwv_flow_api.g_varchar2_table(129) := '7C3F85D6FBE151F8574B1E4F87459B408894309B2130D22E54ABC4546EDE995BEE1CFA811CBEF217B85F46945F759185478F4675E3BF67EB6E7CD53D99561265631C478C952BCE3181854C093836A34E59356306F501297F6FB7364C75529863BEA22E8C';
wwv_flow_api.g_varchar2_table(130) := '28C2C8A9777865B2F2D65159E54D1780440B48B4FB338CB5B79C9E4B9F6E66ABEFAE5AAFA3D91409989B563A1D152CD2349925B4899BF534918ED9F049CC053AB7AE8F5FCBB43B68F7F3B59C45DCD404EAE8780335B795F01E7350A3E13E27E9E3E64404';
wwv_flow_api.g_varchar2_table(131) := '260EE4B34E02B581B283655234D4B859B2C5B66A8F84B03C3CFA8EBB57BE7BD346344BE86C070C4993D69268F1A241BAE83D000EB57D02F5CF72DA024469489A9AA1AC66BF50322C7FC321164BA56B90D9C0A5A845277183FD6B685AED7713B5338B643B';
wwv_flow_api.g_varchar2_table(132) := '040CD29634F36F57F32620388D524C3259FA6AA3674E7AD9125C4471C856C0C246D27C2826359C45B584A09F93C9269612EAFD086390077FF5F5E59B9F7ECFA9EFDD01A0C8591EE04614DA95DF408E7FABF0899709BAC3026EE6FBA449115B8D8E39E1A9';
wwv_flow_api.g_varchar2_table(133) := 'FC56A2D0812051709AE430E94050CE8A63FC8DA00AA86B68A53990CA3A56E387BAA5C429BB6C8145B3080B8DE6930DADFA48530C95C4E0E9E9AC1D75850E3BDD6B106BB68BB6DAE968099612327E02C446B574ECAE95EFBEE2E8EABDB701E86DC0D96D98';
wwv_flow_api.g_varchar2_table(134) := '006400FDB17CE7A32CC77E19E80FEBE22389389E902227AED1750B2AA1C6347353D62554A1AAC16244130E2C757E026EDD46255B708DD620B1790F8F31A4A2931033F9DC04A0128C217064AEAFA0338BC41EFD7BBE6E9B481835B63093D16C5BAB9B4D11';
wwv_flow_api.g_varchar2_table(135) := '343B75758D76FFF26A97072FBCEBE49DD74C78BC601F38D80A95C00EC018404F30EE8DF93B6FEDA58C443B5F4B287B63CA3780217E58A9F1B95554BC0CEB88575D95929A881BA1C154B7539B255018751269DC41CD02BCCC0C4FB353855DC5F22AEF4852';
wwv_flow_api.g_varchar2_table(136) := 'CB6D9C6CE163D3D8126AF6622B443B71B2912DA95C874D9C211033ED8E8560641F89736E65730F6838020679FEDEE5D13D2F5F1E1D7DC7988709C09AC326B6420C904C082676AA99D08D7AE9E22725DAF15AC2E4D0746BC596240484A4F5C7AE491CF383';
wwv_flow_api.g_varchar2_table(137) := 'D4866144B1422DC2362A20E428A2847BF734CD082B22DE3020AAFB7EA7928930D4BB927610E424CFE46565AA6EC63BD9A8B47310DB9DE48789144417095540141BE0DB42DB7BA710B42EF530E6B59BEF5B3BFAB2DB4FDC72CD84C764D6769B09C1E86C63';
wwv_flow_api.g_varchar2_table(138) := '808D0A023B38D2131802E87574FE90D2C2C184DECB12763C0BE07DD460585AEDADBB846B3937E89209660DCC95D8049234C8B8CACB8FA9F7A914709EC6E961FB046EADB1577A7BEF3378D126D9208B37749C6D247BE9D7525C6A840FB133D96725320405';
wwv_flow_api.g_varchar2_table(139) := 'D991D20E0E71BB473C459B9328A19F06F78C65F52DB72D7FF53F2F8F0EDF0160BB99CE15007D7BE62311299B2D0073A6FD6E9DDDAD4C08BDD2A5FB4180C7646C7B6EA21D4F06E4C17589538A03700D8EDD811EE5A35D226958388FA89B92B30F9FB87028';
wwv_flow_api.g_varchar2_table(140) := 'C6D0B799A4AAA5A8C4CCBEE8808244C22C8CB06E7A133F100A3FAF4AEED980D834310507A146ED14BC4429590329AC49CD5E5A9AFD5C57CB7D85127DE4F8F0DE371F1E7EEFA6936BD1F0EB359696B69200B8F667334B62129A000C091D0B2648D40761FE';
wwv_flow_api.g_varchar2_table(141) := '21FD74F032008F25E011027A50A2B40BC09C77D03D074F9E42862663AA8FEFB384B5B50BDB58466631B8111C0ED38C48194F9B020A939FA20415E6DFDB0BA87EDF091D52BB92D6EB17C1FF0788141502777656B32040524A23811C83C8ED097453977B9F';
wwv_flow_api.g_varchar2_table(142) := '3A3E3AF2E55139F9CDA3C3BB319CACF6EC598EECF98E1B40440230D9741730BBCEED2BCD1EC14C0066D74C0066D74C0066D74C0066D74C0066D74C0066D74C0066D74C0066D74C0066D74C0066D74C0066D74C0066D74C0066D74C0066D7DFC5EBFF0E00';
wwv_flow_api.g_varchar2_table(143) := '867FD22A68DB01810000000049454E44AE426082';
end;
/
begin
wwv_flow_api.create_theme_image(
  p_id =>60062420430690700 + wwv_flow_api.g_id_offset,
  p_flow_id =>wwv_flow.g_flow_id,
  p_theme_id  => 101,
  p_varchar2_table=> wwv_flow_api.g_varchar2_table,
  p_mimetype=> '');
end;
/
prompt  ...theme styles
--
 
begin
 
null;
 
end;
/

prompt  ...theme display points
--
 
begin
 
null;
 
end;
/

prompt  ...build options
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/language
prompt  ...Language Maps for Application 131
--
 
begin
 
null;
 
end;
/

--application/shared_components/globalization/messages
prompt  ...text messages
--
--application/shared_components/globalization/dyntranslations
prompt  ...dynamic translations
--
prompt  ...Shortcuts
--
--application/shared_components/user_interface/shortcuts/delete_confirm_msg
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'Would you like to perform this delete action?';

wwv_flow_api.create_shortcut (
 p_id=> 72930829699578923 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'DELETE_CONFIRM_MSG',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
null;
 
end;
/

prompt  ...web services (9iR2 or better)
--
prompt  ...shared queries
--
prompt  ...report layouts
--
prompt  ...authentication schemes
--
--application/shared_components/security/authentication/application_express_authentication
prompt  ......authentication 60030938599501235
 
begin
 
wwv_flow_api.create_authentication (
  p_id => 60030938599501235 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_name => 'Application Express Authentication'
 ,p_scheme_type => 'NATIVE_APEX_ACCOUNTS'
 ,p_invalid_session_type => 'LOGIN'
 ,p_use_secure_cookie_yn => 'N'
  );
null;
 
end;
/

prompt  ...ui types
--
 
begin
 
null;
 
end;
/

prompt  ...plugins
--
--application/shared_components/plugins/dynamic_action/nl_smart4apex_modal_iframe
 
begin
 
wwv_flow_api.create_plugin (
  p_id => 82839842823009599 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_type => 'DYNAMIC ACTION'
 ,p_name => 'NL.SMART4APEX.MODAL.IFRAME'
 ,p_display_name => 'S4A TB Iframed Modal'
 ,p_category => 'MISC'
 ,p_supported_ui_types => 'DESKTOP'
 ,p_image_prefix => '#PLUGIN_PREFIX#'
 ,p_plsql_code => 
'function render_iframed_modal('||unistr('\000a')||
'       p_dynamic_action  in apex_plugin.t_dynamic_action'||unistr('\000a')||
'      ,p_plugin          in apex_plugin.t_plugin)'||unistr('\000a')||
'  return apex_plugin.t_dynamic_action_render_result '||unistr('\000a')||
'is'||unistr('\000a')||
'  l_result apex_plugin.t_dynamic_action_render_result;'||unistr('\000a')||
'  function urlencode(p_varchar2 in varchar2)'||unistr('\000a')||
'    return varchar2'||unistr('\000a')||
'  is'||unistr('\000a')||
'  begin'||unistr('\000a')||
'    return utl_url.escape(url                   => p_varchar2'||unistr('\000a')||
'           '||
'              ,escape_reserved_chars => true);'||unistr('\000a')||
'  end;'||unistr('\000a')||
'/*                           __'||unistr('\000a')||
'                         _.-~  )'||unistr('\000a')||
'              _..--~~~~,''   ,-/     _'||unistr('\000a')||
'           .-''. . . .''   ,-'',''    ,'' )'||unistr('\000a')||
'         ,''. . . _   ,--~,-''__..-''  ,''  _____ __  __          _____ _______'||unistr('\000a')||
'       ,''. . .  (@)'' ---~~~~      ,''   / ____|  \/  |   /\   |  __ \__   __|'||unistr('\000a')||
'      /. . . . ''~~             ,-''    | (___ | \  /'||
' |  /  \  | |__) | | |'||unistr('\000a')||
'     /. . . . .             ,-''   _  _ \___ \| |\/| | / /\ \ |  _  /  | |'||unistr('\000a')||
'    ; . . . .  - .        ,''     | || |____) | |  | |/ ____ \| | \ \  | |'||unistr('\000a')||
'   : . . . .       _     /       | || |_____/|_|__|_/_/_ _ \_\_|  \_\ |_|'||unistr('\000a')||
'  . . . . .          `-.:        |__   _/ _` | ''_ \ / _ \ \/ /'||unistr('\000a')||
' . . . ./  - .          )           | || (_| | |_) |  __/>  <'||unistr('\000a')||
'.  . . |  _____..---.._/      '||
'      |_| \__,_| .__/ \___/_/\_\'||unistr('\000a')||
'-~~----~~~~             ~---~~~~--~~~--~~~---~| |~---~~~~----~~~~~---~~~--~~~---'||unistr('\000a')||
'--                                            |_|'||unistr('\000a')||
'--    NAME'||unistr('\000a')||
'--      render_iframed_modal'||unistr('\000a')||
'--'||unistr('\000a')||
'--    DESCRIPTION'||unistr('\000a')||
'--      Render a Bootstrap Iframed Modal'||unistr('\000a')||
'--'||unistr('\000a')||
'--    MODIFIED   (MM/DD/YYYY)'||unistr('\000a')||
'--    RICHARD   10-6-2014 12:46:29 - Created'||unistr('\000a')||
'--------------------------------------------------------'||
'------------------------'||unistr('\000a')||
'*/'||unistr('\000a')||
'begin'||unistr('\000a')||
'  if apex_application.g_debug then'||unistr('\000a')||
'    apex_plugin_util.debug_dynamic_action('||unistr('\000a')||
'                              p_plugin => p_plugin'||unistr('\000a')||
'                            , p_dynamic_action => p_dynamic_action );'||unistr('\000a')||
'  end if;'||unistr('\000a')||
'  '||unistr('\000a')||
'  -- Register the function and the used attributes with the dynamic action framework'||unistr('\000a')||
'    l_result.javascript_function := ''nl_s4a_bootstrap_modal_iframed'';'||
''||unistr('\000a')||
'    l_result.attribute_01 := p_dynamic_action.attribute_01;            -- width'||unistr('\000a')||
'    l_result.attribute_02 := p_dynamic_action.attribute_02;            -- height'||unistr('\000a')||
'    l_result.attribute_03 := p_dynamic_action.attribute_03;            -- pageno'||unistr('\000a')||
'    l_result.attribute_04 := urlencode(p_dynamic_action.attribute_04); -- pageitems'||unistr('\000a')||
'    l_result.attribute_05 := p_dynamic_action.attribute_05;            --'||
' valuetype'||unistr('\000a')||
'    l_result.attribute_06 := urlencode(p_dynamic_action.attribute_06); -- itemvalues'||unistr('\000a')||
'    l_result.attribute_07 := dbms_random.string(''U'', 20);              -- frame_id'||unistr('\000a')||
'    l_result.attribute_08 := p_dynamic_action.action;                  -- action'||unistr('\000a')||
'    l_result.attribute_09 := :APP_ID;'||unistr('\000a')||
'    l_result.attribute_10 := :APP_SESSION;'||unistr('\000a')||
'    l_result.attribute_11 := :DEBUG;'||unistr('\000a')||
'    l_result.attribute'||
'_12 := :PRINTER_FRIENDLY;'||unistr('\000a')||
'    return l_result;'||unistr('\000a')||
'end render_iframed_modal;'
 ,p_render_function => 'render_iframed_modal'
 ,p_substitute_attributes => false
 ,p_subscribe_plugin_settings => true
 ,p_version_identifier => '1.0'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 82840421472019505 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 82839842823009599 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 1
 ,p_display_sequence => 10
 ,p_prompt => 'width'
 ,p_attribute_type => 'INTEGER'
 ,p_is_required => true
 ,p_default_value => '400'
 ,p_is_translatable => false
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 82840749927021512 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 82839842823009599 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 2
 ,p_display_sequence => 20
 ,p_prompt => 'height'
 ,p_attribute_type => 'INTEGER'
 ,p_is_required => true
 ,p_default_value => '700'
 ,p_is_translatable => false
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 82841037203027368 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 82839842823009599 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 3
 ,p_display_sequence => 30
 ,p_prompt => 'page'
 ,p_attribute_type => 'PAGE NUMBER'
 ,p_is_required => true
 ,p_is_translatable => false
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 82844431106896176 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 82839842823009599 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 4
 ,p_display_sequence => 40
 ,p_prompt => 'item'
 ,p_attribute_type => 'PAGE ITEM'
 ,p_is_required => false
 ,p_is_translatable => false
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 40792926436018025 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 82839842823009599 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 5
 ,p_display_sequence => 50
 ,p_prompt => 'value-type'
 ,p_attribute_type => 'SELECT LIST'
 ,p_is_required => false
 ,p_is_translatable => false
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 40794722122020018 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 40792926436018025 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 10
 ,p_display_value => 'jQuery-selector'
 ,p_return_value => 'jQuery-selector'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 40795219966020957 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 40792926436018025 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 20
 ,p_display_value => 'link-attribute'
 ,p_return_value => 'link-attribute'
  );
wwv_flow_api.create_plugin_attr_value (
  p_id => 40795618456021738 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_attribute_id => 40792926436018025 + wwv_flow_api.g_id_offset
 ,p_display_sequence => 30
 ,p_display_value => 'fixed value'
 ,p_return_value => 'fixed value'
  );
wwv_flow_api.create_plugin_attribute (
  p_id => 42800629047601328 + wwv_flow_api.g_id_offset
 ,p_flow_id => wwv_flow.g_flow_id
 ,p_plugin_id => 82839842823009599 + wwv_flow_api.g_id_offset
 ,p_attribute_scope => 'COMPONENT'
 ,p_attribute_sequence => 6
 ,p_display_sequence => 60
 ,p_prompt => 'value'
 ,p_attribute_type => 'TEXT'
 ,p_is_required => false
 ,p_is_translatable => false
  );
null;
 
end;
/

prompt  ...data loading
--
--application/deployment/definition
prompt  ...application deployment
--
 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
begin
s:=s||'drop table emp;'||unistr('\000a')||
'drop table dept;'||unistr('\000a')||
'drop table countries'||unistr('\000a')||
'';

wwv_flow_api.create_install (
  p_id => 73027928549003145 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_include_in_export_yn => 'Y',
  p_deinstall_script_clob => s,
  p_deinstall_message=> '');
end;
 
 
end;
/

--application/deployment/install
prompt  ...application install scripts
--
 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'CREATE TABLE  "COUNTRIES" '||unistr('\000a')||
'   (    "COUNTRY_CODE" VARCHAR2(3) NOT NULL ENABLE, '||unistr('\000a')||
'    "COUNTRY_NAME" VARCHAR2(50) NOT NULL ENABLE'||unistr('\000a')||
'   )'||unistr('\000a')||
'/'||unistr('\000a')||
'CREATE TABLE  "DEPT" '||unistr('\000a')||
'   (    "DEPTNO" NUMBER(2,0), '||unistr('\000a')||
'    "DNAME" VARCHAR2(14), '||unistr('\000a')||
'    "LOC" VARCHAR2(13), '||unistr('\000a')||
'     CONSTRAINT "DEPT_PK" PRIMARY KEY ("DEPTNO") ENABLE'||unistr('\000a')||
'   )'||unistr('\000a')||
'/'||unistr('\000a')||
'CREATE TABLE  "EMP" '||unistr('\000a')||
'   (    "EMPNO" NUMBER(4,0) NOT NULL ENABLE, '||unistr('\000a')||
'    "ENAME" VARCHAR2(10), '||unistr('\000a')||
'   ';

s:=s||' "JOB" VARCHAR2(9), '||unistr('\000a')||
'    "MGR" NUMBER(4,0), '||unistr('\000a')||
'    "HIREDATE" DATE, '||unistr('\000a')||
'    "SAL" NUMBER(7,2), '||unistr('\000a')||
'    "COMM" NUMBER(7,2), '||unistr('\000a')||
'    "DEPTNO" NUMBER(2,0), '||unistr('\000a')||
'     CONSTRAINT "EMP_PK" PRIMARY KEY ("EMPNO") ENABLE'||unistr('\000a')||
'   )'||unistr('\000a')||
'/'||unistr('\000a')||
'ALTER TABLE  "EMP" ADD CONSTRAINT "EMP_DEPT_FK" FOREIGN KEY ("DEPTNO")'||unistr('\000a')||
'      REFERENCES  "DEPT" ("DEPTNO") ENABLE'||unistr('\000a')||
'/';

wwv_flow_api.create_install_script(
  p_id => 73546034392779457 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 73027928549003145 + wwv_flow_api.g_id_offset,
  p_name => 'CREATE TABLES',
  p_sequence=> 10,
  p_script_type=> 'INSTALL',
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'alter table COUNTRIES disable all triggers;'||unistr('\000a')||
'truncate table COUNTRIES;'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AF'', ''Afghanistan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AL'', ''Albania'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''DZ'', ''Algeria'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AS'', ''American Samoa'');'||unistr('\000a')||
'insert into';

s:=s||' COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AD'', ''Andorra'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AO'', ''Angola'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AI'', ''Anguilla'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AQ'', ''Antarctica'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AG'', ''Antigua And Barbuda'');'||unistr('\000a')||
'insert into';

s:=s||' COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AR'', ''Argentina'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AM'', ''Armenia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AW'', ''Aruba'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AU'', ''Australia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AT'', ''Austria'');'||unistr('\000a')||
'insert into COUNTRIES (c';

s:=s||'ountry_code, country_name)'||unistr('\000a')||
'values (''AZ'', ''Azerbaijan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BS'', ''Bahamas'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BH'', ''Bahrain'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BD'', ''Bangladesh'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BB'', ''Barbados'');'||unistr('\000a')||
'insert into COUNTRIES (country_c';

s:=s||'ode, country_name)'||unistr('\000a')||
'values (''BY'', ''Belarus'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BE'', ''Belgium'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BZ'', ''Belize'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BJ'', ''Benin'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BM'', ''Bermuda'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)';

s:=s||''||unistr('\000a')||
'values (''BT'', ''Bhutan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BO'', ''Bolivia, Plurinational State Of'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BA'', ''Bosnia And Herzegovina'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BW'', ''Botswana'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BV'', ''Bouvet Island'');'||unistr('\000a')||
'insert into COUNTRIE';

s:=s||'S (country_code, country_name)'||unistr('\000a')||
'values (''BR'', ''Brazil'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''IO'', ''British Indian Ocean Territory'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BN'', ''Brunei Darussalam'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BG'', ''Bulgaria'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BF'', ''Burkina Faso''';

s:=s||');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BI'', ''Burundi'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''KH'', ''Cambodia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CM'', ''Cameroon'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CA'', ''Canada'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CV'', ''Cape Verde'');'||unistr('\000a')||
'insert i';

s:=s||'nto COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''KY'', ''Cayman Islands'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CF'', ''Central African Republic'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TD'', ''Chad'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CL'', ''Chile'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CN'', ''China'');'||unistr('\000a')||
'insert';

s:=s||' into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CX'', ''Christmas Island'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CC'', ''Cocos (Keeling) Islands'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CO'', ''Colombia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''KM'', ''Comoros'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CG'', ''Congo''';

s:=s||');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CD'', ''Congo, The Democratic Republic Of The'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CK'', ''Cook Islands'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CR'', ''Costa Rica'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CI'', ''CôÃte D''''Ivoire'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, countr';

s:=s||'y_name)'||unistr('\000a')||
'values (''HR'', ''Croatia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CU'', ''Cuba'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CY'', ''Cyprus'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CZ'', ''Czech Republic'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''DK'', ''Denmark'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'valu';

s:=s||'es (''DJ'', ''Djibouti'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''DM'', ''Dominica'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''DO'', ''Dominican Republic'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''EC'', ''Ecuador'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''EG'', ''Egypt'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (';

s:=s||'''SV'', ''El Salvador'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GQ'', ''Equatorial Guinea'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''ER'', ''Eritrea'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''EE'', ''Estonia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''ET'', ''Ethiopia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (';

s:=s||'''FK'', ''Falkland Islands (Malvinas)'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''FO'', ''Faroe Islands'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''FJ'', ''Fiji'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''FI'', ''Finland'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''FR'', ''France'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'v';

s:=s||'alues (''GF'', ''French Guiana'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PF'', ''French Polynesia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TF'', ''French Southern Territories'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GA'', ''Gabon'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GM'', ''Gambia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code';

s:=s||', country_name)'||unistr('\000a')||
'values (''GE'', ''Georgia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''DE'', ''Germany'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GH'', ''Ghana'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GI'', ''Gibraltar'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GR'', ''Greece'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'';

s:=s||'values (''GL'', ''Greenland'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GD'', ''Grenada'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GP'', ''Guadeloupe'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GU'', ''Guam'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GT'', ''Guatemala'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GG';

s:=s||''', ''Guernsey'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GN'', ''Guinea'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GW'', ''Guinea-Bissau'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GY'', ''Guyana'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''HT'', ''Haiti'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''HM'', ''Heard Is';

s:=s||'land And Mcdonald Islands'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''HN'', ''Honduras'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''HK'', ''Hong Kong'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''HU'', ''Hungary'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''IS'', ''Iceland'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''';

s:=s||'IN'', ''India'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''ID'', ''Indonesia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''IR'', ''Iran, Islamic Republic Of'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''IQ'', ''Iraq'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''IE'', ''Ireland'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''';

s:=s||'IM'', ''Isle Of Man'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''IL'', ''Israel'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''IT'', ''Italy'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''JM'', ''Jamaica'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''JP'', ''Japan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''JE'', ''Jersey'');'||unistr('\000a')||
'';

s:=s||'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''JO'', ''Jordan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''KZ'', ''Kazakhstan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''KE'', ''Kenya'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''KI'', ''Kiribati'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''KP'', ''Korea, Democratic People''';

s:=s||'''s Republic Of'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''KR'', ''Korea, Republic Of'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''KW'', ''Kuwait'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''KG'', ''Kyrgyzstan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''LA'', ''Lao People''''s Democratic Republic'');'||unistr('\000a')||
'insert into COUNTRIES (country_code';

s:=s||', country_name)'||unistr('\000a')||
'values (''LV'', ''Latvia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''LB'', ''Lebanon'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''LS'', ''Lesotho'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''LR'', ''Liberia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''LY'', ''Libyan Arab Jamahiriya'');'||unistr('\000a')||
'insert into COUNTRIES (country_code,';

s:=s||' country_name)'||unistr('\000a')||
'values (''LI'', ''Liechtenstein'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''LT'', ''Lithuania'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''LU'', ''Luxembourg'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MO'', ''Macao'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MK'', ''Macedonia, The Former Yugoslav Republic Of'');'||unistr('\000a')||
'insert ';

s:=s||'into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MG'', ''Madagascar'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MW'', ''Malawi'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MY'', ''Malaysia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MV'', ''Maldives'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''ML'', ''Mali'');'||unistr('\000a')||
'insert into COUNTRIES';

s:=s||' (country_code, country_name)'||unistr('\000a')||
'values (''MT'', ''Malta'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MH'', ''Marshall Islands'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MQ'', ''Martinique'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MR'', ''Mauritania'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MU'', ''Mauritius'');'||unistr('\000a')||
'insert into COUNTRIES';

s:=s||' (country_code, country_name)'||unistr('\000a')||
'values (''YT'', ''Mayotte'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MX'', ''Mexico'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''FM'', ''Micronesia, Federated States Of'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MD'', ''Moldova, Republic Of'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MC'', ''Monaco'');'||unistr('\000a')||
'i';

s:=s||'nsert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MN'', ''Mongolia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''ME'', ''Montenegro'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MS'', ''Montserrat'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MA'', ''Morocco'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MZ'', ''Mozambique'');'||unistr('\000a')||
'insert';

s:=s||' into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MM'', ''Myanmar'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NA'', ''Namibia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NR'', ''Nauru'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NP'', ''Nepal'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NL'', ''Netherlands'');'||unistr('\000a')||
'insert into COUNTRIES';

s:=s||' (country_code, country_name)'||unistr('\000a')||
'values (''AN'', ''Netherlands Antilles'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NC'', ''New Caledonia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NZ'', ''New Zealand'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NI'', ''Nicaragua'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NE'', ''Niger'');'||unistr('\000a')||
'insert into C';

s:=s||'OUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NG'', ''Nigeria'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NU'', ''Niue'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NF'', ''Norfolk Island'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MP'', ''Northern Mariana Islands'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''NO'', ''Norway'');'||unistr('\000a')||
'insert i';

s:=s||'nto COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''OM'', ''Oman'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PK'', ''Pakistan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PW'', ''Palau'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PS'', ''Palestinian Territory, Occupied'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PA'', ''Panama'');'||unistr('\000a')||
'inse';

s:=s||'rt into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PG'', ''Papua New Guinea'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PY'', ''Paraguay'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PE'', ''Peru'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PH'', ''Philippines'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PN'', ''Pitcairn'');'||unistr('\000a')||
'insert ';

s:=s||'into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PL'', ''Poland'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PT'', ''Portugal'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PR'', ''Puerto Rico'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''QA'', ''Qatar'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''RE'', ''Réunion'');'||unistr('\000a')||
'insert into COUNTRIE';

s:=s||'S (country_code, country_name)'||unistr('\000a')||
'values (''RO'', ''Romania'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''RU'', ''Russian Federation'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''RW'', ''Rwanda'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''BL'', ''Saint Barthalemy'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SH'', ''Saint Helena, Ascension And';

s:=s||' Tristan Da Cunha'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''KN'', ''Saint Kitts And Nevis'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''LC'', ''Saint Lucia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''MF'', ''Saint Martin'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''PM'', ''Saint Pierre And Miquelon'');'||unistr('\000a')||
'insert into COUNTRIES (country';

s:=s||'_code, country_name)'||unistr('\000a')||
'values (''VC'', ''Saint Vincent And The Grenadines'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''WS'', ''Samoa'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SM'', ''San Marino'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''ST'', ''Sao Tome And Principe'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SA'', ''Saudi Arabia'');'||unistr('\000a')||
'';

s:=s||'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SN'', ''Senegal'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''RS'', ''Serbia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SC'', ''Seychelles'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SL'', ''Sierra Leone'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SG'', ''Singapore'');'||unistr('\000a')||
'insert';

s:=s||' into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SK'', ''Slovakia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SI'', ''Slovenia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SB'', ''Solomon Islands'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SO'', ''Somalia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''ZA'', ''South Africa'');'||unistr('\000a')||
'insert';

s:=s||' into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GS'', ''South Georgia And The South Sandwich Islands'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''ES'', ''Spain'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''LK'', ''Sri Lanka'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SD'', ''Sudan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SR''';

s:=s||', ''Suriname'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SJ'', ''Svalbard And Jan Mayen'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SZ'', ''Swaziland'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''SE'', ''Sweden'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''CH'', ''Switzerland'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values';

s:=s||' (''SY'', ''Syrian Arab Republic'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TW'', ''Taiwan, Province Of China'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TJ'', ''Tajikistan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TZ'', ''Tanzania, United Republic Of'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TH'', ''Thailand'');'||unistr('\000a')||
'insert into COUN';

s:=s||'TRIES (country_code, country_name)'||unistr('\000a')||
'values (''TL'', ''Timor-Leste'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TG'', ''Togo'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TK'', ''Tokelau'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TO'', ''Tonga'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TT'', ''Trinidad And Tobago'');'||unistr('\000a')||
'insert into COUNTRIE';

s:=s||'S (country_code, country_name)'||unistr('\000a')||
'values (''TN'', ''Tunisia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TR'', ''Turkey'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TM'', ''Turkmenistan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TC'', ''Turks And Caicos Islands'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''TV'', ''Tuvalu'');'||unistr('\000a')||
'insert into COU';

s:=s||'NTRIES (country_code, country_name)'||unistr('\000a')||
'values (''UG'', ''Uganda'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''UA'', ''Ukraine'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''AE'', ''United Arab Emirates'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''GB'', ''United Kingdom'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''US'', ''United States'');'||unistr('\000a')||
'inser';

s:=s||'t into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''UM'', ''United States Minor Outlying Islands'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''UY'', ''Uruguay'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''UZ'', ''Uzbekistan'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''VU'', ''Vanuatu'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''VA'', ';

s:=s||'''Vatican City State'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''VE'', ''Venezuela, Bolivarian Republic Of'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''VN'', ''Vietnam'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''VG'', ''Virgin Islands, British'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''VI'', ''Virgin Islands, U.S.'');'||unistr('\000a')||
'insert into CO';

s:=s||'UNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''WF'', ''Wallis And Futuna'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''EH'', ''Western Sahara'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''YE'', ''Yemen'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''ZM'', ''Zambia'');'||unistr('\000a')||
'insert into COUNTRIES (country_code, country_name)'||unistr('\000a')||
'values (''ZW '', ''Zimbabwe'');'||unistr('\000a')||
'alter table C';

s:=s||'OUNTRIES enable all triggers;'||unistr('\000a')||
'';

wwv_flow_api.create_install_script(
  p_id => 73559838414868855 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 73027928549003145 + wwv_flow_api.g_id_offset,
  p_name => 'DATA COUNTRIES',
  p_sequence=> 20,
  p_script_type=> 'INSTALL',
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'alter table DEPT disable all triggers;'||unistr('\000a')||
'delete DEPT;'||unistr('\000a')||
'insert into DEPT (deptno, dname, loc)'||unistr('\000a')||
'values (10, ''ACCOUNTING'', ''NEW YORK'');'||unistr('\000a')||
'insert into DEPT (deptno, dname, loc)'||unistr('\000a')||
'values (20, ''RESEARCH'', ''DALLAS'');'||unistr('\000a')||
'insert into DEPT (deptno, dname, loc)'||unistr('\000a')||
'values (30, ''SALES'', ''CHICAGO'');'||unistr('\000a')||
'insert into DEPT (deptno, dname, loc)'||unistr('\000a')||
'values (40, ''OPERATIONS'', ''BOSTON'');'||unistr('\000a')||
'alter table DEPT enable all triggers;';

wwv_flow_api.create_install_script(
  p_id => 73560023965875510 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 73027928549003145 + wwv_flow_api.g_id_offset,
  p_name => 'DATA DEPT',
  p_sequence=> 30,
  p_script_type=> 'INSTALL',
  p_script_clob=> s);
end;
 
 
end;
/

 
begin
 
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s:=s||'alter table EMP disable all triggers;'||unistr('\000a')||
'alter table EMP disable constraint EMP_DEPT_FK;'||unistr('\000a')||
'delete EMP;'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7369, ''SMITH'', ''CLERK'', 7902, to_date(''17-12-1980'', ''dd-mm-yyyy''), 800, null, 20);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7499, ''ALLEN'', ''SALESMAN'', 7698, to_date(''20-02-1981'', ''dd-mm-y';

s:=s||'yyy''), 1600, 300, 30);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7521, ''WARD'', ''SALESMAN'', 7698, to_date(''22-02-1981'', ''dd-mm-yyyy''), 1250, 500, 30);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7566, ''JONES'', ''MANAGER'', 7839, to_date(''02-04-1981'', ''dd-mm-yyyy''), 2975, null, 20);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate,';

s:=s||' sal, comm, deptno)'||unistr('\000a')||
'values (7654, ''MARTIN'', ''SALESMAN'', 7698, to_date(''28-09-1981'', ''dd-mm-yyyy''), 1250, 1400, 30);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7698, ''BLAKE'', ''MANAGER'', 7839, to_date(''01-05-1981'', ''dd-mm-yyyy''), 2850, null, 30);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7782, ''CLARK'', ''MANAGER'', 7839, to_date(''0';

s:=s||'9-06-1981'', ''dd-mm-yyyy''), 2450, null, 10);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7788, ''SCOTT'', ''ANALYST'', 7566, to_date(''09-12-1982'', ''dd-mm-yyyy''), 3000, null, 20);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7839, ''KING'', ''PRESIDENT'', null, to_date(''17-11-1981'', ''dd-mm-yyyy''), 5000, null, 10);'||unistr('\000a')||
'insert into EMP (empno, ena';

s:=s||'me, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7844, ''TURNER'', ''SALESMAN'', 7698, to_date(''08-09-1981'', ''dd-mm-yyyy''), 1500, 0, 30);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7876, ''ADAMS'', ''CLERK'', 7788, to_date(''12-01-1983'', ''dd-mm-yyyy''), 1100, null, 20);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7900, ''JAMES'', ''CLERK'', ';

s:=s||'7698, to_date(''03-12-1981'', ''dd-mm-yyyy''), 950, null, 30);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7902, ''FORD'', ''ANALYST'', 7566, to_date(''03-12-1981'', ''dd-mm-yyyy''), 3000, null, 20);'||unistr('\000a')||
'insert into EMP (empno, ename, job, mgr, hiredate, sal, comm, deptno)'||unistr('\000a')||
'values (7934, ''MILLER'', ''CLERK'', 7782, to_date(''23-01-1982'', ''dd-mm-yyyy''), 1300, null, 10);'||unistr('\000a')||
'alter table EMP';

s:=s||' enable constraint EMP_DEPT_FK;'||unistr('\000a')||
'alter table EMP enable all triggers;';

wwv_flow_api.create_install_script(
  p_id => 73560248322879335 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_install_id=> 73027928549003145 + wwv_flow_api.g_id_offset,
  p_name => 'DATA EMP',
  p_sequence=> 40,
  p_script_type=> 'INSTALL',
  p_script_clob=> s);
end;
 
 
end;
/

--application/deployment/checks
prompt  ...application deployment checks
--
 
begin
 
null;
 
end;
/

--application/deployment/buildoptions
prompt  ...application deployment build options
--
 
begin
 
null;
 
end;
/

prompt  ...post import process
 
begin
 
wwv_flow_api.post_import_process(p_flow_id => wwv_flow.g_flow_id);
null;
 
end;
/

--application/end_environment
commit;
commit;
begin
execute immediate 'begin sys.dbms_session.set_nls( param => ''NLS_NUMERIC_CHARACTERS'', value => '''''''' || replace(wwv_flow_api.g_nls_numeric_chars,'''''''','''''''''''') || ''''''''); end;';
end;
/
set verify on
set feedback on
set define on
prompt  ...done
