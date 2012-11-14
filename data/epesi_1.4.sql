-- phpMyAdmin SQL Dump
-- version 3.3.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 14, 2012 at 02:33 PM
-- Server version: 5.1.54
-- PHP Version: 5.3.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `epesi_1.4`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps_shoutbox_messages`
--

CREATE TABLE IF NOT EXISTS `apps_shoutbox_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `base_user_login_id` int(11) NOT NULL,
  `to_user_login_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `posted_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `base_user_login_id` (`base_user_login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `apps_shoutbox_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `available_modules`
--

CREATE TABLE IF NOT EXISTS `available_modules` (
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vkey` int(11) NOT NULL,
  `version` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`,`vkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `available_modules`
--

INSERT INTO `available_modules` (`name`, `vkey`, `version`) VALUES
('Applets_Birthdays', 0, '1.0'),
('Applets_Calc', 0, '1.1'),
('Applets_Clock', 0, '1.0'),
('Applets_Google', 0, '1.4'),
('Applets_GTalk', 0, '1.0'),
('Applets_Host', 0, '1.0'),
('Applets_MonthView', 0, '1.0'),
('Applets_Note', 0, '1.1'),
('Applets_RssFeed', 0, '1.0'),
('Applets_Weather', 0, '0.3'),
('Apps_ActivityReport', 0, '1.0'),
('Apps_Shoutbox', 0, '1.0'),
('Base', 0, '1.0'),
('Base_About', 0, '1.0'),
('Base_Acl', 0, '1.0.0'),
('Base_ActionBar', 0, '1.0'),
('Base_Admin', 0, '1.0.0'),
('Base_Box', 0, '1.0.0'),
('Base_Dashboard', 0, '1.0'),
('Base_EpesiStore', 0, '1.0'),
('Base_Error', 0, '1.0.0'),
('Base_EssClient', 0, '1.0'),
('Base_HomePage', 0, '1.0'),
('Base_Lang', 0, '1.0.0'),
('Base_Lang_Administrator', 0, '1.0.0'),
('Base_Mail', 0, '1.0.0'),
('Base_Mail_ContactUs', 0, '0'),
('Base_MainModuleIndicator', 0, '1.0.0'),
('Base_Menu', 0, '1.0.0'),
('Base_Menu_QuickAccess', 0, '1.0.0'),
('Base_RegionalSettings', 0, '1.0'),
('Base_Search', 0, '0.9.1'),
('Base_Setup', 0, '1.0.0'),
('Base_StatusBar', 0, '1.0.0'),
('Base_Theme', 0, '1.0.0'),
('Base_Theme_Administrator', 0, '1.0'),
('Base_User', 0, '1.0'),
('Base_User_Administrator', 0, '1.0.0'),
('Base_User_Login', 0, '1.0.0'),
('Base_User_Settings', 0, '1.0'),
('CRM_Assets', 0, '0.9'),
('CRM_Calendar', 0, '0.1.0'),
('CRM_Calendar_Event', 0, '1.0'),
('CRM_Common', 0, '0.9'),
('CRM_Contacts', 0, '0.9'),
('CRM_Contacts_AccountManager', 0, '1.0'),
('CRM_Contacts_Activities', 0, '1.0'),
('CRM_Contacts_County', 0, '1.0'),
('CRM_Contacts_NotesAggregate', 0, '1.0'),
('CRM_Contacts_ParentCompany', 0, '1.0'),
('CRM_Contacts_Photo', 0, '1.0'),
('CRM_Fax', 0, '0.5'),
('CRM_Filters', 0, '1.0'),
('CRM_Followup', 0, '1.0'),
('CRM_LoginAudit', 0, '1.0'),
('CRM_Meeting', 0, '1.0'),
('CRM_PhoneCall', 0, '1.0'),
('CRM_Roundcube', 0, '0.1'),
('CRM_Tasks', 0, '1.0'),
('CRM_WhoIsOnline', 0, '1.0'),
('Data_Countries', 0, '2008'),
('Data_TaxRates', 0, '1.0'),
('FirstRun', 0, '1.0'),
('Libs_CKEditor', 0, '3.5.2'),
('Libs_Codepress', 0, '0.9.6'),
('Libs_Leightbox', 0, '2.03.3'),
('Libs_OpenFlashChart', 0, '1.0'),
('Libs_PHPExcel', 0, '1.7.0'),
('Libs_QuickForm', 0, '3.2.10'),
('Libs_ScriptAculoUs', 0, '1.8.0'),
('Libs_TCPDF', 0, '3.1.001'),
('Tools_SessionKeeper', 0, '0.9'),
('Tools_SetDefaults', 0, '1.0'),
('Tools_WhoIsOnline', 0, '1.0'),
('Utils_Attachment', 0, '1.0'),
('Utils_BBCode', 0, '1.0'),
('Utils_Calendar', 0, '1.0'),
('Utils_Calendar_Event', 0, '1.0.0'),
('Utils_CatFile', 0, '1.0.0'),
('Utils_ChainedSelect', 0, '1.0'),
('Utils_Comment', 0, '1.0.0'),
('Utils_CommonData', 0, '0'),
('Utils_CurrencyField', 0, '0'),
('Utils_CustomMenu', 0, '1.0.0'),
('Utils_ExportXLS', 0, '1.0'),
('Utils_FileDownload', 0, '1.0'),
('Utils_FileUpload', 0, '1.0'),
('Utils_FrontPage', 0, '1.0.0'),
('Utils_GenericBrowser', 0, '1.0'),
('Utils_Image', 0, '0.8.9'),
('Utils_LeightboxPrompt', 0, '1.0'),
('Utils_Menu', 0, '1.0.0'),
('Utils_Messenger', 0, '0.1'),
('Utils_Path', 0, '1.0'),
('Utils_Planner', 0, '1.0'),
('Utils_PopupCalendar', 0, '0'),
('Utils_RecordBrowser', 0, '2.0'),
('Utils_RecordBrowser_RecordPicker', 0, '0.1'),
('Utils_RecordBrowser_RecordPickerFS', 0, '0.1'),
('Utils_RecordBrowser_Reports', 0, '1.0'),
('Utils_Shortcut', 0, '1.0.0'),
('Utils_TabbedBrowser', 0, '1.0'),
('Utils_Tooltip', 0, '1.0.0'),
('Utils_Tree', 0, '1.0'),
('Utils_Watchdog', 0, '1.0'),
('Utils_Wizard', 0, '1.0.0');

-- --------------------------------------------------------

--
-- Table structure for table `base_acl_clearance`
--

CREATE TABLE IF NOT EXISTS `base_acl_clearance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `callback` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `base_acl_clearance`
--

INSERT INTO `base_acl_clearance` (`id`, `callback`) VALUES
(1, 'Base_AclCommon::basic_clearance'),
(2, 'CRM_ContactsCommon::crm_clearance');

-- --------------------------------------------------------

--
-- Table structure for table `base_acl_permission`
--

CREATE TABLE IF NOT EXISTS `base_acl_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `base_acl_permission`
--

INSERT INTO `base_acl_permission` (`id`, `name`) VALUES
(1, 'Advanced User Settings'),
(2, 'Dashboard'),
(3, 'Search'),
(4, 'Attachments - view full download history'),
(5, 'Manage Perspective'),
(6, 'Messenger Alerts'),
(7, 'Calendar'),
(8, 'View Activity Report'),
(9, 'Shoutbox'),
(10, 'Fax - Browse'),
(11, 'Fax - Send');

-- --------------------------------------------------------

--
-- Table structure for table `base_acl_rules`
--

CREATE TABLE IF NOT EXISTS `base_acl_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `base_acl_rules`
--

INSERT INTO `base_acl_rules` (`id`, `permission_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `base_acl_rules_clearance`
--

CREATE TABLE IF NOT EXISTS `base_acl_rules_clearance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `base_acl_rules_clearance`
--

INSERT INTO `base_acl_rules_clearance` (`id`, `rule_id`, `clearance`) VALUES
(1, 1, 'ACCESS:employee'),
(2, 2, 'ACCESS:employee'),
(3, 3, 'ACCESS:employee'),
(4, 4, 'ACCESS:employee'),
(5, 5, 'ACCESS:employee'),
(6, 6, 'ACCESS:employee'),
(7, 7, 'ACCESS:employee'),
(8, 8, 'ACCESS:employee'),
(9, 8, 'ACCESS:manager'),
(10, 9, 'ACCESS:employee'),
(11, 10, 'ACCESS:employee'),
(12, 11, 'ACCESS:employee');

-- --------------------------------------------------------

--
-- Table structure for table `base_admin_access`
--

CREATE TABLE IF NOT EXISTS `base_admin_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `section` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allow` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `base_admin_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `base_dashboard_applets`
--

CREATE TABLE IF NOT EXISTS `base_dashboard_applets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login_id` int(11) DEFAULT NULL,
  `module_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `col` smallint(6) DEFAULT '0',
  `pos` smallint(6) DEFAULT '0',
  `color` smallint(6) DEFAULT '0',
  `tab` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_login_id` (`user_login_id`),
  KEY `tab` (`tab`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `base_dashboard_applets`
--

INSERT INTO `base_dashboard_applets` (`id`, `user_login_id`, `module_name`, `col`, `pos`, `color`, `tab`) VALUES
(1, 1, 'Applets_Clock', 2, 0, 1, 1),
(2, 1, 'CRM_Tasks', 1, 0, 6, 1),
(3, 1, 'Applets_Note', 2, 1, 10, 1),
(4, 1, 'Utils_Watchdog', 0, 0, 6, 1),
(5, 1, 'CRM_PhoneCall', 1, 1, 8, 1),
(6, 1, 'Apps_Shoutbox', 0, 1, 0, 1),
(7, 1, 'CRM_Calendar', 1, 2, 0, 1),
(8, 1, 'Premium_SalesOpportunity', 1, 0, 8, 1),
(9, 1, 'Applets_Birthdays', 0, 2, 0, 1),
(11, 1, 'CRM_LoginAudit', 0, 3, 0, 1),
(12, 1, 'Utils_Messenger', 1, 3, 0, 1),
(13, 1, 'Applets_MonthView', 2, 3, 0, 1),
(14, 1, 'Applets_Note', 2, 4, 0, 1),
(15, 1, 'Applets_RssFeed', 0, 4, 0, 1),
(16, 1, 'CRM_Contacts', 1, 4, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_dashboard_default_applets`
--

CREATE TABLE IF NOT EXISTS `base_dashboard_default_applets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `col` smallint(6) DEFAULT '0',
  `pos` smallint(6) DEFAULT '0',
  `color` smallint(6) DEFAULT '0',
  `tab` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tab` (`tab`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `base_dashboard_default_applets`
--

INSERT INTO `base_dashboard_default_applets` (`id`, `module_name`, `col`, `pos`, `color`, `tab`) VALUES
(1, 'Applets_Clock', 2, 0, 1, 1),
(2, 'CRM_Tasks', 1, 0, 6, 1),
(3, 'CRM_PhoneCall', 1, 1, 8, 1),
(4, 'Applets_Note', 2, 0, 10, 1),
(5, 'CRM_Calendar', 1, 2, 0, 1),
(6, 'Apps_Shoutbox', 0, 1, 0, 1),
(7, 'Utils_Watchdog', 0, 0, 6, 1),
(8, 'Premium_SalesOpportunity', 1, 3, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_dashboard_default_settings`
--

CREATE TABLE IF NOT EXISTS `base_dashboard_default_settings` (
  `applet_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`applet_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `base_dashboard_default_settings`
--

INSERT INTO `base_dashboard_default_settings` (`applet_id`, `name`, `value`) VALUES
(4, 'bcolor', 'nice-yellow'),
(4, 'text', '<div><strong>Congratulations!</strong><br />You''ve just installed EPESI!</div><div>For more information, help and support please visit <a href="http://epe.si" target="_blank">EPESI website </a></div>'),
(4, 'title', 'Welcome');

-- --------------------------------------------------------

--
-- Table structure for table `base_dashboard_default_tabs`
--

CREATE TABLE IF NOT EXISTS `base_dashboard_default_tabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `base_dashboard_default_tabs`
--

INSERT INTO `base_dashboard_default_tabs` (`id`, `name`, `pos`) VALUES
(1, 'Default', 0);

-- --------------------------------------------------------

--
-- Table structure for table `base_dashboard_settings`
--

CREATE TABLE IF NOT EXISTS `base_dashboard_settings` (
  `applet_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`applet_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `base_dashboard_settings`
--

INSERT INTO `base_dashboard_settings` (`applet_id`, `name`, `value`) VALUES
(3, 'bcolor', 'nice-yellow'),
(3, 'text', '<div><strong>Congratulations!</strong><br />You''ve just installed EPESI!</div><div>For more information, help and support please visit <a href="http://epe.si" target="_blank">EPESI website </a></div>'),
(3, 'title', 'Welcome');

-- --------------------------------------------------------

--
-- Table structure for table `base_dashboard_tabs`
--

CREATE TABLE IF NOT EXISTS `base_dashboard_tabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login_id` int(11) DEFAULT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pos` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_login_id` (`user_login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `base_dashboard_tabs`
--

INSERT INTO `base_dashboard_tabs` (`id`, `user_login_id`, `name`, `pos`) VALUES
(1, 1, 'Default', 0);

-- --------------------------------------------------------

--
-- Table structure for table `base_lang_trans_contrib`
--

CREATE TABLE IF NOT EXISTS `base_lang_trans_contrib` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `allow` tinyint(4) DEFAULT NULL,
  `first_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `credits` tinyint(4) DEFAULT NULL,
  `credits_website` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `base_lang_trans_contrib`
--

INSERT INTO `base_lang_trans_contrib` (`id`, `user_id`, `allow`, `first_name`, `last_name`, `credits`, `credits_website`, `contact_email`) VALUES
(1, 1, 0, '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `base_login_audit`
--

CREATE TABLE IF NOT EXISTS `base_login_audit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `ip_address` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `base_login_audit`
--

INSERT INTO `base_login_audit` (`id`, `user_login_id`, `start_time`, `end_time`, `ip_address`, `host_name`) VALUES
(1, 1, '2012-11-14 13:07:36', '2012-11-14 13:40:36', '::1', 'localhost'),
(2, 1, '2012-11-14 14:05:45', '2012-11-14 14:33:03', '127.0.0.1', 'localhost');

-- --------------------------------------------------------

--
-- Table structure for table `base_user_settings`
--

CREATE TABLE IF NOT EXISTS `base_user_settings` (
  `user_login_id` int(11) NOT NULL,
  `module` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `variable` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`user_login_id`,`module`,`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `base_user_settings`
--

INSERT INTO `base_user_settings` (`user_login_id`, `module`, `variable`, `value`) VALUES
(1, 'Utils_RecordBrowser', 'contact_default_view', 's:8:"watchdog";');

-- --------------------------------------------------------

--
-- Table structure for table `base_user_settings_admin_defaults`
--

CREATE TABLE IF NOT EXISTS `base_user_settings_admin_defaults` (
  `module` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `variable` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`module`,`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `base_user_settings_admin_defaults`
--

INSERT INTO `base_user_settings_admin_defaults` (`module`, `variable`, `value`) VALUES
('Base_Menu_QuickAccess', '465e51c2b6eba36161f0115442e7406c_d', 's:1:"1";'),
('Base_Menu_QuickAccess', '465e51c2b6eba36161f0115442e7406c_l', 's:1:"1";'),
('Base_Menu_QuickAccess', '4fe4700ae455ac705d9d5efa1292298b_d', 's:1:"1";'),
('Base_Menu_QuickAccess', '4fe4700ae455ac705d9d5efa1292298b_l', 's:1:"1";'),
('Base_Menu_QuickAccess', '5ee46bef4c047bd8816ac3810270cc73_d', 's:1:"1";'),
('Base_Menu_QuickAccess', '5ee46bef4c047bd8816ac3810270cc73_l', 's:1:"1";'),
('Base_Menu_QuickAccess', '7b3558122283d2a14051c96a7da1fb1b_d', 's:1:"1";'),
('Base_Menu_QuickAccess', '7b3558122283d2a14051c96a7da1fb1b_l', 's:1:"1";'),
('Base_Menu_QuickAccess', 'b34db58caa3e6a8b933deca655640047_d', 's:1:"1";'),
('Base_Menu_QuickAccess', 'b34db58caa3e6a8b933deca655640047_l', 's:1:"1";'),
('Base_RegionalSettings', 'time', 's:11:"%I:%M:%S %p";'),
('Utils_RecordBrowser', 'company_auto_fav', 's:1:"1";'),
('Utils_RecordBrowser', 'company_auto_subs', 's:1:"1";'),
('Utils_RecordBrowser', 'contact_auto_fav', 's:1:"1";'),
('Utils_RecordBrowser', 'contact_auto_subs', 's:1:"1";'),
('Utils_RecordBrowser', 'phonecall_auto_subs', 's:1:"1";'),
('Utils_RecordBrowser', 'premium_projects_auto_fav', 's:1:"1";'),
('Utils_RecordBrowser', 'premium_projects_auto_subs', 's:1:"1";'),
('Utils_RecordBrowser', 'premium_tickets_auto_subs', 's:1:"1";'),
('Utils_RecordBrowser', 'task_auto_subs', 's:1:"1";');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8_unicode_ci,
  `user_login_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '-1',
  `topic` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `comment_report`
--

CREATE TABLE IF NOT EXISTS `comment_report` (
  `id` int(11) NOT NULL,
  `user_login_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment_report`
--


-- --------------------------------------------------------

--
-- Table structure for table `company_access`
--

CREATE TABLE IF NOT EXISTS `company_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `company_access`
--

INSERT INTO `company_access` (`id`, `action`, `crits`) VALUES
(3, 'view', 'a:2:{s:12:"(!permission";i:2;s:12:"|:Created_by";s:7:"USER_ID";}'),
(4, 'view', 'a:1:{s:2:"id";s:12:"USER_COMPANY";}'),
(5, 'add', 'a:0:{}'),
(6, 'edit', 'a:2:{s:11:"(permission";i:0;s:12:"|:Created_by";s:7:"USER_ID";}'),
(7, 'edit', 'a:1:{s:2:"id";s:12:"USER_COMPANY";}'),
(8, 'edit', 'a:0:{}'),
(9, 'delete', 'a:1:{s:11:":Created_by";s:7:"USER_ID";}'),
(10, 'delete', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `company_access_clearance`
--

CREATE TABLE IF NOT EXISTS `company_access_clearance` (
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_access_clearance`
--

INSERT INTO `company_access_clearance` (`rule_id`, `clearance`) VALUES
(3, 'ACCESS:employee'),
(4, 'ALL'),
(5, 'ACCESS:employee'),
(6, 'ACCESS:employee'),
(7, 'ALL'),
(7, 'ACCESS:manager'),
(8, 'ACCESS:employee'),
(8, 'ACCESS:manager'),
(9, 'ACCESS:employee'),
(10, 'ACCESS:employee'),
(10, 'ACCESS:manager');

-- --------------------------------------------------------

--
-- Table structure for table `company_access_fields`
--

CREATE TABLE IF NOT EXISTS `company_access_fields` (
  `rule_id` int(11) DEFAULT NULL,
  `block_field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_access_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `company_callback`
--

CREATE TABLE IF NOT EXISTS `company_callback` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_callback`
--

INSERT INTO `company_callback` (`field`, `callback`, `freezed`) VALUES
('Company Name', 'CRM_ContactsCommon::display_cname', 1),
('Phone', 'CRM_ContactsCommon::display_phone', 1),
('Email', 'CRM_ContactsCommon::display_email', 1),
('Email', 'CRM_ContactsCommon::QFfield_unique_email', 0),
('Web address', 'CRM_ContactsCommon::display_webaddress', 1),
('Web address', 'CRM_ContactsCommon::QFfield_webaddress', 0),
('Address 1', 'CRM_ContactsCommon::maplink', 1),
('Address 2', 'CRM_ContactsCommon::maplink', 1),
('City', 'CRM_ContactsCommon::maplink', 1),
('Country', 'Data_CountriesCommon::QFfield_country', 0),
('Zone', 'Data_CountriesCommon::QFfield_zone', 0),
('Account Manager', 'CRM_ContactsCommon::display_contact', 1),
('Account Manager', 'CRM_ContactsCommon::QFfield_contact', 0),
('County', 'CRM_Contacts_CountyCommon::QFfield_county', 0),
('Parent Company', 'CRM_ContactsCommon::display_company', 1),
('Parent Company', 'CRM_ContactsCommon::QFfield_company', 0);

-- --------------------------------------------------------

--
-- Table structure for table `company_data_1`
--

CREATE TABLE IF NOT EXISTS `company_data_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `f_company_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_short_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_fax` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_web_address` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_group` text COLLATE utf8_unicode_ci,
  `f_permission` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_address_1` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_address_2` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_city` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_country` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_zone` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_postal_code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_tax_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_account_manager` int(11) DEFAULT NULL,
  `f_county` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_parent_company` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `company_data_1`
--

INSERT INTO `company_data_1` (`id`, `created_on`, `created_by`, `private`, `active`, `f_company_name`, `f_short_name`, `f_phone`, `f_fax`, `f_email`, `f_web_address`, `f_group`, `f_permission`, `f_address_1`, `f_address_2`, `f_city`, `f_country`, `f_zone`, `f_postal_code`, `f_tax_id`, `f_account_manager`, `f_county`, `f_parent_company`) VALUES
(1, '2012-11-14 13:08:09', 1, 0, 1, 'hank.com', NULL, NULL, NULL, NULL, NULL, '__other__', '0', NULL, NULL, 'suzhou', 'US', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2012-11-14 13:19:39', 1, 0, 1, 'apple company', 'apple', '123456788', NULL, 'hank.wang@dokec.com', 'www.apple.com', '__customer__', '0', NULL, NULL, NULL, 'US', NULL, NULL, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_edit_history`
--

CREATE TABLE IF NOT EXISTS `company_edit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edited_by` (`edited_by`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `company_edit_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `company_edit_history_data`
--

CREATE TABLE IF NOT EXISTS `company_edit_history_data` (
  `edit_id` int(11) DEFAULT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  KEY `edit_id` (`edit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_edit_history_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `company_favorite`
--

CREATE TABLE IF NOT EXISTS `company_favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `company_favorite`
--

INSERT INTO `company_favorite` (`fav_id`, `company_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_field`
--

CREATE TABLE IF NOT EXISTS `company_field` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` tinyint(4) DEFAULT '1',
  `visible` tinyint(4) DEFAULT '1',
  `required` tinyint(4) DEFAULT '1',
  `active` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `filter` tinyint(4) DEFAULT '0',
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company_field`
--

INSERT INTO `company_field` (`field`, `type`, `extra`, `visible`, `required`, `active`, `position`, `filter`, `param`, `style`) VALUES
('id', 'foreign index', 0, 0, 1, 1, 1, 0, NULL, NULL),
('General', 'page_split', 0, 1, 1, 1, 2, 0, NULL, NULL),
('Company Name', 'text', 0, 1, 1, 1, 3, 0, '128', ''),
('Short Name', 'text', 1, 0, 0, 1, 4, 0, '64', ''),
('Phone', 'text', 1, 1, 0, 1, 5, 0, '64', ''),
('Fax', 'text', 1, 0, 0, 1, 7, 0, '64', ''),
('Email', 'text', 1, 0, 0, 1, 8, 0, '128', ''),
('Web address', 'text', 1, 0, 0, 1, 9, 0, '64', ''),
('Group', 'multiselect', 0, 1, 0, 1, 10, 1, '__COMMON__::Companies_Groups', ''),
('Permission', 'commondata', 1, 0, 1, 1, 11, 0, '1__CRM/Access', ''),
('Address 1', 'text', 1, 0, 0, 1, 12, 0, '64', ''),
('Address 2', 'text', 1, 0, 0, 1, 13, 0, '64', ''),
('City', 'text', 1, 1, 0, 1, 14, 0, '64', ''),
('Country', 'commondata', 1, 0, 1, 1, 15, 0, 'Countries', ''),
('Zone', 'commondata', 1, 1, 0, 1, 16, 0, 'Countries::Country', ''),
('Postal Code', 'text', 1, 0, 0, 1, 18, 0, '64', ''),
('Tax ID', 'text', 1, 0, 0, 1, 19, 0, '64', ''),
('Account Manager', 'select', 0, 1, 0, 1, 20, 1, 'contact::Last Name|First Name;CRM_ContactsCommon::contact_format_no_company;CRM_Contacts_AccountManagerCommon::crits_accountmanager', ''),
('County', 'commondata', 0, 0, 0, 1, 17, 0, 'Countries::Country::Zone', ''),
('Parent Company', 'select', 0, 1, 0, 1, 6, 1, 'company::Company Name;CRM_Contacts_ParentCompanyCommon::parent_company_crits', '');

-- --------------------------------------------------------

--
-- Table structure for table `company_recent`
--

CREATE TABLE IF NOT EXISTS `company_recent` (
  `recent_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `user_id` (`user_id`),
  KEY `company_id` (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `company_recent`
--

INSERT INTO `company_recent` (`recent_id`, `company_id`, `user_id`, `visited_on`) VALUES
(1, 1, 1, '2012-11-14 13:08:09'),
(3, 2, 1, '2012-11-14 13:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `contact_access`
--

CREATE TABLE IF NOT EXISTS `contact_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `contact_access`
--

INSERT INTO `contact_access` (`id`, `action`, `crits`) VALUES
(3, 'view', 'a:2:{s:12:"(!permission";i:2;s:12:"|:Created_by";s:7:"USER_ID";}'),
(4, 'view', 'a:1:{s:5:"login";s:7:"USER_ID";}'),
(5, 'add', 'a:0:{}'),
(6, 'edit', 'a:2:{s:11:"(permission";i:0;s:12:"|:Created_by";s:7:"USER_ID";}'),
(7, 'edit', 'a:1:{s:5:"login";s:7:"USER_ID";}'),
(8, 'edit', 'a:1:{s:12:"company_name";s:12:"USER_COMPANY";}'),
(9, 'edit', 'a:0:{}'),
(10, 'delete', 'a:1:{s:11:":Created_by";s:7:"USER_ID";}'),
(11, 'delete', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `contact_access_clearance`
--

CREATE TABLE IF NOT EXISTS `contact_access_clearance` (
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_access_clearance`
--

INSERT INTO `contact_access_clearance` (`rule_id`, `clearance`) VALUES
(3, 'ACCESS:employee'),
(4, 'ALL'),
(5, 'ACCESS:employee'),
(6, 'ACCESS:employee'),
(7, 'ALL'),
(8, 'ALL'),
(8, 'ACCESS:manager'),
(9, 'ACCESS:employee'),
(9, 'ACCESS:manager'),
(10, 'ACCESS:employee'),
(11, 'ACCESS:employee'),
(11, 'ACCESS:manager');

-- --------------------------------------------------------

--
-- Table structure for table `contact_access_fields`
--

CREATE TABLE IF NOT EXISTS `contact_access_fields` (
  `rule_id` int(11) DEFAULT NULL,
  `block_field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_access_fields`
--

INSERT INTO `contact_access_fields` (`rule_id`, `block_field`) VALUES
(6, 'access'),
(6, 'login'),
(7, 'company_name'),
(7, 'related_companies'),
(7, 'access'),
(7, 'login'),
(8, 'login'),
(8, 'company_name'),
(8, 'related_companies');

-- --------------------------------------------------------

--
-- Table structure for table `contact_callback`
--

CREATE TABLE IF NOT EXISTS `contact_callback` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_callback`
--

INSERT INTO `contact_callback` (`field`, `callback`, `freezed`) VALUES
('Last Name', 'CRM_ContactsCommon::display_lname', 1),
('First Name', 'CRM_ContactsCommon::display_fname', 1),
('Company Name', 'CRM_ContactsCommon::display_company', 1),
('Company Name', 'CRM_ContactsCommon::QFfield_company', 0),
('Related Companies', 'CRM_ContactsCommon::display_company', 1),
('Related Companies', 'CRM_ContactsCommon::QFfield_company', 0),
('Work Phone', 'CRM_ContactsCommon::display_phone', 1),
('Mobile Phone', 'CRM_ContactsCommon::display_phone', 1),
('Email', 'CRM_ContactsCommon::display_email', 1),
('Email', 'CRM_ContactsCommon::QFfield_unique_email', 0),
('Web address', 'CRM_ContactsCommon::display_webaddress', 1),
('Web address', 'CRM_ContactsCommon::QFfield_webaddress', 0),
('Address 1', 'CRM_ContactsCommon::maplink', 1),
('Address 2', 'CRM_ContactsCommon::maplink', 1),
('City', 'CRM_ContactsCommon::maplink', 1),
('Country', 'Data_CountriesCommon::QFfield_country', 0),
('Zone', 'Data_CountriesCommon::QFfield_zone', 0),
('Home Phone', 'CRM_ContactsCommon::display_phone', 1),
('Home Address 1', 'CRM_ContactsCommon::home_maplink', 1),
('Home Address 2', 'CRM_ContactsCommon::home_maplink', 1),
('Home City', 'CRM_ContactsCommon::home_maplink', 1),
('Home Country', 'Data_CountriesCommon::QFfield_country', 0),
('Home Zone', 'Data_CountriesCommon::QFfield_zone', 0),
('Login', 'CRM_ContactsCommon::display_login', 1),
('Login', 'CRM_ContactsCommon::QFfield_login', 0),
('Username', 'CRM_ContactsCommon::QFfield_username', 0),
('Set Password', 'CRM_ContactsCommon::QFfield_password', 0),
('Confirm Password', 'CRM_ContactsCommon::QFfield_repassword', 0),
('Admin', 'CRM_ContactsCommon::QFfield_admin', 0),
('Access', 'CRM_ContactsCommon::QFfield_access', 0),
('County', 'CRM_Contacts_CountyCommon::QFfield_county', 0),
('Home County', 'CRM_Contacts_CountyCommon::QFfield_county', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_data_1`
--

CREATE TABLE IF NOT EXISTS `contact_data_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `f_last_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_first_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_company_name` int(11) DEFAULT NULL,
  `f_related_companies` text COLLATE utf8_unicode_ci,
  `f_group` text COLLATE utf8_unicode_ci,
  `f_title` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_work_phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_mobile_phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_fax` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_web_address` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_address_1` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_address_2` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_city` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_country` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_zone` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_postal_code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_permission` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_home_phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_home_address_1` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_home_address_2` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_home_city` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_home_country` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_home_zone` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_home_postal_code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_birth_date` date DEFAULT NULL,
  `f_login` int(11) DEFAULT NULL,
  `f_access` text COLLATE utf8_unicode_ci,
  `f_county` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_home_county` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contact_data_1__f_login_idx` (`f_login`,`active`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact_data_1`
--

INSERT INTO `contact_data_1` (`id`, `created_on`, `created_by`, `private`, `active`, `f_last_name`, `f_first_name`, `f_company_name`, `f_related_companies`, `f_group`, `f_title`, `f_work_phone`, `f_mobile_phone`, `f_fax`, `f_email`, `f_web_address`, `f_address_1`, `f_address_2`, `f_city`, `f_country`, `f_zone`, `f_postal_code`, `f_permission`, `f_home_phone`, `f_home_address_1`, `f_home_address_2`, `f_home_city`, `f_home_country`, `f_home_zone`, `f_home_postal_code`, `f_birth_date`, `f_login`, `f_access`, `f_county`, `f_home_county`) VALUES
(1, '2012-11-14 13:08:09', 1, 0, 1, 'hui', 'wang', 1, NULL, '__office__field__', NULL, NULL, NULL, NULL, 'wanghui198831@126.com', NULL, NULL, NULL, 'suzhou', 'US', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(2, '2012-11-14 13:23:17', 1, 0, 1, 'z', 'll', 2, NULL, '__custm__', 'zll', NULL, NULL, NULL, 'hank.huiwang@gmail.com', NULL, NULL, NULL, NULL, 'US', NULL, NULL, '0', NULL, NULL, NULL, NULL, 'US', NULL, NULL, NULL, 2, '__employee__', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_edit_history`
--

CREATE TABLE IF NOT EXISTS `contact_edit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edited_by` (`edited_by`),
  KEY `contact_id` (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `contact_edit_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `contact_edit_history_data`
--

CREATE TABLE IF NOT EXISTS `contact_edit_history_data` (
  `edit_id` int(11) DEFAULT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  KEY `edit_id` (`edit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_edit_history_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `contact_favorite`
--

CREATE TABLE IF NOT EXISTS `contact_favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `contact_id` (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact_favorite`
--

INSERT INTO `contact_favorite` (`fav_id`, `contact_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_field`
--

CREATE TABLE IF NOT EXISTS `contact_field` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` tinyint(4) DEFAULT '1',
  `visible` tinyint(4) DEFAULT '1',
  `required` tinyint(4) DEFAULT '1',
  `active` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `filter` tinyint(4) DEFAULT '0',
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_field`
--

INSERT INTO `contact_field` (`field`, `type`, `extra`, `visible`, `required`, `active`, `position`, `filter`, `param`, `style`) VALUES
('id', 'foreign index', 0, 0, 1, 1, 1, 0, NULL, NULL),
('General', 'page_split', 0, 1, 1, 1, 2, 0, NULL, NULL),
('Last Name', 'text', 0, 1, 1, 1, 3, 0, '64', ''),
('First Name', 'text', 0, 1, 1, 1, 4, 0, '64', ''),
('Company Name', 'select', 0, 1, 0, 1, 5, 1, 'company::Company Name;::', ''),
('Related Companies', 'multiselect', 1, 0, 0, 1, 6, 1, 'company::Company Name;::', ''),
('Group', 'multiselect', 1, 0, 0, 1, 7, 1, '__COMMON__::Contacts_Groups', ''),
('Title', 'text', 1, 0, 0, 1, 8, 0, '64', ''),
('Work Phone', 'text', 1, 1, 0, 1, 9, 0, '64', ''),
('Mobile Phone', 'text', 1, 1, 0, 1, 10, 0, '64', ''),
('Fax', 'text', 1, 0, 0, 1, 11, 0, '64', ''),
('Email', 'text', 0, 0, 0, 1, 12, 0, '128', ''),
('Web address', 'text', 1, 0, 0, 1, 13, 0, '64', ''),
('Address 1', 'text', 1, 0, 0, 1, 14, 0, '64', ''),
('Address 2', 'text', 1, 0, 0, 1, 15, 0, '64', ''),
('City', 'text', 1, 1, 0, 1, 16, 0, '64', ''),
('Country', 'commondata', 1, 0, 1, 1, 17, 0, 'Countries', ''),
('Zone', 'commondata', 1, 1, 0, 1, 18, 0, 'Countries::Country', ''),
('Postal Code', 'text', 1, 0, 0, 1, 20, 0, '64', ''),
('Permission', 'commondata', 1, 0, 1, 1, 21, 0, '1__CRM/Access', ''),
('Details', 'page_split', 1, 0, 0, 1, 22, 0, '', ''),
('Home Phone', 'text', 1, 0, 0, 1, 23, 0, '64', ''),
('Home Address 1', 'text', 1, 0, 0, 1, 24, 0, '64', ''),
('Home Address 2', 'text', 1, 0, 0, 1, 25, 0, '64', ''),
('Home City', 'text', 1, 0, 0, 1, 26, 0, '64', ''),
('Home Country', 'commondata', 1, 0, 0, 1, 28, 0, 'Countries', ''),
('Home Zone', 'commondata', 1, 0, 0, 1, 29, 0, 'Countries::Home Country', ''),
('Home Postal Code', 'text', 1, 0, 0, 1, 31, 0, '64', ''),
('Birth Date', 'date', 1, 0, 0, 1, 26, 0, '64', ''),
('Login Panel', 'page_split', 1, 0, 0, 1, 32, 0, '1', ''),
('Login', 'integer', 0, 0, 0, 1, 33, 0, '64', ''),
('Username', 'calculated', 0, 0, 0, 1, 34, 0, '', ''),
('Set Password', 'calculated', 0, 0, 0, 1, 35, 0, '', ''),
('Confirm Password', 'calculated', 0, 0, 0, 1, 36, 0, '', ''),
('Admin', 'calculated', 0, 0, 0, 1, 37, 0, '', ''),
('Access', 'multiselect', 0, 0, 0, 1, 38, 0, '__COMMON__::Contacts/Access', ''),
('County', 'commondata', 0, 0, 0, 1, 19, 0, 'Countries::Country::Zone', ''),
('Home County', 'commondata', 0, 0, 0, 1, 30, 0, 'Countries::Home Country::Home Zone', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact_photos`
--

CREATE TABLE IF NOT EXISTS `contact_photos` (
  `contact_id` int(11) NOT NULL,
  `filename` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_photos`
--


-- --------------------------------------------------------

--
-- Table structure for table `contact_recent`
--

CREATE TABLE IF NOT EXISTS `contact_recent` (
  `recent_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `user_id` (`user_id`),
  KEY `contact_id` (`contact_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `contact_recent`
--

INSERT INTO `contact_recent` (`recent_id`, `contact_id`, `user_id`, `visited_on`) VALUES
(10, 2, 1, '2012-11-14 13:27:00'),
(12, 1, 1, '2012-11-14 13:28:36');

-- --------------------------------------------------------

--
-- Table structure for table `crm_assets_access`
--

CREATE TABLE IF NOT EXISTS `crm_assets_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `crm_assets_access`
--

INSERT INTO `crm_assets_access` (`id`, `action`, `crits`) VALUES
(1, 'print', 'a:0:{}'),
(2, 'export', 'a:0:{}'),
(3, 'view', 'a:0:{}'),
(4, 'add', 'a:0:{}'),
(5, 'edit', 'a:0:{}'),
(6, 'delete', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `crm_assets_access_clearance`
--

CREATE TABLE IF NOT EXISTS `crm_assets_access_clearance` (
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_assets_access_clearance`
--

INSERT INTO `crm_assets_access_clearance` (`rule_id`, `clearance`) VALUES
(1, 'SUPERADMIN'),
(2, 'SUPERADMIN'),
(3, 'ACCESS:employee'),
(4, 'ACCESS:employee'),
(5, 'ACCESS:employee'),
(6, 'ACCESS:employee');

-- --------------------------------------------------------

--
-- Table structure for table `crm_assets_access_fields`
--

CREATE TABLE IF NOT EXISTS `crm_assets_access_fields` (
  `rule_id` int(11) DEFAULT NULL,
  `block_field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_assets_access_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_assets_callback`
--

CREATE TABLE IF NOT EXISTS `crm_assets_callback` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_assets_callback`
--

INSERT INTO `crm_assets_callback` (`field`, `callback`, `freezed`) VALUES
('Asset ID', 'CRM_AssetsCommon::display_asset_id', 1),
('Category', 'CRM_AssetsCommon::QFfield_category', 0),
('Company', 'CRM_ContactsCommon::display_company', 1),
('Company', 'CRM_ContactsCommon::QFfield_company', 0),
('General Info', 'CRM_AssetsCommon::display_info', 1),
('General Info', 'CRM_AssetsCommon::QFfield_info', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_assets_data_1`
--

CREATE TABLE IF NOT EXISTS `crm_assets_data_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `f_asset_id` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_active` tinyint(4) DEFAULT NULL,
  `f_category` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_asset_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_asset_tag` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_company` int(11) DEFAULT NULL,
  `f_date_purchased` date DEFAULT NULL,
  `f_serial_number` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_ip_address` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_host_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_operating_system` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_processor` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_ram` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_hdd` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_optical_devices` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_audio` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_software` text COLLATE utf8_unicode_ci,
  `f_display_type` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_screen_size` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_printer_type` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_color_printing` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `crm_assets_data_1`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_assets_edit_history`
--

CREATE TABLE IF NOT EXISTS `crm_assets_edit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crm_assets_id` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edited_by` (`edited_by`),
  KEY `crm_assets_id` (`crm_assets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `crm_assets_edit_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_assets_edit_history_data`
--

CREATE TABLE IF NOT EXISTS `crm_assets_edit_history_data` (
  `edit_id` int(11) DEFAULT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  KEY `edit_id` (`edit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_assets_edit_history_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_assets_favorite`
--

CREATE TABLE IF NOT EXISTS `crm_assets_favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `crm_assets_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `crm_assets_id` (`crm_assets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `crm_assets_favorite`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_assets_field`
--

CREATE TABLE IF NOT EXISTS `crm_assets_field` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` tinyint(4) DEFAULT '1',
  `visible` tinyint(4) DEFAULT '1',
  `required` tinyint(4) DEFAULT '1',
  `active` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `filter` tinyint(4) DEFAULT '0',
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_assets_field`
--

INSERT INTO `crm_assets_field` (`field`, `type`, `extra`, `visible`, `required`, `active`, `position`, `filter`, `param`, `style`) VALUES
('id', 'foreign index', 0, 0, 1, 1, 1, 0, NULL, NULL),
('General', 'page_split', 0, 1, 1, 1, 2, 0, NULL, NULL),
('Asset ID', 'calculated', 0, 1, 0, 1, 3, 0, 'VARCHAR(16)', ''),
('Active', 'checkbox', 0, 1, 0, 1, 4, 1, '', ''),
('Category', 'commondata', 0, 1, 1, 1, 5, 1, 'crm_assets_category', ''),
('Asset Name', 'text', 0, 1, 1, 1, 6, 0, '128', ''),
('Asset Tag', 'text', 0, 0, 0, 1, 7, 0, '128', ''),
('Company', 'select', 0, 1, 0, 1, 8, 1, 'company::Company Name;CRM_AssetsCommon::company_crits', ''),
('Date Purchased', 'date', 0, 0, 0, 1, 9, 0, '', ''),
('Serial Number', 'text', 0, 0, 0, 1, 10, 0, '128', ''),
('IP Address', 'text', 0, 0, 0, 1, 11, 0, '128', ''),
('General Info', 'calculated', 0, 1, 0, 1, 12, 0, '', ''),
('Host Name', 'text', 0, 0, 0, 1, 13, 0, '128', ''),
('Operating System', 'text', 0, 0, 0, 1, 14, 0, '128', ''),
('Processor', 'text', 0, 0, 0, 1, 15, 0, '128', ''),
('RAM', 'text', 0, 0, 0, 1, 16, 0, '128', ''),
('HDD', 'text', 0, 0, 0, 1, 17, 0, '128', ''),
('Optical Devices', 'text', 0, 0, 0, 1, 18, 0, '128', ''),
('Audio', 'text', 0, 0, 0, 1, 19, 0, '128', ''),
('Software', 'long text', 0, 0, 0, 1, 20, 0, '', ''),
('Display Type', 'commondata', 0, 0, 0, 1, 21, 0, 'crm_assets_monitor_type', ''),
('Screen Size', 'text', 0, 0, 0, 1, 22, 0, '128', ''),
('Printer Type', 'commondata', 0, 0, 0, 1, 23, 0, '1__crm_assets_printer_type', ''),
('Color Printing', 'checkbox', 0, 0, 0, 1, 24, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `crm_assets_recent`
--

CREATE TABLE IF NOT EXISTS `crm_assets_recent` (
  `recent_id` int(11) NOT NULL AUTO_INCREMENT,
  `crm_assets_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `user_id` (`user_id`),
  KEY `crm_assets_id` (`crm_assets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `crm_assets_recent`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_calendar_custom_events_handlers`
--

CREATE TABLE IF NOT EXISTS `crm_calendar_custom_events_handlers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handler_callback` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `crm_calendar_custom_events_handlers`
--

INSERT INTO `crm_calendar_custom_events_handlers` (`id`, `group_name`, `handler_callback`) VALUES
(1, 'Phonecalls', 'CRM_PhoneCallCommon::crm_calendar_handler'),
(2, 'Tasks', 'CRM_TasksCommon::crm_calendar_handler'),
(3, 'Meetings', 'CRM_MeetingCommon::crm_calendar_handler');

-- --------------------------------------------------------

--
-- Table structure for table `crm_filters_contacts`
--

CREATE TABLE IF NOT EXISTS `crm_filters_contacts` (
  `group_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT NULL,
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_filters_contacts`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_filters_default`
--

CREATE TABLE IF NOT EXISTS `crm_filters_default` (
  `user_login_id` int(11) NOT NULL,
  `filter` varchar(16) COLLATE utf8_unicode_ci DEFAULT 'my',
  KEY `user_login_id` (`user_login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_filters_default`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_filters_group`
--

CREATE TABLE IF NOT EXISTS `crm_filters_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_login_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`user_login_id`),
  KEY `user_login_id` (`user_login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `crm_filters_group`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_meeting_access`
--

CREATE TABLE IF NOT EXISTS `crm_meeting_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `crm_meeting_access`
--

INSERT INTO `crm_meeting_access` (`id`, `action`, `crits`) VALUES
(1, 'print', 'a:0:{}'),
(2, 'export', 'a:0:{}'),
(3, 'view', 'a:2:{s:12:"(!permission";i:2;s:10:"|employees";s:4:"USER";}'),
(4, 'add', 'a:0:{}'),
(5, 'edit', 'a:3:{s:11:"(permission";i:0;s:10:"|employees";s:4:"USER";s:10:"|customers";s:4:"USER";}'),
(6, 'delete', 'a:1:{s:11:":Created_by";s:7:"USER_ID";}'),
(7, 'delete', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `crm_meeting_access_clearance`
--

CREATE TABLE IF NOT EXISTS `crm_meeting_access_clearance` (
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_meeting_access_clearance`
--

INSERT INTO `crm_meeting_access_clearance` (`rule_id`, `clearance`) VALUES
(1, 'SUPERADMIN'),
(2, 'SUPERADMIN'),
(3, 'ACCESS:employee'),
(4, 'ACCESS:employee'),
(5, 'ACCESS:employee'),
(6, 'ACCESS:employee'),
(7, 'ACCESS:employee'),
(7, 'ACCESS:manager');

-- --------------------------------------------------------

--
-- Table structure for table `crm_meeting_access_fields`
--

CREATE TABLE IF NOT EXISTS `crm_meeting_access_fields` (
  `rule_id` int(11) DEFAULT NULL,
  `block_field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_meeting_access_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_meeting_callback`
--

CREATE TABLE IF NOT EXISTS `crm_meeting_callback` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_meeting_callback`
--

INSERT INTO `crm_meeting_callback` (`field`, `callback`, `freezed`) VALUES
('Title', 'CRM_MeetingCommon::display_title', 1),
('Duration', 'CRM_MeetingCommon::QFfield_duration', 0),
('Employees', 'CRM_MeetingCommon::display_employees', 1),
('Employees', 'CRM_ContactsCommon::QFfield_contact', 0),
('Customers', 'CRM_ContactsCommon::display_company_contact', 1),
('Customers', 'CRM_ContactsCommon::QFfield_company_contact', 0),
('Status', 'CRM_MeetingCommon::display_status', 1),
('Recurrence type', 'CRM_MeetingCommon::QFfield_recurrence', 0),
('Recurrence end', 'CRM_MeetingCommon::QFfield_recurrence_end', 0),
('Recurrence hash', 'CRM_MeetingCommon::QFfield_recurrence_hash', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_meeting_data_1`
--

CREATE TABLE IF NOT EXISTS `crm_meeting_data_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `f_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_description` text COLLATE utf8_unicode_ci,
  `f_date` date DEFAULT NULL,
  `f_time` datetime DEFAULT NULL,
  `f_duration` int(11) DEFAULT NULL,
  `f_employees` text COLLATE utf8_unicode_ci,
  `f_customers` text COLLATE utf8_unicode_ci,
  `f_status` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_priority` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_permission` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_recurrence_type` int(11) DEFAULT NULL,
  `f_recurrence_end` date DEFAULT NULL,
  `f_recurrence_hash` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `crm_meeting_data_1`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_meeting_edit_history`
--

CREATE TABLE IF NOT EXISTS `crm_meeting_edit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crm_meeting_id` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edited_by` (`edited_by`),
  KEY `crm_meeting_id` (`crm_meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `crm_meeting_edit_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_meeting_edit_history_data`
--

CREATE TABLE IF NOT EXISTS `crm_meeting_edit_history_data` (
  `edit_id` int(11) DEFAULT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  KEY `edit_id` (`edit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_meeting_edit_history_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_meeting_favorite`
--

CREATE TABLE IF NOT EXISTS `crm_meeting_favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `crm_meeting_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `crm_meeting_id` (`crm_meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `crm_meeting_favorite`
--


-- --------------------------------------------------------

--
-- Table structure for table `crm_meeting_field`
--

CREATE TABLE IF NOT EXISTS `crm_meeting_field` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` tinyint(4) DEFAULT '1',
  `visible` tinyint(4) DEFAULT '1',
  `required` tinyint(4) DEFAULT '1',
  `active` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `filter` tinyint(4) DEFAULT '0',
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `crm_meeting_field`
--

INSERT INTO `crm_meeting_field` (`field`, `type`, `extra`, `visible`, `required`, `active`, `position`, `filter`, `param`, `style`) VALUES
('id', 'foreign index', 0, 0, 1, 1, 1, 0, NULL, NULL),
('General', 'page_split', 0, 1, 1, 1, 2, 0, NULL, NULL),
('Title', 'text', 0, 1, 1, 1, 3, 0, '255', ''),
('Description', 'long text', 0, 0, 0, 1, 4, 0, '255', ''),
('Date', 'date', 0, 1, 1, 1, 5, 0, '255', ''),
('Time', 'time', 0, 1, 1, 1, 6, 0, '255', 'time'),
('Duration', 'integer', 0, 0, 0, 1, 7, 0, '255', 'number'),
('Employees', 'multiselect', 0, 1, 1, 1, 8, 1, 'contact::Last Name|First Name;CRM_ContactsCommon::contact_format_no_company;CRM_MeetingCommon::employees_crits', ''),
('Customers', 'multiselect', 0, 1, 0, 1, 9, 0, '', ''),
('Status', 'commondata', 0, 1, 1, 1, 10, 1, '1__CRM/Status', ''),
('Priority', 'commondata', 0, 1, 1, 1, 11, 0, '1__CRM/Priority', ''),
('Permission', 'commondata', 0, 0, 1, 1, 12, 0, '1__CRM/Access', ''),
('Recurrence type', 'integer', 0, 0, 0, 1, 13, 0, '', 'number'),
('Recurrence end', 'date', 0, 0, 0, 1, 14, 0, '', ''),
('Recurrence hash', 'text', 0, 0, 0, 1, 15, 0, '16', '');

-- --------------------------------------------------------

--
-- Table structure for table `crm_meeting_recent`
--

CREATE TABLE IF NOT EXISTS `crm_meeting_recent` (
  `recent_id` int(11) NOT NULL AUTO_INCREMENT,
  `crm_meeting_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `user_id` (`user_id`),
  KEY `crm_meeting_id` (`crm_meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `crm_meeting_recent`
--


-- --------------------------------------------------------

--
-- Table structure for table `data_tax_rates_access`
--

CREATE TABLE IF NOT EXISTS `data_tax_rates_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `data_tax_rates_access`
--

INSERT INTO `data_tax_rates_access` (`id`, `action`, `crits`) VALUES
(1, 'print', 'a:0:{}'),
(2, 'export', 'a:0:{}'),
(3, 'view', 'a:0:{}'),
(4, 'add', 'a:0:{}'),
(5, 'edit', 'a:0:{}'),
(6, 'delete', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `data_tax_rates_access_clearance`
--

CREATE TABLE IF NOT EXISTS `data_tax_rates_access_clearance` (
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_tax_rates_access_clearance`
--

INSERT INTO `data_tax_rates_access_clearance` (`rule_id`, `clearance`) VALUES
(1, 'SUPERADMIN'),
(2, 'SUPERADMIN'),
(3, 'ACCESS:employee'),
(4, 'ACCESS:employee'),
(4, 'ACCESS:manager'),
(5, 'ACCESS:employee'),
(5, 'ACCESS:manager'),
(6, 'ACCESS:employee'),
(6, 'ACCESS:manager');

-- --------------------------------------------------------

--
-- Table structure for table `data_tax_rates_access_fields`
--

CREATE TABLE IF NOT EXISTS `data_tax_rates_access_fields` (
  `rule_id` int(11) DEFAULT NULL,
  `block_field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_tax_rates_access_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `data_tax_rates_callback`
--

CREATE TABLE IF NOT EXISTS `data_tax_rates_callback` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_tax_rates_callback`
--


-- --------------------------------------------------------

--
-- Table structure for table `data_tax_rates_data_1`
--

CREATE TABLE IF NOT EXISTS `data_tax_rates_data_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `f_name` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_description` text COLLATE utf8_unicode_ci,
  `f_percentage` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `data_tax_rates_data_1`
--

INSERT INTO `data_tax_rates_data_1` (`id`, `created_on`, `created_by`, `private`, `active`, `f_name`, `f_description`, `f_percentage`) VALUES
(1, '2012-11-14 13:11:38', 1, 0, 1, 'Non-taxable', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_tax_rates_edit_history`
--

CREATE TABLE IF NOT EXISTS `data_tax_rates_edit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_tax_rates_id` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edited_by` (`edited_by`),
  KEY `data_tax_rates_id` (`data_tax_rates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `data_tax_rates_edit_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `data_tax_rates_edit_history_data`
--

CREATE TABLE IF NOT EXISTS `data_tax_rates_edit_history_data` (
  `edit_id` int(11) DEFAULT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  KEY `edit_id` (`edit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_tax_rates_edit_history_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `data_tax_rates_favorite`
--

CREATE TABLE IF NOT EXISTS `data_tax_rates_favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_tax_rates_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `data_tax_rates_id` (`data_tax_rates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `data_tax_rates_favorite`
--


-- --------------------------------------------------------

--
-- Table structure for table `data_tax_rates_field`
--

CREATE TABLE IF NOT EXISTS `data_tax_rates_field` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` tinyint(4) DEFAULT '1',
  `visible` tinyint(4) DEFAULT '1',
  `required` tinyint(4) DEFAULT '1',
  `active` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `filter` tinyint(4) DEFAULT '0',
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `data_tax_rates_field`
--

INSERT INTO `data_tax_rates_field` (`field`, `type`, `extra`, `visible`, `required`, `active`, `position`, `filter`, `param`, `style`) VALUES
('id', 'foreign index', 0, 0, 1, 1, 1, 0, NULL, NULL),
('General', 'page_split', 0, 1, 1, 1, 2, 0, NULL, NULL),
('Name', 'text', 0, 1, 1, 1, 3, 0, '16', ''),
('Description', 'long text', 0, 0, 0, 1, 4, 0, '', ''),
('Percentage', 'float', 0, 1, 1, 1, 5, 0, '', 'number');

-- --------------------------------------------------------

--
-- Table structure for table `data_tax_rates_recent`
--

CREATE TABLE IF NOT EXISTS `data_tax_rates_recent` (
  `recent_id` int(11) NOT NULL AUTO_INCREMENT,
  `data_tax_rates_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `user_id` (`user_id`),
  KEY `data_tax_rates_id` (`data_tax_rates_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `data_tax_rates_recent`
--

INSERT INTO `data_tax_rates_recent` (`recent_id`, `data_tax_rates_id`, `user_id`, `visited_on`) VALUES
(1, 1, 1, '2012-11-14 13:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `epesi_store_modules`
--

CREATE TABLE IF NOT EXISTS `epesi_store_modules` (
  `module_id` int(11) NOT NULL,
  `version` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_license_id` int(11) NOT NULL,
  `file` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `epesi_store_modules`
--


-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `session_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `client_id` smallint(6) NOT NULL DEFAULT '0',
  `data` longblob,
  PRIMARY KEY (`client_id`,`session_name`,`page_id`),
  KEY `history__session_name__client_id__idx` (`session_name`,`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`session_name`, `page_id`, `client_id`, `data`) VALUES
('65c6av8e2fhmbtcvl6k316nop2', 0, 2, 0x789ce55a6d6fdb3812fe2b45bef7ca7791eea726873d1cb009166df7eebe097c8d853a9657929b0d56fdef379464c78ed4586ea41cd0fb625b26a97938331cce33a45e30b5f8ab5c10b6b87877a94b9f5ee67fd6a8fdf979e9ef7c8d2edeeb05693a91c5459a964b5d78976ed7d91f5b9f7ed54599a6b10b5afcf5ad5c601afb58bd5a196dbf1c34c5367c2424b6e0f85e907da7b375f79c2dd04ea08086dc6d57fee23d8c866e71f0bbbfeb7269725db8f82ffcb9d6774d07d1be2685177f8be2381f98d37e70ddf67df77b95adcaf4b336c6bbcb22bf2f7dd142a31101bc22e48585f7dfb4c236fa161e22c672a116172b5d56e9eebfb7f83d88a57484d866aeea454ac5bcd11de874d79026c4b8442a4631355869448545ca61e799519c12b9b7244c246cd7b67b8eb3b901fc386a592e2ecafbacb2cbd4e6eb90dda6600198ddb766902e6ecb03831e0937c273e71db3d8204f3d0a4e502f8d4d50e293c4ea31c2c184add46de153bdd9ac7cf5547437043a2f2ed8c56e2074680df96f0dd05d7e1b7de009402b895658738b09920936566b4da9512a30820cf73300147b8060c10f9b4d997e5ae6dbcae47f0ee0f3021385ad09dc714302c71e21ef994a044d94b776067c6a8f2f69f041f732bdcc8a6ae9f443398091711f280f5819cc1427e05582396a8210d1c508991a232c0e8c0fad7cf5f13afd35bfcdd61fb62eab86105a22415f98386eb5e0ccdba01ce309560ccc6fc31c08f91e217f54e3c7b2fcc57b3700515a6498469a2842b00b84202e25359e1b6f0c27740643931d42d5aaf0b32ebf0cd9573204aee759108e6aad8ca0c82b991006d0bcc66c0668fc708d446cbf2df3b5bf024403f884b5d883d76912245114c72fab98f25e0463583203be648f8fb4f8009a5f3b5d0cc04b848288e71327ac3441a9840a652df5162161a49ac5f9c8a1f3b541f0da97a55fdffa21885c808781ee10e22a2081126975624350c459039bc41c10454f85f9bad2b61af240c391323e388995744642984160ddc461060e89668982f849946e96efd52ab75f86e28b32d46a8c18d858291e54f0c106ad03951a09a166c0470fd5b7c37793577e009e7392696d83e458c0b245c2812eb56644c6684327dfe4a279e9d02e720d265efe2bf3f70320b1b69405679893549904a18024f5de0ae31c64307c0e90ec3925c238800eaad2db55d5e67a31593dca804cf3aa33e771f374c869fbf4869cf6b8de90d38ba837e4745ce80d391ded7a434ec7efde90d35b527fc8c90db6afe49369437fc8c95ca837e4748ad71b723a6bed5bff6426de37e549e67013171747e329d52e13afd99e4dbd8840b61b9ccbcacd4a3fa4ba4aabecaea15d9872221396101121ca3358df23c4ee8f7ff8b52f32bbe381e5d694b6c8365596af9b88f232c6f6d814b202786337978ec63ac87ae24f20601b5f74a4321a0a2694172e6ee6372dcb2dbd2eecb20b536011edbea6bbffda80079df2104abf8b6591d42df3fb14f0a45591dd426a1033d318d262c854635476445f6a319551617495c779439736e783198fa1d0ef7a7ca57edc7c5f5aaa90f80711748ef4d15bb0d9ce8f6c9beeec5506822b6de2a4936693691ba728b08c5a9f67c21e5e1b0773fa3957051fe502c77cb48e64752217e4e41c5b766cb3c67c32006c5424ddb3c99a4c263919e5c6079207ddb782b68125c7e2afd8f2729c4a4c8573788ded66f0732eb071dbce5145a0e693e512b0ba5bd6903a5db50566c04310266f317e8bd91bcc16942c906876a4e447b00e5a7b13db6db3d3f55c13841c34bfda7e7016ec614f3d9ad54feaae72ac2e7705a23a992e2226e70b1fb614280c9affd39c20e0ee88a353dcc1f10bed8e5f6cbedadead2f5afd7eaa7451757eeab2c2db981777a9db874f57174756684ce4ff56c6315d9d274eb0e3d8e92b897c69728abb97a7cbacacf2e2e1d01ba353bd6900bee9a09cedb473a42da3d2862775c21a4fb779cb3338e22180e7dcf575bc15564e019eb97e456f3d1679a6bbbd76889dc15b935119d4779de5579fdd2e231ffdadc8ef36d58467d5e393935d2dbbc6e27f11ee1fa59fa29e7c16ea49faa7d0265189a3b076a8f18e11e18d62026bc93d0aca9811d55d194ff5bf66b74d66765cd4a5fbc238b8dfd7ccdfa77e5d150fbbea2ef4f4cdc160b620ef77d5fd81b36aa235b79c264c5b2f62399579e58860c13a49c71c234d09917435e83331f6ab782735df54f1301acd5b46bad7ff69896074e1ecf144a99eae40302e213d3ceaa8e964c2f9d085a1ef0adf1f06d5984ec5e0a2e577cc0d1d3037de2c47312a820ee19be7eed379aed218ebe0b4fda5d207ef24fd0e6bb4ad5dd5abf839dd5c87c2cb5369f3a8990c89bef6eb6d7d071fd3e973c89a7b31fb7c059ed154ee0e2df9aab9f246e145810913cff228d23c70c314e7f0994845b0c45eaa660d7c1fe51fdb0cb60b6d2da454e9b49a19cafe3f3531b6de85daa9dc6cc8a98f44cde363838b0912f36a5b5e02ef2e9b5fd3491bf2e80f0db388d274f3cbe862de4835207026e53e3fdd95866c6cb9d1eeb5a6bb17f88adbc209e9331f315cc35674dddcbafde7da6556030faddb5bb8d9ee79320062e888610480997cef49ec8a09f02fd9aaf2455987e67b4fa37e5814edd125e31825ce61441d09dad92421c8a04443c68e82e48fa4b2cf45da1b370730aff2bbbb584ce86ebae098f256e9a6c8017e8fa6e083eb31770f83d774243186b8443849126a920429cca5d25cf0848ae76eb34d846c7f26fc145a70843201582c561c074634e1c12aab25e31cfbe794b6bf41d45c3b5f035b485be39683b79ccf97dca365a7f5d8bfc271d2291a26c786ce2887d60fa45cf9bcb9fff7a4ceb154bffd1716a5f371),
('65c6av8e2fhmbtcvl6k316nop2', 1, 2, 0x789cbd58db72d34810fd17bf6f31f78bf29484a56aab80da4ae059d533d313abb02590e45d28ccbf6f4b8a43c0220422ef8b2c79a439473da7bbcf080a218bcf5d2154b17a76011d9617cdc73d9b4edfac718b7bb63a83428c3789625596dd1a5a4ce5aeae3eecb0fc07daae2c875b58f1f94b577039dc1361b30910dfdd1b1ac6f8372077f312f616aa7ab8e6c5e7aa60870143034dda6d7075464fb362353e7c9eb6c3cde373356cc741334d51d2a423d2c874dd62eeca9b3890a80a7e46035acfbce773e8d6a18136eda7399ebdedab4d57be8110305db4cdbf1db613dd315634456eda48b8af2712efe10607044697be586da0ebcbc37f7f8cb052cec0bea569cb97cd4d55ef37c371b1382bf308b4d32cb198837e85f56ebfa5c36230d23f0473bb7ee3f5d7657b12264116ab669306ad499a282b139404900c74d64179ade9689d17dc71747e75f620cb0fbb2abe2b2146ecba72d9c8b019cc6b8436aef7ddf8b39ccce644fd0dd46934369b4cd73df4bbee02da7d379e2d8736a7e8f3d8574d3da0c17816a05d2eac73aa99013c51701f7edd0deceab87e0fe9ff7add3bc0d3bceeefa0f3c5d0b5982b10d4835e8d5defaf3a5511faa6dd4f5db03a5c2f46c0ccb5c347103891f6beab5d9757afca17d5a6c7b6dbe7f177b8593f096a6c058a8cc8e1ff322425454a9cc92432a468ad60815960d9b3ecb4b96f5332c9e1f67a6af7dc16ab7b342f9bedb6a927b731f99d0ec90bb40dd1c7b127d024d0de74f7bc0ebd0c99974f9371f9861907274210c99ae48495c15ae6b9761eb4d1569a7c7a6614412233432d272195212e917bcdb31220748e3e82535a737c2868af0f1c46db57934f2aa7c5edbea731cae2d7914757f66b713c7ae4e7a2787d76cbec51f94396ab59ae6ccc99f51fa19ec8e7cdd6cdc198ef0f3e1c68299f8224d851aafaa40d43157876990b9e4dd009b3b21103f38ca9c7a88e4dca3fec2b7e20fcef371b4732446333329285b49e0353319b1cb4d7c66b192d63cb52795905da8f5cfefdfcc50c15c296292b0c80da310a438c8e34ca03083070af553f998a3b0425ced504a6c1b98c262b6dbde591452bb84fdcda9493e50b86c4dff220cdcf1627c339a744052dbc0c9a65aa1259490b4a47657c38814cfe6cdba12d1f51011ba565810329d4493970b0c2bb289860d69805d766d8c17f4df549b755d7b7935f3822e6b9671c7500ef98d52118ab69c9b2cd3e320f2a2e18a3836ac61de835f67d550fb71cb73b238158386995715682579e924c6766c07be397cc6e12d0b447bcdcb52dd6f1d38b0a87cddd11271b92d49446423b04ee9c968e2925d060648ca2b520a7c3fadd7d8d98ab3a8cea9e4513b994b4708231a37846a53d50bb324b2a5b1f94fd1ebbea9a4484337c8470820b15a4f62624af20aba89d60540a8da7f2b8a0bce52d9f9750dffc54dd0142d23e52f653ca7baed0050dd1481e352d1fe209788deafe192f2225750c54061ca948879cb3f636278d90588afa04e560c617cce95cfa9452a02c632a4b412d3593d9a1f6c17c8e51f2058565ee726fb4a4cfa187b948196f0c8680434be522011937af84145a33eda45b36f10612c46757f76d8573b52901334650bb4fe8259940ce1c05c9e0e04194f44bc6e7ae365d616cdac3f7c7194e86854140a81880545938a7c0056763e241025b504c833f1b43f4063e5e413f1b21a925591095b8d282ca9306d052906b668a25af61c9ea7da7a0f3be87b8de62ddcfb5130c484b1552768a43a4164cfb06e549e13619644b7638356db5c6afabe7bb54cdd18943462152d9163248dabc40a6930c8ac828ab167402c36a0d74ae48cf29eec258b8bf4c25bdc30dc69e9cf8618e303e42d30c1fcb0fbb9ab9cf12f7cdfd29f6145ffe03020ddcea),
('65c6av8e2fhmbtcvl6k316nop2', 2, 2, 0x789cbd59c972db4812fd17de275cfb429d6cd99e9808db3161b9cf88ac4dc23449a801d06e87e9f9f6c902088a366041dd02e722114b55beca7c95f9b2006b26d7df9a3513ebd58b57d0c4e255f5e781f43f3fddc56d3c90d515ac59f7125baf8aa2b9833a8662bf2bffd8c7e233d44d51e457c8fadbf7664d797ec7c366e3c0ff7ef6283fa33f1839cd8bb6b750eef2355d7f2bd76478a0f04115f69bb8bac2d164bdea06bf0cdbfc72376e07dbeea1eaa72870d2ce5287f4ae8ea9296e7d0651aee9153e9072629dafa1b97315d4e1d0cff1e2b7b6dc34c527702e865775f5a589750f9767543845aa6a8f763ff420eee136660b042fed7ab581a62d867bffe8cc723e61f6379cb67857dd96bbc326ff5dcccf423dc1da6542cca64cbf8fbbfd618b7f1633c3ed63668ef1ebae1fc2f62c9b6872bdaa3621738de344492827380027209374c24a897fb5b18c1a1a8d5d5d3d8af28f7de97f2fc0fbd834c5b29e2113366f22d4feeed074ff96a3d914a97f3075198e4d6ea69b16da7df30aea43d3fd5aceda14a35ffab6ac76d91a74bf1cd4cbb9758a3513062fe4dcc797bb81fdcedfdd43f87f2df764f032cbfd3bd6e962d6259b4a105883de7755ef5fbb507a68abfad057c172b85e0c809a2a874f007021eefd94bbae3fbe2fde969b36d6cd2175fff3cbf259a6ba522050880cf70b1704672150c2034b10bcd68c38a281244b9291ea5ca624a4c3f1ba2ff754af576730afabedb6daf56aa3d73b4d442d5057083f7635012781fab639d33ab818142f5f7be1f203320a8639c78256c130cd9dd6c452692c48253557e9f2c8d0830866025a0a8c0b85583cb59226c180c9e4ad0723a4a4f131a77d183074b26f873aa9e883dbfc0ca3a3c55fb7dca9b2bfe6c7d19079527cb83a227bd2fe41c9552d9736a6c4faafac5e48e74de6cd2ccc0f830e474bcfd35d8c8cf6aa0d5291281c4d265146937232c424b48f8e5842c45368477aea0f8dc52f98ff73b731e261543a4582bce0da5220c227959cb45259c9bd26645928ef4a870dc9f5bf5fbf9d8082b67948223a88d2107483f706494a1d30507056ab9f0dc50c4ef1534981483026459584d456534fbc66d406aa754841d3055d628f3890f493d949514a71a78264963b4912a68924b80621bd50d65d80266fea3ad7e51114d09e6be22820430de7198366d6784618d14a2d189bdcc23fecf59eb765d3d6bd601801b3d4121aa5036b8896ce292d31644927eb8905e117f4d1c09aae05bd896d5beef22be37aa738200ac3b5504673b0c2e226938928b056d925773712a86f12aff7751d77feebdb32e6ee6e8449bbc0256e23264d046a8ce48608c1a28a9e10f4d6829886f89d8e23a6b20ec1bca7a3f294730c1c2344099aa29016b05ea925992d0766dfc7a6bc4112c5093c8c194699705c5ae5821590849786114c85ca627a5c90defc88e71dec6e67d9edc005693dee7edcf2968a689c04af38f512c317e3057075ec9ec385a0b8f40ed38041164997529256a720230412bcbc403a981006533ce73684e07097119138c3929a50ed60f9203679cfe982c452a7bdd769d2d7d0c294a794552a3a177349a52c002a372b1867521269b85976e365108867bf6beb324ee5a600442986e53e44cb51055262d0492a660d22b85dd23fa7dcf431faaa1e0e20273029e23281a220005c24668c00e38cf6813a0e644132657dd6b9e813fcf911da490f71c9518288408564989e2480e40c6533112458094b66ef13835eb62df8bb6ddcb553e524ba88a172211941c16309c6c6415864b80e2a92252b9ce87badee78f5e53e9453707cde513162da66dc71ec5e20e18f0402c1082d165402395a19ce47e473f07bd725eeef7d4a6fe226fa1695f8d9c1faaf08d7cd9e0fd1271aa4f9d58cdbb0d9788c86cc736a34647e538c86cca79ad190f97439b6329bfac75de86c151b0d992fc8a321f39a62bcfc5955348efeacb81b0d9997a8a321f3727b3464be59180d996f744643e67bb4715c663bccb1c766fbe3eed8424e1d5b9c77ef2f26f2417f7a607286c2fcd2821b3ecaf97a5b408379a9c977fe76bb4f47ddbe54b80db956262a083c28c531fe9161da902432f7948a62f227c2cfe52dd6ac9fd3a538efe13e97f14b8165a4fe3a1c91e5a3af10f215eb66e3a703a9effd2221fbab709d738abaf314fa60da29f4f4fe708e79349d975b976d5334ed3ea5330fe1039c1015e5e941e79f3cf5fa0d1618746e357c047dfde6e6ba5b5dcee4b93ef4a0c280eab8dac7e3268f481e30c82384271ad7ebd599bde1ec4e4f7dac99a7daf29f60cdb380fc33ee625dfae1f6b9eb2007ebe81d089f8be12b5b0f46e588f4371a74ca6a6043f705f03ffbed7dd156fd2aecd9cde1add57f3b2bc5f099fb21241ffab9ab943ad29d8e67ee9132c3c21979ce7e7c7894ca1add19cae67e035f8f610fd5ae170f68b3b9abbe1438b840f17c7b1bd1d0eaca21a0efdfff0720204413),
('65c6av8e2fhmbtcvl6k316nop2', 3, 2, 0x789cbd5adb72db3812fd17bd4f05f78bfc9438c9d65425aead38f3cc6adc6cd6c89287a49249c5f9f76d9092a384b029dbd4be48bc017dd038e83e0d12964c2ebfb74b26968b576fa08dd59bcdbf776438fc7c1d6fe21d599cc192f50fb1e5a2aada6b6862a8b6ebfa9f6dacbe40d356557e842cbfff689794e7673cac560efcdf07b7f23dfa8b91fb7ed1f60dd4eb7c4e97dfeb25d9df50786313b6abb838c3d664b9e81bbf0e37f9e1bedd1a6efa9b6ae8a2c24e7b4b3dd2eb26a6b6baf21944bda4677843cac238df427bed36d084bba18f577f75f5aaad3e837331bc69365fdbd80c707946855da44de3d1eec500e216ae62b640f0d42e172b68bb6a7fed8fde2ce705b37f61b7d587cd55bdbe5be5dfd9fc2cd411d64e33c5ac64fa635c6fef6ef0673633dc3e6666377ffdf9cf697b914d34b95c6c5621738d6347492827380027209374c24a89bfda58460d8dc62ece1e45f9cfb6f67f57e07d6cdb6a5ecf9082cdcb088dbfbe6bfbbff9685622f52fa64ec3b1e262baeca0dbb66fa0b96bfba3f9ac9518fdda77f5669dad417fe4a099cfad25d6140c9ec8b98f0f7705dbb5bfbe85f0ff1aeebdc1d30cf739d6e96cd6252b0508cc411ffbacf7e73ad41eba4d733764c17a7f3e1b00554a8747003811f77e8b5de79f3e56efeb55179bf62ef5fff961f922537d2a102844f6d72b1704672150c2034b10bcd68c38a281244b9291ea50a624a4c3ee7c48f7542f170730cf3737379bf5a03606bdd346d402cd06e1c73e276027d05cb5075a070783e2e5db205c7e4146c130e758d02a18a6b9d39a582a8d05a9a4e62a9d1e197a10c114a0a5c0b85088c5532b69120c984cde7a30424a1a1f73dac51e432ffbd6a893aa6172dbdf61f4b478bae55e953dcd8fa326d3a4b838db213b6afda0e4dacc17364a62fd21ab27d279c5b89985f9dd5e87432e2a5e628a91d15ab5412a1285a3c924ca68524e869884f6d1114b8838867664a0febeb07880f9bf571b231e46a55324c80bae2d05227c52c9492b9595dc6b42e685f2a17658909cfff7edfb0214b4cd4312d1419486a01bbc374852ea808182835cfd622866ef145f0a0a44823129aa24a4b69a7ae235a33650ad430a9acee812bbc381a42f46274529c5950a9259ee2449182692e01a84f4425977029abc6b9a9c974750407bae89a3800c359c670c9a59e31961442b35e3dce412fee75a1f785bb75d33088611304b2da1513ab08668e99cd212a72ce9643db120fc8c3edab3a62f412f63d7d5ebfcc838df290e88c2702d94d11cacb0b8c864220aac5576ced58d041a8ac4f36dd3c4b5fff6be8eb9ba1b61d22e7089cb884913811a23b92142b0a8a22704bd3523a6fdfcdd6f4794a20ec1b8a7a3f294739c384688123445212d60be5273325bee997d1bdbfa1249140b7818338c32e1b8b4ca052b20092f0d23180a95c5f03823bdf90ecf07585f4db2db810bd27a5cfdb8e42d15d138095e71ea254e5f8c27c0d5b37b0a1782e2d23b0c030659245d4a495a9d828c1048f0f204e1a0200c4a3ce73684e07095119138c3949a50ed60fa203679cfe98cc452f76bafd7a46fa18392a794552a3a17734aa52c002a372b1867521269b89977e165108867bbee9a3a96625300a214c3741fa2e5a8022931e82415b30611dccee99ffbd8f429fa4db3df802c6052c46502454100b848cc1801c619ed03751cc88c64cafaac77d167f8f71374450f71c9518288408564189e2480e40c6533112458097346ef7b06bdee3af0d73771dd95d2497411a7ca856404058f29180b076191e13aa848e6cc7062a8b5faedd5d7db5097e0f8bca262c4b0cdb8e358bd40c2830402c1082d66540279b6329c4fc8e7e0b7ae0fdc3f8690dec655f41d2af1838df58708d7f79e37d10b05d2f468c665d8e47c8c9a4c736ad4647a518c9a4c879a5193e97039b63219fac755e864161b35994ec8a326d39a623cfc4955349efd4971376a322d51474da6e5f6a8c974b1306a325de88c9a4cd768e37999ac30c71e9bac8fc7b49c4c6cfd4e872ced741c16fcaf0a2164d870b039a86148eac0eddfe3f9e6a6821643599baf3c7b87808ad10e8154b874b956262a083c28c591339161a8912432774c1632f9b5e297fa0af3dcef21561cd67d5feaf8b5c2d4d37cdb6fabe5edb210f219eb7be30f6d62712998b720b57392076eb5c30bd166b74b11983d0225c3fe22669aea36363775dbd69b755b350fa7858c665c0432ad0861d4d9689d46ba89143de41758e04334c7543759ff064c2a5d7c11121f13f31e8d13ef9885201437915987eb840a0c3227f1882c8a86c028002e1f4f34b0100cd5c161d8a61886c2319aea391e2920918e710c8c3909618c200a5366a031215f1246423846be3cdd23a2501968c90c64a6602236d4394f8dc6806d312a71618fd12dcff1480109c781cba0783482072d394842ad4b3621634520c768f0a77b4415f6b978c2300f8232ce8333521920216775e48890899dc823252439a1080c753162e202e79d3449791202771e75d6493c420bab1702a53219cc849e700c1d9a475c43a8f5501b0139a6dc7e8e470a482c8a3da6098fe81a948a18ce1c150a50d17081a9fd341c61857d3f262cf5c11287cacd13a112e67b42bc329e836347cdcc333c52408202c8a0ec64115517b5892055024a24817fa809c5293c7231d41b39af43960895ebf540d5f4e200d37e5907d0fbe7f76ffb76c9360fa7a9bbb66abb6d4a07a2006f6087b1f97983e691e4ae97ef1030ea89cdfe53a1b7ef2ecf7bbcb9dec955d4002aec51edf2fbe35245ee90fcc42077108e34ae978b037bfbb7d04f5330bd20d3a5af20a605d9f3be6dc2512d177c71f6d0f74db6f41ef96830ff89ebd8d47e7ff9906487dedf29c9177ec7936fa5bac12184babd5dc1b7dd0c85cdba1f28aa3f04b01bdfc5d9e104e73395b9337c4673b16308842fd5feda40587c689352cff38bdd06787bbdf95a219eaa6beaabab88d817670e1ffef1e37fc5a07a27),
('65c6av8e2fhmbtcvl6k316nop2', 4, 2, 0x789cbd5adb72db3812fd17bf6f05f78bfc9438c9d65625aead24f3cc6a000d9b35b6e421a56452f1fcfb3628c9514224946d6a5f245324d0078dbe9c031316422fbef50ba116672f5e418fcdabd5dff76cfbe7a76bbcc57b76760e0b313c2416674dd35f4387a9d92cdbbf36d87c86ae6f9af2085b7cfba75f70599e8970731320fe7970abdce33f187998976cdf42bb2cd77cf1ad5db0fd0d43375669738367e7349a2dce86c12fd36d797818b784dbe1a6d94ed1d0a483a501e97587b96fae6201d12ef839ddd0bab2ced7d05f871574e97e3bc78b3fd6ed4ddf7c821030bdea565f7aecb67065414553e45517c9eee516c41d5c61b1c0e8d22fce6ea05f37fbdffe359895b262f60f9ab679b7ba6a97f737e573363f2b7384b5d36cb1a8997e8fcbcdfd2d7dcc6646fadf99d9eddf70fd7ddb9e65934c2ece5637a9c49aa489b232414900c940671d94d79a3eadf3823b8ece9f9dff16e55f9b36fed9408cd8f7cdbc9e61159b1f11ba787ddf0f5ff385592da87f30759a18ab26d3c735ac37fd2be8eefbe1aff9acd522fa655cb7ab65b106c35f01baf9dc5a8b9a8ac11339f7f7cbbd81cd325edf41fa7f2df7c1e06996fb14eb7c36eb5ad40a04f5a0f743d7fbcf32b511d6abee7edb05dbfdf56c004cad1d1e01e044b1f753edbaf8f0be79dbdeacb1ebeff3f05d1ed6cf3235b402454464ff7b1392922225ce64121952b456b0c02cb0ec5976da1cd2944ce1b0bbdeb67b6e176707302f56b7b7abe5966d6cf94e8fc405ba15c1c7a127d024d05df5075c871643e4e5eb96b8fc808c83132188644d72c2ca602df35c3b0fda682b4d3e3d32f22081a940cb494865084be45ef3ac04089da38fe094d61c7fe7b4cb3d8681f62d892735dbcded7f863184c5e32d0facec717e1c0d990e8acbf31db2a3f28728d76abeb25123ebbfb27a229e57ad9b8598dfef79381451f11c53828d72d5276d18aac0b3cb5cf06c824e98958d1898674c1d13766c1bfa7b61f18bc8ff596d8ce2108dcdc8282ea4f51c988ad9e4a0bd365ecb68199b17cabb369020b9f8efebb71528645ba6ac30006ac7c80d313a0a521e408081835efd6c286eef94582b0a4c8373194d56da7acb238b56709fb8b52927cb677489dfe1a0a0af5627c339a74c052dbc0c9a652a1359490b4a47657c384198bce9bad2974750c0466959e04011eaa42c18acf02e0a26983566c6bd2912fe7bae6fe3b6edd7dd96308c8079ee19471dc03b667508c66adab26cb38fcc838a33fa681f358304fd88eb75bb2c8f8cfb9d9140289cb4ca382bc12b4f49a63333e0bdf173663705d056245e6cba0e97f1ebdb168bba1b61b221494d6924b443e0ce69e99852020d46c6c85b3362daefdfc37144adea30aa7b164de452d2c609c68ce21995f640fdcacc19d97a1fd977d8b71f2988b082470827b850416a6f42f20ab28ada0946a5d0782a8f3386b7dce17907cbabc9e80e1092f691b29f52de73852e688846f2a869fb104f806b88ee295c044aea18a80c388a221d72cedadb9c34426229ea1394830a31a8c5b9f429a54059c65496825a6a26b643ed83f91ca3e433069679c8bd8193be8635d43c65bc3118029696ca4502626e5e0929b466da49376fe215108467b35c772dd66a5302668ca0769fd04b62819c397292c1c24194f473fae7a1367dc0b8eaf60790154c86851240a81880545938a7c0056763e241029b31980a3f1b5cf409fefe00ebaa87a496444154e24a0b2a4f1a404b41b4992996bc8639abf74304bd5caf215edfe2725d6b271890b62aa4ec1487482d988483f214e1361964737638b5d55ac3f1eacb4d6a6b7062c928442adb420649ea0532fd9141111865d58c4ca0ec5681f381e239c54d180af73fdb92dee30dc63531f18383f55f05dc307b3944af08a4e9d58c65d8e47e8c864cc7d468c874528c864c979ad190e97239b63259fac72a74b28b8d864c37e4d190694e315efe242b1aeffe24b91b0d99a6a8a321d3747b34645a2c8c864c0b9dd190698d36de97498539f6d8a43e1e87e564631b4e3a74eda4e350f0bfa89490dd81c350d5a826ad2194a262c9faeaf60e965fcbd5d38f07c4e878401bca5b698d430349266324050c0aaa339aa108c7b42057fea7f8b9bda226f7737d5587a2ef738b5f1aea3bddd7fd995a392b4ba95c896136f9ab132c56a2401144448a36083168974d6429c910a9381e8152d07c486da6b9c3eeb6edfb76b5ec9beed73d61f8efe7a82141e25c6747e11b998c09ad44804c059a0a1ab063387221bf893aca1a9f85c4538516964924d7507dcf18035706a80c4945f9780cb97abc474445ac0be5794c9e052ab79129932949198bc64509411cb5334ff0480589d44a440fda86a06592de06fa017dc94bad92f027f188acec8cb08631c183471f2ced8ca2cd81f21f4ea08071c7c8dfa778a482440721a94f949e4c2593196210896326ef646a0c700c9b7bbc47544528592d1c14bf102f713c84c89da5fee5a9484be58fa1714ff1480589a485eb64243a2593d51234e33e649f697f5462a7c91a5339f69399ba1e282ea44cc169e380a542722ca71e9ac5893c52416288c279b094b80a04d7443123f1402e0998e32e1e15ad8ff688ad648d8ec420bc21f2a10c355262c83ea2884c104952c7d5b32778a48204b8cc825b57ea7b908551b82c89e206222fd1c6d3648dab1c5113f97501891b537fd6d427e9d36b22252a7293dda9b2a6822462163152116331080f4919e950f840848c2b62b327f188aeaad32438f55b4e716141242a263605d2079cf86e3a46bc3fc52315243e1b4b4c399220b15c048b19119dd4e8a9f11971cc99e2e33de22b752409a398619936866a7c22de4bb48df4175a02c74f95351524101d09cceca9cda152e5451f929e545932f161e293a7a9239c55809065e5495983f1293a9e0c48626921331f49e89d2a6d6a5048473952af0249bc719f1991d7444a4bd117494b758a6e73b93db6280a018ad268c2202b9a6ed0183daec76a823f3cbb7f616047d9cb52ba76dd37fd7a93f381b4a01b341976df6ff0b28ac2f1176f082ca992d5fe6dc3d76f3e5e0c58cb91493988d9024a7b443b95702876ca3cb1bb6da0a7e7fbf28bde21f98e41ef201c699c567c606fff22cbe374d0589f4e6eef586b4fb2e5b13e9d24fae383a649953296e793026b3c6492c38ccfa626e9d7f8d864923b8e864cd3deda39db4467193b79b2298eb7725219544ef3a644cd70d4606beff74d1f353cedad5d4ab6c5992cdff537777ded15ada3c1fc1b97d8b571fff361dd7b285a4096bf3dfbf5d4722bb71de14f6d7f77035f775523ad96c32a1d2d988adc767197e78745a75c9952cfb66f875eeeaa16a4cfcdfeb76d11a58756390f75777888e6ecaf575f1ac2d3acbbf6ea0a09fbd9795894f6f13febaa8be4),
('65c6av8e2fhmbtcvl6k316nop2', 5, 2, 0x789cbd5adb72db4612fd17bd6f65ee17eac997646bab12d7969d3ca37a6e122a12e900941397957fdf33a02833c6d8a064725f48e232e8333d3ddde734412ba1579fc69550ab8b1f5ed298bb979bbfeed9eee7afd7f936dfb38b4b5a89e926b1bae8baf19a869cbabb75ffc75dee3ed030765dbd85ad3efd3daeb8acf744bab909147f3fb854aff17f18797c2e6cdf52bfaec77cf5a95fb1fd05830b9b7477932f2e319aad2ea6c12fd26dbd791ab7a6dbe9a2d93da2c343274b13d2eb2197b1bb8a1544bfe297b8a075639eaf69bc0e1b1ad2fdee193ffcb6ed6fc6ee570a21a797c3e6cf310f3bb8b2a2c223ca6688b0fb6607e23d5de56a81e1d0af2e6e68dc76fb73ff9acc4ad930fb1b1edbfdbcb9ead7f737f5f3647e56e6086be75962d132fd4b5edfdddfe2e36466a4ff969987f59b8e3f2fdb77d984c9d5c5e626d558937850512628492419e9a283f25ae3d33a2fb8e3d9f98bcb6fa2fce3ae8fbf7714631ec7eeb49e610d9bef320df1fa7e9cbe4e1766ada0fe87a9f3c4587333bddbd2f66e7c49c3fd38fd3a9db55644bf88db7eb3aed668fa1568389d5b5b51d3307826e77e7bba3774b78ed7ef29fdbfa6fb68f03cd37d8e757e32eb5ab412046ad02f53d5fbcf3af591b69be17e5705fbfdf1c9009856393c02c09962ef8bdcf5eaed2fdd4ffdcd360fe37d99beebcdfabb4c4da5408188eccf7721292952e24c265128456b050bcc122b9e15a7cd214d29088787e35db9e776757100f3d5e6f676b3deb18d1ddf1933b8c0b001fc3cd5043c8486abf180eb6032202f1f77c4e51fc83839118248d62427ac0cd632cfb5f3a48db6d294f323830701a601ad2421950196c8bde6450912ba441fc929ad79fe96d3deec314cb46f0d9ed4ed1677fc12c614164fb73cb1b2a7f97136643928de5c3e203b6aff80726d4e97365a64fd6b56cfc4f39a79b312f3fb3d0fa72a2abec79460b3bdea93362cabc08b2b5cf062824eb9281b73609e31754cd8b15de8ef85c55722ff4bb5318bc36c6cc90c7121ade7c4542ca604edb5f15a46cbd869a1fcdc07089257ff7dfd53030a6ccb54540e94b56370438c0e41ca0309327450abbf1b8adb3b25b69202d3e45cc9a6286dbde591452bb84fdcda5492e52774897fc081a06f6627c339c74e252dbc0c9a15a489a2a425a5a3323e9c214c7e1c865a976750c8466959e084087552560c5678170513cc1a73c2b5a912fef35edfc56d3f6e871d619801f3dc339e7520ef98d52118abb164c5161f9927154fe8a37dd44c12f45dde6efb75bd655eef8c24a070d22ae3ac24af3c36992ecc90f7c69f727723807622f1d5dd30e475fcf8539fabba9b61b221498d6d24b4cbc49dd3d231a544363932066f9d10d37efd1edb11adacc390f76c36914b8985138c19c54b56da13ea95396564eb7d64bfcf63ff0e41941b788470820b15a4f62624afa8a8a89d604885c6233d9e30bce5039e9f697db518dd8142d23e62f763cb7baeb20b9aa2913c6a2c5fce67c03545f7122e80923a06a4018728d2a194a2bd2d49674a2c457d8674d02006ad38973ea514b0cb982a52a0a416b01d940fe64b8c929f30b0cce3de9b38e96bda52cb53c61b9343c8b5a4729108cccd2b2185d64c3be94ebbf12a08e0b95b6f873eb7725322668c40b94fd94bb040ce1c9c6472e5204afa53fae73137bdcd7133ec1b900d4c86851a40593122a98a704e910bcec6c4832476c260aafc6c72d1aff4d75bda363d24b5040551892b2d909e34919602b4992996bca65366efc7087ab1dd52bcbecdeb6dab9ce490b1542115a7384594600807e511e13699cc4e59e1d44e6b4dedd51777a96fc1897547e58cb42d6490502f54f0a390021865d50999405dad0ae72de239c5bb3025eebf77297dcc37396ec1c40f1aeb5f0bb8e9e9b589de1048cbb399cbb0c5f5980d598ea9d990e54d311bb29c6a664396d3e5dcca62ea9fabd0c52a361bb25c9067439639c57cfa8bac68befa8be46e366499a2ce862cd3edd99065b1301bb22c7466439635da7c5d1615e6dc638bfa781e968b856dea74e856a7e350f0ffd048210fffbe4c3a1e39694ba126150beb9b3512f7b61e3dbf3da066ed016db06fa5352e1b4a32192311305920cf68964538a604b9fa9fe287fe0a45eecbfcaa0e45df873effd9a1ee0c1ff73db5da2b4ba91e89e969f26b1d2c56a3400162ce88360a3168574c6429c910911c8f4029f0bc8c32d3bdcfc36d3f8efd663d76c3d76bc2f4efe7ac2051e25c1787f08d4cc694adcc4405091a098dd8311cb992df848ab2cddf85c423430bcb64866b90df4b8e812b43484352613f1e43ae9eee11d110eb42791e936701e93632650a362963d1b8282988a356e6191e6920915a89e849db10b44cd2db8013d9d77da95512fe2c1e918d9511d6302678f0d9078b9551581caaff701202c61d237f9fe39106121d84449da835192993193088c47381770a0a031dc3e69eee11d5104a560b47d52fe0258e8710b9b3a85f1e495a2a7f0c8d7b8e471a482426ae9391d92999ac96a419f7a1f882f551899d67d79846db4f16543d525c489982d3c6114b95e4588e1a5ac4993cd2406240e13c596c5c45826b50cc081ec8258039eee251d1fa648fd8c6aed1110cc21b900f655048c1907dcc22320192a48ecb67cff0480309715904b7aee6f7202ba3704582e206909768e379768d6bb4a8417e5dc8e0c6a8cf1a75129f5e8394a8c84d71e7da350d24be180b5e1841bf2d17c1e692737652678f346fc4311db4a77bc437764d124631c34a0c02192d81e581a4406d640b70fc5c31d2401273113122ad3340f194940108e103282a57e0f767f1886eeaf524381808c74eb17009d2ab4d018a894301a463da19cff1480309450781593cca5c56aabee803e989cc52c087c127cf9347386b008165e5a1acc9f8141d4f8624585a28cc4708bd736d9b1694aaf420d6980a5a83a8314813934a2c19e935f3a3fedc79864f1a64b12a26e7a2871e94dc13799d732951500cc869670b931614684b07452f32042df78581d027a84f852fc86d758e0afc66d7caa9aa89aafaeac224b5ba61d25d63dece15167fbc77ff12c5838ca95319faedd88ddbbb520ee4162ee06179f87c81d75954ddb3fa1160a1d436fb37305ffff8eed584b5b6916a736a0728ed113d28a74301589f1387db8e46dc3fd633fa01c9670cfa01c291c631e3037bfb977b9ea60de79a7d7179e7fd87450531d7ec8be267de7c5b546ef396c5a2e89c0f59e475f37edd22259db79216f9f46cc8b21468f51e176acbdcc98b6571be948b6aa9d1e15c127af3185b2c0af3218b056dbefa8bfc643efd456a35df628bbc703e97454a3b07b6c8c7e76de4452931b5c56ceb5dd4e5b6d8f3de3047125c5dc8fadd7ecbdcb75e273c1accbff33a0f7ddc9f3eac478fc58460f9d377bf4a5d2f957e00fed48fef6fe8e343364f9bf5344b8709a3f8ec26f7e6f2b018d42353ebccee4de6370fd584d2876e7f6e57dc70d3a694a91e4e37e199e3f5e6cf0e78baedd05f5d6560bfb80cab4a75fe07335257ab),
('65c6av8e2fhmbtcvl6k316nop2', 6, 2, 0x789cbd5adb72db3812fd17bd6f05f78bfc94ebd65625aead24f3cc6a000d9b35b69421a56452f1fcfb3628c9764238946d6a5f6c4b24d8078dee3e7dda84a5d0cb1ffd52a8e5e2c52be8b179b5fefb86edfefc7c89d778c31667b014c34d62b9689afe123a4ccd76d5feb5c5e62b747dd3945bd8f2c73ffd92cb724f84abab00f1cf7b97ca35fe9391dbe792ed6b6857e5335ffe6897ec70c1d08575da5ee1e28c56b3e56258fc325d979b87752bb81e2e9add231a7ae86069407ad961ee9b8b5840b44b7e4617b4aeecf30df497610d5dbad93de3c51f9bf6aa6f3e4308985e75eb6f3d763bb8b2a0a247e47517c9eef90ec417b8c06281d147bf5c5c41bf690edffd6b302b65c5ec1ff4d8e6fdfaa25ddd5c959fb3f9599923ac9de68845cdf4075c6d6faee9c76c66a4ff9d99fdf90d9fef8eed5936c9e472b1be4a25d6243d282b139404900c74d64179ade9a7755e70c7d1f9c5d96f51feb56de39f0dc4887ddfcceb1956b1f909a18b9737fdf06bbe30ab05f54fa64e1363d564fab481cdb67f05dd4d3ffc359fb55a44bf8c9b76bd2ad660f82b40379f5b6b5153317822e7fe7ebb57b05dc5cb2f90fe5fdbbd35789aed3ec53a9fcdba16b502411cf46160bdffac521b61b3ee6e762cd81e3ecf06c0d4e8f00800278abd5f6ad7eb8f1f9a77edd506bbfe260fbfcbcdfa59a6062a50d4881cbe6f425252a4c4994c22438ad60a169805963dcb4e9bfb6d4aa670d87fded13db7cbc53d98afd7d7d7ebd5aedbd8f53b3d522fd0ad093e0e9c400f81eea2bfd7ebd066a879f9be6b5c7e42c6c1891044b226396165b09679ae9d076db495269f1e197990c054a0e524a432842572af79560284ced147704a6b8ebf73daf901c3d0f6ada84f6a7687dbff0a63088bc75b1ebab2c7f971b4643a28cecff6c88eca1f6ab9d6f3958d5ab3fe90d513f579d5ba591af39b431f0e45543cc79460a35cf5491b862af0ec32173c9ba01366652306e61953c7841ddb85fe41583c10f9bfaa8d511ca2b11919c585b49e0353319b1cb4d7c66b192d63f34279df061224affffbe65d050ad996292b0c80da3172438c8e8294071060e01e573f1b8a3b3825d68a02d3e05c469395b6def2c8a215dc276e6dcac9f2195de2f73828e8abd5c970ce2953410b2f836699ca4456d282d251191f4e10266fbbaef0f2080ad8282d0b1c28429d94058315de45c104b3c6cc783645c2dfe5fa2e6edb7ed3ed1a861130cf3de3a80378c7ac0ec1584d47966df691795071461f1da26690a09f70b36957e59631df190984c249ab8cb312bcf294643a3303de1b3f67765300ed44e2eb6dd7e12a7e7fd7625177234c3624a9298d847608dc392d1d534aa0c1c818796b464c87f3bb1d47d4aa0ea3ba67d1442e251d9c60cc289e51690fc45766cec8d687c8fe827dfb8982082b788470820b15a4f62624af20aba89d60540a8da7f2386378cb3d9ef7b0ba988cee0021691f29fb29e53d57e8828668248f9a8e0ff104b886e89ec245a0a48e81ca80a328d221e7acbdcd49232496a23e4139a83406b538973ea51428cb98ca5210a566ea76883e98cf314a3e636099dbdc1b7ad237b0819aa78c370643c042a95c24a0cecd2b2185d64c3be9e64dbc0282f06c579baec55a6d4ac08c1144f709bda42e9033474e32587a1025fd9cfeb9ad4d1f31aebbc300b282c9b05002081503902a0be714b8e06c4c3c4860330653e9cf06177d86bf3fc2a6ea21a925b5202a71a50595270da0a5a0b6992996bc8639abf76d04bddc6c205e5ee36a53a3130c48471552768a43240a26e1a03c45b84d06d99c0ca7765a6b18afbedca6b60627968c42a4b22d6490a45e20d31f1914815156cdd80994d32a703e523ca7b80d43e1fe6757d27bbcc2b8a14efcde60fda1801b9e5e86e8158134bd9bb10c9b3c8fd192e9981a2d994e8ad192e952335a325d2ec756264bff58854eb2d868c934218f964cf714e3ed4f7645e3d39f6cee464ba65bd4d192e9767bb4645a2c8c964c0b9dd192698d363e97498539f6d8a43e1e87e524b10d930e5d9b74dc17fc2f2a2564ffdf97a1aa514dda4058ec874f5d2cfffd287cdb97af9e3e2350a319813694bcd21a8706924cc6488a1a14546c3443118ee12157feb1f8b5bd20a6fbb5c8aafbcaef6b8bdf1a229feefb61b056066629954f62789a7c688c65a8da78b08c2a2008aea91a462a595c0a291d77f1185d21e879485cd37cc1eebaedfb76bdea9bee61626897b6220375a460f786f244193a732ae63ea2884c503eab7c4c5f533ae044b4b2c16721012eb3e0d63119539025f85d96548d03e559b4f118ba7ebc475c659a4275da05a4324e51a4e934e9a7d7943f2a7293dd313cfd148f5490f86c2c95b0484c61b9081633223aa9d147e38c3846ec3dde23be32d749c22866588e413010890a12a51211235a02c74f15231524101d317ff6e83c2a55fe034b3d01e551a64245397e9aace1ac02842c2b4f2d0f189fa2e3c980b41243663e12039f2a486a500a05138b3215b49648f48bcca41c335231417ed4d4ed093ee135cd2d8816a327a296d40f82d788394701315006a763e4c8937c528122b512d183b6216899a4b781be405f684dab24fc497c222b192cac614cf0e0d1074b74ae3246282f08404ce88e8ad727b8a4822462163192714649ec212943e92b7ca03e842b8aa0937844574559121c80da93c82c1593e4b84d81da624e6ddec982a482440741bce74b934f81cb0c3170e298295e32759a701abe5195c98bd5c2418914123a8e8710b9b3d4107beafaa8c69caa94549048dab84e46a25332592d4133ee43f69922562576549d7fb4474c856f64a6361a14a7662805a78d03968a6aa218513a8b1379a486a434ec8a1a494412061062d02e9bc8a829089174ec696a6b257b2171aeb323a5114b7f84c4359443a4a5497b023b669cf9a4d25aa96824a6856544340a498a53390b5c1920c5281549a7d3c488a810b0509ec7e45920651ca98dcea4a718a3c6284a08e2a8937982472a4848603a92f50249d5729f19854a2209aae817696e750a8f9cefe63945354191604d18f456d30de2abc7cd03328bdf2e38bc4eb1d732653f5dbbe99b7eb3cdf99ee6a20bf444ecee2ef0b295227e966f0931c9b5f5e15dcc376f3fbd1e009781521953ed50a503acbd7cfa490ab262f8ba819eee1f20ea3d923b0c7a0fe148e396767d67eff09acfe304e258bd4f9ef178123119a063f53e995be331dc6461180f2f266bda78c964411e4fee26b9643c549a24c2d192690eaf4d21271a90b193277ba7f1514e367e9559e754cf3a8eb14915325e32a9a0c6a73f29ffc6db9f54aee3149b94dde3bd4c4e0cc6c026c71de381f2e4a4a632b79d5242e3489e5471c318ced6de7d9d1ec33ded8d762ab5cb852cbfeb6fb5fbeabba2c782f937aeb06be3e1eb9fa8ef3e6d0159fff1ecd7b7cba5dc76b487d4f65faee0fb9e37d27a35ecd4d1a689e6761b3c3fbb4f3be593298cb67b7bfa7ccf5b90be3687ef76344a37ad731ee877b8899ed95faebf3584a7d974edc50512f6c559581615ff3fbc117bae),
('njmveib0m1rriuolc3ee87n2t4', 139, 2, 0x789cbd59db8edb3610fd17bf17e1fde27d4a360d50205914b93c0b4372b816ea9552c9ee0575ffbd23c976b291b27212b90fbec8123987c399336768584bb6fea75d0bb55e3d7b012d162feabf0e6cf8fa7e830f7860ab1b588bfe21b15e1545bb810653b1afcadff758fc014d5b14dd2334cfbfed9acbee9908db6d80f8db67b7ba7bfc9191f3bc64fb01caaabbe6eb7fca353bdd3074a34efb2dae6e68345baffac1cfd343f7703fae8287fea6a4efd6286792f021e51434b34cb16cace35e7929749445b3bae961f4cbd83498dbe23e76083b937443eb0927bc8476136a68d2a1c358b0671f76e5b62dde4308985e34f59f2d36c35a640799a6c8751309d4dd80f023dce360a15dfbf56a0bedae38fdf613efcc4a3961f6034d5bbcaeefcbeab0edde17db04652eb0769dfd1753a6df60b53f3cd0db6266a47fcacc71fffaeb4fdbf64336c9e47a556f531f883451562628092019e8ac83f25ad3bb755e70c7d1f9d5cd93287fdf97f1b70262c4b62d96f50c9bb0f90ea1899b43db7f2c17665341fdc8d475626c3299deed60b76f5f407368fb6fcb599b8ae8e77157d655670dfa6f019ae5dc3a15351306afe4dca797bb857d15371f21fd5fcb3d1bbcce72bfc73a5fccba1653044135e84d5f127fa9521961573787a14496a7ebc50098a9727801802bc5de17dc75fbf64df1aadceeb0690fb9ffec1ed63f64aa2f058a54cae9f7222425454a9cc92432a468ad60815960d9b3ecb4f95cc3640a87e3f550eeb95daf3e83795b3f3cd45557f7f9cd20865a242dd0d4041ffb9a40934073df7e26846831a481fe1e84cb23641c9c0841246b921356066b99e7da79d0465b69f2f591910709cc04b49c845486b044ee35cf4a80d039fa084e69cdf129a7dd9d30f49ab0229d540c9bdb7e09a30f8b6fb7dcabb26ff3e368c87c50dcdd1c915d943f24b9eae568634ac97fcdea7552d5db71aadec216ab44aca9410a292cf7a4849cca3e23ca64a582c498f43214cd51a19d473c9ea0f8f90fac76035adea1e54453d8fdd6161ba8d2b68f953e97bb802ad7b20fa9e125fad7a909a0699fddd6d58eaa667b9e8ed6f5e1f6e5b927705f90e080ed2dc6ba39ab7faf1c4393a216c631d27a5cfa1c048a6093cc42b2f3929eefc8d6e6e18c5f1d3b86fba6de7f3c770c434a1c2f8670ef2ea8f66e1052c7737797229b6f89ae826c4a837deaa32e06b5608f7589b30803a3fdca3ca5c848ab33c7820a08982c5282ebeb388bb3299ae87bdccb3df57821dfd9a31296f54aaebeea436d7f00684f2eea87d845b0517966d62aa3b45710d1fbc0b9cb5a8520915b2715f24b2a0d1baadde9a0e12bc5eecbd38751e9d14168c6a8e2041d0c2846d91f93943e62d23a31bf2c94d765a0fdbdfdf5e5ab0928de88acac092961ecf84705cf50669dc162345c2d07c59d9c12a77400e3904166881c73701a5312542b41a332a0b5784aa27c230e7fc441756e0a081ace8389966b63020bc6db248083a47001442daf10263f374ddd4c40915a729f1d709d5db2a002b5f926a0373e0612130b42e98ef43e95f7216ecb76d70c3dc278b33c15e0649ca72c360ca210c208edb0cf6325ec823e3a454d7feaf40e77bbb2ea1e194112006828838ce51449291beec0708681a3cd8187052151001d55c7be69b08a7fbf2ab13bd019cbeea44038ef6534ce049fc1241633ba9802b729c282984efb77ae9c1370ba7c5209a4d35a4989c01978ee5010217a15cd82a9dec9ac21b23f625bbea320c229eab19a39c7887b2c0b560485c16b743aa5007467c12d13f288e73554f7b3d12d04973c871cbcb42919a06d0c94764c331da9575830bacfb8fae89ec3a51c528a71436543668a27e30da78e226b91408b25a9fa4c0713bdc004b0e08932a56441daa83d3732f91c9d30d90b1b894a170c2c73cebdbe0d7d093b988a2cb2ee1467c14517b82391a62cf0a894644e6062cb265e0782f0ecab5d53e2143779a2472d53a65a6fbc4e821b43142ea1a34d43a8aec14d8f54de1437c52cbd47eb0cb5a1cc292205d24244095c0aea4d2feabb2fc4248f2e7a0f7fbd85dda487124a813a072643a2680a8e7a6a503c7185ce6b13af11419f94f954e985200c6d904fc9c9ee203eca2019d512ce4d168b8a45351caff4ffa83cdfa7720a0e55559d99545271c530a2a324e3ca116f732ab96949ffc801ce5b8ae714f7a127eee1d9ee5fb089138e796ca321f3de1d0d99cfa1f1905916189fd6cc32d968c87cb518039b2d7ca321f3b57b7c5835ab3ec66b991551a321f35270bcfcd996636c65b6771b2f7f96e04643e6dbb231b0d9b6653464bec118e7cb6c23301a322f164643e649f8eea8ed5adc62dc514b7e2293301c80d9a9ff0c2f3e9eb8c2f9e2bfff0140014e3d),
('njmveib0m1rriuolc3ee87n2t4', 140, 2, 0x789cbd59db8edb3610fd17bf17e1fde27d4a360d50205914b93c0b4372b816ea9513c94e5bd4fdf78e24dbd95d292b272bf7c1175922e7703873e60c0d4bc996ff344ba1968b17afa0c1e2d5e6af3debbf7e5ce11deed9e20a96a27b482c1745d1aca0c654ecaaf2cb0e8baf503745d13e42f3fcdb2cb96c9f89b05e07887fdcbbd5dee30f8c9ce625db775056ed355ffe532ed9f186a11b9bb45be3e28a46b3e5a21bfc32ddb50f77e32ab8eb6e4afa6e8d7226091f524e4133cb14cbc63aee9597424759d48bab0e46b78c558db9296e638bb0354937b41e71c26b6856610375dab7180bf6e2d3b65c37c5470801d3ab7af3678375bf16d942a629f2a68e04eaa647f8196eb1b7d02cfd72b186665b1c7ffb85b766a51c31fb89a62dde6e6ecb6abf6edf67db0465ceb07699fd1763a6df61b5dbdfd1db6c66a47fcacc61ffbaeb6fdbf62c9b6472b9d8ac5317883451562628092019e8ac83f25ad3bb755e70c7d1f9c5d59328bfeccaf847013162d314f37a868dd8fc8050c7d5bee93ee60bb3b1a07e60ea3231369a4c1fb6b0dd35afa0de37ddb7f9ac8d45f4cbb82d37556b0dba6f01eaf9dc3a163523062fe4dca797bb865d15579f21fd5fcb3d19bccc727fc63a9fcdba1663044135e85d57127fab521961bba9f77d892c8fd7b3013063e5f00c00178abd47dc75fdfe5df1a65c6fb16ef6b9fb6c1fd6cf32d59502452ae5f87b1192922225ce64121952b456b0c02cb0ec5976dadcd73099c2e170dd977b6e978b7b30af3777779baaadfbfcaa17430d9216a837041fbb9a4093407ddbdc1342b418d2407ff7c2e501320e4e84209235c9092b83b5cc73ed3c68a3ad34f9f2c8c8830466045a4e422a435822f79a672540e81c7d04a7b4e6f894d36e8e183a4d58914e2afacd6d1ec3e8c2e2c72d77aaecc7fc3818321d143757076467e50f49aecd7cb431a6e4bf67f532a9eaed3055af618d5522d6d4208514967b52424e659f1165b25241624c7a198afaa0d04e231e4e50fcfa15ab6d8f96b76839d114b6bf35c50aaab4ee62a5cbe536a0caa5ec42aa7f89ee756c0268da17d79b6a4b55b3394d47ebfa74fdfad413b84724d8637b8f71539fd4bf578ea149510be318693d2e7d0e0245b0496621d969492fb7646b7577c2af0e1dc36dbdd97d3e750c7d4a1c2efa706f2fa8f6ae1052cb7337e7229b6e892e826c4c837deba3ce0635638f758eb30803a3fdca3ca5c848ab33c7820a08982c5282ebcb388bb3319ae87adcf33df570213fd9a31296e5422ebeeb436d9f01b42397e7b55a820dca33b35619a5bd8288de07ce5dd62a0489dc3aa9909f5369585fed8e070ddf29768f4f1f06a54707a119a38a137430a018657f4c52fa8849ebc4fcbc50de9681f6f7faf7d76f46a07823b2b226a484b1e51f153c439975068bd170351f1477744a1cd3018c4306992172ccc1694c4950ad048dca80d6e22989f28338fc0107d5b9312068380f265aae8d092c186f93000e92c20510b5bc4098fc5ad79b7a048ad492fbec80ebec920515a8cd3701bdf131909898114a7ba4f7adbcf7715b36dbbaef11869be5a90027e33c65b1611085104668875d1e2b6167f4d1316aba53a70fb8dd9655fbc8009200404319642ca7484ad9700786330c1c6d0e3ccc088902e8a03a76758d55fcfb4d89ed81ce50762705c2792fa37126f80c26b198d1c514b84d1166c474dcbf53e51c81d3e6934a209dd64a4a04cec073878208d1ab68664cf55666f591fd199bf20305118e518fd5cc3946dc6359b022280c5ea3d32905a03b336e1915931ecf5ba86e27a35b082e790e397869533240db1828ed98663a52af3063749f7075d13d854b39a414e386ca86cc144fc61b4e1d45d62281167352f5890e467a811160c113654ac982b4517b6e64f2393a61b217361295ce1858e6947b5d1bfa1ab630165964dd29ce828b2e7047224d59e05129c99cc0c4e64dbc1604e1d955dbbac4316ef2448f5aa64cb5de789d043786285c424b9b86505d829b1ea8bc316e8a597a8fd6196a439953440aa4858812b814d49b9ed5779f89491e5cf411fe7a0fdb510f259402750e4c8644d1141cf5d4a078e20a9dd7265e2282be29f3b1d20b4118da209f9293ed417c944132aa259c9b2c66158baa3f5ee9fe5179b94be5181caaaa3a33a9a4e28a61444749c69523dee65472d39cfe913d9cf714cf29ee4247dcfdb3edbf6023271cd3d80643a6bd3b18329d43c321932c303cad9964b2c190e96a31043659f80643a66bf7f0b06a527d0cd73229a20643a6a5e070f9932dc7d0ca64ef365cfe24c10d864cb7654360936dcb60c8748331cc97c9466030645a2cdc1c845a836b8c5beaafeffd7d3e4e92cdd28efea9f363e70f8f4f44cc4f9f883cf7f4f1dfff0083bd59ab),
('njmveib0m1rriuolc3ee87n2t4', 141, 2, 0x789cbd59db72db3610fd17bd7782fb457e4a9c66a63389a793cb3367012c2c4e652a25a55ea6eabf77494a8a6d32a61c537dd08522813d58ec9e3d0bc152b2e53fcd52a8e5e2d51b68b078b3f96bcffaaf9f5778877bb6b882a5e81e12cb4551342ba83115bbaafc7d87c51f503745d13e42f3fcdb2cb96c9f89b05e0788bfddbbd5dee30f8c9ce625db775056ed355ffe532ed9f186a11b9bb45be3e28a46b3e5a21bfc3addb50f77e32ab8eb6e4afa6e8d7226091f524e4133cb14cbc63aee9597424759d48bab0e46b78c558db9296e638bb0354937b41e71c25b6856610375dab7180bf6eacbb65c37c5670801d39b7af3678375bf16d942a629f2a68e04eaa647f8156eb1b7d02cfd72b186665b1c7ffb89b766a51c31fb85a62dde6f6ecb6abf6edf67db0465ceb07699fd1763a63f60b5dbdfd1db6c66a47fcacc61ffbaeb6fdbf6229b6472b9d8ac5317883451562628092019e8ac83f25ad3bb755e70c7d1f9c5d593287fdf95f1b70262c4a629e6f50c1bb1f909a18eab7dd37dcc17666341fdc0d465626c34993e6d61bb6bde40bd6fba6ff3591b8be8d7715b6eaad61a74df02d4f3b9752c6a460c5ec8b94f2f770dbb2aaebe42fabf967b327899e5fe88753e9b752dc608826ad087ae24fe52a532c27653effb12591eaf670360c6cae119002e147b8fb8ebfae387e25db9de62ddec73f7d93eac5f64aa2b058a54caf1f7222425454a9cc92432a468ad60815960d9b3ecb4b9af613285c3e1ba2ff7dc2e17f7605e6feeee36555bf7f9552f861a242d506f083e7635812681fab6b927846831a481feee85cb03641c9c0841246b921356066b99e7da79d0465b69f2e591910709cc08b49c845486b044ee35cf4a80d039fa084e69cdf129a7dd1c31749ab0229d54f49bdb3c86d185c5f32d77aaec797e1c0c990e8a9bab03b2b3f28724d7663eda1853f2dfb37a9954f57698aad7b0c62a116b6a90420acb3d2921a7b2cf883259a9203126bd0c457d5068a7110f27287efe03ab6d8f96b76839d114b6bf35c50aaab4ee62a5cbe536a0caa5ec42aa7f89ee756c0268da57d79b6a4b55b3394d47ebfa72fdf6d413b84724d863fb8871539fd4bf578ea149510be318693d2e7d0e0245b0496621d96949afb7646b7577c2af0e1dc36dbdd97d3d750c7d4a1c2efa706f2fa8f6ae1052cb7337e7229b6e892e826c4c837deba3ce0635638f758eb30803a3fdca3ca5c848ab33c7820a08982c5282ebcb388bb3319ae87adcf33df570213fd8a31296e5422ebeeb436d5f00b42317f52276116c509e99b5ca28ed1544f43e70eeb2562148e4d64985fc9c4ac3fa6a773c68f84eb17b7cfa30283d3a08cd18559ca08301c528fb6392d2474c5a27e6e785f2be0cb4bfd7bfbe7d3702c51b91953521258c2dffa8e019caac33588c86abf9a0b8a353e2980e601c32c80c91630e4e634a826a25685406b4164f499467e2f0071c54e7c680a0e13c9868b93626b060bc4d0238480a1740d4f20261f2735d6fea1128524beeb303aeb34b1654a036df04f4c6c74062624628ed91deb7f2dec76dd96cebbe47186e96a7029c8cf394c58641144218a11d7679ac849dd147c7a8e94e9d3ee1765b56ed23034802000d6590b19c222965c31d18ce3070b439f03023240aa083ead8d53556f1ef7725b6073a43d99d1408e7bd8cc699e03398c462461753e036459811d371ff4e9573044e9b4f2a81745a2b29113803cf1d0a2244afa29931d55b99d547f6576cca4f144438463d5633e718718f65c18aa030788d4ea71480eeccb865421ef0bc87ea7632ba85e092e7908397362503b48d81d28e69a623f50a3346f7095717dd53b894434a316ea86cc84cf164bce1d451642d12683127559fe860a4171801163c51a6942c481bb5e746269fa313267b612351e98c81654eb9d7b5a16f610b639145d69de22cb8e8027724d294051e9592cc094c6cdec46b41109e5db5ad4b1ce3264ff4a865ca54eb8dd749706388c225b4b46908d525b8e981ca1be3a698a5f7689da136943945a4405a8828814b41bde9597df79998e4c1459fe1af8fb01df550422950e7c06448144dc1514f0d8a27aed0796de22522e89b321f2bbd1084a10df22939d91ec4471924a35ac2b9c96256b1a8fae395ee1f95d7bb548ec1a1aaaa33934a2aae18467494645c39e26d4e2537cde91fd9c3f948f19ce22e74c4dd3fdbfe0b3672c2318d6d3064dabb8321d339341c32c902c3d39a49261b0c99ae16436093856f3064ba760f0fab26d5c7702d93226a30645a0a0e973fd9720cad4cf66ec3e54f12dc60c8745b360436d9b60c864c3718c37c996c040643a6c5c2cd41a835b8c6b8a5fefadedfe7a324f96cceeece2cece8ff40cf3bb2787c88627ef810e5a50796fffe07ebed68b0),
('njmveib0m1rriuolc3ee87n2t4', 142, 2, 0x789cbd59db8edb3610fd17bf17e1fde27d4a360d50205914b93c0b4372b816ea9552c9ee0575ffbd23c976b291b27212b90fbec8123987c399336768584bb6fea75d0bb55e3d7b012d162feabf0e6cf8fa7e830f7860ab1b588bfe21b15e1545bb810653b1afcadff758fc014d5b14dd2334cfbfed9acbee9908db6d80f8db67b7ba7bfc9191f3bc64fb01caaabbe6eb7fca353bdd3074a34efb2dae6e68345baffac1cfd343f7703fae8287fea6a4efd6286792f021e51434b34cb16cace35e7929749445b3bae961f4cbd83498dbe23e76083b937443eb0927bc8476136a68d2a1c358b0671f76e5b62dde4308985e34f59f2d36c35a640799a6c8751309d4dd80f023dce360a15dfbf56a0bedae38fdf613efcc4a3961f6034d5bbcaeefcbeab0edde17db04652eb0769dfd1753a6df60b53f3cd0db6266a47fcacc71fffaeb4fdbf64336c9e47a556f531f883451562628092019e8ac83f25ad3bb755e70c7d1f9d5cd93287fdf97f1b70262c4b62d96f50c9bb0f90ea1899b43db7f2c17665341fdc8d475626c3299deed60b76f5f407368fb6fcb599b8ae8e77157d655670dfa6f019ae5dc3a15351306afe4dca797bb857d15371f21fd5fcb3d1bbcce72bfc73a5fccba1653044135e84d5f127fa9521961573787a14496a7ebc50098a9727801802bc5de17dc75fbf64df1aadceeb0690fb9ffec1ed63f64aa2f058a54cae9f7222425454a9cc92432a468ad60815960d9b3ecb4f95cc3640a87e3f550eeb95daf3e83795b3f3cd45557f7f9cd20865a242dd0d4041ffb9a40934073df7e26846831a481fe1e84cb23641c9c0841246b921356066b99e7da79d0465b69f2f591910709cc04b49c845486b044ee35cf4a80d039fa084e69cdf129a7dd9d30f49ab0229d540c9bdb7e09a30f8b6fb7dcabb26ff3e368c87c50dcdd1c915d943f24b9eae568634ac97fcdea7552d5db71aadec216ab44aca9410a292cf7a4849cca3e23ca64a582c498f43214cd51a19d473c9ea0f8f90fac76035adea1e54453d8fdd6161ba8d2b68f953e97bb802ad7b20fa9e125fad7a909a0699fddd6d58eaa667b9e8ed6f5e1f6e5b927705f90e080ed2dc6ba39ab7faf1c4393a216c631d27a5cfa1c048a6093cc42b2f3929eefc8d6e6e18c5f1d3b86fba6de7f3c770c434a1c2f8670ef2ea8f66e1052c7737797229b6f89ae826c4a837deaa32e06b5608f7589b30803a3fdca3ca5c848ab33c7820a08982c5282ebeb388bb3299ae87bdccb3df57821dfd9a31296f54aaebeea436d7f00684f2eea87d845b0517966d62aa3b45710d1fbc0b9cb5a8520915b2715f24b2a0d1baadde9a0e12bc5eecbd38751e9d14168c6a8e2041d0c2846d91f93943e62d23a31bf2c94d765a0fdbdfdf5e5ab0928de88acac092961ecf84705cf50669dc162345c2d07c59d9c12a77400e3904166881c73701a5312542b41a332a0b5784aa27c230e7fc441756e0a081ace8389966b63020bc6db248083a47001442daf10263f374ddd4c40915a729f1d709d5db2a002b5f926a0373e0612130b42e98ef43e95f7216ecb76d70c3dc278b33c15e0649ca72c360ca210c208edb0cf6325ec823e3a454d7feaf40e77bbb2ea1e194112006828838ce51449291beec0708681a3cd8187052151001d55c7be69b08a7fbf2ab13bd019cbeea44038ef6534ce049fc1241633ba9802b729c282984efb77ae9c1370ba7c5209a4d35a4989c01978ee5010217a15cd82a9dec9ac21b23f625bbea320c229eab19a39c7887b2c0b560485c16b743aa5007467c12d13f288e73554f7b3d12d04973c871cbcb42919a06d0c94764c331da9575830bacfb8fae89ec3a51c528a71436543668a27e30da78e226b91408b25a9fa4c0713bdc004b0e08932a56441daa83d3732f91c9d30d90b1b894a170c2c73cebdbe0d7d093b988a2cb2ee1467c14517b82391a62cf0a894644e6062cb265e0782f0ecab5d53e2143779a2472d53a65a6fbc4e821b43142ea1a34d43a8aec14d8f54de1437c52cbd47eb0cb5a1cc292205d24244095c0aea4d2feabb2fc4248f2e7a0f7fbd85dda487124a813a072643a2680a8e7a6a503c7185ce6b13af11419f94f954e985200c6d904fc9c9ee203eca2019d512ce4d168b8a45351caff4ffa83cdfa7720a0e55559d99545271c530a2a324e3ca116f732ab96949ffc801ce5b8ae714f7a127eee1d9ee5fb089138e796ca321f3de1d0d99cfa1f1905916189fd6cc32d968c87cb518039b2d7ca321f3b57b7c5835ab3ec66b991551a321f35270bcfcd996636c65b6771b2f7f96e04643e6dbb231b0d9b6653464bec118e7cb6c23301a322f164643e649f8eea8ed5adc62dc514b7e2293301c80d9a9ff0c2f3e9eb8c2f9e2bfff0140014e3d),
('njmveib0m1rriuolc3ee87n2t4', 143, 2, 0x789cbd595b8fdbb612fe2f7e3f08ef17ef53b2698002c9e220976761480ed742bd522ad93d2deafef733926c673752564e22f7c1175922e7e370e69b6f68584bb6febb5d0bb55ebd78052d16afea3f0f6cf8fa71830f7860ab1b588bfe21b15e1545bb810653b1afcadff758fc014d5b14dd2334cf3fed9acbee9908db6d80f8dba35bdd3dfec4c8795eb2fd0065d55df3f5dfe59a9d6e18ba51a7fd165737349aad57fde097e9a17bb81f57c1437f53d2776b943349f890720a9a59a65836d671afbc143acaa259ddf430fa656c1acc6d711f3b849d49baa1f584135e43bb093534e9d0612cd88b4fbb72db161f21044caf9afa7f2d36c35a640799a6c8751309d4dd80f033dce360a15dfbf56a0bedae38fdf61fde999572c2ec279ab6785bdf97d561dbbd2fb609ca5c60ed3afb2fa64cbfc36a7f78a0b7c5cc48ff9c99e3fef5d75fb6eda76c92c9f5aadea63e1069a2ac4c50124032d05907e5b5a677ebbce08ea3f3ab9b6751febe2fe36f05c4886d5b2ceb193661f30342133787b6ff582ecca682fa89a9ebc4d864327dd8c16edfbe82e6d0f6df96b33615d12fe3aeacabce1af4df0234cbb9752a6a260c5ec9b9cf2f770bfb2a6e3e43fab7967b36789de5fe8875be98752da608826ad0bbbe24fe5aa532c2ae6e0e43892c4fd78b013053e5f00200578abdafb8ebf6fdbbe24db9dd61d31e72ffd93dac7fca545f0a14a994d3ef45484a8a943893496448d15ac102b3c0b267d969f358c3640a87e3f550eeb95daf1ec1bcad1f1eeaaaabfbfc6610432d9216686a828f7d4da049a0b96f1f09215a0c69a0bf06e1f2041907274210c99ae48495c15ae6b9761eb4d1569a7c7d64e4410233012d272195212c917bcdb31220748e3e82535a737cce6977270cbd26ac482715c3e6b65fc3e8c3e2fb2df7aaecfbfc381a321f147737476417e50f49ae7a39da9852f2dfb27a9d54f5769caab7b0c52a116b6a90420acb3d2921a7b2cf883259a9203126bd0c45735468e7114f27287ef903abdd8096776839d11476bfb5c506aab4ed63a5cfe52ea0cab5ec436a7889fe756a0268da17b775b5a3aad99ea7a3757dba7d7dee09dc572438607b8fb16eceeadf2bc7d0a4a885718cb41e973e078122d824b390ecbca4973bb2b57938e357c78ee1bea9f79fcf1dc39012c78b21dcbb0baabd1b84d4f1dcdda5c8e65ba2ab209bd2605ffaa88b412dd8635de22cc2c068bf324f2932d2eaccb1a00202268b94e0fa3acee26c8a26fa1ef7724f3d5dc80ff6a88465bd92ab6ffa50db9f00da93cbcfb55a828dca33b35619a5bd8288de07ce5dd62a0489dc3aa9905f5269d850ed4e070ddf28765f9f3e8c4a8f0e4233461527e8604031cafe98a4f41193d689f965a1bc2d03edefed7f5fbf9980e28dc8ca9a9012c68e7f54f00c65d6192c46c3d57250dcc929714a07300e196486c83107a7312541b512342a035a8be724ca77e2f0471c54e7a680a0e13c9868b93626b060bc4d0238480a1740d4f20a61f24bd3d4cd0414a925f7d901d7d9250b2a509b6f027ae3632031b12094ee48ef4b791fe2b66c77cdd0238c37cb53014ec679ca62c3200a218cd00efb3c56c22ee8a353d4f4a74e1f70b72babee91112401808632c8584e9194b2e10e0c671838da1c7858101205d05175ec9b06abf8d79b12bb039db1ec4e0a84f35e46e34cf0194c6231a38b29709b222c88e9b47fe7ca3901a7cb2795403aad9594089c81e70e0511a257d12c98ea9dcc1a22fb33b6e5070a229ca21eab99738cb8c7b260455018bc46a7530a407716dc322a26039eb750ddcf46b7105cf21c72f0d2a66480b63150da31cd74a45e61c1e83ee3eaa37b0e97724829c60d950d99299e8c379c3a8aac45022d96a4ea331d4cf40213c08227ca94920569a3f6dcc8e47374c2642f6c242a5d30b0cc39f7fa36f435ec602ab2c8ba539c05175de08e449ab2c0a352923981892d9b781d08c2b3af764d8953dce4891eb54c996abdf13a096e0c51b8848e360da1ba06373d517953dc14b3f41ead33d48632a78814480b11257029a837bda8efbe10933cbae823fcf91e76931e4a2805ea1c980c89a22938eaa941f1c4153aaf4dbc46047d51e653a5178230b4413e2527bb83f8288364544b3837592c2a16d570bcd2ffa3f2729fca2938545575665249c515c3888e928c2b47bccda9e4a625fd230738ef299e53dc879eb88767bb7fc1264e38e65d351a329f10e321b3293d3e7a99a5a5d19079ea1f039bad62a321f385787cf2342b25c66b995544a321f3ba6ebcfcd9fe616c65b6111b2f7f96ad4643e67bac31b0d91e643464be5b18e7cbacaa1f0d99affca321f38c7a77146a2d6e31eea8bf7ef4f7f90409b46b3b755473f1e1c393f9163b40fce7ffc2db4751);
INSERT INTO `history` (`session_name`, `page_id`, `client_id`, `data`) VALUES
('njmveib0m1rriuolc3ee87n2t4', 144, 2, 0x789cbd59db8edb3610fd17bf17e1fde27d4a360d50205914b93c0b4372b816ea9552c9ee0575ffbd23c976b291b27212b90fbec8123987c399336768584bb6fea75d0bb55e3d7b012d162feabf0e6cf8fa7e830f7860ab1b588bfe21b15e1545bb810653b1afcadff758fc014d5b14dd2334cfbfed9acbee9908db6d80f8db67b7ba7bfc9191f3bc64fb01caaabbe6eb7fca353bdd3074a34efb2dae6e68345baffac1cfd343f7703fae8287fea6a4efd6286792f021e51434b34cb16cace35e7929749445b3bae961f4cbd83498dbe23e76083b937443eb0927bc8476136a68d2a1c358b0671f76e5b62dde4308985e34f59f2d36c35a640799a6c8751309d4dd80f023dce360a15dfbf56a0bedae38fdf613efcc4a3961f6034d5bbcaeefcbeab0edde17db04652eb0769dfd1753a6df60b53f3cd0db6266a47fcacc71fffaeb4fdbf64336c9e47a556f531f883451562628092019e8ac83f25ad3bb755e70c7d1f9d5cd93287fdf97f1b70262c4b62d96f50c9bb0f90ea1899b43db7f2c17665341fdc8d475626c3299deed60b76f5f407368fb6fcb599b8ae8e77157d655670dfa6f019ae5dc3a15351306afe4dca797bb857d15371f21fd5fcb3d1bbcce72bfc73a5fccba1653044135e84d5f127fa9521961573787a14496a7ebc50098a9727801802bc5de17dc75fbf64df1aadceeb0690fb9ffec1ed63f64aa2f058a54cae9f7222425454a9cc92432a468ad60815960d9b3ecb4f95cc3640a87e3f550eeb95daf3e83795b3f3cd45557f7f9cd20865a242dd0d4041ffb9a40934073df7e26846831a481fe1e84cb23641c9c0841246b921356066b99e7da79d0465b69f2f591910709cc04b49c845486b044ee35cf4a80d039fa084e69cdf129a7dd9d30f49ab0229d540c9bdb7e09a30f8b6fb7dcabb26ff3e368c87c50dcdd1c915d943f24b9eae568634ac97fcdea7552d5db71aadec216ab44aca9410a292cf7a4849cca3e23ca64a582c498f43214cd51a19d473c9ea0f8f90fac76035adea1e54453d8fdd6161ba8d2b68f953e97bb802ad7b20fa9e125fad7a909a0699fddd6d58eaa667b9e8ed6f5e1f6e5b927705f90e080ed2dc6ba39ab7faf1c4393a216c631d27a5cfa1c048a6093cc42b2f3929eefc8d6e6e18c5f1d3b86fba6de7f3c770c434a1c2f8670ef2ea8f66e1052c7737797229b6f89ae826c4a837deaa32e06b5608f7589b30803a3fdca3ca5c848ab33c7820a08982c5282ebeb388bb3299ae87bdccb3df57821dfd9a31296f54aaebeea436d7f00684f2eea87d845b0517966d62aa3b45710d1fbc0b9cb5a8520915b2715f24b2a0d1baadde9a0e12bc5eecbd38751e9d14168c6a8e2041d0c2846d91f93943e62d23a31bf2c94d765a0fdbdfdf5e5ab0928de88acac092961ecf84705cf50669dc162345c2d07c59d9c12a77400e3904166881c73701a5312542b41a332a0b5784aa27c230e7fc441756e0a081ace8389966b63020bc6db248083a47001442daf10263f374ddd4c40915a729f1d709d5db2a002b5f926a0373e0612130b42e98ef43e95f7216ecb76d70c3dc278b33c15e0649ca72c360ca210c208edb0cf6325ec823e3a454d7feaf40e77bbb2ea1e194112006828838ce51449291beec0708681a3cd8187052151001d55c7be69b08a7fbf2ab13bd019cbeea44038ef6534ce049fc1241633ba9802b729c282984efb77ae9c1370ba7c5209a4d35a4989c01978ee5010217a15cd82a9dec9ac21b23f625bbea320c229eab19a39c7887b2c0b560485c16b743aa5007467c12d13f288e73554f7b3d12d04973c871cbcb42919a06d0c94764c331da9575830bacfb8fae89ec3a51c528a71436543668a27e30da78e226b91408b25a9fa4c0713bdc004b0e08932a56441daa83d3732f91c9d30d90b1b894a170c2c73cebdbe0d7d093b988a2cb2ee1467c14517b82391a62cf0a894644e6062cb265e0782f0ecab5d53e2143779a2472d53a65a6fbc4e821b43142ea1a34d43a8aec14d8f54de1437c52cbd47eb0cb5a1cc292205d24244095c0aea4d2feabb2fc4248f2e7a0f7fbd85dda487124a813a072643a2680a8e7a6a503c7185ce6b13af11419f94f954e985200c6d904fc9c9ee203eca2019d512ce4d168b8a45351caff4ffa83cdfa7720a0e55559d99545271c530a2a324e3ca116f732ab96949ffc801ce5b8ae714f7a127eee1d9ee5fb089138e79578d86cc27c478c86c4a8f8f5e66696934649efac7c066abd868c87c211e9f3ccd4a89f15a6615d168c8bcae1b2f7fb67f185b996dc4c6cb9f65abd190f91e6b0c6cb607190d99ef16c6f932abea4743e62bff68c83ca38e86cc93ccdd51dbb5b8c5b8a396fc4426613800b353ff195e7c3c7185f3c57fff03b84c4e3d),
('njmveib0m1rriuolc3ee87n2t4', 145, 2, 0x789cbd5ad96edbc812fd17bd5fa4f7457e4a9c097081c418647926aabbab6d2232e521a5cc0471fe7d8aa4242fa44d25a6e6c11229b259a7bb4f9d5a68584ab9fcd12c855a2e5ebd81068b37eb7f6e597ff8f90aaff1962dce6029ba9bc4725114cd15d4988a6d55feb5c5e21bd44d51b4b7b0e58f9fcd92cbf69e08ab5580f8f5dea5f61a7f60e4f05cb27d0d65d59ef3e58f72c9f6170c5d58a7ed0a1767349a2d17dde0d7e9babdb91b57c1757751d2b135ca99247c483905cd2c532c1bebb8575e0a1d65512fce3a18dd34ae6acc4d71195b84ad49baa0f5c822bc85e62aaca14eb72dc682bdfab229574df11942c0f4a65effdd60ddcfa55b487a445ed791405df4086fe0127b0bcdd22f172b6836c5feb7fff1d62cedc0d0ec177a6cf17e7d5956b7abf673b64d50e6086ba7d97f3166fa0356dbdb6bfa98cd8cf4cf99d9ed5f777eb76d2fb24926978bf52a7544a40765658292009281ce3a28af357d5ae705771c9d5f9c3d8bf2af6d19bf161023364d31efcab0119b9f10ea7875db745ff3d16c8cd40f4c9d8663a3cef469039b6df306eadba63b9acfda18a35fc74db9ae5a6bd01d05a8e75bd631d68c183cd1e23e3fdd156cab787503e9bf9aeec1e069a6fb3bd6f96cd6b51813088a411fba90f8ff2a951136ebfab60f91e5fe7c3600662c1c1e01e044dc7ba45de71f3f14efcad506ebe63677dfedcdfa45a6ba50a0284bd9ff5e84a4a448893399448614ad152c300b2c7b969d36f773984c74d89df7e19edbe5e21eccf3f5f5f5ba6ae33e3feb93a1062917a8d7041fbb98400f81fab2b99708d1642807fade272e0f907170220491ac494e5819ac659e6be7411b6da5c9a747462b486046a0e524a432842572af79560284ced147704a6b8ecf2ddac51e43971356942715fde6368f6174b4f875cb5d56f66beb3818324d8a8bb31db2a3fc8752aef57cb23196c93f65f534aeeaedd055cf61855522d5d4208514967bca849cca3e23ca64a582c498f43214f52e433b8c78f880e28f6f586d7ab4bc45cb49a6b0fdad29aea04aab8e2b9d2fb7842a97b2a354ff27babf7d11408f7d75beae3614359bc3e3685e5fcedf1e6a02f748047b6c1f31aeeb43f6ef95636852d4c23846b91e973e078122d824b390ec30a5d71bb275757dc0af7615c365bddede1c2a86de2576273ddddb138abd5708a9d5b98b63914d97442741369683ddd55147839ab1c63a66b10803a3fdca3ca5c82857678e05151030592407d7a7592ccec664a2ab718f5fa98713f9cd1a95b02c1772f1e41a6afb02a09db8bcacd4126c109e99b5ca28ed1544f43e70eeb2562148e4d64985fc9848c3fa68b76f343c11ec1e771f06a14707a119a388137430a018797f4c52fa8849ebc4fcbc50de9781f6f7fccfb7ef46a07823b2b226a484b1d51f153c439975068bd170351f14b75f94389607300e196486c83107a7312541b112342a035a8be752945fc4e1773828ce8d0141c37930d1726d4c60c1789b047090441740d4f20434f9a3aed7f50814a925f7d901d7d9250b2a50996f027ae363a0646246286d4bef2ebcf7bc2d9b4dddd708c3cdf2148093719ebcd83088420823b4c3ce8f95b033aed19e355dd7e9136e3665d5de32802400d0900719cb8949291beec0708681a3cd8187192111817659c7b6aeb18adfdf95d8367486697752209cf7321a6782cf60128b195d4c81db1461464cfbfd3b44ce1138ad3fa904d269ada444e00c3c77284810bd8a6646576fd3ac9ed937d8949f884438263d5633e718698f65c18aa030788d4ea71480aeccb865144c7a3cefa1ba9c64b7105cf21c72f0d2a66480b63190db31cd74a45a6146761f7075ec9ec2a51c928b7143614366e293f186534591b548a0c59c527d9083915a600458f0249952b2206dd49e1b997c8e4e98ec858d24a53312cb1c7caf2b43dfc206c69845d69de22cb8e8027794a4290b3c2a25991398d8bc8ed782203cdb6a539738a64d9ee451cb9429d61baf93e0c690844b6865d310aa5368d3832c6f4c9b6296dea37586ca50e6148902e54224095c0aaa4d8faabb8fc424774bf419fef9089bd1154a2805ea1c980c89d8141cd5d4a078e20a9dd7269e82417799f958e885200c6d904fc9c9b6111f65908c6209e7268b599345d5b757ba372aafb7a91c83435155672695545c318ce8c8c9b872a4db9c426e9a737d640fe723f139c56de884bbbfb77d0b36d2e1985eaac1906987180e9974e961eb6552960643a6a57f086c328a0ddb489379c110d8647a3318329da40de732590c0cad4c5655c3e94f4acf60c874c134043659500c864ca7fe43f24fa6e88321d3617c30645a1e0743a615e36297a835b8c2b8a1fafadeebf3d1fcad59dab12effd1ed87474f9ca389386cc2936566c17a1288c0336a0c9198931da992a794571ca194826699cae66605df8b1a2ffb8cac5c57455ed7d7a3ade5c76ccd9e768c4896226a65480c0d72702a254fcb248f8af7e60e43597d5b9711c7bbda8f99a2a2304e73ddee017a92301951640d496a1ff0a89c9a16baf9bbdcc4aba229af6f9e8c1581eefef973ac87fb425a3cdd91d2bfd3d19ba1473df676ed05f3eb7f699af35579e80bbeacddc5077e00de036bdf3898440a68509202381b3c70a38df547650cc4c11511af22b45ff1fbd3f4ffd9dfbb29a04a45ecfe1be1860465dfb4dc1513af0e333e0cfc1783e076fa),
('njmveib0m1rriuolc3ee87n2t4', 146, 2, 0x789cbd5a5d6fdbb812fd2f7e5f94df1fce539bb6c005dae2a2ed3e0b4372180beb4859c9ee6ed1ec7fbf23c9769b4889dcad7c1f925896a8392467ce9c1906d652adbfb56ba1d6ab17afa0c5e255fdf73d1b3e7edee02ddeb3d515ac45ff9058af8aa2dd4083a9d857e59f7b2cbe40d31645f7085b7ffba75d73d93d1361bb0d10fff8e156778f3f30727a2fd9be85b2eaaef9fa5bb966c71b866ed469bfc5d5158d66eb553ff865baed1eeec75570dbdfa459acac51ce24e143ca2968669962d958c7bdf252e8288b6675d5c3e8a7b16930b7c54dec107626e986d6138bf01ada4da8a149f71dc682bdf87d576edbe2338480e95553ffd56233cc457690e915b96e2281fa3020bc831b1c2cb46bbf5e6da1dd15c7ef7ee39d592927ccfe4eaf2dded5376575bfed7e2fb609ca9c61ed32fb2fa64cbfc76a7f7f4bbf163323fd73660efbd75f7fdfb65fb24926d7ab7a9b7a47a41765658292009281ce3a28af35fdb6ce0bee383abfba7a16e59ffb32fe51408cd8b6c5b22bc3266c7e4268e2e6beedff2ce766534efdc0d4657c6c32983eed60b76f5f4173dff69f96b336e5d12fe3aeacabce1af49f0234cb2deb94d74c18bcd0e23e3fdd2decabb8b983f4ff9aeec9e065a6fb6facf3c5ac6b3145109483def729f13f552a23eceae67e4891e5f17a3100662a1d9e01e042bef788bbae3fbe2fde96db1d36ed7deeff760feb5f32d5a702452ae5f87d1192922225ce64121952b456b0c02cb0ec5976dafca86132b9c3e17a48f7dcae573fc0bcae6f6febaacbfbfc6a10432d9216686a828f7d4ea0974073d3fe20846832a481be0ec2e501320e4e84209235c9092b83b5cc73ed3c68a3ad34f9f2c8680509cc04b49c845486b044ee35cf4a80d039fa084e69cdf1b945fb70c4d06bc28a7452316c6efb1846ef163f6fb957653fb78ea321f34ef1e1ea80ecacf821c9552f471b534afe29ab9709556fc7a17a0d5bac12b1a60629a4b0dc9312722afb8c2893950a1263d2cb50340785761af1f005c59b2f58ed06b4bc43cb89a6b0fbae2d3650a56def2b7d2c770e55ae65ef52c38fe87f8e4500bdf6c5755ded286bb6a7d7d1bc7ebf7e7daa09dc23121cb07dc4583727f5ef95636852d4c238465a8f4b9f8340116c925948769ad2cb1dd9dadc9ef0ab43c570d3d4fbbb53c53084c4e16270f7ee8272ef0621753cf7e15c64f325d145904d69b0ef75d4d9a016acb1ce592cc2c068bf324f2932d2eaccb1a00202268b14e0fa328bc5d9144df435eef92bf57022ffb246252ceb955c3db986dafe02d09e5cd42fb18b60a3f4ccac554669af20a2f7817397b50a4122b74e2ae4e7641a3664bb63a3e18964f7b8fb304a3d3a08cd18659ca08301c528fa6392d2474c5a27e69785f2ae0cb4bfd7ff7dfd76028a37222b6b424a183bfe51c133945967b0180d57cb4171c74589533a8071c82033448e39388d2909ca95a05119d05a3c27517e12873fe0a03c3705040de7c144cbb5318105e36d12c04192bb00a296177093374d53371350a496dc67075c67972ca84065be09e88d8f81c4c48250ba96def7f43ef86dd9ee9aa146186f96a7049c8cf314c58641144218a11df671ac845d708d8e5ed3779d3ee16e5756dd23234802000d4590b19c3c2965c31d18ce3070b439f0b0202472a083ead8370d56f1ebdb12bb86ce58762705c2792fa37126f80c26b198d1c514b84d1116c474dcbf53e69c80d3c5934a209dd64a4a04cec073878208d1ab68160cf54e660d9e7d876df9899c08a7a8c76ae61c23eeb12c58111406afd1e99402d09d05b74cc8039e7750ddcc7ab7105cf21c72f0d2a66480b63150d831cd74a45a6141ef3ee1eabd7b0e97724821c60da50d99c99f8c379c2a8aac45022d96a4ea131d4cd40213c08227ca94920569a3f6dcc8e47374c2642f6c242a5dd0b1cc29f6fa32f435ec60cab3c8ba539c05175de08e449ab2c0a352923981892d1b781d08c2b3af764d8953dce4891eb54c9972bdf13a096e0c51b8848e360da1ba04373d507953dc14b3f41ead33548632a78814480b11257029a8363dabee3e13933c2cd167f8fb23ec265728a114a873603224f2a6e0a8a606c51357e8bc36f1121ef45d994fa55e08c2d006f9949cec1af15106c92897706eb258542caaa1bdd29fa8bcdca7720a0e65559d99545271c530a2a320e3ca116f734ab969c9f591039c8fe4cf29ee434fdcc3b3dd29d84487637ea94643e603623c6436a4c7ad97595a1a0d99a7fe31b0d92c366e23cdea8231b05979331a322fd2c673992d06c65666abaaf1f467a9673464be601a039b2d284643e6a5ffd8f96725fa68c87c1a1f0d99a7c7d19079c6f870106a2d6e31eea8befee1f87c4abffdb49aec5b1676ea60e0ec8ec52310435f62e9be3d596616ac274e093ca3c610c9d9b22322f3342f7106b90a9a652adbbb2d7c2d1abc19445c595745ae9bdbc96ef46307cf9e3699fc3245d4ca107f1ae4e0544a9e96499e2511cc770c65f5a52e234e37c21f3b978ac238cd75b707e889f56444913524a97dc0b364382d74fb57b98b9ba22d6fef9e4c2f819e1e37e2e7018cf96076b926886a6e977b7f7ddc8ffe457f7dbabba6e7ba6bfc89eeda02ff5b7390f72fdeb4edf5b6ec15d0719c73cbceff7096bfdbdf2df11f147c14bcdc68941e94765631ee3dc8409c6482e20031677cfe68ebd881e9011ecfb484ebf6a1a1af07466c298ab7890a34d23f0db69ba74e97ba6382bbbaddfd5656edae3fed5aa269fbfc921efdabc1e50e65fef91f9b70f46a),
('njmveib0m1rriuolc3ee87n2t4', 147, 2, 0x789cbd5ad98edbb812fd17bf5f84fbe27e4a3a09708124b8c8f22c14c9625b885bee91eccc04e9fcfb2d49b67b91bae524f23c789125aa0ec9c353a728c3528ae58f6629d472f1e2153458bcdafc73cbfaaf9f57788db76c7101cbfe22b15c1445b3821a53b1abcabf76587c83ba298af612b6fcf1b35972d95e1361bd0e10bfde3bd59ee30f821cef4bb1afa1acda63befc512ed9e184a1139bb45be3e2825ab3e5a26bfc325db71777ed2ab8ee4e4afa6e8d7226091f524e4133cb14cbc63aee9597424759d48b8b0e46d78d558db929ae628bb00d4927b41e1984d7d0acc206ea74db622cd88b2fdb72dd149f21044cafeacddf0dd67d5f640b996e91377524501f7a843770857d8466e9978b3534dbe2f0db7f781b56ca91b05fe8b6c5bbcd5559ddaedbf7d926419913a29d67fec558e8f758ed6eafe96db630d23f17663f7fddf1ddb4fd514c0ab95c6cd6a92322dd282b139404900c74d64179ade9dd3a2fb8e3e8fce2e259947fedcaf8b58018b1698a7947868dc4fc8450c7d56dd37dcc47b331523f08751e8e8d2ea64f5bd8ee9a5750df36ddb7f9a28d31fa65dc969baa8d06ddb700f57cc33ac69a9180671adce7bbbb865d15573790feadee1e039ea7bbbf139dcf165d8b3181a01cf4be4b89ffad521961bba96ffb14591e8e670360c6d2e10900cec4bd47da75f9f17df1b65c6fb16e6e73f7d95eacff2854970a14b994c3ef45484a8a943893496448d15ac102b3c0b267d96973dfc364a2c3feb84ff7dc2e17f7605e6eaeaf37559bf7f9456f861a242f506f083e7639816e02f55573cf085167c8037def8dcb03641c9c0841246b921356066b99e7da79d0465b69f2f991d108129811683909a90c6189dc6b9e9500a173f4119cd29ae37383f6e180a1f38415f9a4a29fdce6318c8e16bf1eb97365bf368e8326d3a4f870b14776d2fa21cbb5994f36c69cfc5351cfb354bd1d2ed54b586395483535482185e59e9c9053d9674499ac549018935e86a2de3bb4638b873728de7cc36adba3e52d5a4e3285ed6f4db1822aad3bae746bb92554b9941da5fa97e85e8722806efbe272536d296b36c7db51bfbe5cbe3ed604ee9108f6d83e62dcd447f7ef95636852d4c238465e8f4b9f8340116c92594876ecd2cb2dc55a5d1ff1ab7dc570556f7637c78aa15f12fb839eeeed01e5de15426a75eec3a9c8a64ba2b3201bf3607775d4c9a066acb14e192cc2c068be324f2932f2eaccb1a00202268bb4c0f579068bb33199e86adcd347ea61477eb346252ccb855c3c3986dafe01d04e5cd41fa98b6083f4ccac554669af20a2f7817397b50a4122b74e2ae4a7641ad667bbc346c313c9eef1eec320f5e82034639471820e0614a3d51f93943e62d23a313f2f947765a0f9bdfcdfebb72350bc1159591352c2d8ea8f0a9ea1cc3a83c568b89a0f8a3b0c4a1cf3018c4306992172ccc1694c4950ae048dca80d6e2398bf28b38fc1e07e5b9312068380f265aae8d092c186f93000e92e802885a9e81266fea7a538f40915a729f1d709d5db2a00295f926a0373e063213334269b7f4eed27bcfdbb2d9d67d8d309c2c4f093819e769151b065108618476d8ad6325ec8c6374604db7ebf409b7dbb26a2f1940120068680519cb8949291beec0708681a3cd818719211181f6ae6357d758c5ef6f4b6c377486b63b2910ce7b198d33c1673089c58c2ea6c06d8a3023a6c3fc1d33e7089c763da904d269ada444e00c3c77284810bd8a66c6a5dedaac9ed937d8949f884438263d5633e718698f65c18aa030788d4ea71480cecc386542eef1bc83ea6a92dd4270c973c8c14b9b92019ac640cb8e69a623d50a33b2fb88ab63f7142ee590961837943664263e196f385514598b045acc29d5473918a9054680054f9229250bd246edb991c9e7e884c95ed848523a23b1cc71ed7565e86bd8c218b328ba539c05175de08e4c9ab2c0a35292398189cdbbf05a108467576deb12c7b4c9933c6a9932e57ae37512dc18927009ad6c1a42750e6d7ae0f2c6b42966e93d5a67a80c654e912890172249e052506d7a52dd7d2226b91fa2cff0cf47d88e8e50422950e7c06448c4a6e0a8a606c51357e8bc36f11c0cba73e663a917823034413e2527db8df8288364944b383759cc6a1655bfbdd23d5179b94be5181ccaaa3a33a9a4e28a6144478b8c2b47bacd29e5a639c747f6703e129f53dc854eb8fb6bdba760233b1cd343356832bd20864d2697f470eb655296064da6a57f086c328b0db791267dc110d8a4bd1934993669c3be4c1603c3289355d5b0fb93d23368325d300d814d16148326d3d67f48fe498b3e68329dc6074da6e571d0645a313eec8d5a836b8c5baaafef3d3e1ff36fbfec26bb2d0b3bf660e0e41d8b4720fa7d89b9f7ed2932b3603d694ae01935864864cb8e84cc53bfc409e22aa897a96c6ed6f0bda8f1aa3771e5a62af2a6be1edd8d7e4cf0ec6992899729a25686f4d32007a752f2344cf2248b60ee3094d5b74d19717c23fc31b95414c669aedb39404faa27238aac2149ed039e64c369a09bbfcb6d5c154d797df3647a0974f570237e1ac0500f26876b44a8a666b9dbd3e21df4433df5e24dd35caecbce231c58e5c79eb5fd3ea3f7bf1ce2ccf13f033ea038780fac7dfe6012e9a141497ae06cf0c08d36d69fe41f885e6be2544568bfe2f7a799fdb3bf765b40958ad8fd37e186e4a5d3839fff0774ec69e1),
('njmveib0m1rriuolc3ee87n2t4', 148, 2, 0x789cbd59db72d34810fd17bf6f65ee17e78904a8da2a486d25f0acea99e98955381248320b85f9f76d49b621442406e47db02d59a3e9333ddda74f4bb0947cf9a55d0ab55c9c5d408bc545fd69cbc6c3372bbcc32d5b9cc3520c83c4725114ed0a1a4cc5a62a3f6cb0f8084d5b14fd10b6fcf2b55d72d98f89b05e0788efbebbd45fe3f78c1ce625db775056fd398129976c7fc1d0853a6dd6b838a7bbd97231dcfc2cddf58387fb2ab81b2e4a3ab6463993840f29a7a099658a65631df7ca4ba1a32c9ac5f9006358c6aac1dc16b7b147582ef9395dd07ac209cfa15d851a9ab4ed3116ecec6d57aedbe20d8480e9a2a9ff6db119d7227bc83445ae9b48a0ae4684efe1167b0b8c4efd72b186b62bf6fffd35989572c2ec5b9ab67855df96d576dd7fcfb609ca1c61ed34fb2fa64cbfc66ab3bda3afd9cc48ff9899ddfe0de7dfb6ed8f6c92c9e5a25ea7211069a2ac4c50124032d05907e5b5a66febbce08ea3f38bf347517ed894f15d013162db16f37a864dd8bc4168e26adb0e3ff385d95450df33759a189b4ca69b0eba4d7b01cdb61d8ee6b33615d1cf6257d6556f0d86a300cd7c6e9d8a9a09832772eee3cb5dc3a68aabf790feafe51e0c9e66b9bf639dcf665d8b2982a01af47a28897f57a98cd0d5cd762c91e5fe7c360066aa1c1e01e044b1f703775d5ebf2e5e96eb0e9b769b87df7eb0fe2353432950a452f6ff1721292952e24c269121456b050bcc02cb9e65a7cdf71a265338eccec772cfed72f11dcccbfaeeaeae46b5318aa116490b3435c1c7a126d024d0dcb6df09215a0c69a0cfa370b9878c83132188644d72c2ca602df35c3b0fda682b4d3e3d32f220819980969390ca1096c8bde65909103a471fc129ad393ee6b4ab3d86411356a4938a7173db1f610c61f1eb960755f66b7e7c70cbd3417175be437654fe90e4aae7a38d2925ff33aba749556f1fa6ea25acb14ac49a1aa490c2724f4ac8a9ec33a24c562a488c492f43d1ec14dae18efb13142f3e62d58d6887d685134d61ff5f5baca04aeb2156865cee03aa5cca21a4c68f183efb2680a63dbbacab8eaa667b988ed6f5f6f2f9a8d8699cfb8104476cd718ebe6a0febd720c4d8a5a18c748eb71e9731028824d320bc90e4b7ad691add5dd01bfda750cb74dbd797fe818c694d89d8ce1de9f50ed5d21a49ee7ae8e45f6744b741264531aec5b1f7534a8197bac639c451818ed57e62945465a9d39165440c06491125c9fc6599c4dd1c4d0e31eefa9fb0bf9cd1e95b02c1772f1531ff69cdc833b7bd1b697eb9296ff8d0eb4fd83451c7cf8dbc423d883cacdac554669af20a2f7817397b50a4122b74e2ae4c714213616c2fd33889fd4c11f1f4c3ca84a3a08cd1815a3a08301c588186292d2474c5a27e6e785f2aa0cb4f597ff3c7f3901c51b91953521258c3d35a9e019caac33588c86abf9a0b8bd53e29444601c32c80c91630e4e634a82ca28685406b4168fa9975fc4e17738a8044e0141c37930d1726d4c60c1789b047090142e80a8e509c2e445d3d4cd0414a925f7d901d7d9250b2ac48826a0373e06d219334211bb4c1e2bff18b765db3563fbf070b33cd5e6649ca724360ca210c208ed70486325ec8c3eda47cdf040ea06bbaeacfa210f200900349441c6728aa4940d776038c3c0d1e6c0c38c902880768264d33458c5cf2f4bec9ff53c54e4498170decb689c093e83492c667431056e53841931edf7ef505427e0f4f9a41248a7b592128133f0dca12042f42a9a1953bd57606364bfc7b6bca120c229eab19a39c7887b2c0b560485c16b743aa5007465c62d137287e71554b74f46b7105cf21c72f0d2a66480b63150da31cd74a43662c6e83ee01aa2fb295cca21a51837543664a67832de706a36b21609b49893aa0f7430d1264c000b9e28534a16a48dda732393cfd10993bdb091a874c6c03287dc1b3ad4e7d0c154649175a7380b2ebac01de937658147a5247302139b37f17a10846753754d8953dce4891eb54c996abdf13a096e0c51b8849e360da13a0537dd138053dc14b3f41ead33d4a132a78814480b11257029a86d3daa253f1293dcb9e80d7cba866ed24309a5409d03932151340547ed36289eb842e7b589a788a06fa27daaf442108636c8a7e464ff8c3eca2019d512ce4d16b38a45353e79195eb63cdba4720a0e55559d99545271c530a2a324e3ca116f732ab9694effc811ce35c5738a9b3010f7d791d25b5c63ec4889efe708c32d344dffee6cd7bed8a9570a47772f2778fcf0f53fdcc63380),
('njmveib0m1rriuolc3ee87n2t4', 149, 2, 0x789cbd5ad96edbc812fd17bd5fa4f7457e4a9c04b840125c647926aabbab6d2232e521a5cc04b1fffd1649495e489b4a4ccd83168a6cd6e9eaaa53a79a82a594cb5fcd52a8e5e2d51b68b078b3fee786f55fbf5ee215deb0c5192c457791582e8aa2b9841a53b1adcabfb658fc80ba298af612b6fc75db2cb96caf89b05a0588dfef9d6acff107460ef725db575056ed315ffe2a976c7fc2d08975daae707146a3d972d10d7e9daeda8bbb71155c7527257db7463993840f29a7a099658a65631df7ca4ba1a32ceac55907a39bc6658db9292e628bb05cf2333aa1f58813de427319d650a79b1663c15e7ddb94aba6f80a21607a53afff6eb0eee7d239926e91d77524509f7a84d77081ad0546877eb95841b329f6bffda7334b2b3034fb8d6e5b7c585f94d5cdaa7d9f6d119439c2da69d65f8c99fe88d5f6e68ade663323fd736676ebd71ddf2ddb8b6c92c9e562bd4a5d20d28db232414900c940671d94d79adeadf3823b8ece2fce9e45f9d7b68cdf0b88119ba698d7336cc4e617843a5ede34ddc77c613616d40f4c9d26c64693e9cb0636dbe60dd4374df76d3e6b6311fd3a6eca75d55a83ee5b807a3eb78e45cd88c11339f7f9e9ae605bc5cb6b48ffd6740f064f33dd3fb1ce67b3aec51841500dfad895c4ff56a98cb059d7377d892cf7c7b3013063e5f00800278abd47dc75fef963f1be5c6db06e6e72f7d95eac5f64aa2b058a54cafef7222425454a9cc92432a468ad60815960d9b3ecb4b9af613285c3eeb82ff7dc2e17f7609eafafaed655af367a31d42069817a4df0b1ab097413a82f9a7b428826431ae8672f5c1e20e3e044082259939cb03258cb3cd7ce8336da4a934f8f8c3c486046a0e524a432842572af79560284ced147704a6b8ecf39edd31e43a7092bd24945bfb8cd63185d58fcbee54e95fd9e1f0743a683e2d3d90ed951f943926b3d1f6d8c29f9a7ac9e2655bd1da6ea39acb04ac49a1aa490c2724f4ac8a9ec33a24c562a488c492f4351ef14da61c4c31b14ef7e60b5e9d1f2162d279ac2f6b7a6b8842aadba58e972b90da87229bb90ea5fa27bed9b00baedabf375b5a1aad91c6e47f3fa76feb657ec749d7b44823db6cf18d7f541fd7be5189a14b5308e91d6e3d2e72050049b6416921da6f47a43b62eaf0ef8d5ae63b8a8d7dbeb43c7d0a7c4eea00ff7f6806aef25426a79eed3b1c8a65ba293201bd360777dd4d1a066ecb18e71166160b45e99a714196975e65850010193454a707d1a67713646135d8f7bbca71e4ee40f7b54c2b25cc8c5933e6c39b905f7ea5dd39caf4a9afe1d1d68fb824974c4f3b2364cb041e966d62aa3b45710d1fbc0b9cb5a8520915b2715f263aa10eb2be17e13e28942f8786762509674109a31aa464107038a1133c424a58f98b44ecccf0be5431968edcffff7f6fd08146f4456d6849430b6dca4826728b3ce60311aaee683e2f64e89631a8171c82033448e39388d2909aaa3a05119d05a3c275f7e1387dfe1a01a3806040de7c144cbb5318105e36d12c04152b800a2962708937775bdae47a0482db9cf0eb8ce2e595021463401bdf13190d098118ad8a5725ffafbb82d9b4dddf70fc3c5f2549c93719eb2d83088420823b4c32e8f95b033fa681f35dd8ed417dc6ccaaabd64004900a0a10c32965324a56cb803c319068e36071e66844401b45324dbbac62afe7c5f62bbd93394e4498170decb689c093e83492c667431056e53841931edd7ef505547e0b4f9a41248a7b592128133f0dca12042f42a9a1953bd95607d645f63537ea120c231eab19a39c7887b2c0b560485c16b743aa5007466c625a362d2e3f900d5c564740bc125cf21072f6d4a06681903a51dd34c47ea23668cee03ae2ebaa77029879462dc50d99099e2c978c3a9dbc85a24d0624eaa3ed0c1489f30022c78a24c295990366acf8d4c3e47274cf6c246a2d21903cb1c72af6b51dfc206c6228bac3bc55970d105ee48c0290b3c2a25991398d8bc89d782203cdb6a539738c64d9ee851cb94a9d61baf93e0c610854b6869d310aa5370d3030538c64d314befd13a432d2a738a4881b41051029782fad6a37af22331c99d8bbec23f9f6133eaa18452a0ce81c990289a82a37e1b144f5ca1f3dac45344d09d6a1f2bbd1084a105f22939d96ed2471924a35ac2b9c96256b1a8faad97ee69cbeb6d2ac7e05055d599492515570c233a4a32ae1cf136a7929be6f48fece17ca6784e711b3ae2beed29bdc115c60d29f17b0fe1c698bebb73fb3c6d64af647a268321d36b3118321d4fc37d9fc984180c99ceebe19049661aee2e4db2eb60c874a5180c992e7ac3b94cd6efa1932715d110d8a4b01b0c9996a7c3189b94da8321d38dc210d864933374f2647f361832dd5d0e814df6c6ddde841d7b0270f4d6c4239e98638371b8414f969905eb29b302cfa83144724676441a9e24af38822905cd3295cdf50a7e16355ef48aac5c57455ed757a3dbce8f17207b22205ad014512b435c65908353297972933caade9b3b0c65f5635d461cdff17e4c7c2a0ae334d7ed1aa0a744961145d690a4f6018fd2d4e4e8e6ef72132f8ba6bcba7eb25684f64f12b763fbbb2f0c8ba777abf49fecf6cdb07f3df6e4ed05f3eb7fd96f9acdf1af033ec803f01e58fb34c224621b83922aadb3c10337da587f9462a0185c51e05584f63bfe7c3afc6ffb6b370554a988dd3f15ae492674a471fb7fdf6d76fb),
('njmveib0m1rriuolc3ee87n2t4', 150, 2, 0x789cbd5adb72db3812fd17bd4f05f78bf2e438c9ec5625a9a95c761f590da06171238b1e92ca4c6a3cffbe4d525262913195449a07dba248b00f1aa7bb4f0386a514cbbf9aa550cbc59367d060f1acfaf39e0d1fdfaff016efd9e2292c8787c4725114cd0a6a4cc57653febec5e213d44d51748fb0e55f7f374b2ebb6722acd701e2c7af6e75f7f8032387f792ed5b2837dd355ffe552ed9fe86a11b55daae71f19446b3e5a21f7c956ebb87fb711bb8ed6f4afa6c8d7226091f524e4133cb14cbc63aee9597424759d48ba73d8c7e1aab1a7353dcc40e61b9e44fe986d6134e780ecd2a5450a7fb0e63c19e7c68cb7553bc8710303dabab3f1aac87b9c80e32bd22577524506f06847770839d0546977eb95843d316fbef7ee9cd4a3961f603bdb67855dd949bfb75f7fb6c8ba0cc09d62eb3fe62caf46bdc6cef6fe9d7d9cc48ff9899ddfaf5d75f96eda76c92c9e5a25aa79e88f4a2ac4c50124032d05907e5b5a6dfd679c11d47e7174f1f45f9fbb68c1f0b88119ba638af67d884cd7708755cdd37fd9ff3d16c8ad40f4c5d866393c1f4ae8576db3c83fabee93f9dcfda14a3af625b569bce1af49f02d4e773eb146b260c5ec8b98f4f770ddb4d5cdd41faa7a67b307899e9fe88757e36eb5a4c2508aa41affb92f8ef4d2a23b4557d3f94c8727f7d360066aa1c9e00e042dc3bca5dd76f5f172fcb758b75739ffbbfddc3faa74cf5a540914ad97f5f84a4a448893399448614ad152c300b2c7b969d365f6b984c74d85d0fe59edbe5e22b98d7d5ed6db519d4c620861a242d5057041ffb9a402f81faa6f94a08d16448037d1e84cb03641c9c0841246b921356066b99e7da79d0465b69f2e591910709cc04b49c845486b044ee35cf4a80d039fa084e69cdf131a7bdd963e835e1867452312c6e730ca3a7c5f75bee55d9f7f97134649e146f9eee909d143f24b9aaf3a58d2925ff2dab9709556fc7a17a0d6bdc24ca9a1aa490c2724f4ac8a9ec33a24c562a488c492f4351ef14da61c4c317142f3ee1a61dd0f20e2da73485dd774db1824d5af75ce963b92354b9943da5861fd1ffec9b007aed93eb6ad352d56c0eafa3797db87e3e28767ace1d25c101db5b8c557d50ff5e398626452d8c63a4f5b8f4390814c12699856487295db5646b757bc0af761dc34d5d6def0e1dc31012bb8b81eedd05d5de1542eaf2dc9b5391cdb744174136a5c1bef45127833a638f758ab30803a3f5ca3ca5c848ab33c7820a08982c5280ebcb388bb3a934d1f7b8a77beae1447eb047252ccb855c7cd3875d4eeec03d79d134d7eb92a6ff251d68fb1393e8138ffaa9cc23d8a874336b9551da2b88e87de0dc65ad4290c8ad930af92955880d9570bf09f18d4278bc33312a4b3a08cd1855a3a08301c52833c424a58f98b44ecc9f17caab32d0da5ffff6fce504146f4456d684943076b94905cf50669dc162345c9d0f8adb3b254e6904c62183cc1039e6e034a624a88e824665406bf1987cf94e1c7e87836ae01410349c07132dd7c604168cb7490007497401442d2f409317755dd51350a496dc67075c67972ca810239a80def81848689c118ad885f250fa07de964d5b0ffdc378b13c15e7649ca728360ca210c208edb08f6325ec197db4674dbf23f50edbb6dc748f8c200900341441c6726252ca863b309c61e06873e0e18c9088403b45b2ad6bdcc4cf2f4bec367bc6923c2910ce7b198d33c1673089c58c2ea6c06d8a70464cfbf53b54d509385d3ca904d269ada444e00c3c772828217a15cd1943bd936003b3efb029df1189702af558cd9c63947b2c0b560485c16b743aa50074e78c4b26e40ecf2bd8dcccb25b082e790e397869533240cb1828ec98663a521f7146761f70f5ec9ec3a51c52887143654366e293f18653b791b548a0c53953f5211d4cf40913c082a79429250bd246edb991c9e7e884c95ed848a9f48cc43287d8eb5bd4e7d0c214b3c8ba539c05175de08e049cb2c0a352923981899d37f03a108467bb69eb12a77293a7f4a865ca54eb8dd749706328854be8d2a6215497c84d0f14e0546e8a597a8fd6196a5199539414480b514ae05250df7a524f7e2226b973d17bf8f32db4931e4a2805ea1c980c89d8141cf5dba078e20a9dd7265e82415f54fb54e985200c2d904fc9c96e933eca2019d512ce4d1667158b6ad87ae94f5baeb6a99c82435555672695545c318ce828c8b87294b73995dc744effc801ce5be2738adbd027eebf8794dee01a634b4afcab43b8a94cdfbfb93b4f9bd82b999fc968c8fc5a8c86ccf369bcef331b10a321f3713d1e329b99c6bb4bb3d9753464be528c86cc17bdf15c66ebf7d8c9b38a680c6c56d88d86cccbd331c766a5f668c87ca3300636dbe48c9d3cdb9f8d86cc77976360b3bdf168c8bc9aecb733ecd4a1c1c9bb1947a965d8b33067ded34f2a0ae334d71d08f4447e1951640d496a1ff0241d4a969a3fca36ae8aa6bcbdfb667e0ddd3f168cba29cb9805eb2919049e516388b47ed9519ef3e45771827d415e4e6573b786cf458d3783882cab4d91abfa7672a7fc9833d953ce240ea6885a194aaf0639389592a76592274914f30543b9f95495114fdba49fb73dc1d73997bdd995bce1b4a0a0cab7e8bdffdd6b3fec60bab3b2787ffadd6eef761bd73f774ec5c588d4dc68941e94765631ee3dc840b16a82e20031677cfc3868bf33d143dc9f0309d7ed0cd6f4f550ff1b62d73a9173a9d2d7d8ac4ee15970549681aaa047ef4442637362c23b2992c81c4ee2d9c9b1c6c6b14689145168344659eb4db6327be6497c848c88eea4969c783e18eed668d3b4c3a1d71404e83cf9d511dbd51d8d6a9be25959b7ab049f9bc3119bf872f31ad671d19f4b0c733d7cbfaee2c7457f8031a8c6fd8d5fabea66ddefcbaaa321bfbe87753f441fd9f857d5b4ddf7e608d8eb6ad3aefe53e21fdd4d7b34e84dd5f656dc4ef7edbf7fdb342f115377cb1fddfa2f42bb1afa8f5153947d082166ba303949c542c018180a22688ef818417f6c25bebded3652dbca26ad222485c84530c66a939c6586a4a0b3f1b2d03af17dd550be6aa6a021cf3a920eb44a5ac981a9888ae419686f013d9cd408fc1034b13b21de9f8f155731762defebfe5076da8dd264ca3d9ab40eb3c67647aacc2069124e8a1793bb9c1bfd11d6be39ff3c85316b29ac4d245b282968205f06f0d92263545d4867fd73feeca2abb9bab9a1f20d2d4e6125b5c86d869449d1394e4454e0031817a41196d2d8e5b09a23acbf5185dab4d7d5ed1d6c26ddaa948f2c454dbcd45c650081d4b1b088d46591063e4952fdd8d2bb63a8abaaad26d9e9b222e52e8c8a52e59c3dd1941a1ffa004a3a79d219cc0f41dcffab05fc39058b816498d124ea41c0f9e03dfda23225a84e52577a92182458ffdbdede156d5560a73a1e48c26f49b22ed3df5159f8e53091b1ea9ac5366ef767bd3c6e5e67b9336ef767236334643ef0c77399cd67e31e71365d8fadcc169f718f385b4a4743e675d0781f6256ba8ddbfd59114aeafaefff0319bf9157),
('njmveib0m1rriuolc3ee87n2t4', 151, 2, 0x789cbd5adb92db3612fd17bda78cfb457e1a8fe3ec56c5ae942fbb8fac06d01871ad11272495c495f1bf6f9394e4199163cab69487d18817a00f1a07dda701c152cae5dfcd52a8e5e2d90b68b07851fd75cf86afef57788bf76cf11c96a27f492c1745d1aca0c6546c37e5ef5b2cfe80ba298aee15b6fcfb73b3e4b27b27c27a1d207e7cf0a87bc61f1939f44bb66fa1dcecaecb25db3f30f4a04adb352e9e536bb65cf48dafd26df772df6e03b7fd4349dfad51ce24e143ca2968669962d958c7bdf252e8288b7af1fc73b9e4d3bdab5def3f37cdf5bac44d7b6cc10e280bea1d000de7a058141804b3562a261d4f220a17c84837d6de57ab1a7353dcc4ce0d9d657aa0f584a75f42b30a15d4e9be37c19e7d68cb7553bc871030bda8ab3f1bac0787f5b3455de4aa8e84ebcd00f20e6eb0b3c0e8d22f176b68da627fefa7de2c4df3d8ec07eab6f8b5ba2937f7ebeef36c33adcc09d62e43323165fa356eb6f7b7f4713633d27fcdcc6efefaeb2fd3f64336c9e47251ad53cf45ea282b139404900c74d64179ade9d33a2fb8e3e8fce2f95751febe2de3c70262c4a629ceeb193661f31d421d57f74dffef7c349b22f5235397e1d8e4627ad742bb6d5e407ddff4dfce676d8ad157b12dab4d670dfa6f01eaf3b9758a3513062fe4dcaf0f770ddb4d5cdd41faa7867b307899e17e8f757e36eb5a4c0508ca41affbccf8ef4d2a23b4557d3f64ca727f7d3600662a1d9e00e042dc3b8a5dd76f5f17afca758b75739ffbffddcbfa874cf5a9409114dadf2f425252a4c4994c22438ad60a169805963dcb4e9b874229131d1e0825b241bae401ccebeaf6b6da0c6a63505c0d9216a82b828f7d4ea04ea0bee9c313df774263b9fd34089747c83838118248d62427ac0cd632cfb5f3a08db6d2e4cb23230f129809683909a90c6189dc6b9e9500a173f4119cd29ae3d79cf6668fa1179e1bd249c530b9cd318c9e16df6eb95765dfe6c751937952bc79be4376d2fa21c9559d2f6c4c950b4f59bdcc52f576bc54af618d9b44515383145258ee490939957d469489543a24c6a497a1a8770aedd0e27107c5cf7f500530a0e51d5a4e610abb7b4db1824d5af75ce9d77247a872297b4a0d7fa2ffdb1701d4edb3eb6ad352d66c0eddd1b83e5cbf1c143bbde78e82e080ed2dc6aa3ea87faf1c4393a216c631d27a5cfa1c048a6093cc42b2c390ae5ab2b5ba3de057bb8ae1a6aeb677878a615812bb8b81eedd05e5de1542eae2dc9b5391cdd75d174136a5c1bed45127833a638d758ab30803a3f9ca3ca5c848ab33c7820a08982cd202d7977116675361a22fa44ff7d4e3817c678d4a58960bb978d287fb3afcd9833a7c1f0eb4fd8141f48147fd50e4116c94baa9f6574669af20a2f7817397b50a4122b74e2ae4a764213664c2fd5ec41389f078fb63949674109a31ca464107038a516488494a1f31699d983f2f945fcb40737ffddbcb571350bc1159591352c2d8c526153c439975068bd170753e286eef9438a51118870c3243e49883d39892a03c0a1a9501adc5d7e4cb37e2f03b1c9403a78074db45c144cbb5318105e36d12c041125d0051cb0bd0e4e7baee64fa088ad492fbec80ebec920515624413d01b1f03098d334211fb2db53ef50fbc2d9bb61eea87f164794acec9384fabd83088420823b4c37e1d2b61cfe8a33d6bfa1da977d8b6e5a67b650449741b7db4828ce5c4a4940d776038c3c0d1e6c0c319211181768a645bd7b8899f5e95d86df68c257952209cf7321a6782cf60128b195d4c81db14e18c98f6f377c8aa1370baf5a41248a7b592128133f0dca1a080e85534675cea9d041b987d874df98e488453a1c76ae61ca3d86359b022280c5ea3d32905a027679c322177787e85cdcd2cbb85e092e7908397362503348d81961dd34c47aa23cec8ee03ae9edd73b894435a62dc50da9099f864bce1546d642d126871ce507d08071375c204b0e029644ac982b4517b6e64f2393a61b2173652283d23b1cc61edf525ea4b68618a5964dd29ce828b2e7047024e59e05129c99cc0c4cebbf03a108467bb69eb12a76293a7f0a865ca94eb8dd749706328844be8c2a6215497884d8f14e0546c8a597a8fd6192a5199531414480b5148e05250dd7a524d7e2226b973d17bf8eb2db4931e4a2805ea1c980c89d8141cd5dba078e20a9dd7265e82415f54fb54ea85200c4d904fc9c96e933eca2019e512ce4d1667158b6ad87ae94f5baeb6a99c82435955672695545c318ce8689171e5286e734ab9e99cfe91039cb7c4e714b7a10fdc9f8790dee01a634b4afcc159dc54a4ef7beeced326f64ae647326a323f17a326f37c1aeffbcc2e885193f9753d6e321b99c6bb4bb3d175d4643e538c9acc27bdf15866f3f7d8c9b38a680c6c56d88d9acccbd331c766a5f6a8c97ca13006365be48c9d3c5b9f8d9acc57976360b3b5f1a8c9bc9aecb733ecd4a1c1c9bb1947a165d8b33067ded34f2a0ae334d71d08f4447e1951640d496a1ff0241d4a969a3fcb36ae8aa6bcbd7b32be86ee8705a36aca3266c17a0a068167d41822cd5f7614e73cf9559c605f909753d9dcade15351e3cd2022cb6a53e4aabe9ddc293fe64cf61433898329a25686c2ab410e4ea5e4699ae44912c57cc1506efea8ca88a76dd2cfdb9ee0eb9ccbdeec52de705a5050e65bf4deffe6b91f7630dd5959bc3ffd6eb777bb8deb1fdbede262446a6e344a0f4a3bab18f71e64a0b56a82e2003167fcfa71d07e67a287b83f0712aedb19ace9f690ff1b62d73a917329d3d7d8ac4ee15970949681b2a047ef4442637362c23b2992c81c4ee2d9c96b8d8dd71a055244a1d11865ad37d9caec9927f1113222ba934a72e2f960b89ba34dd30e875e5310a0f3e48323b6ab3b6ad536c58bb26e57093e35872336f1e5e135ace3a23f9718c67ab8bfaee2c7457f8031a8c6fd835faaea66ddefcbaaa326bfbc8775df441fd9f857d5b4dd7d7304ec75b56957ff29f1cfeea13d6af4a66a7b2b6ea7fbf6f7df36cd2bc4d43df2478ffe8bd0ae86fa635414651f4288992e4c4e52b11030068682089a237e8da0df37134f6fbb8dd4b6b249ab08492172118cb1da2467992129e86cbc2cb44e7c5f3514af9a2968c8b38ea403ad925672602aa2227906da5b400f271502df054dec4e88f7e763c5558c5dc9fbba3f949d76a33499628f26adc3acb1dd912a33489a8493e2c5e42ee7467f84b52fce3f4d61cc5a0a6b13c9160a0a1ac897017cb6c8186517d259ff9c3fbbd5d55cdddc50fa8616a7b0925ae43643caa4e81c27222af0018c0bd2084b61ec7258cd11d6df28436ddaebeaf60e36936e55ca4796a2265e6aae328040aa585844aab248039f24a9be6feadd31d455d55693ec74599172174645a972ce9e684a850f7d01259d3ce90ce6bb20ee7f6a017f4dc16220196634896a10703e784f1f94a604e549aa4a4f128304eb7fdbdbbba2ad0aec54c72349f89424eb22fd1da5859f0e0319d7eeb32e1b57a2b34418d7eeb3341f35995fc5e3b1cc06a771c1371b7bc7566633c9b8e09bcd8ba326f3a266bca930abc3c6b5fbaca2eca5b299fabdc9e184f8fec4df65ffe8cf70f948106b8fb48a1215c791c5ac53606068a65da4aa5df2786af45c5359b3a1117dc44f4f17579f8777db0236a988fd4f77efda4e2191873eff1f1e5afdec),
('njmveib0m1rriuolc3ee87n2t4', 152, 2, 0x789cbd5adb72db3812fd17bd4f05f78bf2e438c9ec5625a9a95c761f590da06171238b1e92ca4c6a3cffbe4d525262913195449a07cb2241b00f1a07dda701c1528ae55fcd52a8e5e2c93368b07856fd79cf86afef57788bf76cf11496c34362b9288a660535a662bb297fdf62f109eaa628ba47d8f2afbf9b2597dd3311d6eb00f1e3574d5d1b7f60e4f05eb27d0be5a6bbe6cbbfca25db37186aa8d2768d8ba7d49b2d177de7ab74db3ddcf7dbc06ddf28e9bb35ca99247c483905cd2c532c1bebb8575e0a1d65512f9ef630fa61ac6acc4d71133b84e5923fa506ad279cf01c9a55a8a04ef71dc6823df9d096eba6780f21607a56577f34580f63911d647a45aeea48a0de0c08efe0063b0b8c2efd72b186a62df6f77ee9cd4a3961f603bdb67855dd949bfb75f779b64950e6046b97997f3165fa356eb6f7b7f4713633d23f6666377ffdf59769fb299b6472b9a8d6a92722bd282b139404900c74d64179ade9d33a2fb8e3e8fce2e9a3287fdf96f163013162d314e7f50c9bb0f90ea18eabfba6ff773e9a4d91fa81a9cb706c7231bd6ba1dd36cfa0be6ffa6fe7b336c5e8abd896d5a6b306fdb700f5f9dc3ac59a09831772eee3c35dc37613577790fea9e11e0c5e66b83f629d9fcdba1653018272d0eb3e25fe7b93ca086d55df0f29b2dc5f9f0d80994a872700b810f78e62d7f5dbd7c5cb72dd62dddce7fe7ff7b0fe29537d2a50a452f6f78b90941429712693c890a2b58205668165cfb2d3e66b0d93890ebbeb21dd73bb5c7c05f3bababdad3683da18c45083a405ea8ae0639f13e82550df345f09211a0c69a0cf837079808c83132188644d72c2ca602df35c3b0fda682b4dbe3c32f220819980969390ca1096c8bde65909103a471fc129ad393ee6b4377b0cbd26dc904e2a86c96d8e61f4b4f87ecbbd2afb3e3f8ebacc93e2cdd31db293d60f49aeea7c61634ac97fcbea6596aab7e3a57a0d6bdc248a9a1aa490c2724f4ac8a9ec33a24c562a488c492f4351ef14daa1c7c317142f3ee1a61dd0f20e2da73085ddbda658c126ad7baef46bb92354b9943da5863fd1ffed8b007aed93eb6ad352d66c0eafa3717db87e3e28767ace1d05c101db5b8c557d50ff5e398626452d8c63a4f5b8f4390814c12699856487215db5646b757bc0af7615c34d5d6def0e15c3b024761703ddbb0bcabd2b84d4c5b937a7229b2f892e826c4a837da9a34e0675c61aeb1467110646f395794a919156678e0515103059a405ae2fe32ccea6c2445fe39eeea98703f9c11a95b02c1772f14d1f7631b903f7e445d35caf4b1afe9770a0ed4f0ca20f3ceaa7228f60a3d4cdac554669af20a2f7817397b50a4122b74e2ae4a764213664c2fd26c43712e1f1cec4282de9203463948d820e0614a3c81093943e62d23a317f5e28afca40737ffddbf3971350bc1159591352c2d8c526153c439975068bd170753e286eef9438a51118870c3243e49883d39892a03c0a1a9501adc563f2e53b71f81d0eca815340d0701e4cb45c1b135830de26011c24d10510b5bc004d5ed475554f40915a729f1d709d5db2a0428c68027ae36320a171462862b79487d43ff0b66cda7aa81fc693e5293927e33cad62c3200a218cd00efb75ac843da38ff6ace977a4de61db969bee9111240180865690b19c9894b2e10e0c671838da1c7838232422d04e916ceb1a37f1f3cb12bbcd9eb1244f0a84f35e46e34cf0194c6231a38b29709b229c11d37efe0e5975024eb79e5402e9b456522270069e3b141410bd8ae68c4bbd936003b3efb029df1189702af458cd9c63147b2c0b560485c16b743aa500d472c629137287e7156c6e66d92d04973c871cbcb42919a0690cb4ec98663a521d7146761f70f5ec9ec3a51cd212e386d286ccc427e30da76a236b91408b7386ea433898a8132680054f21534a16a48dda732393cfd10993bdb09142e91989650e6baf2f519f430b53cc22eb4e71165c74813b1270ca028f4a49e6042676de85d781203cdb4d5b9738159b3c85472d53a65c6fbc4e821b43215c4217360da1ba446c7aa000a76253ccd27bb4ce5089ca9ca2a0405a8842029782ead6936af21331c99d8bdec39f6fa19df450422950e7c06448c4a6e0a8de06c51357e8bc36f1120cfaa2daa7522f046168827c4a4e769bf45106c92897706eb238ab5854c3d64b7fda72b54de5141ccaaa3a33a9a4e28a6144478b8c2b47719b53ca4de7f48f1ce0bc253ea7b80d7de0fe7b08e90dae31b6a4c4bf3a849b8af4fd9bbbf3b489bd92f9918cbacccfc5a8cb3c9fc6fb3eb30b62d4657e5d8fbbcc46a6f1eed26c741d7599cf14a32ef3496f3c96d9fc3d76f2ac221a039b1576a32ef3f274ccb159a93dea325f288c81cd16396327cfd667a32ef3d5e518d86c6d3cea32af26fbed0c3b756870f26ec6516819f62ccc99f7f4938ac238cd7507023d915f4614594392da073c498792a5e68fb28daba2296fefbe195f43f7c38251356519b3603d0583c0336a0c91e62f3b8a739efc2a4eb02fc8cba96ceed6f0b9a8f166109165b5297255df4eee941f73267b8a99c4c114512b43e1d52007a752f2344df2248962be6028379faa32e2699bf4f3b627f83ae7b237bb94379c161494f916bdf7bf7bee871d4c775616ef4fbfdbeddd6ee3fae7cea9b818919a1b8dd283d2ce2ac6bd071968ad9aa03840cc191f3f0edaef4cf410f7e740c2753b8335dd1ef27f43ec5a27722e65fa1a9bd5293c0b8ed2325016f4e89d48686c4e4c7827451299c3493c3b79adb1f15aa3408a28341aa3acf5265b993df3243e4246447752494e3c1f0c7773b469dae1d06b0a02749efcea88edea8e7ab54df1acacdb5582cfcde1884d7c69bc86755cf4e712c3580ff7d755fcb8e80f3006d5b86ff8b5aa6ed6fdbeac3aeaf2eb7b58f75df4918d7f554ddbdd3747c05e579b76f59f12ffe81aed51a73755db5b713bddb7bfffb6695e22a6aec91f35fd17a15d0df5c7a828ca3e8410335d989ca46221600c0c051134477c8ca03f3613dfde761ba96d659356119242e4221863b549ce324352d0d97859689df8be6a285e3553d090671d49075a25ade4c0544445f20cb4b7801e4e2a047e089ad89d10efcfc78aab18bb92f7757f283bed466932c51e4d5a875963bb23556690340927c58bc95dce8dfe086b5f9c7f9ec298b514d626922d141434902f03f86c9131ca2ea4b3fe397f76ababb9bab9a1f40d2d4e6125b5c86d869449d1394e4454e0031817a41196c2d8e5b09a23acbf5186dab4d7d5ed1d6c26ddaa948f2c454dbcd45c65008154b1b088546591063e4952fdd8d4bb63a8abaaad26d9e9b222e52e8c8a52e59c3dd1940a1ffa024a3a79d219cc0f41dcffd402fe9c82c54032cc6812d520e07cf09e3e284d09ca9354959e240609d6ffb6b777455b15d8a98e0792f05b92ac8bf47794167e390c645cbbcfba6c5c89ce12615cbbcfd27cd4657e158fc7321b9cc605df6cec1d5b99cd24e3826f362f8ebacc8b9af1a6c2ac0e1bd7eeb38a722cd367c94ceafaefff0356b59157),
('njmveib0m1rriuolc3ee87n2t4', 153, 2, 0x789cbd5adb92db3612fd17bda78cfb457e1a8fe3ec56c5ae942fbb8fac06d01871ad11272495c495f1bf6f9394e4199163cab69487d18817a00f1a07dda701c152cae5dfcd52a8e5e2d90b68b07851fd75cf86afef57788bf76cf11c96a27f492c1745d1aca0c6546c37e5ef5b2cfe80ba298aee15b6fcfb73b3e4b27b27c27a1d207e7cf0a87bc61f1939f44bb66fa1dcecaecb25db3f30f4a04adb352e9e536bb65cf48dafd26df772df6e03b7fd4349dfad51ce24e143ca2968669962d958c7bdf252e8288b7af1fc73b9e4d3bdab5def3f37cdf5bac44d7b6cc10e280b6595898905a39991068c970c2362ccc69b9c22bddc8fb5f7d5aac6dc1437b1734367991e683de1e997d0ac420575baef4db0671fda72dd14ef21044c2feaeacf06ebc161fd6c5117b9aa3b536f06907770839d0546977eb95843d316fb7b3ff566699ac7663f50b7c5afd54db9b95f779f679b69654eb07619928929d3af71b3bdbfa58fb39991fe6b6676f3d75f7f99b61fb24926978b6a9d7a2e52475999a0248064a0b30eca6b4d9fd679c11d47e717cfbf8af2f76d193f161023364d715ecfb0099bef10eab8ba6ffa7fe7a3d914a91f99ba0cc72617d3bb16da6df302eafba6ff763e6b538cbe8a6d596d3a6bd07f0b509fcfad53ac99307821e77e7db86bd86ee2ea0ed23f35dc83c1cb0cf77bacf3b359d7622a40500e7add67c67f6f5219a1adeafb215396fbebb3013053e9f0040017e2de51ecba7efbba7855ae5bac9bfbdcffef5ed63f64aa4f058aa4d0fe7e1192922225ce64121952b456b0c02cb0ec5976da3c144a99e8f04028910dd2250f605e57b7b7d566501b83e26a90b4405d117cec73027502f54d1f9ef8be131acbeda741b83c42c6c1891044b226396165b09679ae9d076db495265f1e197990c04c40cb494865084be45ef3ac04089da38fe094d61cbfe6b4377b0cbdf0dc904e2a86c96d8e61f4b4f876cbbd2afb363f8e9acc93e2cdf31db293d60f49aeea7c6163aa5c78caea6596aab7e3a57a0d6bdc248a9a1aa490c2724f4ac8a9ec33a24c562a488c492f4351ef14daa1c5e30e8a9fffa00a6040cb3bb49cc21476f79a62059bb4eeb9d2afe58e50e552f6941afe44ffb72f02a8db67d7d5a6a5acd91cbaa3717db87e3928767acf1d05c101db5b8c557d50ff5e398626452d8c63a4f5b8f4390814c12699856487215db5646b757bc0af7615c34d5d6def0e15c3b024761703ddbb0bcabd2b84d4c5b937a7229bafbb2e826c4a837da9a34e0675c61aeb1467110646f395794a919156678e0515103059a405ae2fe32ccea6c2445f489feea9c703f9ce1a95b02c1772f1a40ff775f8b30775f83e1c68fb0383e8038ffaa1c823d82875336b9551da2b88e87de0dc65ad4290c8ad930af92959880d9970bf17f144223cdefe18a5251d84668cb251d0c1806214196292d2474c5a27e6cf0be5d732d0dc5ffff6f2d504146f4456d684943076b14905cf50669dc162345c9d0f8adb3b254e6904c62183cc1039e6e034a624288f824665406bf135f9f28d38fc0e07e5c0292068380f265aae8d092c186f93000e92e802885a5e80263fd77527d34750a496dc67075c67972ca810239a80def81848689c118ad86fa9f5a97fe06dd9b4f5503f8c27cb53724ec6795ac58641144218a11df6eb58097b461fed59d3ef48bdc3b62d37dd2b234802000dad206339312965c31d18ce3070b439f070464844a09d22d9d6356ee2a75725769b3d63499e1408e7bd8cc699e03398c462461753e036453823a6fdfc1db2ea049c6e3da904d269ada444e00c3c772828207a15cd19977a27c10666df6153be2312e154e8b19a39c728f65816ac080a83d7e8744a01e8c919a74cc81d9e5f617333cb6e21b8e439e4e0a54dc9004d63a065c734d391ea8833b2fb80ab67f71c2ee590961837943664263e196f38551b598b045a9c33541fc2c1449d30012c780a9952b2206dd49e1b997c8e4e98ec858d144acf482c73587b7d89fa125a98621659778ab3e0a20bdc9180531678544a322730b1f32ebc0e04e1d96edabac4a9d8e4293c6a9972e88e207412dc180ae112bab06908d52562d3230538159b6296dea375864a54e6140505d2421412b81454b79e54939f8849ee5cf41efe7a0beda487124a813a07264322360547f536289eb842e7b5899760d017d53e957a21084313e45372b2dba48f324846b9847393c559c5a21ab65efad396ab6d2aa7e05056d59949251557dd1196a345c695a3b8cd29e5a673fa470e70de129f53dc863e707f1e427a836b8c2d29f10767715391beefb93b4f9bd82b991fc9a8c9fc5c8c9accf369bcef33bb20464de6d7f5b8c96c641aef2ecd46d75193f94c316a329ff4c66399cddf6327cf2aa231b05961376a322f4fc71c9b95daa326f385c218d86c913376f26c7d366a325f5d8e81cdd6c6a326f36ab2dfceb053870627ef661c859661cfc29c794f3fa9288cd35c7720d013f96544913524a97dc0937428596afe2cdbb82a9af2f6eec9f81aba1f168caa29cb9805eb2918049e516388347fd9519cf3e45771827d415e4e6573b7864f458d3783882cab4d91abfa7672a7fc9833d953cc240ea6885a190aaf0639389592a76992274914f30543b9f9a32a239eb6493f6f7b82af732e7bb34b79c3694141996fd17bff9be77ed8c1746765f1fef4bbdddeed36ae7f6cb78b8b11a9b9d1283d28edac62dc7b9081d6aa098a03c49cf1ebc741fb9d891ee2fe1c48b86e67b0a6db43fe6f885deb44cea54c5f63b33a8567c1515a06ca821ebd13098dcd8909efa448227338896727af35365e6b14481185466394b5de642bb3679ec447c888e84e2ac989e783e16e8e364d3b1c7a4d4180ce930f8ed8aeeea855db142fcaba5d25f8d41c8ed8c49787d7b08e8bfe5c6218ebe1feba8a1f17fd01c6a01af70f7ea9aa9b75bf2fab8e9afcf21ed67d137d64e35f55d376f7cd11b0d7d5a65dfda7c43fbb87f6a8d19baaedadb89deedbdf7fdb34af1053f7c81f3dfa2f42bb1aea8f5151947d082166ba303949c542c018180a22688ef835827edf4c3cbded3652dbca26ad222485c84530c66a939c6586a4a0b3f1b2d03af17dd550bc6aa6a021cf3a920eb44a5ac981a9888ae419686f013d9c54087c1734b13b21de9f8f1557317625efebfe5076da8dd2648a3d9ab40eb3c67647aacc2069124e8a1793bb9c1bfd11d6be38ff3485316b29ac4d245b282868205f06f0d92263945d4867fd73feec565773757343e91b5a9cc24a6a91db0c2993a2739c88a8c007302e48232c85b1cb613547587fa30cb569afabdb3bd84cba55291f598a9a78a9b9ca0002a9626111a9ca220d7c92a4fabea977c75057555b4db2d36545ca5d1815a5ca397ba229153ef4059474f2a43398ef82b8ffa905fc35058b816498d124aa41c0f9e03d7d509a129427a92a3d490c12acff6d6fef8ab62ab0531d8f24e15392ac8bf47794167e3a0c645cbbcfba6c5c89ce12615cbbcfd27cd4647e158fc7321b9cc605df6cec1d5b99cd24e3826f362f8e9acc8b9af1a6c2ac0e1bd7eeb38ab297ca66eaf7268713e2fb137f97fda33fc3e523410c54fa1ac7c103dac0a3653491ba2b1894a5ba3a9e9a8dd654d66c68441ff1d3d3c5d5e7e1ddb6804d2a62ffd3ddbbb65348e4a1cfff07cc3ffdf6),
('njmveib0m1rriuolc3ee87n2t4', 154, 2, 0x789cbd5adb72db3812fd17bd4f05f78bf2e438c9ec5625a9a95c761f590da06171238b1e92ca4c6a3cffbe4d525262913195449a07cb2241b00f1a07dda701c1528ae55fcd52a8e5e2c93368b07856fd79cf86afef57788bf76cf11496c34362b9288a660535a662bb297fdf62f109eaa628ba47d8f2afbf9b2597dd3311d6eb00f1e3574d5d1b7f60e4f05eb27d0be5a6bbe6cbbfca25db37186aa8d2768d8ba7d49b2d177de7ab74db3ddcf7dbc06ddf28e9bb35ca99247c483905cd2c532c1bebb8575e0a1d65512f9ef630fa61ac6acc4d71133b84e5923fa506ad279cf01c9a55a8a04ef71dc6823df9d096eba6780f21607a56577f34580f63911d647a45aeea48a0de0c08efe0063b0b8c2efd72b186a62df6f77ee9cd4a3961f603bdb67855dd949bfb75f779b64950e6046b97997f3165fa356eb6f7b7f4713633d23f6666377ffdf59769fb299b6472b9a8d6a92722bd282b139404900c74d64179ade9d33a2fb8e3e8fce2e9a3287fdf96f163013162d314e7f50c9bb0f90ea18eabfba6ff773e9a4d91fa81a9cb706c7231bd6ba1dd36cfa0be6ffa6fe7b336c5e8abd896d5a6b306fdb700f5f9dc3ac59a09831772eee3c35dc37613577790fea9e11e0c5e66b83f629d9fcdba1653018272d0eb3e25fe7b93ca086d55df0f29b2dc5f9f0d80994a872700b810f78e62d7f5dbd7c5cb72dd62dddce7fe7ff7b0fe29537d2a50a452f6f78b90941429712693c890a2b58205668165cfb2d3e66b0d93890ebbeb21dd73bb5c7c05f3bababdad3683da18c45083a405ea8ae0639f13e82550df345f09211a0c69a0cf837079808c83132188644d72c2ca602df35c3b0fda682b4dbe3c32f220819980969390ca1096c8bde65909103a471fc129ad393ee6b4377b0cbd26dc904e2a86c96d8e61f4b4f87ecbbd2afb3e3f8ebacc93e2cdd31db293d60f49aeea7c61634ac97fcbea6596aab7e3a57a0d6bdc248a9a1aa490c2724f4ac8a9ec33a24c562a488c492f4351ef14daa1c7c317142f3ee1a61dd0f20e2da73085ddbda658c126ad7baef46bb92354b9943da5863fd1ffed8b007aed93eb6ad352d66c0eafa3717db87e3e28767ace1d05c101db5b8c557d50ff5e398626452d8c63a4f5b8f4390814c12699856487215db5646b757bc0af7615c34d5d6def0e15c3b024761703ddbb0bcabd2b84d4c5b937a7229b2f892e826c4a837da9a34e0675c61aeb1467110646f395794a919156678e0515103059a405ae2fe32ccea6c2445fe39eeea98703f9c11a95b02c1772f14d1f7631b903f7e445d35caf4b1afe9770a0ed4f0ca20f3ceaa7228f60a3d4cdac554669af20a2f7817397b50a4122b74e2ae4a764213664c2fd26c43712e1f1cec4282de9203463948d820e0614a3c81093943e62d23a317f5e28afca40737ffddbf3971350bc1159591352c2d8c526153c439975068bd170753e286eef9438a51118870c3243e49883d39892a03c0a1a9501adc563f2e53b71f81d0eca815340d0701e4cb45c1b135830de26011c24d10510b5bc004d5ed475554f40915a729f1d709d5db2a0428c68027ae36320a171462862b79487d43ff0b66cda7aa81fc693e5293927e33cad62c3200a218cd00efb75ac843da38ff6ace977a4de61db969bee9111240180865690b19c9894b2e10e0c671838da1c7838232422d04e916ceb1a37f1f3cb12bbcd9eb1244f0a84f35e46e34cf0194c6231a38b29709b229c11d37efe0e5975024eb79e5402e9b456522270069e3b141410bd8ae68c4bbd936003b3efb029df1189702af458cd9c63147b2c0b560485c16b743aa500d472c629137287e7156c6e66d92d04973c871cbcb42919a0690cb4ec98663a521d7146761f70f5ec9ec3a51cd212e386d286ccc427e30da76a236b91408b7386ea433898a8132680054f21534a16a48dda732393cfd10993bdb09142e91989650e6baf2f519f430b53cc22eb4e71165c74813b1270ca028f4a49e6042676de85d781203cdb4d5b9738159b3c85472d53a65c6fbc4e821b43215c4217360da1ba446c7aa000a76253ccd27bb4ce5089ca9ca2a0405a8842029782ead6936af21331c99d8bdec39f6fa19df450422950e7c06448c4a6e0a8de06c51357e8bc36f1120cfaa2daa7522f046168827c4a4e769bf45106c92897706eb238ab5854c3d64b7fda72b54de5141ccaaa3a33a9a4e28a6144478b8c2b47719b53ca4de7f48f1ce0bc253ea7b80d7de0fe7b08e90dae31b6a4c4bf3a849b8af4fd9bbbf3b489bd92f9918cbacccfc5a8cb3c9fc6fb3eb30b62d4657e5d8fbbcc46a6f1eed26c741d7599cf14a32ef3496f3c96d9fc3d76f2ac221a039b1576a32ef3f274ccb159a93dea325f288c81cd16396327cfd667a32ef3d5e518d86c6d3cea32af26fbed0c3b756870f26ec6516819f62ccc99f7f4938ac238cd7507023d915f4614594392da073c498792a5e68fb28daba2296fefbe195f43f7c38251356519b3603d0583c0336a0c91e62f3b8a739efc2a4eb02fc8cba96ceed6f0b9a8f166109165b5297255df4eee941f73267b8a99c4c114512b43e1d52007a752f2344df2248962be6028379faa32e2699bf4f3b627f83ae7b237bb94379c161494f916bdf7bf7bee871d4c775616ef4fbfdbeddd6ee3fae7cea9b818919a1b8dd283d2ce2ac6bd071968ad9aa03840cc191f3f0edaef4cf410f7e740c2753b8335dd1ef27f43ec5a27722e65fa1a9bd5293c0b8ed2325016f4e89d48686c4e4c7827451299c3493c3b79adb1f15aa3408a28341aa3acf5265b993df3243e4246447752494e3c1f0c7773b469dae1d06b0a02749efcea88edea8e7ab54df1acacdb5582cfcde1884d7c69bc86755cf4e712c3580ff7d755fcb8e80f3006d5b86ff8b5aa6ed6fdbeac3aeaf2eb7b58f75df4918d7f554ddbdd3747c05e579b76f59f12ffe81aed51a73755db5b713bddb7bfffb6695e22a6aec91f35fd17a15d0df5c7a828ca3e8410335d989ca46221600c0c051134477c8ca03f3613dfde761ba96d659356119242e4221863b549ce324352d0d97859689df8be6a285e3553d090671d49075a25ade4c0544445f20cb4b7801e4e2a047e089ad89d10efcfc78aab18bb92f7757f283bed466932c51e4d5a875963bb23556690340927c58bc95dce8dfe086b5f9c7f9ec298b514d626922d141434902f03f86c9131ca2ea4b3fe397f76ababb9bab9a1f40d2d4e6125b5c86d869449d1394e4454e0031817a41196c2d8e5b09a23acbf5186dab4d7d5ed1d6c26ddaa948f2c454dbcd45c65008154b1b088546591063e4952fdd8d4bb63a8abaaad26d9e9b222e52e8c8a52e59c3dd1940a1ffa024a3a79d219cc0f41dcffd402fe9c82c54032cc6812d520e07cf09e3e284d09ca9354959e240609d6ffb6b777455b15d8a98e0792f05b92ac8bf47794167e390c645cbbcfba6c5c89ce12615cbbcfd27cd4657e158fc7321b9cc605df6cec1d5b99cd24e3826f362f8ebacc8b9af1a6c2ac0e1bd7eeb38a722cd367c94ceafaefff0356b59157);
INSERT INTO `history` (`session_name`, `page_id`, `client_id`, `data`) VALUES
('njmveib0m1rriuolc3ee87n2t4', 155, 2, 0x789cbd5adb92db3612fd17bda78cfb457e1a8fe3ec56c5ae942fbb8fac06d01871ad11272495c495f1bf6f9394e4199163cab69487d18817a00f1a07dda701c152cae5dfcd52a8e5e2d90b68b07851fd75cf86afef57788bf76cf11c96a27f492c1745d1aca0c6546c37e5ef5b2cfe80ba298aee15b6fcfb73b3e4b27b27c27a1d207e7cf0a87bc61f1939f44bb66fa1dcecaecb25db3f30f4a04adb352e9e536bb65cf48dafd26df772df6e03b7fd4349dfad51ce24e143ca2968669962d958c7bdf252e8288b7af1fc73b9e4d3bdab5def3f37cdf5bac44d7b6cc10e288b2c2167132d84804c2b8fa0753042020744632c19e9c6dafb6a55636e8a9bd8b9a1b34c0fb49ef0f44b6856a1823addf726d8b30f6db96e8af79d8df4a2aefe6cb01e1cd6cf167591ab3a12ae3703c83bb8c1ce02a34bbf5caca1698bfdbd9f7ab334cd63b31fa8dbe2d7eaa6dcdcafbbcfb3cdb4322758bb0cc9c494e9d7b8d9dedfd2c7d9cc48ff3533bbf9ebafbf4cdb0fd92493cb45b54e3d17a9a3ac4c50124032d05907e535d15059e705771c9d5f3cff2acadfb765fc58408cd834c5793dc3266cbe43a8e3eabee9ff9d8f6653a47e64ea321c9b5c4cef5a68b7cd0ba8ef9bfedbf9ac4d31fa2ab665b5e9ac41ff2d407d3eb74eb166c2e0859cfbf5e1ae61bb89ab3b48ffd4700f062f33dcefb1cecf665d8ba9004139e8759f19ffbd496584b6aaef874c59eeafcf06c04ca5c313005c887b47b1ebfaedebe255b96eb16eee73ffbf7b59ff90a93e15289242fbfb45484a8a943893496448d15ac102b3c0b267d969f3502865a2c303a1443648973c80795dddde569b416d0c8aab41d2027545f0b1cf09d409d4377d78e2fb4e682cb79f06e1f2081907274210c99ae48495c15ae6b9761eb4d1569a7c7964e4410233012d272195212c917bcdb31220748e3e82535a73fc9ad3deec31f4c273433aa91826b73986d1d3e2db2df7aaecdbfc386a324f8a37cf77c84e5a3f24b9aaf3858da972e129ab9759aade8e97ea35ac7193286a6a90420acb3d2921a7b2cf883259a9203126bd0c45bd536887168f3b287efe832a80012defd0720a53d8dd6b8a156cd2bae74abf963b42954bd9536af813fddfbe08a06e9f5d579b96b26673e88ec6f5e1fae5a0d8e93d771404076c6f3156f541fd7be5189a14b5308e91d6e3d2e72050049b6416921d8674d592add5ed01bfda550c3775b5bd3b540cc392d85d0c74ef2e28f7ae105217e7de9c8a6cbeeeba08b2290df6a58e3a19d4196bac539c451818cd57e62945465a9d39165440c0649116b8be8cb3389b0a137d217dbaa71e0fe43b6b54c2b25cc8c5933edcd7e1cf1ed4e1fb70a0ed0f0ca20f3cea87228f60a3d4cdac554669af20a2f7817397b50a4122b74e2ae4a764213664c2fd5ec41389f078fb63949674109a31ca464107038a516488494a1f31699d983f2f945fcb40737ffddbcb571350bc1159591352c2d8c526153c439975068bd170753e286eef9438a51118870c3243e49883d39892a03c0a1a9501adc5d7e4cb37e2f03b1c9403a780a0e13c9868b93626b060bc4d023848a20b206a79019afc5cd79d4c1f41915a729f1d709d5db2a0428c68027ae36320a171462862bfa5d6a7fe81b765d3d643fd309e2c4fc93919e769151b065108618476d8af6325ec197db4674dbf23f50edbb6dc74af8c20090034b4828ce5c4a4940d776038c3c0d1e6c0c319211181768a645bd7b8899f5e95d86df68c257952209cf7321a6782cf60128b195d4c81db14e18c98f6f377c8aa1370baf5a41248a7b592128133f0dca1a080e85534675cea9d041b987d874df98e488453a1c76ae61ca3d86359b022280c5ea3d32905a027679c322177787e85cdcd2cbb85e092e7908397362503348dc1741bc84c47aa23cec8ee03ae9edd73b894435a62dc50da9099f864bce1546d642d126871ce507d08071375c204b0e029644ac982b4517b6e64f2393a61b2173652283d23b1cc61edf525ea4b68618a5964dd29ce828b2e7047024e59e05129c99cc0c4cebbf03a108467bb69eb12a76293a7f0a865ca94eb8dd749706328844be8c2a6215497884d8f14e0546c8a597a8fd6192a5199531414480b5148e05250dd7a524d7e2226b973d17bf8eb2db4931e4a2805ea1c980c89d8141cd5dba078e20a9dd7265e82415f54fb54ea85200c4d904fc9c96e933eca2019e512ce4d1667158b6ad87ae94f5baeb6a99c82435955672695545c318ce8689171e5286e734ab9e99cfe91039cb7c4e714b7a10fdc9f8790dee01a634b4afcc159dc54a4ef7beeced326f64ae647326a323f17a326f37c1aeffbcc2e885193f9753d6e321b99c6bb4bb3d175d4643e538c9acc27bdf15866f3f7d8c9b38a680c6c56d88d9acccbd331c766a5f6a8c97ca13006365be48c9d3c5b9f8d9acc57976360b3b5f1a8c9bc9aecb733ecd4a1c1c9bb1947a165d8b33067ded34f2a0ae334d71d08f4447e1951640d496a1ff0241d4a969a3fcb36ae8aa6bcbd7b32be86ee8705a36aca3266c17a0a068167d41822cd5f7614e73cf9559c605f909753d9dcade15351e3cd2022cb6a53e4aabe9ddc293fe64cf61433898329a25686c2ab410e4ea5e4699ae44912c57cc1506efea8ca88a76dd2cfdb9ee0eb9ccbdeec52de705a5050e65bf4deffe6b91f7630dd5959bc3ffd6eb777bb8deb1fdbede262446a6e344a0f4a3bab18f71e64a0b56a82e2003167fcfa71d07e67a287b83f0712aedb19ace9f690ff1b62d73a917329d3d7d8ac4ee15970949681b2a047ef4442637362c23b2992c81c4ee2d9c96b8d8dd71a055244a1d11865ad37d9caec9927f1113222ba934a72e2f960b89ba34dd30e875e5310a0f3e48323b6ab3b6ad536c58bb26e57093e35872336f1e5e135ace3a23f9718c67ab8bfaee2c7457f8031a8c6fd835faaea66ddefcbaaa326bfbc8775df441fd9f857d5b4dd7d7304ec75b56957ff29f1cfeea13d6af4a66a7b2b6ea7fbf6f7df36cd2bc4d43df2478ffe8bd0ae86fa635414651f4288992e4c4e52b11030068682089a237e8da0df37134f6fbb8dd4b6b249ab08492172118cb1da2467992129e86cbc2cb44e7c5f3514af9a2968c8b38ea403ad925672602aa2227906da5b400f271502df054dec4e88f7e763c5558c5dc9fbba3f949d76a33499628f26adc3acb1dd912a33489a8493e2c5e42ee7467f84b52fce3f4d61cc5a0a6b13c9160a0a1ac897017cb6c8186517d259ff9c3fbbd5d55cdddc50fa8616a7b0925ae43643caa4e81c27222af0018c0bd2084b61ec7258cd11d6df28436ddaebeaf60e36936e55ca4796a2265e6aae328040aa585844aab248039f24a9be6feadd31d455d55693ec74599172174645a972ce9e684a850f7d01259d3ce90ce6bb20ee7f6a017f4dc16220196634896a10703e784f1f94a604e549aa4a4f128304eb7fdbdbbba2ad0aec54c72349f89424eb22fd1da5859f0e0319d7eeb32e1b57a2b34418d7eeb3341f35995fc5e3b1cc06a771c1371b7bc7566633c9b8e09bcd8ba326f3a266bca930abc3c6b5fbaca2eca5b299fabdc9e184f8fec4df65ffe8cf70f9f8f8d791ff6815591e8d97543350dd2e204bc780ccdb532b9c3595351b1ad147fcf47471f57978b72d60938ad8ff74f7aeed141279e8f3ff014f00fef2),
('njmveib0m1rriuolc3ee87n2t4', 156, 2, 0x789cbd5adb72db3812fd17bd4f05f78bf2e438c9ec5625a9a95c761f590da06171238b1e92ca4c6a3cffbe4d525262913195449a07cb2241b00f1a07dda701c1528ae55fcd52a8e5e2c93368b07856fd79cf86afef57788bf76cf11496c34362b9288a660535a662bb297fdf62f109eaa628ba47d8f2afbf9b2597dd3311d6eb00f1e3574d5d1b7f60e4f05eb27d0be5a6bbe6cbbfca25db37186aa8d2768d8ba7d49b2d177de7ab74db3ddcf7dbc06ddf28e9bb35ca99247c483905cd2c532c1bebb8575e0a1d65512f9ef630fa61ac6acc4d71133b84e5923fa506ad279cf01c9a55a8a04ef71dc6823df9d096eba6780f21607a56577f34580f63911d647a45aeea48a0de0c08efe0063b0b8c2efd72b186a62df6f77ee9cd4a3961f603bdb67855dd949bfb75f779b64950e6046b97997f3165fa356eb6f7b7f4713633d23f6666377ffdf59769fb299b6472b9a8d6a92722bd282b139404900c74d64179ade9d33a2fb8e3e8fce2e9a3287fdf96f163013162d314e7f50c9bb0f90ea18eabfba6ff773e9a4d91fa81a9cb706c7231bd6ba1dd36cfa0be6ffa6fe7b336c5e8abd896d5a6b306fdb700f5f9dc3ac59a09831772eee3c35dc37613577790fea9e11e0c5e66b83f629d9fcdba1653018272d0eb3e25fe7b93ca086d55df0f29b2dc5f9f0d80994a872700b810f78e62d7f5dbd7c5cb72dd62dddce7fe7ff7b0fe29537d2a50a452f6f78b90941429712693c890a2b58205668165cfb2d3e66b0d93890ebbeb21dd73bb5c7c05f3bababdad3683da18c45083a405ea8ae0639f13e82550df345f09211a0c69a0cf837079808c83132188644d72c2ca602df35c3b0fda682b4dbe3c32f220819980969390ca1096c8bde65909103a471fc129ad393ee6b4377b0cbd26dc904e2a86c96d8e61f4b4f87ecbbd2afb3e3f8ebacc93e2cdd31db293d60f49aeea7c61634ac97fcbea6596aab7e3a57a0d6bdc248a9a1aa490c2724f4ac8a9ec33a24c562a488c492f4351ef14daa1c7c317142f3ee1a61dd0f20e2da73085ddbda658c126ad7baef46bb92354b9943da5863fd1ffed8b007aed93eb6ad352d66c0eafa3717db87e3e28767ace1d05c101db5b8c557d50ff5e398626452d8c63a4f5b8f4390814c12699856487215db5646b757bc0af7615c34d5d6def0e15c3b024761703ddbb0bcabd2b84d4c5b937a7229b2f892e826c4a837da9a34e0675c61aeb1467110646f395794a919156678e0515103059a405ae2fe32ccea6c2445fe39eeea98703f9c11a95b02c1772f14d1f7631b903f7e445d35caf4b1afe9770a0ed4f0ca20f3ceaa7228f60a3d4cdac554669af20a2f7817397b50a4122b74e2ae4a764213664c2fd26c43712e1f1cec4282de9203463948d820e0614a3c81093943e62d23a317f5e28afca40737ffddbf3971350bc1159591352c2d8c526153c439975068bd170753e286eef9438a51118870c3243e49883d39892a03c0a1a9501adc563f2e53b71f81d0eca815340d0701e4cb45c1b135830de26011c24d10510b5bc004d5ed475554f40915a729f1d709d5db2a0428c68027ae36320a171462862b79487d43ff0b66cda7aa81fc693e5293927e33cad62c3200a218cd00efb75ac843da38ff6ace977a4de61db969bee9111240180865690b19c9894b2e10e0c671838da1c7838232422d04e916ceb1a37f1f3cb12bbcd9eb1244f0a84f35e46e34cf0194c6231a38b29709b229c11d37efe0e5975024eb79e5402e9b456522270069e3b141410bd8ae68c4bbd936003b3efb029df1189702af458cd9c63147b2c0b560485c16b743aa500d472c629137287e7156c6e66d92d04973c871cbcb42919a0690cb4ec98663a521d7146761f70f5ec9ec3a51cd212e386d286ccc427e30da76a236b91408b7386ea433898a8132680054f21534a16a48dda732393cfd10993bdb09142e91989650e6baf2f519f430b53cc22eb4e71165c74813b1270ca028f4a49e6042676de85d781203cdb4d5b9738159b3c85472d53a65c6fbc4e821b43215c4217360da1ba446c7aa000a76253ccd27bb4ce5089ca9ca2a0405a8842029782ead6936af21331c99d8bdec39f6fa19df450422950e7c06448c4a6e0a8de06c51357e8bc36f1120cfaa2daa7522f046168827c4a4e769bf45106c92897706eb238ab5854c3d64b7fda72b54de5141ccaaa3a33a9a4e28a6144478b8c2b47719b53ca4de7f48f1ce0bc253ea7b80d7de0fe7b08e90dae31b6a4c4bf3a849b8af4fd9bbbf3b489bd92f9918cbacccfc5a8cb3c9fc6fb3eb30b62d4657e5d8fbbcc46a6f1eed26c741d7599cf14a32ef3496f3c96d9fc3d76f2ac221a039b1576a32ef3f274ccb159a93dea325f288c81cd16396327cfd667a32ef3d5e518d86c6d3cea32af26fbed0c3b756870f26ec6516819f62ccc99f7f4938ac238cd7507023d915f4614594392da073c498792a5e68fb28daba2296fefbe195f43f7c38251356519b3603d0583c0336a0c91e62f3b8a739efc2a4eb02fc8cba96ceed6f0b9a8f166109165b5297255df4eee941f73267b8a99c4c114512b43e1d52007a752f2344df2248962be6028379faa32e2699bf4f3b627f83ae7b237bb94379c161494f916bdf7bf7bee871d4c775616ef4fbfdbeddd6ee3fae7cea9b818919a1b8dd283d2ce2ac6bd071968ad9aa03840cc191f3f0edaef4cf410f7e740c2753b8335dd1ef27f43ec5a27722e65fa1a9bd5293c0b8ed2325016f4e89d48686c4e4c7827451299c3493c3b79adb1f15aa3408a28341aa3acf5265b993df3243e4246447752494e3c1f0c7773b469dae1d06b0a02749efcea88edea8e7ab54df1acacdb5582cfcde1884d7c69bc86755cf4e712c3580ff7d755fcb8e80f3006d5b86ff8b5aa6ed6fdbeac3aeaf2eb7b58f75df4918d7f554ddbdd3747c05e579b76f59f12ffe81aed51a73755db5b713bddb7bfffb6695e22a6aec91f35fd17a15d0df5c7a828ca3e8410335d989ca46221600c0c051134477c8ca03f3613dfde761ba96d659356119242e4221863b549ce324352d0d97859689df8be6a285e3553d090671d49075a25ade4c0544445f20cb4b7801e4e2a047e089ad89d10efcfc78aab18bb92f7757f283bed466932c51e4d5a875963bb23556690340927c58bc95dce8dfe086b5f9c7f9ec298b514d626922d141434902f03f86c9131ca2ea4b3fe397f76ababb9bab9a1f40d2d4e6125b5c86d869449d1394e4454e0031817a41196c2d8e5b09a23acbf5186dab4d7d5ed1d6c26ddaa948f2c454dbcd45c65008154b1b088546591063e4952fdd8d4bb63a8abaaad26d9e9b222e52e8c8a52e59c3dd1940a1ffa024a3a79d219cc0f41dcffd402fe9c82c54032cc6812d520e07cf09e3e284d09ca9354959e240609d6ffb6b777455b15d8a98e0792f05b92ac8bf47794167e390c645cbbcfba6c5c89ce12615cbbcfd27cd4657e158fc7321b9cc605df6cec1d5b99cd24e3826f362f8ebacc8b9af1a6c2ac0e1bd7eeb38a722cd367c94ceafaefff0356b59157),
('njmveib0m1rriuolc3ee87n2t4', 157, 2, 0x789cbd5adb72db4612fd17bea73cf70bfd24cb7176ab6257ca97dd4754cf4c8fc83545280094c415f9dfb70190b44440026d81791085dba0cff4f49c3e3d03584abdfcbb5e0ab55cbc78053516afcabfee587ff87185d778c7162f6129ba87c4725114f50a2a4cc5ed76fdfb2d167f40551745fb085bfefdb55e72d93e1361b309103fdfbbd5dee30f8c1cde4bb6af61bd6dcff9f2eff592ed6f18ba51a6db0d2e5e526bb65c748d2fd275fb70d76e0bd7dd4d49c7d6286792f021e51434b34cb16cace35e7929749445b578d9c1e8bab1aa30d7c5556c11ae97fc25ddd07ac409afa15e8512aa74d7622cd88b4fcd7a53171f21044cafaaf2cf1aabbe2fb2854cafc8651509d4bb1ee10d5c616b81d1a95f2e365037c5feda4f9d592947cc7ea2d716bf9657ebeddda6fd9d6d109439c1da79c65f8c997e8bdbdbbb6bfa99cd8cf44f99d98d5f77fe6dd89e65934c2e17e5267581482fcaca04250124039d75505e6bfab5ce0bee383abf78f924cadf6fd7f1730131625d17f37a868dd8fc8050c5d55dddfd9b2fccc682fa81a9f3c4d8e864fad040735bbf82eaaeee8ee6b33616d117b15997dbd61a744701aaf9dc3a16352306cfe4dca7bbbb81db6d5cdd40faa7ba7b30789eeefe88753e9b752dc6088272d0db2e25fe7b9bd6119ab2baeb53e47a7f3e1b0033960e4f0070a6d83be2aecbf76f8b37eb4d83557d97bbffedc3fa59a6ba54a048a5ecaf1721292952e24c269121456b050bcc02cb9e65a7cd7d0d93291c76e77dbae776b9b807f3b2bcbe2eb7bddae8c5508da405aa92e0639713e825505dd5f78410758634d0975eb83c40c6c1891044b226396165b09679ae9d076db495269f1f197990c08c40cb494865084be45ef3ac04089da38fe094d61c9f72dabb3d864e136e492715fde0d6c730bab0f87ecb9d2afb3e3f0e9a4c07c5bb973b6427cd1f925ce57cb431a6e41fb37a9ea9eaed70aa5ec206b789585383145258ee490939957d4694c94a058931e96528aa9d423bb478f882e2e73f70dbf468798b96134d617bad2e56b04d9b2e56bab9dc06d47a29bb90eaff44f7b72f02e8b52f2ecb6d4359b33ebc8efaf5e9f275afd8e9397744823db6f718cbeaa0febd720c4d8a5a18c748eb71e9731028824d320bc90e5dba68c8d6eafa805fed2a86abaabcbd39540cfd94d89df4e1de9e50ee5d21a496e7de9d8a6cba243a0bb2310df6ad8e3a19d48c35d629ce220c8cc62bf3942223adce1c0b2a2060b248135c9fc7599c8dd14457e39eeea9871df9c11a95b02c1772f1a80f5b4e6ec1bdf8b9ae2f376beafe373ad0f6199de888473d8b79041ba46e66ad324a7b0511bd0f9cbbac550812b97552213f250bb13e13ee17211e4984c72b1383b4a483d08c51360a3a18508c982126297dc4a475627e5e28bfae038dfde56fafdf8c40f14664654d480963cb4d2a788632eb0c16a3e16a3e286eef9438a61118870c3243e49883d39892a03c0a1a9501adc553f2e53b71f81d0eca816340d0701e4cb45c1b135830de26011c24850b206a798630f9b9aaca6a048ad492fbec80ebec920515624413d01b1f03098d19a188dd54ee537f1fb7ebbaa9fafa6138589e927332ced32c360ca210c208edb09bc74ad8197db48f9a6e45ea0336cd7adb3e32802400d0d00c32965324a56cb803c319068e36071e66844401b45324b75585dbf8e5cd1adbc59ea1244f0a84f35e46e34cf0194c6231a38b29709b22cc88693f7e87ac3a02a79d4f2a81745a2b29113803cf1d0a2244afa29971aab712ac8fec1bacd71f2888708c7aac66ce31e21ecb82154161f01a9d4e2900dd9971c884dce1f915b65793d12d04973c871cbcb42919a0610c34ed98663a521d3163741f7075d13d854b39a429c60da50d99299e8c379caa8dac45022de6a4ea031d8cd40923c08227ca94920569a3f6dcc8e47374c2642f6c242a9d31b0cc61ee7525ea6b68602cb2c8ba539c05175de08e049cb2c0a35292398189cd3bf15a1084e776db546b1ce3264ff4a865ca94eb8dd749706388c225b4b46908d539b8e981021ce3a698a5f7689da112953945a4405a8828814b4175eb4935f98998e4ce451fe1aff7d08c7a28a114a8736032248aa6e0a8de06c51357e8bc36f11c11f44db58fa55e08c2d000f9949c6c17e9a30c92512ee1dc6431ab5854fdd24bb7db72719bd6637028abeacca4928a2b86111d4d32ae1cf136a7949be6f48fece1bca7784ef13674c4fdb5a7f41a37181b52e2f736e1c698be7b73bb9f36b25632dd934193e9b11834998ea7e1bacfe4841834999ed7c32693cc345c5d9a64d74193e94c3168329df4867d99ccdf43274f2aa221b049613768322d4f87313629b5074da60b8521b0c92267e8e4c9fa6cd064baba1c029bac8d074da6d564b79c61c7360d4e5ecd38a2967ecdc2ccbca64f969905eb6932069e516388e4bfec88673cf54b9c40ae827a99d6f5cd06be14155ef5226e5d6e8b5c56d7a32bd5c763963d7116c5408aa895217a33c8c1a9943cb9499e2411cc370cebed1fe53ae2f822f93157aa288cd35cb763809ee6be8c28b28624b50f78920c2747d77fae9bb82aeaf5f5cda3e925b4df55fc40df47e2756ac8deed525ebf5b5050e65b74e6bfbbf3fd0aa69b358af7bbdfcdedcd6ee1fa79ab5d5c0c37aa1ce53fa074e3d13b91d0d89c98f04e8a2432879302eae4516543c5428c8528341aa3acf5265b993df394e54346447752ed4b01dd1b6e9db1ad9b7e77690c02b4637d6f2febe2865a3575f16a5d35ab045feac35e96f876f3123671d16d00f47d3d5cdf94f1f3a2db29e8e5d9fec62f6579b5e91640d551935f3ec2a66ba28f6cfcabac9bf6ba3902f6b6dc36abffacf1cff6a63d6af4ae6c3a2b6e27b0f6d7dfd7f51bc4d4def247b7fe8bd0ac7aa13fa83eb20f21c44c272627a95808180343c10172449c7d241e5fdf1ac85a659356119242e4221863b549ce32439acbd9785e68adcabda88918ea3168c8b38e24b8ac925672602aa2221d04da5b400f2729ee1f8226765bb1fb8da8e222c6b6b67cdbed7e8ebb519aac18d7242a9835b6ddbb640629f973929698dcf9dce88fb07655f097318c594b616d227d40a4a0817c19c0678b8c118d93a0f9e7fcd9ceaefae2ea8af234343886956419b7195226e9e43805a2021fc0b8208db04463e7c36a8eb0fe46a960db5c96d737b01d75ab523eb21435c5a5e62a0308a4d28045a47286c4e649c9fbc786de1d435d954d391a9d2e2b92c8c2a82855ced9539852854107a0a493276d76fc10c4fd370df0d7182c069261469348ec83f3c17bfaa13425284f52f97792ea2358ffbbbdbe299ab2c036bd3fd07ea7682f6e344af283769626b0f72003296a13147173ccf92902bcc7af9d90d86738e1dafdbb8a2ef7557a4d1a74934802513d5e61bd7aecbb893601dd50b6fae9e0df61ed3e3992c34a74323e87b5fbe4ec1b34992697615f26397358f04da684a195c904372cf826d3f5a0c9b4d61a16e2938137d4dc9313668efdeba7b5f27e23bbc2737e9ff25cc48feeb6eb1ff95a6186fe8d7d39f8dc11396cfacff1d5341fd42f4031c9daafa94c8a1c0d4a6cb92078a0c835d69faabf3654056f09ed67fcf2782dfeb57fb629609b8ad87d697dd3b43a9b02faebff017c166cd8),
('njmveib0m1rriuolc3ee87n2t4', 158, 2, 0x789cbd5a5b73dbb612fe2f7aef04f78bf2e4384dcf9969329d5cce79e42c8085c553597449aa6da6ee7f3f4b52526c91369544ea83659120b81f168b6fbf05044ba9967f354ba1968b17afa0c1e255f5e73d1bbe7e5ce12ddeb3c54b588afe21b15c1445b3821a53b1dd94bf6db1f81deaa628ba47d8f2afbf9b2597dd3311d6eb00f1d7074d5d1b7f64e4f05eb27d0be5a6bbe6cbbfca25db37186aa8d2768d8b97d49b2d177de7ab74db3ddcf7dbc06ddf48a35858a39c49c2879453d0cc32c5b2b18e7be5a5d05116f5e2650fa31fc6aac6dc1437b143582ef94b6ad07ac209afa159850aea74df612cd88b4f6db96e8a8f1002a65775f54783f53016d941a657e4aa8e04eadd80f00e6eb0b3c0e8d22f176b68da627fef87deac9413663fd16b8b9fab9b7273bfee3ecf3609ca9c60ed32f32fa64cbfc5cdf6fe963ece6646fae7ccece6afbffe326ddf65934c2e17d53af581482fcaca04250124039d75505e6bfab4ce0bee383abf78f92ccadfb665fcb58018b1698af37a864dd8fc8050c7d57dd3ff3b5f984d05f523539789b1c9c5f4a18576dbbc82fabee9bf9dcfda54445fc5b6ac369d35e8bf05a8cfe7d6a9a899307821e73e3fdc356c37717507e99f1aeec1e06586fb2dd6f9d9ac6b3145109483def629f1df9b544668abfa7e4891e5fefa6c00cc543a3c01c08562ef88bbaedfbf2dde94eb16ebe63ef7ffbb87f57799ea53812295b2bf5f84a4a448893399448614ad152c300b2c7b969d360f354ca670d85d0fe99edbe5e201ccebeaf6b6da0c6a6310430d9216a82b828f7d4ea097407dd33c10423418d2409f07e1f2081907274210c99ae48495c15ae6b9761eb4d1569a7c7964e4410233012d272195212c917bcdb31220748e3e82535a737cce69eff6187a4db8219d540c93db1cc3e8c3e2eb2df7aaecebfc38ea321f14ef5eee909db47e487255e7a38d2925ff94d5cb2c556fc74bf51ad6b849c49a1aa490c2724f4ac8a9ec33a24c562a488c492f4351ef14daa1c7e317143ffe8e9b7640cb3bb49c680abb7b4db1824d5af7b1d2afe52ea0caa5ec436af813fddfbe08a0d7beb8ae362d65cde6f03a1ad7a7ebd78362a7e7dc11090ed8de63acea83faf7ca3134296a611c23adc7a5cf41a00836c92c243b0ce9aa255babdb037eb5ab186eea6a7b77a8188625b1bb18c2bdbba0dcbb42481dcfbd3b15d97c49741164531aec4b1d7532a833d658a7388b30309aafcc538a8cb43a732ca88080c9222d707d1967713645137d8d7bbaa71e0fe41b6b54c2b25cc8c5933eec38b903f7e2c7a6b95e9734fc2f74a0ed770ca2271ef55dcc23d82875336b9551da2b88e87de0dc65ad4290c8ad930af92959880d9970bf09f144223cde9918a5251d84668cb251d0c18062c40c3149e92326ad13f3e785f2731968eeaf7f79fd66028a37222b6b424a183b6e52c133945967b0180d57e783e2f64e89531a8171c82033448e39388d2909caa3a05119d05a3c275fbe1287dfe1a01c3805040de7c144cbb5318105e36d12c04152b800a2961708931febbaaa27a0482db9cf0eb8ce2e595021463401bdf13190d0382314b15bca43ea1fe2b66cda7aa81fc693e5293927e33cad62c3200a218cd00efb75ac843da38ff651d3ef487dc0b62d37dd23234802000dad2063394552ca863b309c61e06873e0e18c902880768a645bd7b8899fdf94d86df68c257952209cf7321a6782cf60128b195d4c81db14e18c98f6f377c8aa1370baf5a41248a7b592128133f0dca12042f42a9a332ef54e820d917d874df9818208a7a8c76ae61c23eeb12c58111406afd1e9940250cb19a74cc81d9e9f6173331bdd4270c973c8c14b9b92019ac640cb8e69a623d511678cee03ae3ebae7702987b4c4b8a1b42133c593f18653b591b548a0c539a9fa40071375c204b0e08932a56441daa83d3732f91c9d30d90b1b894acf1858e6b0f6fa12f535b430155964dd29ce828b2e7047024e59e05129c99cc0c4cebbf03a108467bb69eb12a7b8c9133d6a9932e57ae37512dc18a270091d6d1a4275096e7aa400a7b82966e93d5a67a844654e11299016224ae05250dd7a524d7e2226b973d147f8f33db4931e4a2805ea1c980c89a22938aab741f1c4153aaf4dbc44047d51ed53a917823034413e2527bb4dfa288364944b3837599c552caa61eba53f6db9daa6720a0e65559d99545271c530a2a345c69523dee69472d339fd230738ef299e53dc869eb8ff1e28bdc135c69694f88343b829a6efdfdc9da74dec95cc8f64d4657e2e465de6e369bcef33bb20465de6d7f5b8cb2c338d779766d975d4653e538cbacc27bdf15866f3f7d8c9b38a680c6c56d88dbacccbd3718ccd4aed5197f942610c6cb6c8193b79b63e1b7599af2ec7c0666be351977935d96f67d8a943839377338ea865d8b33067ded327cbcc82f5b41803cfa83144f25f76c4339ec6254e205741a34c6573b786cf458d3783882bab4d91abfa7672a7fa78ceb227cea2184811b532446f06393895922737c9932482f982a1dcfc5e9511a737c98fb95245619ce6ba9b03f4b4f66544913524a97dc093643839baf9a36ce3aa68cadbbb27d34be87e57f10d639f88d7b9297bb74b79c3694141996fd19bffeac10f3b98eeac51bc3ffd6eb777bb8debef3ba7e2627c50e528ff01a51b8fde8984c6e6c48477522491399c145027cf2a1b2b16622c44a1d11865ad37d9caec99a72c1f3222ba936a5f0ae8c170e78c4dd30ea74b5310a09beb0767595777d4ab6d8a5765ddae127c6e0e6759e24be335ace3a23f0018c67ab8bfaee2af8bfea4609067fb869faaea66dd6f80aaa32e3f7d8475df451fd9f857d5b4dd7d7304ec6db56957ff29f18faed11e757a57b5bd15b71358fbfbef9be60d62ea9afc51d37f11dad520f447d547f6218498e9c2e424150b0163602838408e88679f89a7f7b746b256d9a45584a410b908c6586d92b3cc90e672365e165aa772af1a2286660a1af2ac23092eaba4951c988aa8480781f616d0c3498afb9ba089dd51ecfe20aab88ab1ab2ddff6a79fd36e94262bc635890a668dedce2e99414afe9ca42526773937fa23ac7d15fc790a63d652589b481f102968205f06f0d9226344e32468fe397f76ababb9bab9a13c0d2d4e612559c66d8694493a394e81a8c007302e48232cd1d8e5b09a23acbf502ad8b4d7d5ed1d6c26ddaa948f2c454d71a9b9ca0002a9346011a99c21b17952f2feb6a977c75057555b4d46a7cb8a24b2302a4a9573f614a65461d01750d2c9930e3bbe09e2fe370df0e7142c069261469348ec83f3c17bfaa03425284f52f97792ea2358ffdbdede156d556097de1f69bf53b417371a25f9413b4b0bd87b908114b5098ab839e6fc1c013ee0d75e48ec339c70ddf95d4db7872abd210dba4e2481a81eafb1593df5bb892e01dd51b6fae1e0df71ed3e3b93e34a74363ec7b5fbecea1b75992797f1586639735cf0cda684b195d904372ef866d3f5a8cbbcd61a17e2b38137d6dcb30b66bc75312b42cf71e4fdbcbcde9f7dd778c99fb47c2fe2270fe8f5dc013d7fe280fe7bc7f8f7ff011dea1630);

-- --------------------------------------------------------

--
-- Table structure for table `home_page`
--

CREATE TABLE IF NOT EXISTS `home_page` (
  `user_login_id` int(11) NOT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`user_login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_page`
--


-- --------------------------------------------------------

--
-- Table structure for table `libs_tcpdf_pdf_index`
--

CREATE TABLE IF NOT EXISTS `libs_tcpdf_pdf_index` (
  `created_on` datetime DEFAULT NULL,
  `filename` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `libs_tcpdf_pdf_index`
--


-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`name`, `version`, `priority`) VALUES
('Applets_Birthdays', 0, 98),
('Applets_Calc', 0, 65),
('Applets_Clock', 0, 77),
('Applets_Google', 0, 54),
('Applets_GTalk', 0, 50),
('Applets_Host', 0, 55),
('Applets_MonthView', 0, 102),
('Applets_Note', 0, 56),
('Applets_RssFeed', 0, 78),
('Applets_Weather', 0, 70),
('Apps_ActivityReport', 0, 79),
('Apps_Shoutbox', 0, 80),
('Base', 0, 76),
('Base_About', 0, 53),
('Base_Acl', 0, 25),
('Base_ActionBar', 0, 47),
('Base_Admin', 0, 26),
('Base_Box', 0, 48),
('Base_Dashboard', 0, 49),
('Base_EpesiStore', 0, 51),
('Base_Error', 0, 35),
('Base_EssClient', 0, 33),
('Base_HomePage', 0, 52),
('Base_Lang', 0, 13),
('Base_Lang_Administrator', 0, 57),
('Base_Mail', 0, 34),
('Base_Mail_ContactUs', 0, 58),
('Base_MainModuleIndicator', 0, 60),
('Base_Menu', 0, 24),
('Base_Menu_QuickAccess', 0, 40),
('Base_RegionalSettings', 0, 67),
('Base_Search', 0, 61),
('Base_Setup', 0, 39),
('Base_StatusBar', 0, 18),
('Base_Theme', 0, 19),
('Base_Theme_Administrator', 0, 36),
('Base_User', 0, 27),
('Base_User_Administrator', 0, 59),
('Base_User_Login', 0, 37),
('Base_User_Settings', 0, 38),
('CRM_Assets', 0, 90),
('CRM_Calendar', 0, 97),
('CRM_Calendar_Event', 0, 91),
('CRM_Common', 0, 17),
('CRM_Contacts', 0, 83),
('CRM_Contacts_AccountManager', 0, 89),
('CRM_Contacts_Activities', 0, 82),
('CRM_Contacts_County', 0, 88),
('CRM_Contacts_NotesAggregate', 0, 87),
('CRM_Contacts_ParentCompany', 0, 86),
('CRM_Contacts_Photo', 0, 85),
('CRM_Fax', 0, 84),
('CRM_Filters', 0, 96),
('CRM_Followup', 0, 92),
('CRM_LoginAudit', 0, 93),
('CRM_Meeting', 0, 99),
('CRM_PhoneCall', 0, 100),
('CRM_Roundcube', 0, 94),
('CRM_Tasks', 0, 101),
('CRM_WhoIsOnline', 0, 95),
('Data_Countries', 0, 66),
('Data_TaxRates', 0, 74),
('FirstRun', 0, 105),
('Libs_CKEditor', 0, 31),
('Libs_Codepress', 0, 30),
('Libs_Leightbox', 0, 20),
('Libs_OpenFlashChart', 0, 4),
('Libs_PHPExcel', 0, 3),
('Libs_QuickForm', 0, 29),
('Libs_ScriptAculoUs', 0, 5),
('Libs_TCPDF', 0, 15),
('Tools_SessionKeeper', 0, 41),
('Tools_SetDefaults', 0, 104),
('Tools_WhoIsOnline', 0, 42),
('Utils_Attachment', 0, 81),
('Utils_BBCode', 0, 69),
('Utils_Calendar', 0, 71),
('Utils_Calendar_Event', 0, 6),
('Utils_CatFile', 0, 2),
('Utils_ChainedSelect', 0, 7),
('Utils_Comment', 0, 28),
('Utils_CommonData', 0, 64),
('Utils_CurrencyField', 0, 45),
('Utils_CustomMenu', 0, 14),
('Utils_ExportXLS', 0, 0),
('Utils_FileDownload', 0, 16),
('Utils_FileUpload', 0, 32),
('Utils_FrontPage', 0, 22),
('Utils_GenericBrowser', 0, 46),
('Utils_Image', 0, 12),
('Utils_LeightboxPrompt', 0, 23),
('Utils_Menu', 0, 11),
('Utils_Messenger', 0, 75),
('Utils_Path', 0, 1),
('Utils_Planner', 0, 68),
('Utils_PopupCalendar', 0, 63),
('Utils_RecordBrowser', 0, 72),
('Utils_RecordBrowser_RecordPicker', 0, 8),
('Utils_RecordBrowser_RecordPickerFS', 0, 9),
('Utils_RecordBrowser_Reports', 0, 73),
('Utils_Shortcut', 0, 43),
('Utils_TabbedBrowser', 0, 21),
('Utils_Tooltip', 0, 44),
('Utils_Tree', 0, 10),
('Utils_Watchdog', 0, 62),
('Utils_Wizard', 0, 103);

-- --------------------------------------------------------

--
-- Table structure for table `patches`
--

CREATE TABLE IF NOT EXISTS `patches` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patches`
--

INSERT INTO `patches` (`id`) VALUES
('10096952b28aced8c974777bf4a0b110'),
('19c08393f347e76fc37123758835f7d7'),
('19faacd79e905f29cffab5db88e37d51'),
('1a3125d14089195d88dc129869cf8ca0'),
('22b6c1ecef973612b0f0d13633b96880'),
('22e7dec722290cc4b86b86b5ad31788a'),
('2d2d98cb42df4862c7951a80755ad211'),
('39dd2fd84733f5254e144eb551a79ef3'),
('44137863912e61d2700d5538287783dd'),
('4547f128c9f4281c6f2691681ff6060d'),
('499d08b3fc1b20084674924d43d29a07'),
('584fe6ea840dfc2a5add052f16773124'),
('5accb3bc444b4ba23c237343838b23b7'),
('60dc60e5f60de3890ea3fdc362ce8c22'),
('66b30dc2cb5f879f4b9d3e4b096840b0'),
('74ca19617870f3fcbdbf424165e85932'),
('7a8b633117c40790fb71f5c462a86c7b'),
('8b5fcea8b4b8c70a28b6d780994f9dcf'),
('904a81841012e9d2df98503e37f1431b'),
('90d4ecb30c0aa6b4532819a0dc1a3c2c'),
('939298549ce0fe317ecd8d3ca271ac4a'),
('b8f4a88a7b97359aee24daab657027bb'),
('bd63f882937e35edf0549de32b9aabb3'),
('be510aacd00a9b6bfe0abd3b82a1b4ea'),
('c4eb146b6946e14617e402e3df846406'),
('c64bd32ed58b37727a229ea7c6feb1f1'),
('c7b7686430a2a36d48f4f4ea35954b7f'),
('cd31ac510acb9ca6433da87ffdc0be98'),
('ddc4ba009a7fc4e39e0ea7bf183bb256'),
('de62b49a7d512295a0d90aee5004f3d1'),
('df2ec87e72dea95ec305675668fce15f'),
('e65322d34b6dcf9bd3cfe51fea317bce'),
('f6ce08cba4fb6eab4c5ace1557ae8717'),
('f8074916e98852484fbbeb81ad3d208a');

-- --------------------------------------------------------

--
-- Table structure for table `phonecall_access`
--

CREATE TABLE IF NOT EXISTS `phonecall_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `phonecall_access`
--

INSERT INTO `phonecall_access` (`id`, `action`, `crits`) VALUES
(1, 'print', 'a:0:{}'),
(2, 'export', 'a:0:{}'),
(3, 'view', 'a:2:{s:12:"(!permission";i:2;s:10:"|employees";s:4:"USER";}'),
(4, 'add', 'a:0:{}'),
(5, 'edit', 'a:3:{s:11:"(permission";i:0;s:10:"|employees";s:4:"USER";s:9:"|customer";s:4:"USER";}'),
(6, 'delete', 'a:1:{s:11:":Created_by";s:7:"USER_ID";}'),
(7, 'delete', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `phonecall_access_clearance`
--

CREATE TABLE IF NOT EXISTS `phonecall_access_clearance` (
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phonecall_access_clearance`
--

INSERT INTO `phonecall_access_clearance` (`rule_id`, `clearance`) VALUES
(1, 'SUPERADMIN'),
(2, 'SUPERADMIN'),
(3, 'ACCESS:employee'),
(4, 'ACCESS:employee'),
(5, 'ACCESS:employee'),
(6, 'ACCESS:employee'),
(7, 'ACCESS:employee'),
(7, 'ACCESS:manager');

-- --------------------------------------------------------

--
-- Table structure for table `phonecall_access_fields`
--

CREATE TABLE IF NOT EXISTS `phonecall_access_fields` (
  `rule_id` int(11) DEFAULT NULL,
  `block_field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phonecall_access_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `phonecall_callback`
--

CREATE TABLE IF NOT EXISTS `phonecall_callback` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phonecall_callback`
--

INSERT INTO `phonecall_callback` (`field`, `callback`, `freezed`) VALUES
('Subject', 'CRM_PhoneCallCommon::display_subject', 1),
('Contact Name', 'CRM_PhoneCallCommon::display_contact_name', 1),
('Phone Number', 'CRM_PhoneCallCommon::display_phone_number', 1),
('Customer', 'CRM_ContactsCommon::display_company_contact', 1),
('Customer', 'CRM_ContactsCommon::QFfield_company_contact', 0),
('Other Customer', 'CRM_PhoneCallCommon::QFfield_other_contact', 0),
('Employees', 'CRM_ContactsCommon::display_contact', 1),
('Employees', 'CRM_ContactsCommon::QFfield_contact', 0),
('Related to', 'CRM_ContactsCommon::display_contact', 1),
('Related to', 'CRM_ContactsCommon::QFfield_contact', 0),
('Status', 'CRM_PhoneCallCommon::display_status', 1),
('Phone', 'CRM_PhoneCallCommon::display_phone', 1),
('Phone', 'CRM_PhoneCallCommon::QFfield_phone', 0),
('Other Phone', 'CRM_PhoneCallCommon::QFfield_other_phone', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phonecall_data_1`
--

CREATE TABLE IF NOT EXISTS `phonecall_data_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `f_subject` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_customer` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_other_customer` tinyint(4) DEFAULT NULL,
  `f_other_customer_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_permission` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_employees` text COLLATE utf8_unicode_ci,
  `f_related_to` text COLLATE utf8_unicode_ci,
  `f_status` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_priority` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_phone` int(11) DEFAULT NULL,
  `f_other_phone` tinyint(4) DEFAULT NULL,
  `f_other_phone_number` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_date_and_time` datetime DEFAULT NULL,
  `f_description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phonecall_data_1`
--


-- --------------------------------------------------------

--
-- Table structure for table `phonecall_edit_history`
--

CREATE TABLE IF NOT EXISTS `phonecall_edit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phonecall_id` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edited_by` (`edited_by`),
  KEY `phonecall_id` (`phonecall_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phonecall_edit_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `phonecall_edit_history_data`
--

CREATE TABLE IF NOT EXISTS `phonecall_edit_history_data` (
  `edit_id` int(11) DEFAULT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  KEY `edit_id` (`edit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phonecall_edit_history_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `phonecall_favorite`
--

CREATE TABLE IF NOT EXISTS `phonecall_favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `phonecall_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `phonecall_id` (`phonecall_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phonecall_favorite`
--


-- --------------------------------------------------------

--
-- Table structure for table `phonecall_field`
--

CREATE TABLE IF NOT EXISTS `phonecall_field` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` tinyint(4) DEFAULT '1',
  `visible` tinyint(4) DEFAULT '1',
  `required` tinyint(4) DEFAULT '1',
  `active` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `filter` tinyint(4) DEFAULT '0',
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phonecall_field`
--

INSERT INTO `phonecall_field` (`field`, `type`, `extra`, `visible`, `required`, `active`, `position`, `filter`, `param`, `style`) VALUES
('id', 'foreign index', 0, 0, 1, 1, 1, 0, NULL, NULL),
('General', 'page_split', 0, 1, 1, 1, 2, 0, NULL, NULL),
('Subject', 'text', 0, 1, 1, 1, 3, 0, '64', ''),
('Contact Name', 'hidden', 0, 1, 0, 1, 4, 0, '', ''),
('Phone Number', 'hidden', 0, 1, 0, 1, 5, 0, '', ''),
('Customer', 'text', 0, 0, 0, 1, 6, 0, '64', ''),
('Other Customer', 'checkbox', 0, 0, 0, 1, 7, 0, '', ''),
('Other Customer Name', 'text', 0, 0, 0, 1, 8, 0, '64', ''),
('Permission', 'commondata', 0, 0, 1, 1, 9, 0, '1__CRM/Access', ''),
('Employees', 'multiselect', 0, 1, 1, 1, 10, 1, 'contact::Last Name|First Name;CRM_ContactsCommon::contact_format_no_company;CRM_PhoneCallCommon::employees_crits', ''),
('Related to', 'multiselect', 0, 0, 0, 1, 11, 1, 'contact::Last Name|First Name;CRM_ContactsCommon::contact_format_default;', ''),
('Status', 'commondata', 0, 1, 1, 1, 12, 1, '1__CRM/Status', ''),
('Priority', 'commondata', 0, 0, 1, 1, 13, 0, '1__CRM/Priority', ''),
('Phone', 'integer', 0, 0, 0, 1, 14, 0, '', 'number'),
('Other Phone', 'checkbox', 0, 0, 0, 1, 15, 0, '', ''),
('Other Phone Number', 'text', 0, 0, 0, 1, 16, 0, '64', ''),
('Date and Time', 'timestamp', 0, 1, 1, 1, 17, 0, '', 'timestamp'),
('Description', 'long text', 0, 0, 0, 1, 18, 0, '255', '');

-- --------------------------------------------------------

--
-- Table structure for table `phonecall_recent`
--

CREATE TABLE IF NOT EXISTS `phonecall_recent` (
  `recent_id` int(11) NOT NULL AUTO_INCREMENT,
  `phonecall_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `user_id` (`user_id`),
  KEY `phonecall_id` (`phonecall_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phonecall_recent`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_accounts_access`
--

CREATE TABLE IF NOT EXISTS `rc_accounts_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rc_accounts_access`
--

INSERT INTO `rc_accounts_access` (`id`, `action`, `crits`) VALUES
(1, 'print', 'a:0:{}'),
(2, 'export', 'a:0:{}'),
(3, 'view', 'a:1:{s:10:"epesi_user";s:7:"USER_ID";}'),
(4, 'add', 'a:0:{}'),
(5, 'edit', 'a:0:{}'),
(6, 'delete', 'a:1:{s:10:"epesi_user";s:7:"USER_ID";}');

-- --------------------------------------------------------

--
-- Table structure for table `rc_accounts_access_clearance`
--

CREATE TABLE IF NOT EXISTS `rc_accounts_access_clearance` (
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_accounts_access_clearance`
--

INSERT INTO `rc_accounts_access_clearance` (`rule_id`, `clearance`) VALUES
(1, 'SUPERADMIN'),
(2, 'SUPERADMIN'),
(3, 'ACCESS:employee'),
(4, 'ACCESS:employee'),
(5, 'ACCESS:employee'),
(6, 'ACCESS:employee');

-- --------------------------------------------------------

--
-- Table structure for table `rc_accounts_access_fields`
--

CREATE TABLE IF NOT EXISTS `rc_accounts_access_fields` (
  `rule_id` int(11) DEFAULT NULL,
  `block_field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_accounts_access_fields`
--

INSERT INTO `rc_accounts_access_fields` (`rule_id`, `block_field`) VALUES
(5, 'epesi_user');

-- --------------------------------------------------------

--
-- Table structure for table `rc_accounts_callback`
--

CREATE TABLE IF NOT EXISTS `rc_accounts_callback` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_accounts_callback`
--

INSERT INTO `rc_accounts_callback` (`field`, `callback`, `freezed`) VALUES
('Epesi User', 'CRM_RoundcubeCommon::display_epesi_user', 1),
('Epesi User', 'CRM_RoundcubeCommon::QFfield_epesi_user', 0),
('Account Name', 'CRM_RoundcubeCommon::QFfield_account_name', 0),
('Password', 'CRM_RoundcubeCommon::display_password', 1),
('Password', 'CRM_RoundcubeCommon::QFfield_password', 0),
('Security', 'CRM_RoundcubeCommon::QFfield_security', 0),
('SMTP Auth', 'CRM_RoundcubeCommon::QFfield_smtp_auth', 0),
('SMTP Login', 'CRM_RoundcubeCommon::QFfield_smtp_login', 0),
('SMTP Password', 'CRM_RoundcubeCommon::display_password', 1),
('SMTP Password', 'CRM_RoundcubeCommon::QFfield_smtp_password', 0),
('SMTP Security', 'CRM_RoundcubeCommon::QFfield_smtp_security', 0),
('Default Account', 'CRM_RoundcubeCommon::QFfield_default_account', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rc_accounts_data_1`
--

CREATE TABLE IF NOT EXISTS `rc_accounts_data_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `f_epesi_user` int(11) DEFAULT NULL,
  `f_email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_account_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_server` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_security` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_smtp_server` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_smtp_auth` tinyint(4) DEFAULT NULL,
  `f_smtp_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_smtp_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_smtp_security` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_default_account` tinyint(4) DEFAULT NULL,
  `f_archive_on_sending` tinyint(4) DEFAULT NULL,
  `f_use_epesi_archive_directories` tinyint(4) DEFAULT NULL,
  `f_imap_root` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_imap_delimiter` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_accounts_data_1`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_accounts_edit_history`
--

CREATE TABLE IF NOT EXISTS `rc_accounts_edit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_accounts_id` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edited_by` (`edited_by`),
  KEY `rc_accounts_id` (`rc_accounts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_accounts_edit_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_accounts_edit_history_data`
--

CREATE TABLE IF NOT EXISTS `rc_accounts_edit_history_data` (
  `edit_id` int(11) DEFAULT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  KEY `edit_id` (`edit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_accounts_edit_history_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_accounts_favorite`
--

CREATE TABLE IF NOT EXISTS `rc_accounts_favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_accounts_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `rc_accounts_id` (`rc_accounts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_accounts_favorite`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_accounts_field`
--

CREATE TABLE IF NOT EXISTS `rc_accounts_field` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` tinyint(4) DEFAULT '1',
  `visible` tinyint(4) DEFAULT '1',
  `required` tinyint(4) DEFAULT '1',
  `active` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `filter` tinyint(4) DEFAULT '0',
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_accounts_field`
--

INSERT INTO `rc_accounts_field` (`field`, `type`, `extra`, `visible`, `required`, `active`, `position`, `filter`, `param`, `style`) VALUES
('id', 'foreign index', 0, 0, 1, 1, 1, 0, NULL, NULL),
('General', 'page_split', 0, 1, 1, 1, 2, 0, NULL, NULL),
('Epesi User', 'integer', 0, 1, 1, 1, 3, 0, '', 'number'),
('Email', 'text', 0, 1, 1, 1, 4, 0, '128', ''),
('Account Name', 'text', 0, 1, 1, 1, 5, 0, '32', ''),
('Server', 'text', 0, 1, 1, 1, 6, 0, '255', ''),
('Login', 'text', 0, 1, 1, 1, 7, 0, '255', ''),
('Password', 'text', 0, 0, 1, 1, 8, 0, '255', ''),
('Security', 'commondata', 0, 0, 0, 1, 9, 0, 'CRM/Roundcube/Security', ''),
('SMTP Server', 'text', 0, 0, 1, 1, 10, 0, '255', ''),
('SMTP Auth', 'checkbox', 0, 0, 0, 1, 11, 0, '', ''),
('SMTP Login', 'text', 0, 0, 0, 1, 12, 0, '255', ''),
('SMTP Password', 'text', 0, 0, 0, 1, 13, 0, '255', ''),
('SMTP Security', 'commondata', 0, 0, 0, 1, 14, 0, 'CRM/Roundcube/Security', ''),
('Default Account', 'checkbox', 0, 1, 0, 1, 15, 0, '', ''),
('Advanced', 'page_split', 1, 0, 0, 1, 16, 0, '', ''),
('Archive on sending', 'checkbox', 1, 0, 0, 1, 17, 0, '', ''),
('Use EPESI Archive directories', 'checkbox', 1, 0, 0, 1, 18, 0, '', ''),
('IMAP Root', 'text', 1, 0, 0, 1, 19, 0, '32', ''),
('IMAP Delimiter', 'text', 1, 0, 0, 1, 20, 0, '8', '');

-- --------------------------------------------------------

--
-- Table structure for table `rc_accounts_recent`
--

CREATE TABLE IF NOT EXISTS `rc_accounts_recent` (
  `recent_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_accounts_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `user_id` (`user_id`),
  KEY `rc_accounts_id` (`rc_accounts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_accounts_recent`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_cache`
--

CREATE TABLE IF NOT EXISTS `rc_cache` (
  `cache_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cache_key` varchar(128) CHARACTER SET ascii NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cache_id`),
  KEY `created_index` (`created`),
  KEY `user_cache_index` (`user_id`,`cache_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_cache`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_contactgroupmembers`
--

CREATE TABLE IF NOT EXISTS `rc_contactgroupmembers` (
  `contactgroup_id` int(10) unsigned NOT NULL,
  `contact_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`contactgroup_id`,`contact_id`),
  KEY `contact_id_fk_contacts` (`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_contactgroupmembers`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_contactgroups`
--

CREATE TABLE IF NOT EXISTS `rc_contactgroups` (
  `contactgroup_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`contactgroup_id`),
  KEY `contactgroups_user_index` (`user_id`,`del`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_contactgroups`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_contacts`
--

CREATE TABLE IF NOT EXISTS `rc_contacts` (
  `contact_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `surname` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vcard` text COLLATE utf8_unicode_ci,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`contact_id`),
  KEY `user_contacts_index` (`user_id`,`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_contacts`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_identities`
--

CREATE TABLE IF NOT EXISTS `rc_identities` (
  `identity_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  `standard` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `organization` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `reply-to` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bcc` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `signature` text COLLATE utf8_unicode_ci,
  `html_signature` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`identity_id`),
  KEY `user_identities_index` (`user_id`,`del`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_identities`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_access`
--

CREATE TABLE IF NOT EXISTS `rc_mails_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rc_mails_access`
--

INSERT INTO `rc_mails_access` (`id`, `action`, `crits`) VALUES
(1, 'print', 'a:0:{}'),
(2, 'export', 'a:0:{}'),
(3, 'view', 'a:0:{}'),
(4, 'delete', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_access_clearance`
--

CREATE TABLE IF NOT EXISTS `rc_mails_access_clearance` (
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_mails_access_clearance`
--

INSERT INTO `rc_mails_access_clearance` (`rule_id`, `clearance`) VALUES
(1, 'SUPERADMIN'),
(2, 'SUPERADMIN'),
(3, 'ACCESS:employee'),
(4, 'ACCESS:employee');

-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_access_fields`
--

CREATE TABLE IF NOT EXISTS `rc_mails_access_fields` (
  `rule_id` int(11) DEFAULT NULL,
  `block_field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_mails_access_fields`
--

INSERT INTO `rc_mails_access_fields` (`rule_id`, `block_field`) VALUES
(3, 'headers_data');

-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_assoc_access`
--

CREATE TABLE IF NOT EXISTS `rc_mails_assoc_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `rc_mails_assoc_access`
--

INSERT INTO `rc_mails_assoc_access` (`id`, `action`, `crits`) VALUES
(1, 'print', 'a:0:{}'),
(2, 'export', 'a:0:{}'),
(3, 'view', 'a:0:{}'),
(4, 'delete', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_assoc_access_clearance`
--

CREATE TABLE IF NOT EXISTS `rc_mails_assoc_access_clearance` (
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_mails_assoc_access_clearance`
--

INSERT INTO `rc_mails_assoc_access_clearance` (`rule_id`, `clearance`) VALUES
(1, 'SUPERADMIN'),
(2, 'SUPERADMIN'),
(3, 'ACCESS:employee'),
(4, 'ACCESS:employee');

-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_assoc_access_fields`
--

CREATE TABLE IF NOT EXISTS `rc_mails_assoc_access_fields` (
  `rule_id` int(11) DEFAULT NULL,
  `block_field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_mails_assoc_access_fields`
--

INSERT INTO `rc_mails_assoc_access_fields` (`rule_id`, `block_field`) VALUES
(3, 'recordset');

-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_assoc_callback`
--

CREATE TABLE IF NOT EXISTS `rc_mails_assoc_callback` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_mails_assoc_callback`
--

INSERT INTO `rc_mails_assoc_callback` (`field`, `callback`, `freezed`) VALUES
('Record ID', 'CRM_RoundcubeCommon::display_record_id', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_assoc_data_1`
--

CREATE TABLE IF NOT EXISTS `rc_mails_assoc_data_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `f_mail` int(11) DEFAULT NULL,
  `f_recordset` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_mails_assoc_data_1`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_assoc_edit_history`
--

CREATE TABLE IF NOT EXISTS `rc_mails_assoc_edit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_mails_assoc_id` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edited_by` (`edited_by`),
  KEY `rc_mails_assoc_id` (`rc_mails_assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_mails_assoc_edit_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_assoc_edit_history_data`
--

CREATE TABLE IF NOT EXISTS `rc_mails_assoc_edit_history_data` (
  `edit_id` int(11) DEFAULT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  KEY `edit_id` (`edit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_mails_assoc_edit_history_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_assoc_favorite`
--

CREATE TABLE IF NOT EXISTS `rc_mails_assoc_favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_mails_assoc_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `rc_mails_assoc_id` (`rc_mails_assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_mails_assoc_favorite`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_assoc_field`
--

CREATE TABLE IF NOT EXISTS `rc_mails_assoc_field` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` tinyint(4) DEFAULT '1',
  `visible` tinyint(4) DEFAULT '1',
  `required` tinyint(4) DEFAULT '1',
  `active` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `filter` tinyint(4) DEFAULT '0',
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_mails_assoc_field`
--

INSERT INTO `rc_mails_assoc_field` (`field`, `type`, `extra`, `visible`, `required`, `active`, `position`, `filter`, `param`, `style`) VALUES
('id', 'foreign index', 0, 0, 1, 1, 1, 0, NULL, NULL),
('General', 'page_split', 0, 1, 1, 1, 2, 0, NULL, NULL),
('Mail', 'select', 0, 0, 1, 1, 3, 0, 'rc_mails::Subject', ''),
('Recordset', 'text', 0, 0, 1, 1, 4, 0, '64', ''),
('Record ID', 'integer', 0, 1, 1, 1, 5, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_assoc_recent`
--

CREATE TABLE IF NOT EXISTS `rc_mails_assoc_recent` (
  `recent_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_mails_assoc_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `user_id` (`user_id`),
  KEY `rc_mails_assoc_id` (`rc_mails_assoc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_mails_assoc_recent`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_attachments`
--

CREATE TABLE IF NOT EXISTS `rc_mails_attachments` (
  `mail_id` int(11) NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment` tinyint(4) DEFAULT '1',
  KEY `mail_id` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_mails_attachments`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_callback`
--

CREATE TABLE IF NOT EXISTS `rc_mails_callback` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_mails_callback`
--

INSERT INTO `rc_mails_callback` (`field`, `callback`, `freezed`) VALUES
('Subject', 'CRM_RoundcubeCommon::display_subject', 1),
('Contacts', 'CRM_ContactsCommon::display_company_contact', 1),
('Contacts', 'CRM_ContactsCommon::QFfield_company_contact', 0),
('Employee', 'CRM_ContactsCommon::display_contact', 1),
('Employee', 'CRM_ContactsCommon::QFfield_contact', 0),
('Attachments', 'CRM_RoundcubeCommon::display_attachments', 1),
('Attachments', 'CRM_RoundcubeCommon::QFfield_attachments', 0),
('Body', 'CRM_RoundcubeCommon::QFfield_body', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_data_1`
--

CREATE TABLE IF NOT EXISTS `rc_mails_data_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `f_subject` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_contacts` text COLLATE utf8_unicode_ci,
  `f_employee` int(11) DEFAULT NULL,
  `f_date` datetime DEFAULT NULL,
  `f_headers_data` text COLLATE utf8_unicode_ci,
  `f_body` text COLLATE utf8_unicode_ci,
  `f_from` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_to` varchar(512) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_mails_data_1`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_edit_history`
--

CREATE TABLE IF NOT EXISTS `rc_mails_edit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_mails_id` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edited_by` (`edited_by`),
  KEY `rc_mails_id` (`rc_mails_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_mails_edit_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_edit_history_data`
--

CREATE TABLE IF NOT EXISTS `rc_mails_edit_history_data` (
  `edit_id` int(11) DEFAULT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  KEY `edit_id` (`edit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_mails_edit_history_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_favorite`
--

CREATE TABLE IF NOT EXISTS `rc_mails_favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_mails_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `rc_mails_id` (`rc_mails_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_mails_favorite`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_field`
--

CREATE TABLE IF NOT EXISTS `rc_mails_field` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` tinyint(4) DEFAULT '1',
  `visible` tinyint(4) DEFAULT '1',
  `required` tinyint(4) DEFAULT '1',
  `active` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `filter` tinyint(4) DEFAULT '0',
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_mails_field`
--

INSERT INTO `rc_mails_field` (`field`, `type`, `extra`, `visible`, `required`, `active`, `position`, `filter`, `param`, `style`) VALUES
('id', 'foreign index', 0, 0, 1, 1, 1, 0, NULL, NULL),
('General', 'page_split', 0, 1, 1, 1, 2, 0, NULL, NULL),
('Subject', 'text', 0, 1, 0, 1, 3, 0, '256', ''),
('Contacts', 'multiselect', 0, 1, 0, 1, 4, 0, '', ''),
('Employee', 'select', 0, 1, 0, 1, 5, 0, 'contact::Last Name|First Name;::;::', ''),
('Date', 'timestamp', 0, 1, 0, 1, 6, 0, '', 'timestamp'),
('Attachments', 'calculated', 0, 1, 0, 1, 7, 0, '', ''),
('Headers Data', 'long text', 0, 0, 0, 1, 8, 0, '', ''),
('Body', 'long text', 0, 0, 0, 1, 9, 0, '', ''),
('From', 'text', 0, 0, 0, 1, 10, 0, '128', ''),
('To', 'text', 0, 0, 0, 1, 11, 0, '512', '');

-- --------------------------------------------------------

--
-- Table structure for table `rc_mails_recent`
--

CREATE TABLE IF NOT EXISTS `rc_mails_recent` (
  `recent_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_mails_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `user_id` (`user_id`),
  KEY `rc_mails_id` (`rc_mails_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_mails_recent`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_messages`
--

CREATE TABLE IF NOT EXISTS `rc_messages` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `del` tinyint(1) NOT NULL DEFAULT '0',
  `cache_key` varchar(128) CHARACTER SET ascii NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `idx` int(11) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `size` int(11) unsigned NOT NULL DEFAULT '0',
  `headers` text COLLATE utf8_unicode_ci NOT NULL,
  `structure` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `uniqueness` (`user_id`,`cache_key`,`uid`),
  KEY `created_index` (`created`),
  KEY `index_index` (`user_id`,`cache_key`,`idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_multiple_emails_access`
--

CREATE TABLE IF NOT EXISTS `rc_multiple_emails_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rc_multiple_emails_access`
--

INSERT INTO `rc_multiple_emails_access` (`id`, `action`, `crits`) VALUES
(1, 'print', 'a:0:{}'),
(2, 'export', 'a:0:{}'),
(3, 'view', 'a:0:{}'),
(4, 'add', 'a:0:{}'),
(5, 'edit', 'a:0:{}'),
(6, 'delete', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `rc_multiple_emails_access_clearance`
--

CREATE TABLE IF NOT EXISTS `rc_multiple_emails_access_clearance` (
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_multiple_emails_access_clearance`
--

INSERT INTO `rc_multiple_emails_access_clearance` (`rule_id`, `clearance`) VALUES
(1, 'SUPERADMIN'),
(2, 'SUPERADMIN'),
(3, 'ACCESS:employee'),
(4, 'ACCESS:employee'),
(5, 'ACCESS:employee'),
(6, 'ACCESS:employee');

-- --------------------------------------------------------

--
-- Table structure for table `rc_multiple_emails_access_fields`
--

CREATE TABLE IF NOT EXISTS `rc_multiple_emails_access_fields` (
  `rule_id` int(11) DEFAULT NULL,
  `block_field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_multiple_emails_access_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_multiple_emails_callback`
--

CREATE TABLE IF NOT EXISTS `rc_multiple_emails_callback` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_multiple_emails_callback`
--

INSERT INTO `rc_multiple_emails_callback` (`field`, `callback`, `freezed`) VALUES
('Nickname', 'CRM_RoundcubeCommon::QFfield_nickname', 0),
('Email', 'CRM_ContactsCommon::display_email', 1),
('Email', 'CRM_ContactsCommon::QFfield_unique_email', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rc_multiple_emails_data_1`
--

CREATE TABLE IF NOT EXISTS `rc_multiple_emails_data_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `f_record_type` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_record_id` int(11) DEFAULT NULL,
  `f_nickname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_multiple_emails_data_1`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_multiple_emails_edit_history`
--

CREATE TABLE IF NOT EXISTS `rc_multiple_emails_edit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_multiple_emails_id` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edited_by` (`edited_by`),
  KEY `rc_multiple_emails_id` (`rc_multiple_emails_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_multiple_emails_edit_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_multiple_emails_edit_history_data`
--

CREATE TABLE IF NOT EXISTS `rc_multiple_emails_edit_history_data` (
  `edit_id` int(11) DEFAULT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  KEY `edit_id` (`edit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_multiple_emails_edit_history_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_multiple_emails_favorite`
--

CREATE TABLE IF NOT EXISTS `rc_multiple_emails_favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_multiple_emails_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `rc_multiple_emails_id` (`rc_multiple_emails_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_multiple_emails_favorite`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_multiple_emails_field`
--

CREATE TABLE IF NOT EXISTS `rc_multiple_emails_field` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` tinyint(4) DEFAULT '1',
  `visible` tinyint(4) DEFAULT '1',
  `required` tinyint(4) DEFAULT '1',
  `active` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `filter` tinyint(4) DEFAULT '0',
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_multiple_emails_field`
--

INSERT INTO `rc_multiple_emails_field` (`field`, `type`, `extra`, `visible`, `required`, `active`, `position`, `filter`, `param`, `style`) VALUES
('id', 'foreign index', 0, 0, 1, 1, 1, 0, NULL, NULL),
('General', 'page_split', 0, 1, 1, 1, 2, 0, NULL, NULL),
('Record Type', 'hidden', 0, 0, 0, 1, 3, 1, 'VARCHAR(64)', ''),
('Record ID', 'hidden', 0, 0, 0, 1, 4, 0, 'INTEGER', ''),
('Nickname', 'text', 0, 1, 1, 1, 5, 0, '64', ''),
('Email', 'text', 0, 1, 1, 1, 6, 0, '128', '');

-- --------------------------------------------------------

--
-- Table structure for table `rc_multiple_emails_recent`
--

CREATE TABLE IF NOT EXISTS `rc_multiple_emails_recent` (
  `recent_id` int(11) NOT NULL AUTO_INCREMENT,
  `rc_multiple_emails_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `user_id` (`user_id`),
  KEY `rc_multiple_emails_id` (`rc_multiple_emails_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_multiple_emails_recent`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_session`
--

CREATE TABLE IF NOT EXISTS `rc_session` (
  `sess_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `changed` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `vars` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sess_id`),
  KEY `changed_index` (`changed`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rc_session`
--


-- --------------------------------------------------------

--
-- Table structure for table `rc_users`
--

CREATE TABLE IF NOT EXISTS `rc_users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mail_host` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `last_login` datetime DEFAULT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferences` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`,`mail_host`),
  KEY `alias_index` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `rc_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `recordbrowser_addon`
--

CREATE TABLE IF NOT EXISTS `recordbrowser_addon` (
  `tab` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `func` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pos` int(11) DEFAULT NULL,
  `enabled` tinyint(4) DEFAULT NULL,
  `label` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tab`,`module`,`func`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recordbrowser_addon`
--

INSERT INTO `recordbrowser_addon` (`tab`, `module`, `func`, `pos`, `enabled`, `label`) VALUES
('company', 'CRM_Assets', 'assets_addon', 6, 1, 'Assets'),
('company', 'CRM_Contacts', 'company_addon', 1, 1, 'Contacts'),
('company', 'CRM_Contacts_Activities', 'company_activities', 5, 1, 'Activities'),
('company', 'CRM_Contacts_NotesAggregate', 'company_addon', 7, 1, 'Related Notes'),
('company', 'CRM_Contacts_ParentCompany', 'parent_company_addon', 8, 1, 'Child Companies'),
('company', 'CRM_Roundcube', 'addon', 3, 1, 'E-mails'),
('company', 'CRM_Roundcube', 'mail_addresses_addon', 4, 1, 'E-mail addresses'),
('company', 'Utils_Attachment', 'body', 2, 1, 'Notes'),
('contact', 'CRM_Contacts_Activities', 'contact_activities', 4, 1, 'Activities'),
('contact', 'CRM_Contacts_NotesAggregate', 'contact_addon', 5, 1, 'Related Notes'),
('contact', 'CRM_Roundcube', 'addon', 2, 1, 'E-mails'),
('contact', 'CRM_Roundcube', 'mail_addresses_addon', 3, 1, 'E-mail addresses'),
('contact', 'Utils_Attachment', 'body', 1, 1, 'Notes'),
('crm_assets', 'Utils_Attachment', 'body', 1, 1, 'Notes'),
('crm_meeting', 'CRM_Meeting', 'messanger_addon', 2, 1, 'Alerts'),
('crm_meeting', 'CRM_Roundcube', 'addon', 3, 1, 'E-mails'),
('crm_meeting', 'Utils_Attachment', 'body', 1, 1, 'Notes'),
('phonecall', 'CRM_PhoneCall', 'messanger_addon', 2, 1, 'Alerts'),
('phonecall', 'CRM_Roundcube', 'addon', 3, 1, 'E-mails'),
('phonecall', 'Utils_Attachment', 'body', 1, 1, 'Notes'),
('premium_salesopportunity', 'CRM_Contacts_NotesAggregate', 'salesopportunity_addon', 1, 1, 'Related Notes'),
('rc_mails', 'CRM_Roundcube', 'assoc_addon', 2, 1, 'Associated records'),
('rc_mails', 'CRM_Roundcube', 'attachments_addon', 3, 1, 'Attachments'),
('rc_mails', 'CRM_Roundcube', 'mail_body_addon', 1, 1, 'Body'),
('rc_mails', 'CRM_Roundcube', 'mail_headers_addon', 4, 1, 'Headers'),
('task', 'CRM_Roundcube', 'addon', 3, 1, 'E-mails'),
('task', 'CRM_Tasks', 'messanger_addon', 2, 1, 'Alerts'),
('task', 'Utils_Attachment', 'body', 1, 1, 'Notes');

-- --------------------------------------------------------

--
-- Table structure for table `recordbrowser_browse_mode_definitions`
--

CREATE TABLE IF NOT EXISTS `recordbrowser_browse_mode_definitions` (
  `tab` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `func` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tab`,`module`,`func`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recordbrowser_browse_mode_definitions`
--

INSERT INTO `recordbrowser_browse_mode_definitions` (`tab`, `module`, `func`) VALUES
('company', 'CRM/Contacts/AccountManager', 'browse_mode_details');

-- --------------------------------------------------------

--
-- Table structure for table `recordbrowser_clipboard_pattern`
--

CREATE TABLE IF NOT EXISTS `recordbrowser_clipboard_pattern` (
  `tab` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pattern` text COLLATE utf8_unicode_ci,
  `enabled` int(11) DEFAULT NULL,
  PRIMARY KEY (`tab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recordbrowser_clipboard_pattern`
--

INSERT INTO `recordbrowser_clipboard_pattern` (`tab`, `pattern`, `enabled`) VALUES
('company', '%{{company_name}<BR>}\n%{{address_1}<BR>}\n%{{address_2}<BR>}\n%{%{{city} }%{{zone} }{postal_code}<BR>}\n%{{country}<BR>}\n%{tel. {phone}<BR>}\n%{fax. {fax}<BR>}\n%{{web_address}<BR>}', 1),
('contact', '%{{first_name} {last_name}<BR>}\n%{{title}<BR>}\n%{{company_name}<BR>}\n%{{address_1}<BR>}\n%{{address_2}<BR>}\n%{%{{city} }%{{zone} }{postal_code}<BR>}\n%{{country}<BR>}\n%{tel. {work_phone}<BR>}\n%{{email}<BR>}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `recordbrowser_datatype`
--

CREATE TABLE IF NOT EXISTS `recordbrowser_datatype` (
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `func` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recordbrowser_datatype`
--

INSERT INTO `recordbrowser_datatype` (`type`, `module`, `func`) VALUES
('crm_company', 'CRM_ContactsCommon', 'crm_company_datatype'),
('crm_company_contact', 'CRM_ContactsCommon', 'crm_company_contact_datatype'),
('crm_contact', 'CRM_ContactsCommon', 'crm_contact_datatype'),
('email', 'CRM_ContactsCommon', 'email_datatype');

-- --------------------------------------------------------

--
-- Table structure for table `recordbrowser_processing_methods`
--

CREATE TABLE IF NOT EXISTS `recordbrowser_processing_methods` (
  `tab` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `func` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tab`,`func`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recordbrowser_processing_methods`
--

INSERT INTO `recordbrowser_processing_methods` (`tab`, `func`) VALUES
('company', 'CRM_ContactsCommon::submit_company'),
('contact', 'CRM_Contacts_PhotoCommon::submit_contact'),
('contact', 'CRM_ContactsCommon::submit_contact'),
('crm_assets', 'CRM_AssetsCommon::process_request'),
('crm_meeting', 'CRM_MeetingCommon::submit_meeting'),
('phonecall', 'CRM_PhoneCallCommon::submit_phonecall'),
('rc_accounts', 'CRM_RoundcubeCommon::submit_account'),
('rc_mails', 'CRM_RoundcubeCommon::submit_mail'),
('task', 'CRM_TasksCommon::submit_task');

-- --------------------------------------------------------

--
-- Table structure for table `recordbrowser_table_properties`
--

CREATE TABLE IF NOT EXISTS `recordbrowser_table_properties` (
  `tab` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quickjump` varchar(64) COLLATE utf8_unicode_ci DEFAULT '',
  `tpl` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `favorites` tinyint(4) DEFAULT '0',
  `recent` smallint(6) DEFAULT '0',
  `full_history` tinyint(4) DEFAULT '1',
  `caption` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `access_callback` varchar(128) COLLATE utf8_unicode_ci DEFAULT '',
  `description_callback` varchar(128) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`tab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `recordbrowser_table_properties`
--

INSERT INTO `recordbrowser_table_properties` (`tab`, `quickjump`, `tpl`, `favorites`, `recent`, `full_history`, `caption`, `icon`, `access_callback`, `description_callback`) VALUES
('company', 'Company Name', '', 1, 15, 1, 'Companies', 'CRM/Contacts/companies.png', '', ''),
('contact', 'Last Name', 'CRM/Contacts/Photo/Contact', 1, 15, 1, 'Contacts', 'CRM/Contacts/icon.png', '', ''),
('crm_assets', 'Asset Name', '', 1, 10, 1, 'Assets', 'CRM/Assets/icon.png', '', ''),
('crm_meeting', '', 'CRM/Meeting/default', 0, 10, 1, 'Meetings', 'CRM/Meeting/icon.png', '', ''),
('data_tax_rates', '', '', 0, 0, 1, 'Tax Rates', 'Data/TaxRates/icon.png', '', ''),
('phonecall', '', 'CRM/PhoneCall/default', 0, 5, 1, 'Phonecalls', 'CRM/PhoneCall/icon.png', '', ''),
('rc_accounts', '', '', 0, 0, 1, 'Mail accounts', '', '', ''),
('rc_mails', '', 'CRM/Roundcube/mails', 0, 0, 1, 'Mails', '', '', ''),
('rc_mails_assoc', '', '', 0, 0, 1, 'Mails Associations', '', '', ''),
('rc_multiple_emails', '', '', 1, 0, 1, 'Mail addresses', 'CRM/Roundube/icon.png', '', ''),
('task', '', '', 0, 5, 1, 'Tasks', 'CRM/Tasks/icon.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expires` int(11) NOT NULL DEFAULT '0',
  `data` longblob,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`name`, `expires`, `data`) VALUES
('65c6av8e2fhmbtcvl6k316nop2', 1352874783, 0x613a353a7b733a31343a226e756d5f6f665f636c69656e7473223b693a333b733a31373a22746f6f6c735f77686f69736f6e6c696e65223b733a313a2231223b733a343a2275736572223b733a313a2231223b733a31363a22626173655f6c6f67696e5f6175646974223b733a313a2232223b733a32313a22626173655f6c6f67696e5f61756469745f75736572223b733a313a2231223b7d),
('njmveib0m1rriuolc3ee87n2t4', 1352874515, 0x613a353a7b733a31343a226e756d5f6f665f636c69656e7473223b693a333b733a343a2275736572223b733a313a2231223b733a31373a22746f6f6c735f77686f69736f6e6c696e65223b733a313a2231223b733a31363a22626173655f6c6f67696e5f6175646974223b733a313a2231223b733a32313a22626173655f6c6f67696e5f61756469745f75736572223b733a313a2231223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `session_client`
--

CREATE TABLE IF NOT EXISTS `session_client` (
  `session_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` smallint(6) NOT NULL DEFAULT '0',
  `data` longblob,
  PRIMARY KEY (`client_id`,`session_name`),
  KEY `session_name` (`session_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `session_client`
--

INSERT INTO `session_client` (`session_name`, `client_id`, `data`) VALUES
('65c6av8e2fhmbtcvl6k316nop2', 0, 0x613a31313a7b733a31353a225f5f6d6f64756c655f766172735f5f223b613a353a7b733a32343a222f426173655f426f787c302f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a31313a222f426173655f426f787c30223b613a313a7b733a343a226d61696e223b613a313a7b693a303b613a323a7b733a363a226d6f64756c65223b4e3b733a343a226e616d65223b733a363a226d61696e5f30223b7d7d7d733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b613a333a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a31373a226d61696c5f7265636f7665725f70617373223b4e3b7d733a34363a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e2f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33333a222f426173655f426f787c302f426173655f5374617475734261727c737461747573223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d7d733a31353a225f5f6c6f616465645f6a7365735f5f223b613a31363a7b733a34393a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f7363726970746163756c6f75732e6a73223b623a313b733a34333a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f6275696c6465722e6a73223b623a313b733a34333a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f656666656374732e6a73223b623a313b733a34343a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f6472616764726f702e6a73223b623a313b733a34343a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f636f6e74726f6c732e6a73223b623a313b733a34323a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f736c696465722e6a73223b623a313b733a34313a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f736f756e642e6a73223b623a313b733a35383a226d6f64756c65732f4c6962732f517569636b466f726d2f4669656c6454797065732f6175746f73656c6563742f6175746f73656c6563742e6a73223b623a313b733a34313a226d6f64756c65732f4c6962732f436f646570726573732f302e392e362f636f646570726573732e6a73223b623a313b733a33333a226d6f64756c65732f546f6f6c732f53657373696f6e4b65657065722f736b2e6a73223b623a313b733a33373a226d6f64756c65732f5574696c732f53686f72746375742f6a732f53686f72746375742e6a73223b623a313b733a33353a226d6f64756c65732f5574696c732f546f6f6c7469702f6a732f546f6f6c7469702e6a73223b623a313b733a34393a226d6f64756c65732f5574696c732f47656e6572696342726f777365722f6a732f7461626c655f6f766572666c6f772e6a73223b623a313b733a34363a226d6f64756c65732f4c6962732f517569636b466f726d2f52656e64657265722f54434d5344656661756c742e6a73223b623a313b733a33333a226d6f64756c65732f426173652f5374617475734261722f6a732f6d61696e2e6a73223b623a313b733a34313a226d6f64756c65732f426173652f426f782f636865636b5f666f725f6e65775f76657273696f6e2e6a73223b623a313b7d733a31353a225f5f6576616c65645f6a7365735f5f223b613a353a7b733a33323a223333663131396132303032393836663830306636383939303330623039306439223b623a313b733a33323a223661343262656133623362666666383936373832396332613732653464343339223b623a313b733a33323a223566653665643063613431366336323833313735343633653565663337366136223b623a313b733a33323a223166303639366238373430643532313431303833393565666466623732383133223b623a313b733a33323a226138656563333633366635343938613134653133666138306238373937653837223b623a313b7d733a31363a225f5f6c6f616465645f63737365735f5f223b613a363a7b733a33343a226d6f64756c65732f4c6962732f434b456469746f722f66726f6e74656e642e637373223b623a313b733a35393a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f546f6f6c7469702f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4c6962732f517569636b466f726d2f64656661756c742e637373223b623a313b733a36313a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f557365722f4c6f67696e2f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f5374617475734261722f64656661756c742e637373223b623a313b733a35343a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f426f782f64656661756c742e637373223b623a313b7d733a31333a227574696c735f746f6f6c746970223b613a313a7b733a31303a226469765f657869737473223b623a313b7d733a32303a227574696c735f67656e6572696362726f77736572223b613a313a7b733a31303a226469765f657869737473223b623a313b7d733a343a2268656c70223b613a303a7b7d733a31313a22696d6167655f6361636865223b623a313b733a31383a225f5f6d6f64756c655f636f6e74656e745f5f223b613a353a7b733a31313a222f426173655f426f787c30223b613a333a7b733a353a2276616c7565223b733a3136393a220a3c6469762069643d22426173655f426f785f5f6c6f67696e223e0a093c64697620636c6173733d22737461747573223e3c7370616e2069643d222f426173655f426f787c307c31636f6e74656e74223e3c2f7370616e3e3c2f6469763e0a093c64697620636c6173733d22656e747279223e3c7370616e2069643d222f426173655f426f787c307c30636f6e74656e74223e3c2f7370616e3e3c2f6469763e0a3c2f6469763e0a0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b623a303b7d733a32343a222f426173655f426f787c302f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b613a333a7b733a353a2276616c7565223b733a363134353a22090a0a093c666f726d20206f6e7375626d69743d222428276c6962735f71665f316262616534643430306464303638633336376566383464313935353566343027292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f316262616534643430306464303638633336376566383464313935353566343027293b436f646550726573732e757064617465282428276c6962735f71665f31626261653464343030646430363863333637656638346431393535356634302729293b5f63686a282428276c6962735f71665f316262616534643430306464303638633336376566383464313935353566343027292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f557365725f4c6f67696e2537436c6f67696e272c274c6f6767696e6720696e272c2727293b2428276c6962735f71665f316262616534643430306464303638633336376566383464313935353566343027292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3162626165346434303064643036386333363765663834643139353535663430222069643d226c6962735f71665f3162626165346434303064643036386333363765663834643139353535663430223e0a093c696e707574206e616d653d225f71665f5f6c6962735f71665f31626261653464343030646430363863333637656638346431393535356634302220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a0a202020203c212d2d20446973706c617920746865206669656c6473202d2d3e0a09093c63656e7465723e0a0a093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a203970783b2077696474683a2035353270783b223e0a09093c64697620636c6173733d22637373335f636f6e74656e745f736861646f77223e0a0a09202020203c7461626c652069643d22426173655f557365725f4c6f67696e222063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d223022207374796c653d226865696768743a2035303770783b223e0a2020202020202020202020203c74626f64793e0a0920202020093c74723e0a090909093c746420636f6c7370616e3d22322220636c6173733d226865616465725f7461696c223e3c696d6720626f726465723d223022207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f696d616765732f6c6f676f2e706e67222077696474683d2235353022206865696768743d22323030223e3c2f74643e0a0909093c2f74723e0a2020202020202020202020203c74723e0a202020202020202020202020202020203c746420636c6173733d226772616469656e74223e0a20202020202020202020202020202020202020203c7461626c652063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d223022207374796c653d2277696474683a313030253b7461626c652d6c61796f75743a206175746f3b223e0a2020202020202020202020202020202020202020202020203c74626f64793e0a0909090909090909090909202020202020202020202020202020202020202020202020202020203c74723e3c746420636f6c7370616e3d22322220636c6173733d226572726f72223e3c7370616e20636c6173733d226572726f72223e3c7370616e20636c6173733d22666f726d5f6572726f72222069643d226572726f725f6c6962735f71665f31626261653464343030646430363863333637656638346431393535356634305f757365726e616d655f74657874223e3c2f7370616e3e3c2f7370616e3e3c2f74643e3c2f74723e0a202020202020202020202020202020202020202020202020202020203c74723e3c746420636f6c7370616e3d22322220636c6173733d226572726f72223e3c7370616e20636c6173733d226572726f72223e3c7370616e20636c6173733d22666f726d5f6572726f72222069643d226572726f725f6c6962735f71665f31626261653464343030646430363863333637656638346431393535356634305f70617373776f72645f70617373776f7264223e3c2f7370616e3e3c2f7370616e3e3c2f74643e3c2f74723e0a090909090909093c74723e0a09090909090909093c746420636c6173733d226c6162656c223e557365726e616d65266e6273703b266e6273703b3c2f74643e0a09090909090909093c746420636c6173733d22696e707574223e3c696e7075742069643d22757365726e616d6522206e616d653d22757365726e616d652220747970653d227465787422202f3e3c2f74643e0a090909090909093c2f74723e0a090909090909093c74723e0a09090909090909093c746420636c6173733d226c6162656c223e50617373776f7264266e6273703b266e6273703b3c2f74643e0a09090909090909093c746420636c6173733d22696e707574223e3c696e707574206e616d653d2270617373776f72642220747970653d2270617373776f726422202f3e3c2f74643e0a090909090909093c2f74723e0a090909090909093c74723e0a09090909090909093c746420636f6c7370616e3d22322220636c6173733d227375626d69745f627574746f6e223e3c696e70757420636c6173733d227375626d697422206e616d653d227375626d69745f627574746f6e222076616c75653d224c6f67696e2220747970653d227375626d697422202f3e3c2f74643e0a090909090909093c2f74723e0a090909090909093c74723e0a09090909090909093c746420636f6c7370616e3d22322220636c6173733d226175746f6c6f67696e223e3c696e707574206e616d653d226175746f6c6f67696e2220747970653d22636865636b626f78222076616c75653d2231222069643d2271665f3222202f3e3c6c6162656c20666f723d2271665f32223e52656d656d626572206d653c2f6c6162656c3e3c2f74643e0a090909090909093c2f74723e0a09090909090909090909090909093c74723e0a090909202020203c746420636f6c7370616e3d22322220636c6173733d226175746f6c6f67696e223e4b656570207468697320626f7820756e636865636b6564206966207573696e672061207075626c696320636f6d70757465723c2f74643e0a2020202020202020202020202020202020202020202020203c2f74723e0a2020202020202020202020202020202020202020202020203c74723e3c746420636f6c7370616e3d22322220636c6173733d227265636f7665725f70617373776f7264223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f557365725f4c6f67696e2537436c6f67696e26253246426173655f426f7825374330253246426173655f557365725f4c6f67696e2537436c6f67696e5f6d61696c5f7265636f7665725f706173733d31272c2027272c202727293b22203e5265636f7665722070617373776f72643c2f613e3c2f74643e3c2f74723e0a2020202020202020202020202020202020202020202020203c74723e3c74643e266e6273703b3c2f74643e3c2f74723e0a09090909090909090909093c74723e0a090909090909093c746420636f6c7370616e3d22322220636c6173733d22646f6e6174696f6e5f6e6f74696365223e496620796f752066696e64206f757220736f6674776172652075736566756c2c20706c6561736520737570706f7274207573206279206d616b696e672061203c6120687265663d22687474703a2f2f6570652e73692f636f737422207461726765743d225f626c616e6b223e646f6e6174696f6e3c2f613e2e3c62723e596f75722066756e64696e672077696c6c2068656c7020746f20656e7375726520636f6e74696e75656420646576656c6f706d656e74206f6620746869732070726f6a6563742e3c2f74643e0a0909090909093c2f74723e0a09090909092020202020202020202020202020202020202020202020203c74723e3c746420636f6c7370616e3d22322220636c6173733d22666f6f746572223e436f707972696768742026636f70793b2032303132202662756c6c3b203c6120687265663d22687474703a2f2f7777772e74656c617875732e636f6d223e54656c61787573204c4c433c2f613e202662756c6c3b204d616e6167696e6720427573696e65737320596f7572205761793c7375703e544d3c2f7375703e3c2f74643e3c2f74723e0a2020202020202020202020202020202020202020202020203c2f74626f64793e0a20202020202020202020202020202020202020203c2f7461626c653e0a202020202020202020202020202020203c2f74643e0a2020202020202020202020203c2f74723e0a2020202020202020202020203c2f74626f64793e0a09093c2f7461626c653e0a0a2009093c2f6469763e0a093c2f6469763e0a0a0a0a09093c2f63656e7465723e0a093c2f666f726d3e0a0a0a0a0a0a0a3c7374796c6520747970653d22746578742f637373223e0a646976203e2064697623746f705f626172207b20706f736974696f6e3a2066697865643b7d0a646976203e2064697623626f74746f6d5f626172207b20706f736974696f6e3a2066697865643b7d0a3c2f7374796c653e0a0a3c212d2d5b69662067746520494520352e355d3e3c215b6966206c7420494520375d3e0a0a3c7374796c6520747970653d22746578742f637373223e0a23746f705f626172207b0a09706f736974696f6e3a206162736f6c7574653b0a0977696474683a2065787072657373696f6e282028626f64792e6f666673657457696474682d3230292b27707827293b0a7d0a23636f6e74656e745f626f6479207b0a0977696474683a2065787072657373696f6e282028626f64792e6f666673657457696474682d3230292b27707827293b0a7d0a0a23626f64795f636f6e74656e74207b0a09646973706c61793a20626c6f636b3b0a096865696768743a20313030253b0a096d61782d6865696768743a20313030253b0a096f766572666c6f772d783a2068696464656e3b0a096f766572666c6f772d793a206175746f3b0a09706f736974696f6e3a2072656c61746976653b0a097a2d696e6465783a20303b0a0977696474683a313030253b0a7d0a0a68746d6c207b206865696768743a20313030253b206d61782d6865696768743a20313030253b2070616464696e673a20303b206d617267696e3a20303b20626f726465723a20303b206f766572666c6f773a68696464656e3b202f2a67657420726964206f66207363726f6c6c206261727320696e204945202a2f207d0a626f6479207b206865696768743a20313030253b206d61782d6865696768743a20313030253b20626f726465723a20303b207d0a0a0a0a0a2e6c61796572202e6c6566742c0a2e6c61796572202e72696768742c0a2e6c61796572202e63656e746572207b0a096261636b67726f756e643a206e6f6e652021696d706f7274616e743b0a7d0a0a2e6c61796572202e736861646f772d6d6964646c6520646976207b0a096865696768743a2065787072657373696f6e280a090978203d20746869732e706172656e744e6f64652e706172656e744e6f64652e6f66667365744865696768742c0a090979203d207061727365496e7428746869732e63757272656e745374796c652e746f70292c0a09092878202d202828782025203229203f2031203a203029202d202879202a20322929202b20277078270a09290a7d0a0a2e6c61796572202e736861646f772d746f70202e63656e7465722c0a2e6c61796572202e736861646f772d626f74746f6d202e63656e746572207b0a0977696474683a2065787072657373696f6e280a090978203d20746869732e706172656e744e6f64652e706172656e744e6f64652e6f666673657457696474682c0a090979203d207061727365496e7428746869732e63757272656e745374796c652e6c656674292c0a09092878202d202828782025203229203f2031203a203029202d202879202a20322929202b20277078270a09290a7d0a0909090909090909090909090909090909090909090909092f2a20504f50524157494320534349455a4b452021202a2f0a2e6c61796572202e736861646f772d746f70202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f746c2e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d746f70202e726967687409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f74722e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d626f74746f6d202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f626c2e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d626f74746f6d202e7269676874097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f62722e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d746f70202e63656e74657209097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f742e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d626f74746f6d202e63656e746572097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f622e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d6d6964646c65202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f6c2e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d6d6964646c65202e7269676874097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f722e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a0a2e6c61796572202e736861646f772d626f74746f6d206469762e63656e746572207b0a09626f74746f6d3a202d3370783b0a7d0a0a2e6c61796572202e736861646f772d746f70206469762e63656e746572207b0a09746f703a202d3270783b0a7d0a0a3c2f7374796c653e0a0a3c215b656e6469665d3e3c215b656e6469665d2d2d3e0a0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34363a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e2f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b7d733a33333a222f426173655f426f787c302f426173655f5374617475734261727c737461747573223b613a333a7b733a353a2276616c7565223b733a3232323a223c6469762069643d22426173655f5374617475734261722220636c6173733d22426173655f537461747573426172223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22736861646f775f31357078222069643d227374617475736261725f636f6e74656e74223e0a0909093c6469762069643d227374617475736261725f746578742220636c6173733d226d657373616765206c6f6164696e67223e0a090909094c6f6164696e672e2e2e0a0909093c2f6469763e0a09093c2f6469763e0a093c2f6469763e0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d7d733a31323a22637573746f6d5f6465627567223b733a303a22223b733a31343a225f5f686973746f72795f69645f5f223b693a313b7d),
('njmveib0m1rriuolc3ee87n2t4', 0, 0x613a31323a7b733a31353a225f5f6d6f64756c655f766172735f5f223b613a313a7b733a31313a222f466972737452756e7c30223b613a313a7b733a31323a22706f73742d696e7374616c6c223b613a303a7b7d7d7d733a31353a225f5f6c6f616465645f6a7365735f5f223b613a31353a7b733a35383a226d6f64756c65732f4c6962732f517569636b466f726d2f4669656c6454797065732f6175746f73656c6563742f6175746f73656c6563742e6a73223b623a313b733a34363a226d6f64756c65732f4c6962732f517569636b466f726d2f52656e64657265722f54434d5344656661756c742e6a73223b623a313b733a33323a226d6f64756c65732f4c6962732f517569636b466f726d2f73656c6563742e6a73223b623a313b733a33353a226d6f64756c65732f5574696c732f546f6f6c7469702f6a732f546f6f6c7469702e6a73223b623a313b733a34393a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f7363726970746163756c6f75732e6a73223b623a313b733a34333a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f6275696c6465722e6a73223b623a313b733a34333a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f656666656374732e6a73223b623a313b733a34343a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f6472616764726f702e6a73223b623a313b733a34343a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f636f6e74726f6c732e6a73223b623a313b733a34323a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f736c696465722e6a73223b623a313b733a34313a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f736f756e642e6a73223b623a313b733a34393a226d6f64756c65732f5574696c732f47656e6572696342726f777365722f6a732f7461626c655f6f766572666c6f772e6a73223b623a313b733a33373a226d6f64756c65732f5574696c732f53686f72746375742f6a732f53686f72746375742e6a73223b623a313b733a33333a226d6f64756c65732f546f6f6c732f53657373696f6e4b65657065722f736b2e6a73223b623a313b733a33303a226d6f64756c65732f5574696c732f436f6d6d6f6e446174612f71662e6a73223b623a313b7d733a31353a225f5f6576616c65645f6a7365735f5f223b613a353a7b733a33323a223166303639366238373430643532313431303833393565666466623732383133223b623a313b733a33323a226138656563333633366635343938613134653133666138306238373937653837223b623a313b733a33323a223234643366306439303034613830393364383333336562316433376236383661223b623a313b733a33323a223566653665643063613431366336323833313735343633653565663337366136223b623a313b733a33323a226165323237613837613165333738626336653033313137393139346666373163223b623a313b7d733a31313a22696d6167655f6361636865223b623a313b733a31363a225f5f6c6f616465645f63737365735f5f223b613a343a7b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4c6962732f517569636b466f726d2f64656661756c742e637373223b623a313b733a35343a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f466972737452756e2f64656661756c742e637373223b623a313b733a35393a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f546f6f6c7469702f64656661756c742e637373223b623a313b733a33343a226d6f64756c65732f4c6962732f434b456469746f722f66726f6e74656e642e637373223b623a313b7d733a31383a225f5f6d6f64756c655f636f6e74656e745f5f223b613a313a7b733a31313a222f466972737452756e7c30223b613a333a7b733a353a2276616c7565223b733a3538313a223c7461626c652069643d2262616e6e65722220626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d2230223e0a202020203c74723e0a20202020202020203c746420636c6173733d22696d616765223e266e6273703b3c2f74643e0a20202020202020203c746420636c6173733d226261636b223e266e6273703b3c2f74643e0a202020203c2f74723e0a3c2f7461626c653e0a0a3c62723e0a0a3c63656e7465723e0a3c7461626c652069643d226d61696e2220626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d2230223e0a202020203c74723e0a20202020202020203c74643e0a2020202020202020202020203c212d2d202d2d3e3c63656e7465723e3c2f63656e7465723e3c212d2d202d2d3e0a20202020202020203c2f74643e0a202020203c2f74723e0a3c2f7461626c653e0a3c2f63656e7465723e0a0a3c62723e0a0a3c63656e7465723e0a3c7370616e20636c6173733d22666f6f746572223e436f707972696768742026636f70793b2032303132202662756c6c3b203c6120687265663d22687474703a2f2f7777772e74656c617875732e636f6d223e54656c61787573204c4c433c2f613e3c2f7370616e3e0a3c62723e0a3c703e3c6120687265663d22687474703a2f2f7777772e65706573692e6f7267223e3c696d67207372633d22696d616765732f65706573692d706f77657265642e706e672220626f726465723d2230223e3c2f613e3c2f703e0a3c2f63656e7465723e0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b623a303b7d7d733a31323a22637573746f6d5f6465627567223b733a303a22223b733a31343a225f5f686973746f72795f69645f5f223b693a373b733a31333a227574696c735f746f6f6c746970223b613a313a7b733a31303a226469765f657869737473223b623a313b7d733a32303a227574696c735f67656e6572696362726f77736572223b613a313a7b733a31303a226469765f657869737473223b623a313b7d733a31343a22626173655f626f785f6872656673223b613a313a7b733a33323a223964613066323265316434656163346238303339633364363234336266373864223b613a323a7b733a313a226d223b733a31343a22426173652f44617368626f617264223b733a313a2270223b733a303a22223b7d7d733a343a2268656c70223b613a303a7b7d7d);
INSERT INTO `session_client` (`session_name`, `client_id`, `data`) VALUES
('65c6av8e2fhmbtcvl6k316nop2', 1, 0x613a31343a7b733a31353a225f5f6d6f64756c655f766172735f5f223b613a35303a7b733a32343a222f426173655f426f787c302f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a31313a222f426173655f426f787c30223b613a313a7b733a343a226d61696e223b613a313a7b693a303b613a323a7b733a363a226d6f64756c65223b733a31343a22426173652f44617368626f617264223b733a343a226e616d65223b733a363a226d61696e5f30223b7d7d7d733a35353a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f54616262656442726f777365727c30223b613a353a7b733a353a22666f726365223b4e3b733a343a2270616765223b693a303b733a393a226c6173745f70616765223b693a2d313b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b613a31323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a31373a7b733a34313a2263616c6c6261636b5f6661623936363761333337666631366564663530643562363162323763636336223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a2264656c6574655f746162223b7d733a343a2261726773223b613a313a7b693a303b733a313a2231223b7d7d733a34313a2263616c6c6261636b5f3732626437383934333133623139613033366330396431646534623935333238223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31383a227377697463685f636f6e6669675f6d6f6465223b7d733a343a2261726773223b613a303a7b7d7d733a34313a2263616c6c6261636b5f6236653564656434633162306533653066643633653862633730376537376361223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a313a2234223b693a313b733a31343a225574696c735f5761746368646f67223b7d7d733a34313a2263616c6c6261636b5f6338326139316135633132303837316263616161333362393966343230623565223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a313a2236223b693a313b733a31333a22417070735f53686f7574626f78223b7d7d733a34313a2263616c6c6261636b5f6536313239316362663564356232663531653030656534393736333739656363223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a313a2239223b693a313b733a31373a224170706c6574735f426972746864617973223b7d7d733a34313a2263616c6c6261636b5f3435656633356631396231343935323935333634643362663636346239353232223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a323a223131223b693a313b733a31343a2243524d5f4c6f67696e4175646974223b7d7d733a34313a2263616c6c6261636b5f3463323833373931326435636136353465636639643435373139343261396366223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a323a223135223b693a313b733a31353a224170706c6574735f52737346656564223b7d7d733a34313a2263616c6c6261636b5f3863306234613061323932323164663232303538383362653562656262353233223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a313a2232223b693a313b733a393a2243524d5f5461736b73223b7d7d733a34313a2263616c6c6261636b5f3834306232666534663664336161396236333065393837323462656265613134223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a313a2235223b693a313b733a31333a2243524d5f50686f6e6543616c6c223b7d7d733a34313a2263616c6c6261636b5f3663633165393533613266383239333132663832633934396565366662623437223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a313a2237223b693a313b733a31323a2243524d5f43616c656e646172223b7d7d733a34313a2263616c6c6261636b5f3736393862636537643663386266393937333639636333656330303662383966223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a323a223132223b693a313b733a31353a225574696c735f4d657373656e676572223b7d7d733a34313a2263616c6c6261636b5f3536353233383239303035396630363037386361376366663932646362353332223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a323a223136223b693a313b733a31323a2243524d5f436f6e7461637473223b7d7d733a34313a2263616c6c6261636b5f6235303962656664383139386462383134393039656537643134336161306363223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a313a2231223b693a313b733a31333a224170706c6574735f436c6f636b223b7d7d733a34313a2263616c6c6261636b5f3439623363613130346436633939356639666566636661616633386130363639223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a313a2233223b693a313b733a31323a224170706c6574735f4e6f7465223b7d7d733a34313a2263616c6c6261636b5f6639363430356263643365363132373431643434643230373562653533323165223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a323a223130223b693a313b733a31323a224170706c6574735f43616c63223b7d7d733a34313a2263616c6c6261636b5f6464383461616366383531363732343036646566646161343238323932323365223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a323a223133223b693a313b733a31373a224170706c6574735f4d6f6e746856696577223b7d7d733a34313a2263616c6c6261636b5f3161633334666462346438333962373030663038336565633662646462643735223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22636f6e6669677572655f6170706c6574223b7d733a343a2261726773223b613a323a7b693a303b733a323a223134223b693a313b733a31323a224170706c6574735f4e6f7465223b7d7d7d733a373a2264656661756c74223b4e3b733a31313a22636f6e6669675f6d6f6465223b623a303b733a34313a2263616c6c6261636b5f3439623363613130346436633939356639666566636661616633386130363639223b4e3b733a34313a2263616c6c6261636b5f6235303962656664383139386462383134393039656537643134336161306363223b4e3b733a34313a2263616c6c6261636b5f3663633165393533613266383239333132663832633934396565366662623437223b4e3b733a34313a2263616c6c6261636b5f3834306232666534663664336161396236333065393837323462656265613134223b4e3b733a34313a2263616c6c6261636b5f3863306234613061323932323164663232303538383362653562656262353233223b4e3b733a34313a2263616c6c6261636b5f6338326139316135633132303837316263616161333362393966343230623565223b4e3b733a34313a2263616c6c6261636b5f6236653564656434633162306533653066643633653862633730376537376361223b4e3b733a34313a2263616c6c6261636b5f6661623936363761333337666631366564663530643562363162323763636336223b4e3b7d733a35303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f5761746368646f677c34223b613a333a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a31353a22646973706c61795f61745f74696d65223b693a313335323837333232303b7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f417070735f53686f7574626f787c36223b613a333a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a323a22746f223b733a333a22616c6c223b7d733a34353a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f5461736b737c32223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f50686f6e6543616c6c7c35223b613a333a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a31313a226170706c65745f64617465223b733a31393a22323031322d31312d31342031343a30353a3435223b7d733a34383a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f43616c656e6461727c37223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f436c6f636b7c31223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34383a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4e6f74657c33223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34363a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e2f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33393a222f426173655f426f787c302f426173655f4d656e757c6d656e752f5574696c735f4d656e757c30223b613a333a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a333a226f6c64223b733a33323a226634366234336161333061356635623439353535623437383932313831653839223b7d733a33393a222f426173655f426f787c302f426173655f4d656e757c717569636b5f6163636573735f6d656e75223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33303a222f426173655f426f787c302f426173655f5365617263687c736561726368223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34333a222f426173655f426f787c302f426173655f5365617263687c7365617263682f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33333a222f426173655f426f787c302f426173655f5374617475734261727c737461747573223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e6261722f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c31223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a35323a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f72223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a36353a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f722f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33303a222f426173655f426f787c302f43524d5f46696c746572737c66696c746572223b613a353a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a333a7b733a34313a2263616c6c6261636b5f6264343332646431303364326661646337373230623037613066393066383536223b613a323a7b733a343a2266756e63223b613a323a7b693a303b733a31373a2243524d5f46696c74657273436f6d6d6f6e223b693a313b733a31313a227365745f70726f66696c65223b7d733a343a2261726773223b613a313a7b693a303b733a323a226d79223b7d7d733a34313a2263616c6c6261636b5f3161383262623264373664383237336237373039313538396135363537333666223b613a323a7b733a343a2266756e63223b613a323a7b693a303b733a31373a2243524d5f46696c74657273436f6d6d6f6e223b693a313b733a31313a227365745f70726f66696c65223b7d733a343a2261726773223b613a313a7b693a303b733a333a22616c6c223b7d7d733a34313a2263616c6c6261636b5f6664323334363538396331393531663432613235666339636138343535316536223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31343a226d616e6167655f66696c74657273223b7d733a343a2261726773223b613a303a7b7d7d7d733a34313a2263616c6c6261636b5f6664323334363538396331393531663432613235666339636138343535316536223b4e3b733a34313a2263616c6c6261636b5f3161383262623264373664383237336237373039313538396135363537333666223b4e3b733a34313a2263616c6c6261636b5f6264343332646431303364326661646337373230623037613066393066383536223b4e3b7d733a34313a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a35343a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f2f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a38353a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f5761746368646f677c342f5574696c735f47656e6572696342726f777365727c737562736372697074696f6e73223b613a393a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a31333a2266697273745f646973706c6179223b733a343a22646f6e65223b733a383a227065725f70616765223b4e3b733a353a226f72646572223b4e3b733a363a22736561726368223b4e3b733a31303a226164765f736561726368223b693a303b733a363a226f6666736574223b4e3b733a31383a2273686f775f616c6c5f747269676765726564223b623a303b7d733a35333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4269727468646179737c39223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a38313a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4269727468646179737c392f5574696c735f5265636f726442726f777365727c636f6e74616374223b613a333a7b733a333a22746162223b733a373a22636f6e74616374223b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a3131303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4269727468646179737c392f5574696c735f5265636f726442726f777365727c636f6e746163742f5574696c735f47656e6572696342726f777365727c636f6e74616374223b613a393a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a31333a2266697273745f646973706c6179223b733a343a22646f6e65223b733a383a227065725f70616765223b4e3b733a353a226f72646572223b4e3b733a363a22736561726368223b4e3b733a31303a226164765f736561726368223b693a303b733a363a226f6666736574223b4e3b733a31383a2273686f775f616c6c5f747269676765726564223b623a303b7d733a35313a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f4c6f67696e41756469747c3131223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a35323a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f527373466565647c3135223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a37303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f5461736b737c322f5574696c735f5265636f726442726f777365727c7461736b223b613a333a7b733a333a22746162223b733a343a227461736b223b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a39363a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f5461736b737c322f5574696c735f5265636f726442726f777365727c7461736b2f5574696c735f47656e6572696342726f777365727c7461736b223b613a393a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a31333a2266697273745f646973706c6179223b733a343a22646f6e65223b733a383a227065725f70616765223b4e3b733a353a226f72646572223b4e3b733a363a22736561726368223b4e3b733a31303a226164765f736561726368223b693a303b733a363a226f6666736574223b4e3b733a31383a2273686f775f616c6c5f747269676765726564223b623a303b7d733a37393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f50686f6e6543616c6c7c352f5574696c735f5265636f726442726f777365727c70686f6e6563616c6c223b613a333a7b733a333a22746162223b733a393a2270686f6e6563616c6c223b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a3131303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f50686f6e6543616c6c7c352f5574696c735f5265636f726442726f777365727c70686f6e6563616c6c2f5574696c735f47656e6572696342726f777365727c70686f6e6563616c6c223b613a393a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a31333a2266697273745f646973706c6179223b733a343a22646f6e65223b733a383a227065725f70616765223b4e3b733a353a226f72646572223b4e3b733a363a22736561726368223b4e3b733a31303a226164765f736561726368223b693a303b733a363a226f6666736574223b4e3b733a31383a2273686f775f616c6c5f747269676765726564223b623a303b7d733a37373a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f43616c656e6461727c372f5574696c735f47656e6572696342726f777365727c6167656e646158223b613a31313a7b733a353a226f72646572223b613a313a7b693a303b613a333a7b733a363a22636f6c756d6e223b733a353a225374617274223b733a393a22646972656374696f6e223b733a333a22415343223b733a353a226f72646572223b733a383a22652e737461727473223b7d7d733a31333a2264656661756c745f6f72646572223b613a313a7b693a303b613a333a7b733a363a22636f6c756d6e223b733a353a225374617274223b733a393a22646972656374696f6e223b733a333a22415343223b733a353a226f72646572223b733a383a22652e737461727473223b7d7d733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a32313a226f726465725f686973746f72795f646973706c6179223b733a31303a2220537461727420415343223b733a31333a2266697273745f646973706c6179223b733a343a22646f6e65223b733a383a227065725f70616765223b4e3b733a363a22736561726368223b4e3b733a31303a226164765f736561726368223b693a303b733a363a226f6666736574223b4e3b733a31383a2273686f775f616c6c5f747269676765726564223b623a303b7d733a35323a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f4d657373656e6765727c3132223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a38303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f4d657373656e6765727c31322f5574696c735f47656e6572696342726f777365727c6167656e6461223b613a31313a7b733a353a226f72646572223b613a313a7b693a303b613a333a7b733a363a22636f6c756d6e223b733a353a225374617274223b733a393a22646972656374696f6e223b733a333a22415343223b733a353a226f72646572223b733a383a22616c6572745f6f6e223b7d7d733a31333a2264656661756c745f6f72646572223b613a313a7b693a303b613a333a7b733a363a22636f6c756d6e223b733a353a225374617274223b733a393a22646972656374696f6e223b733a333a22415343223b733a353a226f72646572223b733a383a22616c6572745f6f6e223b7d7d733a32313a226f726465725f686973746f72795f646973706c6179223b733a31303a2220537461727420415343223b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a31333a2266697273745f646973706c6179223b733a343a22646f6e65223b733a383a227065725f70616765223b4e3b733a363a22736561726368223b4e3b733a31303a226164765f736561726368223b693a303b733a363a226f6666736574223b4e3b733a31383a2273686f775f616c6c5f747269676765726564223b623a303b7d733a37363a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f4d657373656e6765727c31322f5574696c735f4c6569676874626f7850726f6d70747c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f436f6e74616374737c3136223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a37373a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f436f6e74616374737c31362f5574696c735f5265636f726442726f777365727c636f6e74616374223b613a333a7b733a333a22746162223b733a373a22636f6e74616374223b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a323a7b733a34313a2263616c6c6261636b5f3762373937643364656633626564343236656239343631613835653066396262223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a383a226e61766967617465223b7d733a343a2261726773223b613a333a7b693a303b733a31303a22766965775f656e747279223b693a313b733a343a2265646974223b693a323b733a313a2231223b7d7d733a34313a2263616c6c6261636b5f6236326161356335333734616365366663666134653964323634666364383337223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a383a226e61766967617465223b7d733a343a2261726773223b613a333a7b693a303b733a31303a22766965775f656e747279223b693a313b733a343a2265646974223b693a323b733a313a2232223b7d7d7d7d733a3130363a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f436f6e74616374737c31362f5574696c735f5265636f726442726f777365727c636f6e746163742f5574696c735f47656e6572696342726f777365727c636f6e74616374223b613a393a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a31333a2266697273745f646973706c6179223b733a343a22646f6e65223b733a383a227065725f70616765223b4e3b733a353a226f72646572223b4e3b733a363a22736561726368223b4e3b733a31303a226164765f736561726368223b693a303b733a363a226f6666736574223b4e3b733a31383a2273686f775f616c6c5f747269676765726564223b623a303b7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f43616c637c3130223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a35343a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4d6f6e7468566965777c3133223b613a333a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a343a2264617465223b733a31303a22323031322d31312d3135223b7d733a36373a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4d6f6e7468566965777c31332f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4e6f74657c3134223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d7d733a31353a225f5f6c6f616465645f6a7365735f5f223b613a32383a7b733a34393a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f7363726970746163756c6f75732e6a73223b623a313b733a34333a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f6275696c6465722e6a73223b623a313b733a34333a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f656666656374732e6a73223b623a313b733a34343a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f6472616764726f702e6a73223b623a313b733a34343a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f636f6e74726f6c732e6a73223b623a313b733a34323a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f736c696465722e6a73223b623a313b733a34313a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f736f756e642e6a73223b623a313b733a35383a226d6f64756c65732f4c6962732f517569636b466f726d2f4669656c6454797065732f6175746f73656c6563742f6175746f73656c6563742e6a73223b623a313b733a34313a226d6f64756c65732f4c6962732f436f646570726573732f302e392e362f636f646570726573732e6a73223b623a313b733a33333a226d6f64756c65732f546f6f6c732f53657373696f6e4b65657065722f736b2e6a73223b623a313b733a33373a226d6f64756c65732f5574696c732f53686f72746375742f6a732f53686f72746375742e6a73223b623a313b733a33353a226d6f64756c65732f5574696c732f546f6f6c7469702f6a732f546f6f6c7469702e6a73223b623a313b733a34393a226d6f64756c65732f5574696c732f47656e6572696342726f777365722f6a732f7461626c655f6f766572666c6f772e6a73223b623a313b733a32383a226d6f64756c65732f426173652f44617368626f6172642f61622e6a73223b623a313b733a36353a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656661756c742e6a73223b623a313b733a34363a226d6f64756c65732f4c6962732f517569636b466f726d2f52656e64657265722f54434d5344656661756c742e6a73223b623a313b733a33353a226d6f64756c65732f5574696c732f5265636f726442726f777365722f6d61696e2e6a73223b623a313b733a33343a226d6f64756c65732f4170706c6574732f436c6f636b2f636f6f6c636c6f636b2e6a73223b623a313b733a32393a226d6f64756c65732f5574696c732f4d656e752f6a732f6d656e752e6a73223b623a313b733a33333a226d6f64756c65732f426173652f5374617475734261722f6a732f6d61696e2e6a73223b623a313b733a33353a226d6f64756c65732f4c6962732f4c6569676874626f782f6c6569676874626f782e6a73223b623a313b733a35393a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4c6962732f4c6569676874626f782f64656661756c742e6a73223b623a313b733a34313a226d6f64756c65732f426173652f426f782f636865636b5f666f725f6e65775f76657273696f6e2e6a73223b623a313b733a35333a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f426f782f64656661756c742e6a73223b623a313b733a33343a226d6f64756c65732f5574696c732f54616262656442726f777365722f74625f2e6a73223b623a313b733a36343a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f54616262656442726f777365722f64656661756c742e6a73223b623a313b733a33393a226d6f64756c65732f5574696c732f506f70757043616c656e6461722f6a732f6d61696e322e6a73223b623a313b733a34313a226d6f64756c65732f5574696c732f506f70757043616c656e6461722f646174657069636b65722e6a73223b623a313b7d733a31353a225f5f6576616c65645f6a7365735f5f223b613a31333a7b733a33323a223333663131396132303032393836663830306636383939303330623039306439223b623a313b733a33323a226165323237613837613165333738626336653033313137393139346666373163223b623a313b733a33323a223566653665643063613431366336323833313735343633653565663337366136223b623a313b733a33323a223166303639366238373430643532313431303833393565666466623732383133223b623a313b733a33323a226138656563333633366635343938613134653133666138306238373937653837223b623a313b733a33323a223239643966373266653431326331373938636161376331613838373736633537223b623a313b733a33323a223039616633633762396262316636363264353536346533306532333666393136223b623a313b733a33323a223963663564376239353661636362636365363938616433623932366462333835223b623a313b733a33323a223064336631343437646665393039333932613539373265333836316263376433223b623a313b733a33323a223865333637303537303239366539386132346532373936613763356164353131223b623a313b733a33323a223738303634313930386438333664336639636438343333393366306262646364223b623a313b733a33323a226165376633393963663730343936623862366164373562366562326334393163223b623a313b733a33323a226565623838373464326566333230336463393961316638643038383562363637223b623a313b7d733a31363a225f5f6c6f616465645f63737365735f5f223b613a32333a7b733a33343a226d6f64756c65732f4c6962732f434b456469746f722f66726f6e74656e642e637373223b623a313b733a35393a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f546f6f6c7469702f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4c6962732f517569636b466f726d2f64656661756c742e637373223b623a313b733a36363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f64656661756c742e637373223b623a313b733a36313a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f417070732f53686f7574626f782f636861745f666f726d2e637373223b623a313b733a35373a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f43616c656e6461722f6167656e64612e637373223b623a313b733a35383a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4170706c6574732f4e6f74652f64656661756c742e637373223b623a313b733a36313a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f557365722f4c6f67696e2f64656661756c742e637373223b623a313b733a35363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f4d656e752f64656661756c742e637373223b623a313b733a35363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f5365617263682f5365617263682e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f5374617475734261722f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f416374696f6e4261722f64656661756c742e637373223b623a313b733a36323a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f416374696f6e4261722f6c61756e63687061642e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4c6962732f4c6569676874626f782f64656661756c742e637373223b623a313b733a37303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f64656661756c742e637373223b623a313b733a35373a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f64656661756c742e637373223b623a313b733a35343a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f426f782f64656661756c742e637373223b623a313b733a36353a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f54616262656442726f777365722f64656661756c742e637373223b623a313b733a36393a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f4c6569676874626f7850726f6d70742f6c6569676874626f782e637373223b623a313b733a35383a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4170706c6574732f43616c632f64656661756c742e637373223b623a313b733a36353a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f506f70757043616c656e6461722f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4170706c6574732f4d6f6e7468566965772f796561722e637373223b623a313b7d733a31333a227574696c735f746f6f6c746970223b613a323a7b733a31303a226469765f657869737473223b623a313b733a393a2263616c6c6261636b73223b613a313a7b693a313b613a323a7b733a383a2263616c6c6261636b223b613a323a7b693a303b733a31383a2243524d5f436f6e7461637473436f6d6d6f6e223b693a313b733a31393a22636f6e746163745f6765745f746f6f6c746970223b7d733a343a2261726773223b613a313a7b693a303b613a33383a7b733a323a226964223b733a313a2231223b733a31303a22637265617465645f6279223b733a313a2231223b733a31303a22637265617465645f6f6e223b733a31393a22323031322d31312d31342031333a30383a3039223b733a373a223a616374697665223b733a313a2231223b733a393a226c6173745f6e616d65223b733a333a22687569223b733a31303a2266697273745f6e616d65223b733a343a2277616e67223b733a31323a22636f6d70616e795f6e616d65223b733a313a2231223b733a31373a2272656c617465645f636f6d70616e696573223b613a303a7b7d733a353a2267726f7570223b613a323a7b733a363a226f6666696365223b733a363a226f6666696365223b733a353a226669656c64223b733a353a226669656c64223b7d733a353a227469746c65223b733a303a22223b733a31303a22776f726b5f70686f6e65223b733a303a22223b733a31323a226d6f62696c655f70686f6e65223b733a303a22223b733a333a22666178223b733a303a22223b733a353a22656d61696c223b733a32313a2277616e67687569313938383331403132362e636f6d223b733a31313a227765625f61646472657373223b733a303a22223b733a393a22616464726573735f31223b733a303a22223b733a393a22616464726573735f32223b733a303a22223b733a343a2263697479223b733a363a2273757a686f75223b733a373a22636f756e747279223b733a323a225553223b733a343a227a6f6e65223b733a303a22223b733a363a22636f756e7479223b733a303a22223b733a31313a22706f7374616c5f636f6465223b733a303a22223b733a31303a227065726d697373696f6e223b733a313a2230223b733a31303a22686f6d655f70686f6e65223b733a303a22223b733a31343a22686f6d655f616464726573735f31223b733a303a22223b733a31343a22686f6d655f616464726573735f32223b733a303a22223b733a393a22686f6d655f63697479223b733a303a22223b733a31303a2262697274685f64617465223b733a303a22223b733a31323a22686f6d655f636f756e747279223b733a303a22223b733a393a22686f6d655f7a6f6e65223b733a303a22223b733a31313a22686f6d655f636f756e7479223b733a303a22223b733a31363a22686f6d655f706f7374616c5f636f6465223b733a303a22223b733a353a226c6f67696e223b733a313a2231223b733a383a22757365726e616d65223b733a303a22223b733a31323a227365745f70617373776f7264223b733a303a22223b733a31363a22636f6e6669726d5f70617373776f7264223b733a303a22223b733a353a2261646d696e223b733a303a22223b733a363a22616363657373223b613a303a7b7d7d7d7d7d7d733a32303a227574696c735f67656e6572696362726f77736572223b613a313a7b733a31303a226469765f657869737473223b623a313b7d733a343a2268656c70223b613a333a7b733a31343a2244617368626f6172642048656c70223b613a323a7b693a303b623a303b693a313b733a33323a226d6f64756c65732f426173652f44617368626f6172642f68656c702f6d61696e223b7d733a343a224d656e75223b613a323a7b693a303b623a303b693a313b733a32393a226d6f64756c65732f5574696c732f4d656e752f68656c702f696e646578223b7d733a31363a22416374696f6e42617220626173696373223b613a323a7b693a303b623a303b693a313b733a33323a226d6f64756c65732f426173652f416374696f6e4261722f68656c702f6d61696e223b7d7d733a31313a22696d6167655f6361636865223b623a313b733a393a22717569636b666f726d223b613a313a7b733a31323a226175746f636f6d706c657465223b613a323a7b733a33323a226331633939396231636630383734323233633630373534376163616664386565223b613a333a7b733a383a2263616c6c6261636b223b613a323a7b693a303b733a32353a2248544d4c5f517569636b466f726d5f6175746f73656c656374223b693a313b733a32373a226765745f6175746f636f6d706c6574655f73756767657374626f78223b7d733a353a226669656c64223b733a31303a22746f5f5f736561726368223b733a343a2261726773223b613a323a7b693a303b613a323a7b693a303b733a31393a22417070735f53686f7574626f78436f6d6d6f6e223b693a313b733a31313a22757365725f736561726368223b7d693a313b613a303a7b7d7d7d733a33323a226438306630313337653764303533303463343334383062653137326535666433223b613a333a7b733a383a2263616c6c6261636b223b613a323a7b693a303b733a32353a2248544d4c5f517569636b466f726d5f6175746f73656c656374223b693a313b733a32373a226765745f6175746f636f6d706c6574655f73756767657374626f78223b7d733a353a226669656c64223b733a32363a2263726d5f66696c7465725f636f6e746163745f5f736561726368223b733a343a2261726773223b613a323a7b693a303b613a323a7b693a303b733a31383a2243524d5f436f6e7461637473436f6d6d6f6e223b693a313b733a32393a226175746f73656c6563745f636f6e746163745f73756767657374626f78223b7d693a313b613a333a7b693a303b613a303a7b7d693a313b613a323a7b693a303b733a31383a2243524d5f436f6e7461637473436f6d6d6f6e223b693a313b733a32353a22636f6e746163745f666f726d61745f6e6f5f636f6d70616e79223b7d693a323b623a303b7d7d7d7d7d733a31343a22626173655f626f785f6872656673223b613a32383a7b733a33323a223534396266343738353161383362383437623361343761353461383761653931223b613a353a7b733a313a226d223b733a31333a22417070735f53686f7574626f78223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a226330626139316630376539653862336135646165666131626561333633363765223b613a353a7b733a313a226d223b733a393a2243524d5f5461736b73223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a226236376263376562613030346535633638316437653736373033343838396532223b613a353a7b733a313a226d223b733a31333a2243524d5f50686f6e6543616c6c223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a223365333661363633653735306365663863653539613065383864643364626536223b613a353a7b733a313a226d223b733a31323a2243524d5f43616c656e646172223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a223038653736323961363563303539326331663237653464353866653666633937223b613a353a7b733a313a226d223b733a31333a224170706c6574735f436c6f636b223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a313a7b693a303b733a393a2273776973735261696c223b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a223438333036316530633733326433326561343232396439643362336634303835223b613a323a7b733a313a226d223b733a31303a2243524d5f417373657473223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223865323334613137336337306230343635666463346636373766373630646338223b613a323a7b733a313a226d223b733a31323a2243524d5f43616c656e646172223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226135633761306230656539376566646333656666366662366466643737643265223b613a323a7b733a313a226d223b733a31323a2243524d5f436f6e7461637473223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223266393462616462356339353838326232323936333936613730656366313862223b613a323a7b733a313a226d223b733a373a2243524d5f466178223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223862343431353961323532613132336537653534373962646366623632336635223b613a323a7b733a313a226d223b733a31313a2243524d5f4d656574696e67223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223738656634383463356365306264646335653636383737613964643666326463223b613a323a7b733a313a226d223b733a31333a2243524d5f50686f6e6543616c6c223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223434656531306165303436656438663265333236333963346335336336346630223b613a323a7b733a313a226d223b733a393a2243524d5f5461736b73223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226131663033323238653838636539353738623235356331623831366231376233223b613a323a7b733a313a226d223b733a31343a22426173655f44617368626f617264223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223437396133393836393061663463636632643632626363663266313236663465223b613a323a7b733a313a226d223b733a31333a2243524d5f526f756e6463756265223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226364346338393363366637366633323535623461373366393265623265373461223b613a333a7b733a313a226d223b733a31353a225574696c735f4d657373656e676572223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b733a313a2266223b733a363a2262726f777365223b7d733a33323a223138373234323131336264333532353531343433323963313665663439636661223b613a323a7b733a313a226d223b733a31393a22417070735f41637469766974795265706f7274223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226663656237353137393539636664383762613835323831656162303533303038223b613a323a7b733a313a226d223b733a31313a22426173655f536561726368223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226430303761653063633230373262393764653837386131353764343738653537223b613a323a7b733a313a226d223b733a31333a22417070735f53686f7574626f78223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226130663564393462343730313432343030333066616137376232643861656662223b613a323a7b733a313a226d223b733a31383a22426173655f557365725f53657474696e6773223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223337363639613966316636633735666631363237613732333265666437633332223b613a323a7b733a313a226d223b4e3b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223464653166363139326539633663653339646234613734376631646632356534223b613a323a7b733a313a226d223b733a31343a22426173655f457373436c69656e74223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223930323534336265643266323765616435393239326636633939383731383536223b613a333a7b733a313a226d223b733a31303a22426173655f41626f7574223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b733a313a2266223b733a343a22696e666f223b7d733a33323a223062373530356235646137623130643130353438386335383364626166323531223b613a323a7b733a313a226d223b733a31303a22426173655f41646d696e223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223734393238653032363439396661663166653238363539363264626563313235223b613a323a7b733a313a226d223b733a31323a2243524d5f43616c656e646172223b733a313a2270223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d733a33323a223636633934646330646665666364393465333534663331303639306434646263223b613a323a7b733a313a226d223b733a31323a2243524d5f436f6e7461637473223b733a313a2270223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d733a33323a226335316566396139393163653639343738393734316665656334633835353937223b613a323a7b733a313a226d223b733a393a2243524d5f5461736b73223b733a313a2270223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d733a33323a226132336239313066363765653930646433666131386461623766626264666263223b613a353a7b733a313a226d223b733a31323a2243524d5f436f6e7461637473223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a223364393432653439633962323432393439343539313132613738666464643239223b613a323a7b733a313a226d223b733a31323a2243524d5f43616c656e646172223b733a313a2270223b733a35343a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4d6f6e7468566965777c3133223b7d7d733a383a2266696c7465725f31223b613a323a7b733a353a2276616c7565223b733a313a2231223b733a343a2264657363223b733a31303a224d79207265636f726473223b7d733a31383a225f5f6d6f64756c655f636f6e74656e745f5f223b613a35303a7b733a31313a222f426173655f426f787c30223b613a333a7b733a353a2276616c7565223b733a343431373a220a0a093c6469762069643d22746f705f6261722220636c6173733d226e6f6e73656c65637461626c6522207374796c653d2277696474683a31303025223e0a09093c6469762069643d224d656e75426172223e0a09093c7461626c652069643d22746f705f6261725f31222063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d2230223e0a09093c74626f64793e0a0909093c74723e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a090909093c746420636c6173733d226d656e752d626172223e3c7370616e2069643d222f426173655f426f787c307c32636f6e74656e74223e3c2f7370616e3e3c2f74643e0a090909093c7464207374796c653d2220656d7074792d63656c6c733a20686964653b2077696474683a203770783b223e3c2f74643e0a090909093c746420636c6173733d22686f6d652d626172222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827426173655f486f6d65506167655f6c6f61643d31272c2027272c202727293b22203e0a09090909093c6469762069643d22686f6d652d62617231223e0a0909090909093c64697620636c6173733d22686f6d652d6261722d69636f6e223e3c2f6469763e0a0909090909093c64697620636c6173733d22686f6d652d6261722d74657874223e0a09090909090909486f6d650a0909090909093c2f6469763e0a09090909093c2f6469763e0a090909093c2f74643e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a09090909090909093c746420636c6173733d22746f705f6261725f626c61636b2066696c6c6572223e3c2f74643e0a090909093c746420636c6173733d22746f705f6261725f626c61636b20706f776572656422206e6f777261703d2231223e0a09090909093c6469763e0a0909090909093c6120687265663d22687474703a2f2f6570652e736922207461726765743d225f626c616e6b22207374796c653d22636f6c6f723a77686974653b223e3c623e45504553493c2f623e20706f77657265643c2f613e266e6273703b0a09090909093c2f6469763e0a09090909093c6469763e3c7370616e2069643d2265706573695f6e65775f76657273696f6e223e3c7370616e20206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3330302922207469703d22436865636b696e6720696620746865726520617265207570646174657320617661696c61626c652e2e2e22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e76657273696f6e20312e342e303c2f7370616e3e3c2f7370616e3e3c2f6469763e0a090909093c2f74643e0a0909090909090909093c746420636c6173733d22746f705f6261725f626c61636b20646f6e61746522206e6f777261703d2231223e3c7370616e20206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22266c743b63656e7465722667743b496620796f752066696e64206f757220736f6674776172652075736566756c2c20706c6561736520737570706f7274207573206279206d616b696e67206120646f6e6174696f6e2e266c743b62722667743b596f75722066756e64696e672077696c6c2068656c7020746f20656e7375726520636f6e74696e75656420646576656c6f706d656e74206f6620746869732070726f6a6563742e266c743b62722667743b436c69636b20666f722064657461696c732e266c743b2f63656e7465722667743b22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e3c61207461726765743d225f626c616e6b2220687265663d22687474703a2f2f6570652e73692f636f7374223e537570706f7274204550455349213c2f613e3c2f7370616e3e3c2f74643e0a09090909090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a090909093c746420636c6173733d22746f705f6261725f626c61636b20746f705f6261725f68656c70223e3c64697620636c6173733d2268656c70223e3c6120687265663d226d6f64756c65732f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702e7068703f6369643d3122207461726765743d225f626c616e6b22206f6e4d6f7573654f7665723d2224282768656c705f69636f6e27292e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2224282768656c705f69636f6e27292e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702e706e67273b223e3c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702e706e67222069643d2268656c705f69636f6e2220616c743d223f2220626f726465723d2230223e3c64697620636c6173733d2268656c705f6c6162656c223e48656c703c2f6469763e3c2f613e3c2f6469763e3c2f74643e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e090909090a090909093c746420636c6173733d22746f705f6261725f626c61636b206d6f64756c652d696e64696361746f72223e3c6469762069643d226d6f64756c652d696e64696361746f72223e3c7370616e2069643d222f426173655f426f787c307c38636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a0909093c2f74723e0a09093c2f74626f64793e0a09093c2f7461626c653e0a09093c2f6469763e0a09093c6469762069643d22536861646f7742617222207374796c653d22646973706c61793a206e6f6e653b223e3c2f6469763e0a09093c6469762069643d22416374696f6e426172223e0a0909093c7461626c652069643d22746f705f6261725f32222063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d2230223e0a0909093c74626f64793e0a090909093c74723e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a09090909093c746420636c6173733d226c6f676f223e3c64697620636c6173733d22736861646f775f637373335f6c6f676f5f626f72646572223e3c7370616e2069643d222f426173655f426f787c307c3130636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a09090909093c746420636c6173733d2269636f6e73223e0a0909090909093c64697620636c6173733d22736861646f775f637373335f69636f6e735f626f72646572223e0a090909090909093c7370616e2069643d222f426173655f426f787c307c36636f6e74656e74223e3c2f7370616e3e0a0909090909093c2f6469763e0a09090909093c2f74643e0a09090909093c74642069643d226c61756e63687061645f627574746f6e5f73656374696f6e5f73706163696e6722207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b20646973706c61793a6e6f6e653b223e3c2f74643e0a09090909093c746420636c6173733d2269636f6e735f6c61756e6368706164222069643d226c61756e63687061645f627574746f6e5f73656374696f6e22207374796c653d22646973706c61793a6e6f6e653b223e0a0909090909093c64697620636c6173733d22736861646f775f637373335f69636f6e735f6c61756e63687061645f626f72646572223e200a090909090909093c7370616e2069643d222f426173655f426f787c307c37636f6e74656e74223e3c2f7370616e3e0a0909090909093c2f6469763e0a09090909093c2f74643e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a09090909093c74642069643d226c6f67696e2d7365617263682d7464223e0a0909090909093c64697620636c6173733d22736861646f775f637373335f6c6f67696e2d7365617263682d74645f626f72646572223e0a09090909090909093c64697620636c6173733d226c6f67696e223e3c7370616e2069643d222f426173655f426f787c307c31636f6e74656e74223e3c2f7370616e3e3c2f6469763e0a09090909090909093c64697620636c6173733d22736561726368222069643d227365617263685f626f78223e3c7370616e2069643d222f426173655f426f787c307c34636f6e74656e74223e3c2f7370616e3e3c2f6469763e0a09090909090909093c64697620636c6173733d2266696c746572222069643d2266696c7465725f626f78223e3c7370616e2069643d222f426173655f426f787c307c39636f6e74656e74223e3c2f7370616e3e3c2f6469763e0a0909090909093c2f6469763e090a09090909093c2f74643e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a090909093c2f74723e0a0909093c2f74626f64793e0a0909093c2f7461626c653e0a09093c2f6469763e0a093c2f6469763e0a093c212d2d202d2d3e0a093c6469762069643d22636f6e74656e74223e0a09093c6469762069643d22636f6e74656e745f626f647922207374796c653d22746f703a20353070783b223e0a0909093c63656e7465723e3c7370616e2069643d222f426173655f426f787c307c30636f6e74656e74223e3c2f7370616e3e3c2f63656e7465723e0a09093c2f6469763e0a093c2f6469763e0a0a3c7370616e2069643d222f426173655f426f787c307c35636f6e74656e74223e3c2f7370616e3e0a0a0a3c7374796c6520747970653d22746578742f637373223e0a646976203e2064697623746f705f626172207b20706f736974696f6e3a2066697865643b7d0a646976203e2064697623626f74746f6d5f626172207b20706f736974696f6e3a2066697865643b7d0a3c2f7374796c653e0a0a0a0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b623a303b7d733a32343a222f426173655f426f787c302f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b613a333a7b733a353a2276616c7565223b733a36313037353a223c6469762069643d2264617368626f61726422207374796c653d2277696474683a20313030253b223e3c6469762069643d2264617368626f6172645f6170706c6574735f315f3022207374796c653d2277696474683a3333253b6d696e2d6865696768743a32303070783b70616464696e672d626f74746f6d3a313070783b766572746963616c2d616c69676e3a746f703b646973706c61793a696e6c696e652d626c6f636b223e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f34223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677265656e5f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677265656e5f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677265656e5f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677265656e223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d677265656e223e5761746368646f67202d20416c6c3c2f74643e0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d677265656e22206e6f777261703d2231222077696474683d2236327078223e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f62366535646564346331623065336530666436336538626337303765373763613d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f342220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428342c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c30636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f36223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e53686f7574626f783c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2238307078223e0a090909090909090909090909093c6120636c6173733d22687265662220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2246756c6c73637265656e22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827626f785f6d61696e5f687265663d3534396266343738353161383362383437623361343761353461383761653931272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22522220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f63383261393161356331323038373162636161613333623939663432306235653d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f362220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428362c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c31636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f39223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e5570636f6d696e67204269727468646179733c2f74643e0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2236327078223e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f65363132393163626635643562326635316530306565343937363337396563633d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f392220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428392c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c32636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f3131223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e4c617374204c6f67696e3c2f74643e0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2236327078223e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f34356566333566313962313439353239353336346433626636363462393532323d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f31312220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c65742831312c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c33636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f3135223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e52535320466565643c2f74643e0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2236327078223e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f34633238333739313264356361363534656366396434353731393432613963663d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f31352220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c65742831352c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c34636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c2f6469763e3c6469762069643d2264617368626f6172645f6170706c6574735f315f3122207374796c653d2277696474683a3333253b6d696e2d6865696768743a32303070783b70616464696e672d626f74746f6d3a313070783b766572746963616c2d616c69676e3a746f703b646973706c61793a696e6c696e652d626c6f636b223e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f32223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677265656e5f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677265656e5f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677265656e5f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090909090909090909090909090909090909090920202020202020202020202020202020093c74642077696474683d22323070782220636c6173733d2268656164657220616374696f6e73206461726b2d677265656e223e0a0909090909090909092020202020202020202020202020202009093c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d224e6577207265636f726422206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f6164645f7265636f72645f746f5f52425f7461626c653d7461736b265f5f6164645f7265636f72645f69643d6e6f6e65265f5f6164645f7265636f72645f6465663d3365616631333332366634343132663631336162633539643631613530633238272c2027272c202727293b22203e3c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f5265636f726442726f777365722f6164642e706e672220626f726465723d2230223e3c2f613e0a090920202020202020202020202020202020090920202020202020202020202020202020093c2f74643e0a0920202020202020202020202020202020202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d677265656e223e5461736b73202d20546f646f202d2053686f72742d7465726d3c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d677265656e22206e6f777261703d2231222077696474683d2238307078223e0a090909090909090909090909093c6120636c6173733d22687265662220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2246756c6c73637265656e22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827626f785f6d61696e5f687265663d6330626139316630376539653862336135646165666131626561333633363765272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22522220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f38633062346130613239323231646632323035383833626535626562623532333d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f322220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428322c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c35636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f35223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d7265645f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d7265645f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d7265645f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090909090909090909090909090909090909090920202020202020202020202020202020093c74642077696474683d22323070782220636c6173733d2268656164657220616374696f6e73206461726b2d726564223e0a0909090909090909092020202020202020202020202020202009093c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d224e6577207265636f726422206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f6164645f7265636f72645f746f5f52425f7461626c653d70686f6e6563616c6c265f5f6164645f7265636f72645f69643d6e6f6e65265f5f6164645f7265636f72645f6465663d6636646663326130613234313166353739383337303662363662336661383633272c2027272c202727293b22203e3c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f5265636f726442726f777365722f6164642e706e672220626f726465723d2230223e3c2f613e0a090920202020202020202020202020202020090920202020202020202020202020202020093c2f74643e0a0920202020202020202020202020202020202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d726564223e50686f6e6563616c6c733c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d72656422206e6f777261703d2231222077696474683d2238307078223e0a090909090909090909090909093c6120636c6173733d22687265662220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2246756c6c73637265656e22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827626f785f6d61696e5f687265663d6236376263376562613030346535633638316437653736373033343838396532272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22522220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f38343062326665346636643361613962363330653938373234626562656131343d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f352220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428352c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c36636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f37223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e4167656e64613c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2238307078223e0a090909090909090909090909093c6120636c6173733d22687265662220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2246756c6c73637265656e22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827626f785f6d61696e5f687265663d3365333661363633653735306365663863653539613065383864643364626536272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22522220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f36636331653935336132663832393331326638326339343965653666626234373d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f372220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428372c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c37636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f3132223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e4d657373656e67657220616c61726d733c2f74643e0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2236327078223e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f37363938626365376436633862663939373336396363336563303036623839663d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f31322220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c65742831322c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c38636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f3136223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090909090909090909090909090909090909090920202020202020202020202020202020093c74642077696474683d22323070782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0909090909090909092020202020202020202020202020202009093c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d224e6577207265636f726422206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f6164645f7265636f72645f746f5f52425f7461626c653d636f6e74616374265f5f6164645f7265636f72645f69643d6e6f6e65265f5f6164645f7265636f72645f6465663d3466633963303533376630303265356230343338333736376363633833303161272c2027272c202727293b22203e3c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f5265636f726442726f777365722f6164642e706e672220626f726465723d2230223e3c2f613e0a090920202020202020202020202020202020090920202020202020202020202020202020093c2f74643e0a0920202020202020202020202020202020202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e526563656e7420436f6e74616374733c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2238307078223e0a090909090909090909090909093c6120636c6173733d22687265662220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2246756c6c73637265656e22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827626f785f6d61696e5f687265663d6132336239313066363765653930646433666131386461623766626264666263272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22522220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f35363532333832393030353966303630373863613763666639326463623533323d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f31362220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c65742831362c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c39636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c2f6469763e3c6469762069643d2264617368626f6172645f6170706c6574735f315f3222207374796c653d2277696474683a3333253b6d696e2d6865696768743a32303070783b70616464696e672d626f74746f6d3a313070783b766572746963616c2d616c69676e3a746f703b646973706c61793a696e6c696e652d626c6f636b223e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f31223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f61726420626c61636b5f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e657220626c61636b5f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e7320626c61636b5f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e7320626c61636b223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c6520626c61636b223e436c6f636b3c2f74643e0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c7320626c61636b22206e6f777261703d2231222077696474683d2236327078223e0a090909090909090909090909093c6120636c6173733d22687265662220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2246756c6c73637265656e22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827626f785f6d61696e5f687265663d3038653736323961363563303539326331663237653464353866653666633937272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726573697a652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22522220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f62353039626566643831393864623831343930396565376431343361613063633d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f312220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428312c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c3130636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f33223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d79656c6c6f775f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d79656c6c6f775f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d79656c6c6f775f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d79656c6c6f77223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d79656c6c6f77223e57656c636f6d653c2f74643e0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d79656c6c6f7722206e6f777261703d2231222077696474683d2236327078223e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f34396233636131303464366339393566396665666366616166333861303636393d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f332220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428332c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c3131636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f3130223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e43616c633c2f74643e0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2236327078223e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f66393634303562636433653631323734316434346432303735626535333231653d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f31302220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c65742831302c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c3132636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f3133223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e4d6f6e746820566965773c2f74643e0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2236327078223e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f64643834616163663835313637323430366465666461613432383239323233653d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f31332220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c65742831332c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c3133636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f3134223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e4e6f74653c2f74643e0a0909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2236327078223e0a090909090909090909090909090909090909093c6120636c6173733d22746f67676c652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22546f67676c6522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d75702e706e6722206f6e4d6f7573654f7665723d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2d686f7665722e706e67273b656c736520746869732e7372633d782b2775702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b27646f776e2e706e67273b656c736520746869732e7372633d782b2775702e706e67273b22206f6e436c69636b3d2276617220783d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f726f6c6c2d273b696628746869732e7372632e696e6465784f662827726f6c6c2d646f776e27293e3d3029746869732e7372633d782b2775702d686f7665722e706e67273b656c736520746869732e7372633d782b27646f776e2d686f7665722e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223d2220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d22636f6e6669677572652220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22436f6e66696775726522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f31616333346664623464383339623730306630383365656336626464626437353d31272c2027272c202727293b22203e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22632220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f31342220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c65742831342c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f307c3134636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c2f6469763e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a35303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f5761746368646f677c34223b613a333a7b733a353a2276616c7565223b733a37383a223c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f5761746368646f677c347c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f417070735f53686f7574626f787c36223b613a333a7b733a353a2276616c7565223b733a313530323a223c64697620636c6173733d22417070735f53686f7574626f785f5f64617368626f617264223e0a093c666f726d20206f6e7375626d69743d222428276c6962735f71665f356565376161306239306236303433316237646537623631313364653738396527292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f356565376161306239306236303433316237646537623631313364653738396527293b436f646550726573732e757064617465282428276c6962735f71665f35656537616130623930623630343331623764653762363131336465373839652729293b5f63686a282428276c6962735f71665f356565376161306239306236303433316237646537623631313364653738396527292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f30253246417070735f53686f7574626f7825374336272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f356565376161306239306236303433316237646537623631313364653738396527292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3565653761613062393062363034333162376465376236313133646537383965222069643d226c6962735f71665f3565653761613062393062363034333162376465376236313133646537383965223e3c696e707574206e616d653d225f71665f5f6c6962735f71665f35656537616130623930623630343331623764653762363131336465373839652220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a0a0a0a093c7370616e2069643d225f5f746f5f73656c6563745f7370616e223e3c73656c656374206e616d653d22746f222069643d22746f22206f6e6368616e67653d2273686f7574626f785f7569643d746869732e76616c75653b73686f7574626f785f726566726573682829223e0a3c6f7074696f6e2076616c75653d22223e537461727420747970696e6720746f207365617263682e2e2e3c2f6f7074696f6e3e093c6f7074696f6e2076616c75653d22616c6c222073656c65637465643d2273656c6563746564223e5b416c6c5d3c2f6f7074696f6e3e0a3c2f73656c6563743e3c2f7370616e3e3c7370616e2069643d225f5f746f5f6175746f636f6d706c6574655f7370616e22207374796c653d22646973706c61793a6e6f6e653b223e3c696e70757420706c616365686f6c6465723d22537461727420747970696e6720746f207365617263682e2e2e22206e616d653d22746f5f5f7365617263682220747970653d2274657874222069643d225f5f6175746f636f6d706c6574655f69645f746f5f5f73656172636822202f3e3c6469762069643d225f5f6175746f636f6d706c6574655f69645f746f5f5f7365617263685f73756767657374626f782220636c6173733d226175746f636f6d706c657465223e266e6273703b3c2f6469763e3c2f7370616e3e203c696e7075742069643d2273686f7574626f785f627574746f6e22206e616d653d227375626d69745f627574746f6e222076616c75653d2253656e642220747970653d227375626d697422202f3e3c6272202f3e0a093c746578746172656120636c6173733d22626f726465725f7261646975735f367078222069643d2273686f7574626f785f7465787422206e616d653d22706f7374223e3c2f74657874617265613e0a0a0a093c2f666f726d3e0a0a093c6469762069643d2773686f7574626f785f626f617264273e3c2f6469763e0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a34353a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f5461736b737c32223b613a333a7b733a353a2276616c7565223b733a37333a223c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f5461736b737c327c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f50686f6e6543616c6c7c35223b613a333a7b733a353a2276616c7565223b733a37373a223c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f50686f6e6543616c6c7c357c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a34383a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f43616c656e6461727c37223b613a333a7b733a353a2276616c7565223b733a37363a223c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f43616c656e6461727c377c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f436c6f636b7c31223b613a333a7b733a353a2276616c7565223b733a3134313a223c63656e7465723e3c63616e7661732069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f436c6f636b7c3163616e7661732220636c6173733d22436f6f6c436c6f636b3a73776973735261696c3a313030223e3c2f63616e7661733e3c42523e31312f31342f323031323c2f63656e7465723e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a34383a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4e6f74657c33223b613a333a7b733a353a2276616c7565223b733a3236343a223c6469762069643d224170706c6574735f4e6f7465223e3c64697620636c6173733d226e6f74652d6e6963652d79656c6c6f77223e3c6469763e3c7374726f6e673e436f6e67726174756c6174696f6e73213c2f7374726f6e673e3c6272202f3e596f75277665206a75737420696e7374616c6c6564204550455349213c2f6469763e3c6469763e466f72206d6f726520696e666f726d6174696f6e2c2068656c7020616e6420737570706f727420706c65617365207669736974203c6120687265663d22687474703a2f2f6570652e736922207461726765743d225f626c616e6b223e45504553492077656273697465203c2f613e3c2f6469763e3c2f6469763e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b613a333a7b733a353a2276616c7565223b733a323936333a223c64697620636c6173733d226c6f676765645f6173223e4c6f67676564206173203c2f62723e3c6220636c6173733d22677265656e223e61646d696e3c2f623e3c2f6469763e0a3c64697620636c6173733d226c6f676f75745f637373335f626f78223e3c6120636c6173733d226c6f676f75745f69636f6e222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f557365725f4c6f67696e2537436c6f67696e26253246426173655f426f7825374330253246426173655f557365725f4c6f67696e2537436c6f67696e5f6c6f676f75743d31272c2027272c202727293b22203e4c6f676f75743c64697620636c6173733d226c6f676f75745f69636f6e5f696d67223e3c2f6469763e3c2f613e3c2f6469763e0a0a0a0a0a0a0a3c7374796c6520747970653d22746578742f637373223e0a646976203e2064697623746f705f626172207b20706f736974696f6e3a2066697865643b7d0a646976203e2064697623626f74746f6d5f626172207b20706f736974696f6e3a2066697865643b7d0a3c2f7374796c653e0a0a3c212d2d5b69662067746520494520352e355d3e3c215b6966206c7420494520375d3e0a0a3c7374796c6520747970653d22746578742f637373223e0a23746f705f626172207b0a09706f736974696f6e3a206162736f6c7574653b0a0977696474683a2065787072657373696f6e282028626f64792e6f666673657457696474682d3230292b27707827293b0a7d0a23636f6e74656e745f626f6479207b0a0977696474683a2065787072657373696f6e282028626f64792e6f666673657457696474682d3230292b27707827293b0a7d0a0a23626f64795f636f6e74656e74207b0a09646973706c61793a20626c6f636b3b0a096865696768743a20313030253b0a096d61782d6865696768743a20313030253b0a096f766572666c6f772d783a2068696464656e3b0a096f766572666c6f772d793a206175746f3b0a09706f736974696f6e3a2072656c61746976653b0a097a2d696e6465783a20303b0a0977696474683a313030253b0a7d0a0a68746d6c207b206865696768743a20313030253b206d61782d6865696768743a20313030253b2070616464696e673a20303b206d617267696e3a20303b20626f726465723a20303b206f766572666c6f773a68696464656e3b202f2a67657420726964206f66207363726f6c6c206261727320696e204945202a2f207d0a626f6479207b206865696768743a20313030253b206d61782d6865696768743a20313030253b20626f726465723a20303b207d0a0a0a0a0a2e6c61796572202e6c6566742c0a2e6c61796572202e72696768742c0a2e6c61796572202e63656e746572207b0a096261636b67726f756e643a206e6f6e652021696d706f7274616e743b0a7d0a0a2e6c61796572202e736861646f772d6d6964646c6520646976207b0a096865696768743a2065787072657373696f6e280a090978203d20746869732e706172656e744e6f64652e706172656e744e6f64652e6f66667365744865696768742c0a090979203d207061727365496e7428746869732e63757272656e745374796c652e746f70292c0a09092878202d202828782025203229203f2031203a203029202d202879202a20322929202b20277078270a09290a7d0a0a2e6c61796572202e736861646f772d746f70202e63656e7465722c0a2e6c61796572202e736861646f772d626f74746f6d202e63656e746572207b0a0977696474683a2065787072657373696f6e280a090978203d20746869732e706172656e744e6f64652e706172656e744e6f64652e6f666673657457696474682c0a090979203d207061727365496e7428746869732e63757272656e745374796c652e6c656674292c0a09092878202d202828782025203229203f2031203a203029202d202879202a20322929202b20277078270a09290a7d0a0909090909090909090909090909090909090909090909092f2a20504f50524157494320534349455a4b452021202a2f0a2e6c61796572202e736861646f772d746f70202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f746c2e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d746f70202e726967687409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f74722e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d626f74746f6d202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f626c2e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d626f74746f6d202e7269676874097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f62722e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d746f70202e63656e74657209097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f742e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d626f74746f6d202e63656e746572097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f622e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d6d6964646c65202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f6c2e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d6d6964646c65202e7269676874097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f722e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a0a2e6c61796572202e736861646f772d626f74746f6d206469762e63656e746572207b0a09626f74746f6d3a202d3370783b0a7d0a0a2e6c61796572202e736861646f772d746f70206469762e63656e746572207b0a09746f703a202d3270783b0a7d0a0a3c2f7374796c653e0a0a3c215b656e6469665d3e3c215b656e6469665d2d2d3e0a0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34363a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e2f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b7d733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b613a333a7b733a353a2276616c7565223b733a3236343a223c6469762069643d6d656e755f636f6e74656e65725f62326463653263356363323137633836663336326361333337383434363033313e3c696d672077696474683d22313622206865696768743d2231362220626f726465723d223022207374796c653d2277696474683a20313670783b206865696768743a20313670783b206d617267696e2d746f703a203270783b206d617267696e2d6c6566743a203270783b206261636b67726f756e642d636f6c6f723a2077686974653b20636f6c6f723a2077686974653b20626f726465723a203070783b22207372633d226d6f64756c65732f5574696c732f4d656e752f7468656d652f6c6f616465722e676966223e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33393a222f426173655f426f787c302f426173655f4d656e757c6d656e752f5574696c735f4d656e757c30223b613a333a7b733a353a2276616c7565223b733a3236343a223c6469762069643d6d656e755f636f6e74656e65725f62326463653263356363323137633836663336326361333337383434363033313e3c696d672077696474683d22313622206865696768743d2231362220626f726465723d223022207374796c653d2277696474683a20313670783b206865696768743a20313670783b206d617267696e2d746f703a203270783b206d617267696e2d6c6566743a203270783b206261636b67726f756e642d636f6c6f723a2077686974653b20636f6c6f723a2077686974653b20626f726465723a203070783b22207372633d226d6f64756c65732f5574696c732f4d656e752f7468656d652f6c6f616465722e676966223e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33393a222f426173655f426f787c302f426173655f4d656e757c717569636b5f6163636573735f6d656e75223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33303a222f426173655f426f787c302f426173655f5365617263687c736561726368223b613a333a7b733a353a2276616c7565223b733a323033353a22090d0a093c666f726d20206f6e7375626d69743d222428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427293b436f646550726573732e757064617465282428276c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642729293b5f63686a282428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f536561726368253743736561726368272c27536561726368696e67272c2727293b2428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3431383530656263656331363664613938303762303835373531393666656664222069643d226c6962735f71665f3431383530656263656331363664613938303762303835373531393666656664223e0d0a093c696e707574206e616d653d225f71665f5f6c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a0d0a202020203c212d2d20446973706c617920746865206669656c6473202d2d3e0d0a09202020203c7461626c652069643d22426173655f5365617263685f5f536561726368222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0d0a0909093c74723e0d0a090909093c746420636c6173733d22696e707574223e3c696e70757420782d7765626b69742d7370656563683d22782d7765626b69742d73706565636822206c616e673d22656e22206f6e7765626b69747370656563686368616e67653d222428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427293b436f646550726573732e757064617465282428276c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642729293b5f63686a282428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f536561726368253743736561726368272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d303b22206e616d653d22717569636b5f7365617263682220747970653d227465787422202f3e3c2f74643e0d0a090909093c746420636c6173733d227375626d6974223e3c64697620636c6173733d227365617263685f627574746f6e5f637373335f626f78223e3c6120636c6173733d227365617263685f627574746f6e222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d222428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427293b436f646550726573732e757064617465282428276c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642729293b5f63686a282428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e73657269616c697a6528292b27265f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f536561726368253743736561726368272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d303b22203e5365617263683c64697620636c6173733d227365617263685f69636f6e223e3c2f6469763e3c2f613e3c2f6469763e3c2f74643e0d0a0909093c2f74723e09090d0a09093c2f7461626c653e0d0a093c2f666f726d3e0d0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34333a222f426173655f426f787c302f426173655f5365617263687c7365617263682f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33303a222f426173655f426f787c302f426173655f5365617263687c736561726368223b7d733a33333a222f426173655f426f787c302f426173655f5374617475734261727c737461747573223b613a333a7b733a353a2276616c7565223b733a3232323a223c6469762069643d22426173655f5374617475734261722220636c6173733d22426173655f537461747573426172223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22736861646f775f31357078222069643d227374617475736261725f636f6e74656e74223e0a0909093c6469762069643d227374617475736261725f746578742220636c6173733d226d657373616765206c6f6164696e67223e0a090909094c6f6164696e672e2e2e0a0909093c2f6469763e0a09093c2f6469763e0a093c2f6469763e0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b613a333a7b733a353a2276616c7565223b733a323533343a223c6469762069643d22426173655f416374696f6e4261722220616c69676e3d2263656e746572223e0a093c7461626c6520636c6173733d22416374696f6e426172223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a202020202020202020202020202020203c74642076616c69676e3d22746f70223e0a20202020202020202020202020202020202020203c6469762069643d2270616e656c223e0a0909090909090909090909093c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f37326264373839343331336231396130333663303964316465346239353332383d31272c2027272c202727293b2220203e0a090909090909093c64697620636c6173733d2270616e656c5f6469765f6c6566742065706573695f6269675f627574746f6e223e0a090909090909090909090909090909090909090909090909093c64697620636c6173733d226469765f69636f6e2069636f6e5f73657474696e677322207374796c653d226d617267696e2d746f703a203370783b223e3c2f6469763e0a09090909090909090909090909090909090909090909090909090909090909093c7370616e3e436f6e6669673c2f7370616e3e0a0909090909090909090909090909093c2f6469763e0a0909090909093c2f613e0a0909090909090909090909090909090909093c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827706172656e745f6d6f64756c653d43524d5f5461736b7326626f785f6d61696e5f687265663d6335316566396139393163653639343738393734316665656334633835353937272c2027272c202727293b22203e0a090909090909093c64697620636c6173733d2270616e656c5f6469765f72696768742065706573695f6269675f627574746f6e223e0a090909090909090909090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f5461736b732f69636f6e2e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a0909090909090909090909090909090909090909090909093c7370616e3e5461736b733c2f7370616e3e0a0909090909090909090909090909093c2f6469763e0a0909090909093c2f613e0a0909090909090909090909093c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827706172656e745f6d6f64756c653d43524d5f436f6e7461637473266d6f64653d636f6d70616e79265f5f69636f6e5f5f3d636f6d70616e6965732e706e67265f5f69636f6e5f736d616c6c5f5f3d636f6d70616e6965732d736d616c6c2e706e6726626f785f6d61696e5f687265663d3636633934646330646665666364393465333534663331303639306434646263272c2027272c202727293b22203e0a090909090909093c64697620636c6173733d2270616e656c5f6469765f72696768742065706573695f6269675f627574746f6e223e0a090909090909090909090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f436f6e74616374732f636f6d70616e6965732e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a0909090909090909090909090909090909090909090909093c7370616e3e436f6d70616e6965733c2f7370616e3e0a0909090909090909090909090909093c2f6469763e0a0909090909093c2f613e0a0909090909090909090909093c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827706172656e745f6d6f64756c653d43524d5f436f6e7461637473266d6f64653d636f6e74616374265f5f69636f6e5f5f3d636f6e74616374732e706e67265f5f69636f6e5f736d616c6c5f5f3d636f6e74616374732d736d616c6c2e706e6726626f785f6d61696e5f687265663d3636633934646330646665666364393465333534663331303639306434646263272c2027272c202727293b22203e0a090909090909093c64697620636c6173733d2270616e656c5f6469765f72696768742065706573695f6269675f627574746f6e223e0a090909090909090909090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f436f6e74616374732f636f6e74616374732e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a0909090909090909090909090909090909090909090909093c7370616e3e436f6e74616374733c2f7370616e3e0a0909090909090909090909090909093c2f6469763e0a0909090909093c2f613e0a0909090909090909090909093c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827706172656e745f6d6f64756c653d43524d5f43616c656e64617226626f785f6d61696e5f687265663d3734393238653032363439396661663166653238363539363264626563313235272c2027272c202727293b22203e0a090909090909093c64697620636c6173733d2270616e656c5f6469765f72696768742065706573695f6269675f627574746f6e223e0a090909090909090909090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f43616c656e6461722f69636f6e2e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a0909090909090909090909090909090909090909090909093c7370616e3e43616c656e6461723c2f7370616e3e0a0909090909090909090909090909093c2f6469763e0a0909090909093c2f613e0a09090909090909090909093c2f6469763e0a202020202020202020202020202020203c2f74643e0a2020202020202020202020203c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e6261722f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b613a333a7b733a353a2276616c7565223b733a333630323a223c6469762069643d22616374696f6e6261725f6c61756e636870616422206269673d22312220636c6173733d226c6569676874626f78223e3c696e70757420747970653d2268696464656e222069643d22616374696f6e6261725f6c61756e63687061645f62696773697a65222076616c75653d223022202f3e0a3c6469762069643d224c6569676874626f785f686561646572223e0a202020203c7461626c6520626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d2230223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a090909090a202020202020202020202020202020203c746420636c6173733d226c65667422203e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f726573697a6522206f6e436c69636b3d226c6962735f6c6569676874626f785f726573697a6528746869732e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f646529223e0a09090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f726573697a655f74657874223e526573697a653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a090909093c746420636c6173733d2263656e746572223e4c61756e63687061643c2f74643e0a090909093c746420636c6173733d227269676874223e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f636c6f73652220687265663d226a6176617363726970743a6c6569676874626f785f646561637469766174652827616374696f6e6261725f6c61756e63687061642729223e0a0909090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f636c6f73655f74657874223e436c6f73653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a0909093c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e0a0a3c6469762069643d224c6569676874626f785f636f6e74656e74223e0a202020203c63656e7465723e0a0a3c7461626c652069643d22426173655f416374696f6e4261725f5f6c61756e6368706164222063656c6c73706163696e673d2230222063656c6c70616464696e673d223022207374796c653d226d617267696e3a20313070783b223e0a093c74723e0a09202020200909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f43616c656e64617226626f785f6d61696e5f687265663d3734393238653032363439396661663166653238363539363264626563313235272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f43616c656e6461722f69636f6e2e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e43616c656e6461723c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f436f6e7461637473266d6f64653d636f6d70616e79265f5f69636f6e5f5f3d636f6d70616e6965732e706e67265f5f69636f6e5f736d616c6c5f5f3d636f6d70616e6965732d736d616c6c2e706e6726626f785f6d61696e5f687265663d3636633934646330646665666364393465333534663331303639306434646263272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f436f6e74616374732f636f6d70616e6965732e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e436f6d70616e6965733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f436f6e7461637473266d6f64653d636f6e74616374265f5f69636f6e5f5f3d636f6e74616374732e706e67265f5f69636f6e5f736d616c6c5f5f3d636f6e74616374732d736d616c6c2e706e6726626f785f6d61696e5f687265663d3636633934646330646665666364393465333534663331303639306434646263272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f436f6e74616374732f636f6e74616374732e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e436f6e74616374733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f5461736b7326626f785f6d61696e5f687265663d6335316566396139393163653639343738393734316665656334633835353937272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f5461736b732f69636f6e2e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e5461736b733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090a093c2f74723e0a3c2f7461626c653e0a0a3c2f63656e7465723e0a3c2f6469763e3c2f6469763e3c6469762069643d22426173655f416374696f6e4261722220616c69676e3d2263656e746572223e0a093c7461626c6520636c6173733d22416374696f6e426172223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a202020202020202020202020202020203c74642076616c69676e3d22746f70223e0a20202020202020202020202020202020202020203c6469762069643d2270616e656c223e0a0909090909090909090909090909090909093c6120636c6173733d226c624f6e222072656c3d22616374696f6e6261725f6c61756e63687061642220687265663d226a6176617363726970743a766f6964283029223e0a090909090909093c64697620636c6173733d2270616e656c5f6469765f72696768742065706573695f6269675f627574746f6e223e0a090909090909090909090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f416374696f6e4261722f6c61756e636865722e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a0909090909090909090909090909090909090909090909093c7370616e3e4c61756e63687061643c2f7370616e3e0a0909090909090909090909090909093c2f6469763e0a0909090909093c2f613e0a09090909090909090909093c2f6469763e0a202020202020202020202020202020203c2f74643e0a2020202020202020202020203c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c31223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b7d733a35323a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f72223b613a333a7b733a353a2276616c7565223b733a33363a223c64697620636c6173733d2274657874223e0a44617368626f6172640a3c2f6469763e20223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a36353a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f722f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a35323a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f72223b7d733a33303a222f426173655f426f787c302f43524d5f46696c746572737c66696c746572223b613a333a7b733a353a2276616c7565223b733a343334373a223c6469762069643d2263726d5f66696c7465727322206269673d22312220636c6173733d226c6569676874626f78223e3c696e70757420747970653d2268696464656e222069643d2263726d5f66696c746572735f62696773697a65222076616c75653d223122202f3e0a3c6469762069643d224c6569676874626f785f686561646572223e0a202020203c7461626c6520626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d2230223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a090909090a202020202020202020202020202020203c746420636c6173733d226c65667422203e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f726573697a6522206f6e436c69636b3d226c6962735f6c6569676874626f785f726573697a6528746869732e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f646529223e0a09090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f726573697a655f74657874223e526573697a653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a090909093c746420636c6173733d2263656e746572223e50657273706563746976653c2f74643e0a090909093c746420636c6173733d227269676874223e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f636c6f73652220687265663d226a6176617363726970743a6c6569676874626f785f64656163746976617465282763726d5f66696c746572732729223e0a0909090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f636c6f73655f74657874223e436c6f73653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a0909093c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e0a0a3c6469762069643d224c6569676874626f785f636f6e74656e74223e0a202020203c63656e7465723e0a0a3c7461626c652069643d2243524d5f46696c74657273222063656c6c73706163696e673d2230222063656c6c70616464696e673d2230223e0a093c74723e0a20202020202020203c212d2d204d59202d2d3e0a20202020202020203c74643e0a0a09202020203c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c74657226253246426173655f426f782537433025324643524d5f46696c7465727325374366696c7465725f63616c6c6261636b5f62643433326464313033643266616463373732306230376130663930663835363d31272c2027272c202727293b22202069643d2263726d5f66696c746572735f6d79223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f6d792e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020202020202020202020202020202020203c7370616e3e4d79207265636f7264733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a0a20202020202020203c2f74643e0a0a20202020202020203c212d2d20414c4c202d2d3e0a20202020202020203c74643e0a0a09202020203c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c74657226253246426173655f426f782537433025324643524d5f46696c7465727325374366696c7465725f63616c6c6261636b5f31613832626232643736643832373362373730393135383961353635373336663d31272c2027272c202727293b22202069643d2263726d5f66696c746572735f616c6c223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f616c6c2e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020202020202020202020202020202020203c7370616e3e416c6c207265636f7264733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a0a20202020202020203c2f74643e0a0a20202020202020203c212d2d204d414e4147452046494c54455253202d2d3e0a20202020202020203c74643e0a0a09202020203c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c74657226253246426173655f426f782537433025324643524d5f46696c7465727325374366696c7465725f63616c6c6261636b5f66643233343635383963313935316634326132356663396361383435353165363d31272c2027272c202727293b22202069643d2263726d5f66696c746572735f6d616e616765223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f6d616e6167652e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020202020202020202020202020202020203c7370616e3e4d616e61676520707265736574733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a0a20202020202020203c2f74643e0a202020203c2f74723e0a20202020202020203c746420636f6c7370616e3d223322207374796c653d22746578742d616c69676e3a2063656e7465723b223e0a0909093c666f726d20206f6e7375626d69743d222428276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827293b436f646550726573732e757064617465282428276c6962735f71665f34303361396335353338383036353561383038326338636431626566653463382729293b5f63686a282428276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c746572272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3430336139633535333838303635356138303832633863643162656665346338222069643d226c6962735f71665f3430336139633535333838303635356138303832633863643162656665346338223e3c696e707574206e616d653d225f71665f5f6c6962735f71665f34303361396335353338383036353561383038326338636431626566653463382220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a0a0a090909095265636f726473206f66266e6273703b3c7370616e20636c6173733d2266696c746572732d6175746f73656c656374223e3c7370616e2069643d225f5f63726d5f66696c7465725f636f6e746163745f73656c6563745f7370616e223e3c73656c656374206e616d653d2263726d5f66696c7465725f636f6e74616374222069643d2263726d5f66696c7465725f636f6e74616374223e0a3c6f7074696f6e2076616c75653d22223e537461727420747970696e6720746f207365617263682e2e2e3c2f6f7074696f6e3e093c6f7074696f6e2076616c75653d2231222073656c65637465643d2273656c6563746564223e6875692077616e673c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d2232223e7a206c6c3c2f6f7074696f6e3e0a3c2f73656c6563743e3c2f7370616e3e3c7370616e2069643d225f5f63726d5f66696c7465725f636f6e746163745f6175746f636f6d706c6574655f7370616e22207374796c653d22646973706c61793a6e6f6e653b223e3c696e70757420706c616365686f6c6465723d22537461727420747970696e6720746f207365617263682e2e2e22206e616d653d2263726d5f66696c7465725f636f6e746163745f5f7365617263682220747970653d2274657874222069643d225f5f6175746f636f6d706c6574655f69645f63726d5f66696c7465725f636f6e746163745f5f73656172636822202f3e3c6469762069643d225f5f6175746f636f6d706c6574655f69645f63726d5f66696c7465725f636f6e746163745f5f7365617263685f73756767657374626f782220636c6173733d226175746f636f6d706c657465223e266e6273703b3c2f6469763e3c2f7370616e3e3c2f7370616e3e266e6273703b3c7370616e20636c6173733d226368696c645f627574746f6e223e3c696e707574206f6e636c69636b3d2263726d5f66696c746572735f64656163746976617465282922206e616d653d227375626d6974222076616c75653d2253686f772220747970653d227375626d697422202f3e3c2f7370616e3e0a0909093c2f666f726d3e0a0a09093c2f74643e0a202020203c2f74723e0a3c2f7461626c653e0a0a3c62723e0a0a0a3c2f63656e7465723e0a3c2f6469763e3c2f6469763e3c6120636c6173733d226c624f6e2064697361626c656420627574746f6e222072656c3d2263726d5f66696c74657273223e50657273706563746976653a203c623e4d79207265636f7264733c2f623e3c64697620636c6173733d2266696c7465725f69636f6e5f696d67223e3c2f6469763e3c2f613e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34313a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f223b613a333a7b733a353a2276616c7565223b733a3131383a223c6120687265663d2223223e3c696d6720626f726465723d223022207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f696d616765732f6c6f676f2d736d616c6c2e706e67222077696474683d2231393322206865696768743d223833223e3c2f613e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a35343a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f2f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a34313a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f223b7d733a35353a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f54616262656442726f777365727c30223b613a333a7b733a353a2276616c7565223b733a31353230333a220a3c64697620636c6173733d225574696c735f54616262656442726f777365725f646976223e0a0a3c7461626c652063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d223022207374796c653d2277696474683a20313030253b223e0a093c74723e0a09093c74643e0a0909093c756c20636c6173733d225574696c735f54616262656442726f77736572223e0a0909090909090909090909093c6c693e0a09090909090909093c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f54616262656442726f777365727c305f63302220687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d227461626265645f62726f777365725f73776974636828302c322c746869732c272f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f54616262656442726f777365727c3027292220636c6173733d227461626265645f62726f777365725f73656c6563746564223e44656661756c74266e6273703b3c6120687265663d226a6176617363726970743a766f69642830293b22206f6e636c69636b3d22656469745f64617368626f6172645f7461622831293b223e3c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f2f426173652f44617368626f6172642f636f6e6669677572652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f2f426173652f44617368626f6172642f636f6e6669677572652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f2f426173652f44617368626f6172642f636f6e6669677572652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223c2220626f726465723d2230223e3c2f613e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d22696628636f6e6669726d282744656c65746520746869732074616220616e6420616c6c206170706c6574732061737369676e656420746f2069743f272929207b5f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3026253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f305f63616c6c6261636b5f66616239363637613333376666313665646635306435623631623237636363363d31272c2027272c202727293b7d223e3c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f2f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f2f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f2f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d223c2220626f726465723d2230223e3c2f613e3c696d6720636c6173733d227461625f69636f6e222069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f54616262656442726f777365727c305f63305f69636f6e22207372633d2222207374796c653d22646973706c61793a6e6f6e653b223e3c2f7370616e3e0a090909093c2f6c693e266e6273703b0a0909090909090909090909093c6c693e0a09090909090909093c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f54616262656442726f777365727c305f63312220687265663d226a6176617363726970743a766f69642830293b22206f6e636c69636b3d22656469745f64617368626f6172645f746162286e756c6c293b223e416464206e6577205461623c696d6720636c6173733d227461625f69636f6e222069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f54616262656442726f777365727c305f63315f69636f6e22207372633d2222207374796c653d22646973706c61793a6e6f6e653b223e3c2f7370616e3e0a090909093c2f6c693e266e6273703b0a0909090909093c2f756c3e0a09093c2f74643e0a093c2f74723e0a093c7472203e0a09093c7464203e0a09093c64697620636c6173733d22626f726465725f626f74746f6d223e3c2f6469763e0a0909093c63656e7465723e3c6469762069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f54616262656442726f777365727c305f643022203e3c6469762069643d2264617368626f61726422207374796c653d2277696474683a20313030253b223e3c6469762069643d2264617368626f6172645f6170706c6574735f315f3022207374796c653d2277696474683a3333253b6d696e2d6865696768743a32303070783b70616464696e672d626f74746f6d3a313070783b766572746963616c2d616c69676e3a746f703b646973706c61793a696e6c696e652d626c6f636b223e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f34223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677265656e5f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677265656e5f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677265656e5f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677265656e223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d677265656e223e5761746368646f673c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d677265656e22206e6f777261703d2231222077696474683d2232367078223e0a090909090909090909090909090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f342220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428342c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f36223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e53686f7574626f783c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2232367078223e0a090909090909090909090909090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f362220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428362c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c2f6469763e3c6469762069643d2264617368626f6172645f6170706c6574735f315f3122207374796c653d2277696474683a3333253b6d696e2d6865696768743a32303070783b70616464696e672d626f74746f6d3a313070783b766572746963616c2d616c69676e3a746f703b646973706c61793a696e6c696e652d626c6f636b223e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f32223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677265656e5f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677265656e5f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677265656e5f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677265656e223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d677265656e223e5461736b733c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d677265656e22206e6f777261703d2231222077696474683d2232367078223e0a090909090909090909090909090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f322220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428322c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f35223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d7265645f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d7265645f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d7265645f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d726564223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d726564223e50686f6e6563616c6c733c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d72656422206e6f777261703d2231222077696474683d2232367078223e0a090909090909090909090909090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f352220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428352c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f37223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d677261795f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d677261795f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d677261795f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d67726179223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d67726179223e4167656e64613c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d6772617922206e6f777261703d2231222077696474683d2232367078223e0a090909090909090909090909090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f372220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428372c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c2f6469763e3c6469762069643d2264617368626f6172645f6170706c6574735f315f3222207374796c653d2277696474683a3333253b6d696e2d6865696768743a32303070783b70616464696e672d626f74746f6d3a313070783b766572746963616c2d616c69676e3a746f703b646973706c61793a696e6c696e652d626c6f636b223e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f31223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f61726420626c61636b5f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e657220626c61636b5f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e7320626c61636b5f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e7320626c61636b223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c6520626c61636b223e436c6f636b3c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c7320626c61636b22206e6f777261703d2231222077696474683d2232367078223e0a090909090909090909090909090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f312220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428312c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c64697620636c6173733d226170706c6574222069643d2261625f6974656d5f33223e093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a203936253b206d696e2d6865696768743a20333070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f775f637373335f64617368626f617264206461726b2d79656c6c6f775f64617368626f617264223e0a2020202020202020202020203c7461626c6520636c6173733d22636f6e7461696e6572206461726b2d79656c6c6f775f64617368626f617264222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0a202020202020202020202020202020203c74626f64793e0a202020202020202020202020202020203c747220636c6173733d226e6f6e73656c65637461626c65223e0a20202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d79656c6c6f775f64617368626f617264223e0a20202020202020202020202020202020093c2f74643e0a20202020202020202020202020202020090920202020202020202020202020202020093c74642077696474683d223370782220636c6173733d2268656164657220616374696f6e73206461726b2d79656c6c6f77223e0a0920202020202020202020202020202020093c2f74643e0a2020202020202020202020202020202009202020202020202020202020202020200920202020202020202020202020202020202020203c746420636c6173733d22686561646572207469746c652068616e646c65206461726b2d79656c6c6f77223e4e6f74653c2f74643e0a09090909090909090909090909090909090909090909090909090909090909090909090920202020202020202020202020202020202020203c746420636c6173733d2268656164657220636f6e74726f6c73206461726b2d79656c6c6f7722206e6f777261703d2231222077696474683d2232367078223e0a090909090909090909090909090909090909090909090909090909090909093c6120636c6173733d2272656d6f7665222069643d2264617368626f6172645f72656d6f76655f6170706c65745f332220206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2252656d6f766522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f686964655469702829222020687265663d226a6176617363726970743a766f69642830293b22206f6e436c69636b3d22696628636f6e6669726d282744656c6574652074686973206170706c65743f27292972656d6f76655f6170706c657428332c30293b223e0a090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e6722206f6e4d6f7573654f7665723d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652d686f7665722e706e67273b22206f6e4d6f7573654f75743d22746869732e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f636c6f73652e706e67273b222077696474683d22313422206865696768743d2231342220616c743d22782220626f726465723d2230223e0a090909090909093c2f613e0a090909090909090909090909266e6273703b0a09090909093c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c746420636f6c7370616e3d22342220636c6173733d22636f6e74656e745f746422206f6e636c69636b3d22223e3c64697620636c6173733d22636f6e74656e74223e3c2f6469763e3c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c2f74626f64793e0a2020202020202020202020203c2f7461626c653e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e3c2f6469763e3c2f6469763e3c2f6469763e3c6469762069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f54616262656442726f777365727c305f643122207374796c653d22646973706c61793a6e6f6e65223e3c2f6469763e3c2f63656e7465723e0a09093c2f74643e0a093c2f74723e0a3c2f7461626c653e0a0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a38353a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f5761746368646f677c342f5574696c735f47656e6572696342726f777365727c737562736372697074696f6e73223b613a333a7b733a353a2276616c7565223b733a313236343a220a3c6469763e0a0a0a0a3c64697620636c6173733d227461626c65223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22637373335f636f6e74656e745f736861646f77223e0a0909093c64697620636c6173733d226d617267696e327078223e0a090909090a090909093c7461626c6520636c6173733d225574696c735f47656e6572696342726f77736572222063656c6c73706163696e673d2230222063656c6c70616464696e673d223022207374796c653d2277696474683a313030253b7461626c652d6c61796f75743a66697865643b6f766572666c6f773a68696464656e3b746578742d6f766572666c6f773a656c6c69707369733b223e0a3c74686561643e3c747220636c6173733d226e6f6e73656c65637461626c65223e0a3c74682077696474683d2232352522206e6f777261703d2231222020636c6173733d226669727374223e3c7370616e3e4361742e3c2f7370616e3e3c2f74683e0a3c74682077696474683d2237352522206e6f777261703d2231222020636c6173733d226c617374223e3c7370616e3e5469746c653c2f7370616e3e3c2f74683e0a3c2f74723e3c2f74686561643e0a3c74626f64793e0a3c2f74626f64793e0a3c2f7461626c653e0a0a090909090a0a090909090909090909090909093c7461626c652069643d225574696c735f47656e6572696342726f777365725f5f6e617669676174696f6e2220636c6173733d226e6f6e73656c65637461626c652220626f726465723d2230222063656c6c73706163696e673d2230222063656c6c70616464696e673d2230223e0a0909090909093c747220636c6173733d226e61765f6261636b67726f756e64223e0a090909090909093c7464207374796c653d22746578742d616c69676e3a206c6566743b2077696474683a203170783b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a09090909090909090909090909093c746420636c6173733d226e61765f73756d6d61727922206e6f777261703e266e6273703b266e6273703b266e6273703b4e6f207265636f72647320666f756e64266e6273703b266e6273703b266e6273703b3c2f74643e0a09090909090909090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c746420636c6173733d226e61765f706167696e22206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090a090909090909093c2f74643e0a090909090909093c746420636c6173733d226e61765f7065725f7061676522206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a0909090909093c2f74723e0a09090909093c2f7461626c653e0a090909090a090909090909093c2f6469763e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e0a0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a35303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f5761746368646f677c34223b7d733a35333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4269727468646179737c39223b613a333a7b733a353a2276616c7565223b733a3132313a22426972746864617973207570636f6d696e6720696e20746865206e6578743a20333020646179732e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4269727468646179737c397c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a38313a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4269727468646179737c392f5574696c735f5265636f726442726f777365727c636f6e74616374223b613a333a7b733a353a2276616c7565223b733a3130393a223c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4269727468646179737c392f5574696c735f5265636f726442726f777365727c636f6e746163747c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a35333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4269727468646179737c39223b7d733a3131303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4269727468646179737c392f5574696c735f5265636f726442726f777365727c636f6e746163742f5574696c735f47656e6572696342726f777365727c636f6e74616374223b613a333a7b733a353a2276616c7565223b733a313333323a220a3c6469763e0a0a0a0a3c64697620636c6173733d227461626c65223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22637373335f636f6e74656e745f736861646f77223e0a0909093c64697620636c6173733d226d617267696e327078223e0a090909090a090909093c7461626c6520636c6173733d225574696c735f47656e6572696342726f77736572222063656c6c73706163696e673d2230222063656c6c70616464696e673d223022207374796c653d2277696474683a313030253b7461626c652d6c61796f75743a66697865643b6f766572666c6f773a68696464656e3b746578742d6f766572666c6f773a656c6c69707369733b223e0a3c74686561643e3c747220636c6173733d226e6f6e73656c65637461626c65223e0a3c74682077696474683d2233332522206e6f777261703d2231222020636c6173733d226669727374223e3c7370616e3e4c617374204e616d653c2f7370616e3e3c2f74683e0a3c74682077696474683d2233332522206e6f777261703d22312220203e3c7370616e3e4669727374204e616d653c2f7370616e3e3c2f74683e0a3c74682077696474683d2233332522206e6f777261703d2231222020636c6173733d226c617374223e3c7370616e3e426972746820446174653c2f7370616e3e3c2f74683e0a3c2f74723e3c2f74686561643e0a3c74626f64793e0a3c2f74626f64793e0a3c2f7461626c653e0a0a090909090a0a090909090909090909090909093c7461626c652069643d225574696c735f47656e6572696342726f777365725f5f6e617669676174696f6e2220636c6173733d226e6f6e73656c65637461626c652220626f726465723d2230222063656c6c73706163696e673d2230222063656c6c70616464696e673d2230223e0a0909090909093c747220636c6173733d226e61765f6261636b67726f756e64223e0a090909090909093c7464207374796c653d22746578742d616c69676e3a206c6566743b2077696474683a203170783b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a09090909090909090909090909093c746420636c6173733d226e61765f73756d6d61727922206e6f777261703e266e6273703b266e6273703b266e6273703b4e6f207265636f72647320666f756e64266e6273703b266e6273703b266e6273703b3c2f74643e0a09090909090909090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c746420636c6173733d226e61765f706167696e22206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090a090909090909093c2f74643e0a090909090909093c746420636c6173733d226e61765f7065725f7061676522206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a0909090909093c2f74723e0a09090909093c2f7461626c653e0a090909090a090909090909093c2f6469763e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e0a0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a38313a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4269727468646179737c392f5574696c735f5265636f726442726f777365727c636f6e74616374223b7d733a35313a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f4c6f67696e41756469747c3131223b613a333a7b733a353a2276616c7565223b733a3135353a223c646976207374796c653d2270616464696e673a3770783b6261636b67726f756e642d636f6c6f723a207265643b20636f6c6f723a77686974653b20666f6e742d7765696768743a626f6c643b223e4f6e3a20323031322d31312d31342031333a30373a33363c6272202f3e486f7374206e616d653a206c6f63616c686f73743c6272202f3e495020616464726573733a203a3a313c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a35323a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f527373466565647c3135223b613a333a7b733a353a2276616c7565223b733a3132303a223c6469762069643d22727373666565645f396236396262623538613362643662653038323366633261656134663935303922207374796c653d2277696474683a2032373070783b2070616464696e673a20357078203570782035707820323070783b223e4c6f6164696e67205253532e2e2e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a37303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f5461736b737c322f5574696c735f5265636f726442726f777365727c7461736b223b613a333a7b733a353a2276616c7565223b733a39383a223c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f5461736b737c322f5574696c735f5265636f726442726f777365727c7461736b7c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a34353a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f5461736b737c32223b7d733a39363a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f5461736b737c322f5574696c735f5265636f726442726f777365727c7461736b2f5574696c735f47656e6572696342726f777365727c7461736b223b613a333a7b733a353a2276616c7565223b733a313332323a220a3c6469763e0a0a0a0a3c64697620636c6173733d227461626c65223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22637373335f636f6e74656e745f736861646f77223e0a0909093c64697620636c6173733d226d617267696e327078223e0a090909090a090909093c7461626c6520636c6173733d225574696c735f47656e6572696342726f77736572222063656c6c73706163696e673d2230222063656c6c70616464696e673d223022207374796c653d2277696474683a313030253b7461626c652d6c61796f75743a66697865643b6f766572666c6f773a68696464656e3b746578742d6f766572666c6f773a656c6c69707369733b223e0a3c74686561643e3c747220636c6173733d226e6f6e73656c65637461626c65223e0a3c74682077696474683d2235352522206e6f777261703d2231222020636c6173733d226669727374223e3c7370616e3e5469746c653c2f7370616e3e3c2f74683e0a3c74682077696474683d2232372522206e6f777261703d22312220203e3c7370616e3e446561646c696e653c2f7370616e3e3c2f74683e0a3c74682077696474683d2231362522206e6f777261703d2231222020636c6173733d226c617374223e3c7370616e3e5374617475733c2f7370616e3e3c2f74683e0a3c2f74723e3c2f74686561643e0a3c74626f64793e0a3c2f74626f64793e0a3c2f7461626c653e0a0a090909090a0a090909090909090909090909093c7461626c652069643d225574696c735f47656e6572696342726f777365725f5f6e617669676174696f6e2220636c6173733d226e6f6e73656c65637461626c652220626f726465723d2230222063656c6c73706163696e673d2230222063656c6c70616464696e673d2230223e0a0909090909093c747220636c6173733d226e61765f6261636b67726f756e64223e0a090909090909093c7464207374796c653d22746578742d616c69676e3a206c6566743b2077696474683a203170783b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a09090909090909090909090909093c746420636c6173733d226e61765f73756d6d61727922206e6f777261703e266e6273703b266e6273703b266e6273703b4e6f207265636f72647320666f756e64266e6273703b266e6273703b266e6273703b3c2f74643e0a09090909090909090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c746420636c6173733d226e61765f706167696e22206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090a090909090909093c2f74643e0a090909090909093c746420636c6173733d226e61765f7065725f7061676522206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a0909090909093c2f74723e0a09090909093c2f7461626c653e0a090909090a090909090909093c2f6469763e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e0a0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a37303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f5461736b737c322f5574696c735f5265636f726442726f777365727c7461736b223b7d733a37393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f50686f6e6543616c6c7c352f5574696c735f5265636f726442726f777365727c70686f6e6563616c6c223b613a333a7b733a353a2276616c7565223b733a3130373a223c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f50686f6e6543616c6c7c352f5574696c735f5265636f726442726f777365727c70686f6e6563616c6c7c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f50686f6e6543616c6c7c35223b7d733a3131303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f50686f6e6543616c6c7c352f5574696c735f5265636f726442726f777365727c70686f6e6563616c6c2f5574696c735f47656e6572696342726f777365727c70686f6e6563616c6c223b613a333a7b733a353a2276616c7565223b733a313333333a220a3c6469763e0a0a0a0a3c64697620636c6173733d227461626c65223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22637373335f636f6e74656e745f736861646f77223e0a0909093c64697620636c6173733d226d617267696e327078223e0a090909090a090909093c7461626c6520636c6173733d225574696c735f47656e6572696342726f77736572222063656c6c73706163696e673d2230222063656c6c70616464696e673d223022207374796c653d2277696474683a313030253b7461626c652d6c61796f75743a66697865643b6f766572666c6f773a68696464656e3b746578742d6f766572666c6f773a656c6c69707369733b223e0a3c74686561643e3c747220636c6173733d226e6f6e73656c65637461626c65223e0a3c74682077696474683d2233332522206e6f777261703d2231222020636c6173733d226669727374223e3c7370616e3e436f6e74616374204e616d653c2f7370616e3e3c2f74683e0a3c74682077696474683d2234372522206e6f777261703d22312220203e3c7370616e3e50686f6e65204e756d6265723c2f7370616e3e3c2f74683e0a3c74682077696474683d2231392522206e6f777261703d2231222020636c6173733d226c617374223e3c7370616e3e5374617475733c2f7370616e3e3c2f74683e0a3c2f74723e3c2f74686561643e0a3c74626f64793e0a3c2f74626f64793e0a3c2f7461626c653e0a0a090909090a0a090909090909090909090909093c7461626c652069643d225574696c735f47656e6572696342726f777365725f5f6e617669676174696f6e2220636c6173733d226e6f6e73656c65637461626c652220626f726465723d2230222063656c6c73706163696e673d2230222063656c6c70616464696e673d2230223e0a0909090909093c747220636c6173733d226e61765f6261636b67726f756e64223e0a090909090909093c7464207374796c653d22746578742d616c69676e3a206c6566743b2077696474683a203170783b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a09090909090909090909090909093c746420636c6173733d226e61765f73756d6d61727922206e6f777261703e266e6273703b266e6273703b266e6273703b4e6f207265636f72647320666f756e64266e6273703b266e6273703b266e6273703b3c2f74643e0a09090909090909090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c746420636c6173733d226e61765f706167696e22206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090a090909090909093c2f74643e0a090909090909093c746420636c6173733d226e61765f7065725f7061676522206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a0909090909093c2f74723e0a09090909093c2f7461626c653e0a090909090a090909090909093c2f6469763e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e0a0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a37393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f50686f6e6543616c6c7c352f5574696c735f5265636f726442726f777365727c70686f6e6563616c6c223b7d733a37373a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f43616c656e6461727c372f5574696c735f47656e6572696342726f777365727c6167656e646158223b613a333a7b733a353a2276616c7565223b733a323035373a220a3c6469763e0a0a0a0a3c64697620636c6173733d227461626c65223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22637373335f636f6e74656e745f736861646f77223e0a0909093c64697620636c6173733d226d617267696e327078223e0a090909090a090909093c7461626c6520636c6173733d225574696c735f47656e6572696342726f77736572222063656c6c73706163696e673d2230222063656c6c70616464696e673d223022207374796c653d2277696474683a313030253b7461626c652d6c61796f75743a66697865643b6f766572666c6f773a68696464656e3b746578742d6f766572666c6f773a656c6c69707369733b223e0a3c74686561643e3c747220636c6173733d226e6f6e73656c65637461626c65223e0a3c74682077696474683d2233332522206e6f777261703d2231222020636c6173733d226669727374223e3c7370616e3e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3025324643524d5f43616c656e646172253743372532465574696c735f47656e6572696342726f777365722537436167656e64615826253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3025324643524d5f43616c656e646172253743372532465574696c735f47656e6572696342726f777365722537436167656e6461585f6368616e67655f6f726465723d5374617274272c2027272c202727293b22203e3c7370616e207374796c653d2270616464696e672d72696768743a20313270783b206d617267696e2d72696768743a20313270783b206261636b67726f756e642d696d6167653a2075726c28646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f736f72742d617363656e64696e672e706e67293b206261636b67726f756e642d7265706561743a206e6f2d7265706561743b206261636b67726f756e642d706f736974696f6e3a2072696768743b223e53746172743c2f7370616e3e3c2f613e3c2f7370616e3e3c2f74683e0a3c74682077696474683d2236362522206e6f777261703d2231222020636c6173733d226c617374223e3c7370616e3e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3025324643524d5f43616c656e646172253743372532465574696c735f47656e6572696342726f777365722537436167656e64615826253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3025324643524d5f43616c656e646172253743372532465574696c735f47656e6572696342726f777365722537436167656e6461585f6368616e67655f6f726465723d5469746c65272c2027272c202727293b22203e5469746c653c2f613e3c2f7370616e3e3c2f74683e0a3c2f74723e3c2f74686561643e0a3c74626f64793e0a3c2f74626f64793e0a3c2f7461626c653e0a0a090909090a0a090909090909090909090909093c7461626c652069643d225574696c735f47656e6572696342726f777365725f5f6e617669676174696f6e2220636c6173733d226e6f6e73656c65637461626c652220626f726465723d2230222063656c6c73706163696e673d2230222063656c6c70616464696e673d2230223e0a0909090909093c747220636c6173733d226e61765f6261636b67726f756e64223e0a090909090909093c7464207374796c653d22746578742d616c69676e3a206c6566743b2077696474683a203170783b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a09090909090909090909090909093c746420636c6173733d226e61765f73756d6d61727922206e6f777261703e266e6273703b266e6273703b266e6273703b4e6f207265636f72647320666f756e64266e6273703b266e6273703b266e6273703b3c2f74643e0a09090909090909090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c746420636c6173733d226e61765f706167696e22206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090a090909090909093c2f74643e0a090909090909093c746420636c6173733d226e61765f7065725f7061676522206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a0909090909093c2f74723e0a09090909093c2f7461626c653e0a090909090a090909090909093c2f6469763e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e0a0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a34383a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f43616c656e6461727c37223b7d733a35323a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f4d657373656e6765727c3132223b613a333a7b733a353a2276616c7565223b733a3136303a223c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f4d657373656e6765727c31327c30636f6e74656e74223e3c2f7370616e3e3c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f4d657373656e6765727c31327c31636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a37363a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f4d657373656e6765727c31322f5574696c735f4c6569676874626f7850726f6d70747c30223b613a333a7b733a353a2276616c7565223b733a31323739383a220a3c666f726d206f6e7375626d69743d222428276c6962735f71665f383132633430363131646334643235333030396439366438333631353364336327292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f383132633430363131646334643235333030396439366438333631353364336327293b436f646550726573732e757064617465282428276c6962735f71665f38313263343036313164633464323533303039643936643833363135336433632729293b5f63686a282428276c6962735f71665f383132633430363131646334643235333030396439366438333631353364336327292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f383132633430363131646334643235333030396439366438333631353364336327292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3831326334303631316463346432353330303964393664383336313533643363222069643d226c6962735f71665f3831326334303631316463346432353330303964393664383336313533643363223e0a3c6469763e0a3c696e707574206e616d653d225f71665f5f6c6962735f71665f38313263343036313164633464323533303039643936643833363135336433632220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a3c696e7075742069643d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f696422206e616d653d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f69642220747970653d2268696464656e222076616c75653d226e6f6e6522202f3e0a3c7461626c6520626f726465723d2230222069643d22717569636b666f726d223e0a0a3c2f7461626c653e0a3c2f6469763e0a3c2f666f726d3e0a3c666f726d206f6e7375626d69743d222428276c6962735f71665f623337366135396364383536306330343961623333383534383233643462313327292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f623337366135396364383536306330343961623333383534383233643462313327293b436f646550726573732e757064617465282428276c6962735f71665f62333736613539636438353630633034396162333338353438323364346231332729293b5f63686a282428276c6962735f71665f623337366135396364383536306330343961623333383534383233643462313327292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f623337366135396364383536306330343961623333383534383233643462313327292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f6233373661353963643835363063303439616233333835343832336434623133222069643d226c6962735f71665f6233373661353963643835363063303439616233333835343832336434623133223e0a3c6469763e0a3c696e707574206e616d653d225f71665f5f6c6962735f71665f62333736613539636438353630633034396162333338353438323364346231332220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a3c696e7075742069643d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f696422206e616d653d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f69642220747970653d2268696464656e222076616c75653d226e6f6e6522202f3e0a3c7461626c6520626f726465723d2230222069643d22717569636b666f726d223e0a0a3c2f7461626c653e0a3c2f6469763e0a3c2f666f726d3e0a3c666f726d206f6e7375626d69743d222428276c6962735f71665f636535316538616638376634616534356262366464373830356139323664346627292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f636535316538616638376634616534356262366464373830356139323664346627293b436f646550726573732e757064617465282428276c6962735f71665f63653531653861663837663461653435626236646437383035613932366434662729293b5f63686a282428276c6962735f71665f636535316538616638376634616534356262366464373830356139323664346627292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f636535316538616638376634616534356262366464373830356139323664346627292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f6365353165386166383766346165343562623664643738303561393236643466222069643d226c6962735f71665f6365353165386166383766346165343562623664643738303561393236643466223e0a3c6469763e0a3c696e707574206e616d653d225f71665f5f6c6962735f71665f63653531653861663837663461653435626236646437383035613932366434662220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a3c696e7075742069643d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f696422206e616d653d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f69642220747970653d2268696464656e222076616c75653d226e6f6e6522202f3e0a3c7461626c6520626f726465723d2230222069643d22717569636b666f726d223e0a0a3c2f7461626c653e0a3c2f6469763e0a3c2f666f726d3e0a3c666f726d206f6e7375626d69743d222428276c6962735f71665f353534313262383636643638383939626464356336343235373533643138663627292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f353534313262383636643638383939626464356336343235373533643138663627293b436f646550726573732e757064617465282428276c6962735f71665f35353431326238363664363838393962646435633634323537353364313866362729293b5f63686a282428276c6962735f71665f353534313262383636643638383939626464356336343235373533643138663627292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f353534313262383636643638383939626464356336343235373533643138663627292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3535343132623836366436383839396264643563363432353735336431386636222069643d226c6962735f71665f3535343132623836366436383839396264643563363432353735336431386636223e0a3c6469763e0a3c696e707574206e616d653d225f71665f5f6c6962735f71665f35353431326238363664363838393962646435633634323537353364313866362220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a3c696e7075742069643d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f696422206e616d653d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f69642220747970653d2268696464656e222076616c75653d226e6f6e6522202f3e0a3c7461626c6520626f726465723d2230222069643d22717569636b666f726d223e0a0a3c2f7461626c653e0a3c2f6469763e0a3c2f666f726d3e0a3c666f726d206f6e7375626d69743d222428276c6962735f71665f353533643063666338313539313062393861323935323737323932396336303127292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f353533643063666338313539313062393861323935323737323932396336303127293b436f646550726573732e757064617465282428276c6962735f71665f35353364306366633831353931306239386132393532373732393239633630312729293b5f63686a282428276c6962735f71665f353533643063666338313539313062393861323935323737323932396336303127292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f353533643063666338313539313062393861323935323737323932396336303127292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3535336430636663383135393130623938613239353237373239323963363031222069643d226c6962735f71665f3535336430636663383135393130623938613239353237373239323963363031223e0a3c6469763e0a3c696e707574206e616d653d225f71665f5f6c6962735f71665f35353364306366633831353931306239386132393532373732393239633630312220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a3c696e7075742069643d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f696422206e616d653d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f69642220747970653d2268696464656e222076616c75653d226e6f6e6522202f3e0a3c7461626c6520626f726465723d2230222069643d22717569636b666f726d223e0a0a3c2f7461626c653e0a3c2f6469763e0a3c2f666f726d3e0a3c666f726d206f6e7375626d69743d222428276c6962735f71665f313933663134326130393633313233313935326530396132616363393661653327292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f313933663134326130393633313233313935326530396132616363393661653327293b436f646550726573732e757064617465282428276c6962735f71665f31393366313432613039363331323331393532653039613261636339366165332729293b5f63686a282428276c6962735f71665f313933663134326130393633313233313935326530396132616363393661653327292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f313933663134326130393633313233313935326530396132616363393661653327292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3139336631343261303936333132333139353265303961326163633936616533222069643d226c6962735f71665f3139336631343261303936333132333139353265303961326163633936616533223e0a3c6469763e0a3c696e707574206e616d653d225f71665f5f6c6962735f71665f31393366313432613039363331323331393532653039613261636339366165332220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a3c696e7075742069643d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f696422206e616d653d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f69642220747970653d2268696464656e222076616c75653d226e6f6e6522202f3e0a3c7461626c6520626f726465723d2230222069643d22717569636b666f726d223e0a0a3c2f7461626c653e0a3c2f6469763e0a3c2f666f726d3e0a3c666f726d206f6e7375626d69743d222428276c6962735f71665f386235336639363837383235353630616538323565623931616435663131346527292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f386235336639363837383235353630616538323565623931616435663131346527293b436f646550726573732e757064617465282428276c6962735f71665f38623533663936383738323535363061653832356562393161643566313134652729293b5f63686a282428276c6962735f71665f386235336639363837383235353630616538323565623931616435663131346527292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f386235336639363837383235353630616538323565623931616435663131346527292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3862353366393638373832353536306165383235656239316164356631313465222069643d226c6962735f71665f3862353366393638373832353536306165383235656239316164356631313465223e0a3c6469763e0a3c696e707574206e616d653d225f71665f5f6c6962735f71665f38623533663936383738323535363061653832356562393161643566313134652220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a3c696e7075742069643d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f696422206e616d653d2233353564623463663836666432386139323336396336653866663533313336615f616c6572745f69642220747970653d2268696464656e222076616c75653d226e6f6e6522202f3e0a3c7461626c6520626f726465723d2230222069643d22717569636b666f726d223e0a0a3c2f7461626c653e0a3c2f6469763e0a3c2f666f726d3e3c6469762069643d2233353564623463663836666432386139323336396336653866663533313336615f70726f6d70745f6c6569676874626f7822206269673d22312220636c6173733d226c6569676874626f78223e3c696e70757420747970653d2268696464656e222069643d2233353564623463663836666432386139323336396336653866663533313336615f70726f6d70745f6c6569676874626f785f62696773697a65222076616c75653d223022202f3e0a3c6469762069643d224c6569676874626f785f686561646572223e0a202020203c7461626c6520626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d2230223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a090909090a202020202020202020202020202020203c746420636c6173733d226c65667422203e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f726573697a6522206f6e436c69636b3d226c6962735f6c6569676874626f785f726573697a6528746869732e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f646529223e0a09090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f726573697a655f74657874223e526573697a653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a090909093c746420636c6173733d2263656e746572223e486f6c64206f6e3c2f74643e0a090909093c746420636c6173733d227269676874223e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f636c6f73652220687265663d226a6176617363726970743a6c6569676874626f785f64656163746976617465282733353564623463663836666432386139323336396336653866663533313336615f70726f6d70745f6c6569676874626f782729223e0a0909090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f636c6f73655f74657874223e436c6f73653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a0909093c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e0a0a3c6469762069643d224c6569676874626f785f636f6e74656e74223e0a202020203c63656e7465723e0a3c6469762069643d2233353564623463663836666432386139323336396336653866663533313336615f627574746f6e735f73656374696f6e223e0a3c7461626c652069643d225574696c735f4c6569676874626f7850726f6d7074222063656c6c73706163696e673d2230222063656c6c70616464696e673d2230223e0a09093c74723e0a0920202020202020203c74643e0a0909093c6120687265663d226a6176617363726970743a766f69642830293b22206f6e6d6f75736575703d226633353564623463663836666432386139323336396336653866663533313336615f70726f6d70745f6465616374697661746528293b2428276c6962735f71665f383132633430363131646334643235333030396439366438333631353364336327292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f383132633430363131646334643235333030396439366438333631353364336327293b436f646550726573732e757064617465282428276c6962735f71665f38313263343036313164633464323533303039643936643833363135336433632729293b5f63686a282428276c6962735f71665f383132633430363131646334643235333030396439366438333631353364336327292e73657269616c697a6528292b27265f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f383132633430363131646334643235333030396439366438333631353364336327292e7375626d697465642e76616c75653d303b3b223e0a0909093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a09090909090909093c7370616e3e35206d696e757465733c2f7370616e3e0a0909093c2f6469763e0a0909093c2f613e0a20202020202020203c2f74643e0a090909090920202020202020203c74643e0a0909093c6120687265663d226a6176617363726970743a766f69642830293b22206f6e6d6f75736575703d226633353564623463663836666432386139323336396336653866663533313336615f70726f6d70745f6465616374697661746528293b2428276c6962735f71665f623337366135396364383536306330343961623333383534383233643462313327292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f623337366135396364383536306330343961623333383534383233643462313327293b436f646550726573732e757064617465282428276c6962735f71665f62333736613539636438353630633034396162333338353438323364346231332729293b5f63686a282428276c6962735f71665f623337366135396364383536306330343961623333383534383233643462313327292e73657269616c697a6528292b27265f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f623337366135396364383536306330343961623333383534383233643462313327292e7375626d697465642e76616c75653d303b3b223e0a0909093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a09090909090909093c7370616e3e3135206d696e757465733c2f7370616e3e0a0909093c2f6469763e0a0909093c2f613e0a20202020202020203c2f74643e0a090909090920202020202020203c74643e0a0909093c6120687265663d226a6176617363726970743a766f69642830293b22206f6e6d6f75736575703d226633353564623463663836666432386139323336396336653866663533313336615f70726f6d70745f6465616374697661746528293b2428276c6962735f71665f636535316538616638376634616534356262366464373830356139323664346627292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f636535316538616638376634616534356262366464373830356139323664346627293b436f646550726573732e757064617465282428276c6962735f71665f63653531653861663837663461653435626236646437383035613932366434662729293b5f63686a282428276c6962735f71665f636535316538616638376634616534356262366464373830356139323664346627292e73657269616c697a6528292b27265f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f636535316538616638376634616534356262366464373830356139323664346627292e7375626d697465642e76616c75653d303b3b223e0a0909093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a09090909090909093c7370616e3e3330206d696e757465733c2f7370616e3e0a0909093c2f6469763e0a0909093c2f613e0a20202020202020203c2f74643e0a090909090920202020202020203c74643e0a0909093c6120687265663d226a6176617363726970743a766f69642830293b22206f6e6d6f75736575703d226633353564623463663836666432386139323336396336653866663533313336615f70726f6d70745f6465616374697661746528293b2428276c6962735f71665f353534313262383636643638383939626464356336343235373533643138663627292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f353534313262383636643638383939626464356336343235373533643138663627293b436f646550726573732e757064617465282428276c6962735f71665f35353431326238363664363838393962646435633634323537353364313866362729293b5f63686a282428276c6962735f71665f353534313262383636643638383939626464356336343235373533643138663627292e73657269616c697a6528292b27265f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f353534313262383636643638383939626464356336343235373533643138663627292e7375626d697465642e76616c75653d303b3b223e0a0909093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a09090909090909093c7370616e3e3120686f75723c2f7370616e3e0a0909093c2f6469763e0a0909093c2f613e0a20202020202020203c2f74643e0a090909090920202020202020203c74643e0a0909093c6120687265663d226a6176617363726970743a766f69642830293b22206f6e6d6f75736575703d226633353564623463663836666432386139323336396336653866663533313336615f70726f6d70745f6465616374697661746528293b2428276c6962735f71665f353533643063666338313539313062393861323935323737323932396336303127292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f353533643063666338313539313062393861323935323737323932396336303127293b436f646550726573732e757064617465282428276c6962735f71665f35353364306366633831353931306239386132393532373732393239633630312729293b5f63686a282428276c6962735f71665f353533643063666338313539313062393861323935323737323932396336303127292e73657269616c697a6528292b27265f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f353533643063666338313539313062393861323935323737323932396336303127292e7375626d697465642e76616c75653d303b3b223e0a0909093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a09090909090909093c7370616e3e3420686f7572733c2f7370616e3e0a0909093c2f6469763e0a0909093c2f613e0a20202020202020203c2f74643e0a090909090920202020202020203c74643e0a0909093c6120687265663d226a6176617363726970743a766f69642830293b22206f6e6d6f75736575703d226633353564623463663836666432386139323336396336653866663533313336615f70726f6d70745f6465616374697661746528293b2428276c6962735f71665f313933663134326130393633313233313935326530396132616363393661653327292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f313933663134326130393633313233313935326530396132616363393661653327293b436f646550726573732e757064617465282428276c6962735f71665f31393366313432613039363331323331393532653039613261636339366165332729293b5f63686a282428276c6962735f71665f313933663134326130393633313233313935326530396132616363393661653327292e73657269616c697a6528292b27265f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f313933663134326130393633313233313935326530396132616363393661653327292e7375626d697465642e76616c75653d303b3b223e0a0909093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a09090909090909093c7370616e3e313220686f7572733c2f7370616e3e0a0909093c2f6469763e0a0909093c2f613e0a20202020202020203c2f74643e0a090909090909090909093c2f74723e0a0909093c74723e0a09090920202020202020203c74643e0a0909093c6120687265663d226a6176617363726970743a766f69642830293b22206f6e6d6f75736575703d226633353564623463663836666432386139323336396336653866663533313336615f70726f6d70745f6465616374697661746528293b2428276c6962735f71665f386235336639363837383235353630616538323565623931616435663131346527292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f386235336639363837383235353630616538323565623931616435663131346527293b436f646550726573732e757064617465282428276c6962735f71665f38623533663936383738323535363061653832356562393161643566313134652729293b5f63686a282428276c6962735f71665f386235336639363837383235353630616538323565623931616435663131346527292e73657269616c697a6528292b27265f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f4c6569676874626f7850726f6d707425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f386235336639363837383235353630616538323565623931616435663131346527292e7375626d697465642e76616c75653d303b3b223e0a0909093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a09090909090909093c7370616e3e323420686f7572733c2f7370616e3e0a0909093c2f6469763e0a0909093c2f613e0a20202020202020203c2f74643e0a0909090909202020203c2f74723e0a3c2f7461626c653e0a3c2f6469763e0a0a0a3c2f63656e7465723e0a3c2f6469763e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a35323a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f4d657373656e6765727c3132223b7d733a38303a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f4d657373656e6765727c31322f5574696c735f47656e6572696342726f777365727c6167656e6461223b613a333a7b733a353a2276616c7565223b733a323131383a220a3c6469763e0a0a0a0a3c64697620636c6173733d227461626c65223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22637373335f636f6e74656e745f736861646f77223e0a0909093c64697620636c6173733d226d617267696e327078223e0a090909090a090909093c7461626c6520636c6173733d225574696c735f47656e6572696342726f77736572222063656c6c73706163696e673d2230222063656c6c70616464696e673d223022207374796c653d2277696474683a313030253b7461626c652d6c61796f75743a66697865643b6f766572666c6f773a68696464656e3b746578742d6f766572666c6f773a656c6c69707369733b223e0a3c74686561643e3c747220636c6173733d226e6f6e73656c65637461626c65223e0a3c74682077696474683d22352522206e6f777261703d2231222020636c6173733d226669727374223e3c7370616e3e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f47656e6572696342726f777365722537436167656e646126253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f47656e6572696342726f777365722537436167656e64615f6368616e67655f6f726465723d446f6e65272c2027272c202727293b22203e446f6e653c2f613e3c2f7370616e3e3c2f74683e0a3c74682077696474683d2231352522206e6f777261703d22312220203e3c7370616e3e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f47656e6572696342726f777365722537436167656e646126253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532465574696c735f4d657373656e67657225374331322532465574696c735f47656e6572696342726f777365722537436167656e64615f6368616e67655f6f726465723d5374617274272c2027272c202727293b22203e3c7370616e207374796c653d2270616464696e672d72696768743a20313270783b206d617267696e2d72696768743a20313270783b206261636b67726f756e642d696d6167653a2075726c28646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f736f72742d617363656e64696e672e706e67293b206261636b67726f756e642d7265706561743a206e6f2d7265706561743b206261636b67726f756e642d706f736974696f6e3a2072696768743b223e53746172743c2f7370616e3e3c2f613e3c2f7370616e3e3c2f74683e0a3c74682077696474683d2238302522206e6f777261703d2231222020636c6173733d226c617374223e3c7370616e3e496e666f3c2f7370616e3e3c2f74683e0a3c2f74723e3c2f74686561643e0a3c74626f64793e0a3c2f74626f64793e0a3c2f7461626c653e0a0a090909090a0a090909090909090909090909093c7461626c652069643d225574696c735f47656e6572696342726f777365725f5f6e617669676174696f6e2220636c6173733d226e6f6e73656c65637461626c652220626f726465723d2230222063656c6c73706163696e673d2230222063656c6c70616464696e673d2230223e0a0909090909093c747220636c6173733d226e61765f6261636b67726f756e64223e0a090909090909093c7464207374796c653d22746578742d616c69676e3a206c6566743b2077696474683a203170783b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a09090909090909090909090909093c746420636c6173733d226e61765f73756d6d61727922206e6f777261703e266e6273703b266e6273703b266e6273703b4e6f207265636f72647320666f756e64266e6273703b266e6273703b266e6273703b3c2f74643e0a09090909090909090909090909093c7464207374796c653d2277696474683a333025223e3c2f74643e0a090909090909093c746420636c6173733d226e61765f706167696e22206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090a090909090909093c2f74643e0a090909090909093c746420636c6173733d226e61765f7065725f7061676522206e6f77726170207374796c653d2277696474683a203170783b20746578742d616c69676e3a2072696768743b2077686974652d73706163653a206e6f777261703b223e0a0909090909090909090909090909093c2f74643e0a0909090909093c2f74723e0a09090909093c2f7461626c653e0a090909090a090909090909093c2f6469763e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e0a0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a35323a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f4d657373656e6765727c3132223b7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f436f6e74616374737c3136223b613a333a7b733a353a2276616c7565223b733a37373a223c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f436f6e74616374737c31367c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a37373a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f436f6e74616374737c31362f5574696c735f5265636f726442726f777365727c636f6e74616374223b613a333a7b733a353a2276616c7565223b733a3130353a223c7370616e2069643d222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f436f6e74616374737c31362f5574696c735f5265636f726442726f777365727c636f6e746163747c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f436f6e74616374737c3136223b7d733a3130363a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f436f6e74616374737c31362f5574696c735f5265636f726442726f777365727c636f6e746163742f5574696c735f47656e6572696342726f777365727c636f6e74616374223b613a333a7b733a353a2276616c7565223b733a393438393a220a3c6469763e0a0a0a0a3c64697620636c6173733d227461626c65223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22637373335f636f6e74656e745f736861646f77223e0a0909093c64697620636c6173733d226d617267696e327078223e0a090909090a090909093c7461626c6520636c6173733d225574696c735f47656e6572696342726f77736572222063656c6c73706163696e673d2230222063656c6c70616464696e673d223022207374796c653d2277696474683a313030253b7461626c652d6c61796f75743a66697865643b6f766572666c6f773a68696464656e3b746578742d6f766572666c6f773a656c6c69707369733b223e0a3c74686561643e3c747220636c6173733d226e6f6e73656c65637461626c65223e0a3c7468207374796c653d2277696474683a20333870783b2220636c6173733d226669727374223e3c7370616e3e3c7370616e3e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f74683e0a3c74682077696474683d2233332522206e6f777261703d22312220203e3c7370616e3e4c617374204e616d653c2f7370616e3e3c2f74683e0a3c74682077696474683d2233332522206e6f777261703d22312220203e3c7370616e3e4669727374204e616d653c2f7370616e3e3c2f74683e0a3c74682077696474683d2233332522206e6f777261703d2231222020636c6173733d226c617374223e3c7370616e3e436f6d70616e79204e616d653c2f7370616e3e3c2f74683e0a3c2f74723e3c2f74686561643e0a3c74626f64793e0a3c74723e0a3c7464206e6f777261703d226e6f777261702220636c6173733d225574696c735f47656e6572696342726f777365725f5f7464223e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d224564697422206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3025324643524d5f436f6e746163747325374331362532465574696c735f5265636f726442726f77736572253743636f6e7461637426253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3025324643524d5f436f6e746163747325374331362532465574696c735f5265636f726442726f77736572253743636f6e746163745f63616c6c6261636b5f37623739376433646566336265643432366562393436316138356530663962623d31272c2027272c202727293b22203e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f656469742e706e672220626f726465723d2230223e3c2f613e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22266c743b5441424c452057494454483d2671756f743b3238302671756f743b2063656c6c70616464696e673d2671756f743b322671756f743b2667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b576f726b2050686f6e65266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b4d6f62696c652050686f6e65266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b486f6d652050686f6e65266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b466178266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b456d61696c266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b77616e67687569313938383331403132362e636f6d266c743b2f54442667743b266c743b2f54522667743b266c743b2f5441424c452667743b266c743b6872202f2667743b266c743b5441424c452057494454483d2671756f743b3238302671756f743b2063656c6c70616464696e673d2671756f743b322671756f743b2667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b5265636f72642049443a266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b31266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b437265617465642062793a266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b266c743b61202020687265663d2671756f743b6a6176617363726970743a766f69642830292671756f743b206f6e436c69636b3d2671756f743b5f63686a28275f5f6a756d705f746f5f52425f7461626c653d636f6e7461637426616d703b5f5f6a756d705f746f5f52425f7265636f72643d3126616d703b5f5f6a756d705f746f5f52425f616374696f6e3d76696577272c2027272c202727293b2671756f743b202667743b266c743b7370616e20206f6e4d6f7573654d6f76653d2671756f743b696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f6c6f61645f616a61785f54697028746869732c6576656e742c333030292671756f743b207469703d2671756f743b266c743b63656e7465722667743b266c743b696d67207372633d646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f546f6f6c7469702f6c6f616465722e676966202f2667743b266c743b62722f2667743b4c6f6164696e672e2e2e266c743b2f63656e7465722667743b2671756f743b20746f6f6c7469705f69643d2671756f743b312671756f743b206f6e4d6f7573654f75743d2671756f743b696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f6869646554697028292671756f743b206f6e4d6f75736555703d2671756f743b696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f6869646554697028292671756f743b202667743b6875692077616e67266c743b2f7370616e2667743b266c743b2f612667743b266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b43726561746564206f6e3a266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b31312f31342f323031322030313a30383a303920504d266c743b2f54442667743b266c743b2f54522667743b266c743b2f5441424c452667743b22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f6869646554697028292220203e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f696e666f2e706e672220626f726465723d2230223e3c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022206e6f777261703e3c61202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f6a756d705f746f5f52425f7461626c653d636f6e74616374265f5f6a756d705f746f5f52425f7265636f72643d31265f5f6a756d705f746f5f52425f616374696f6e3d76696577272c2027272c202727293b22203e6875693c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022206e6f777261703e3c61202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f6a756d705f746f5f52425f7461626c653d636f6e74616374265f5f6a756d705f746f5f52425f7265636f72643d31265f5f6a756d705f746f5f52425f616374696f6e3d76696577272c2027272c202727293b22203e77616e673c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022206e6f777261703e3c61202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f6a756d705f746f5f52425f7461626c653d636f6d70616e79265f5f6a756d705f746f5f52425f7265636f72643d31265f5f6a756d705f746f5f52425f616374696f6e3d76696577272c2027272c202727293b22203e68616e6b2e636f6d3c2f613e3c2f74643e0a3c2f74723e0a3c74723e0a3c7464206e6f777261703d226e6f777261702220636c6173733d225574696c735f47656e6572696342726f777365725f5f7464223e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d224564697422206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3025324643524d5f436f6e746163747325374331362532465574696c735f5265636f726442726f77736572253743636f6e7461637426253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f3025324643524d5f436f6e746163747325374331362532465574696c735f5265636f726442726f77736572253743636f6e746163745f63616c6c6261636b5f62363261613563353337346163653666636661346539643236346663643833373d31272c2027272c202727293b22203e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f656469742e706e672220626f726465723d2230223e3c2f613e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22266c743b5441424c452057494454483d2671756f743b3238302671756f743b2063656c6c70616464696e673d2671756f743b322671756f743b2667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b576f726b2050686f6e65266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b4d6f62696c652050686f6e65266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b486f6d652050686f6e65266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b466178266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b456d61696c266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b68616e6b2e68756977616e6740676d61696c2e636f6d266c743b2f54442667743b266c743b2f54522667743b266c743b2f5441424c452667743b266c743b6872202f2667743b266c743b5441424c452057494454483d2671756f743b3238302671756f743b2063656c6c70616464696e673d2671756f743b322671756f743b2667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b5265636f72642049443a266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b32266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b437265617465642062793a266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b266c743b61202020687265663d2671756f743b6a6176617363726970743a766f69642830292671756f743b206f6e436c69636b3d2671756f743b5f63686a28275f5f6a756d705f746f5f52425f7461626c653d636f6e7461637426616d703b5f5f6a756d705f746f5f52425f7265636f72643d3126616d703b5f5f6a756d705f746f5f52425f616374696f6e3d76696577272c2027272c202727293b2671756f743b202667743b266c743b7370616e20206f6e4d6f7573654d6f76653d2671756f743b696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f6c6f61645f616a61785f54697028746869732c6576656e742c333030292671756f743b207469703d2671756f743b266c743b63656e7465722667743b266c743b696d67207372633d646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f546f6f6c7469702f6c6f616465722e676966202f2667743b266c743b62722f2667743b4c6f6164696e672e2e2e266c743b2f63656e7465722667743b2671756f743b20746f6f6c7469705f69643d2671756f743b312671756f743b206f6e4d6f7573654f75743d2671756f743b696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f6869646554697028292671756f743b206f6e4d6f75736555703d2671756f743b696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f6869646554697028292671756f743b202667743b6875692077616e67266c743b2f7370616e2667743b266c743b2f612667743b266c743b2f54442667743b266c743b2f54522667743b266c743b54522667743b266c743b54442057494454483d2671756f743b39302671756f743b2667743b266c743b5354524f4e472667743b43726561746564206f6e3a266c743b2f5354524f4e472667743b266c743b2f54442667743b266c743b5444206267636f6c6f723d2671756f743b77686974652671756f743b207374796c653d2671756f743b776f72642d777261703a20627265616b2d776f72643b2671756f743b2667743b31312f31342f323031322030313a32333a313720504d266c743b2f54442667743b266c743b2f54522667743b266c743b2f5441424c452667743b22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f6869646554697028292220203e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f696e666f2e706e672220626f726465723d2230223e3c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022206e6f777261703e3c61202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f6a756d705f746f5f52425f7461626c653d636f6e74616374265f5f6a756d705f746f5f52425f7265636f72643d32265f5f6a756d705f746f5f52425f616374696f6e3d76696577272c2027272c202727293b22203e7a3c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022206e6f777261703e3c61202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f6a756d705f746f5f52425f7461626c653d636f6e74616374265f5f6a756d705f746f5f52425f7265636f72643d32265f5f6a756d705f746f5f52425f616374696f6e3d76696577272c2027272c202727293b22203e6c6c3c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022206e6f777261703e3c61202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f6a756d705f746f5f52425f7461626c653d636f6d70616e79265f5f6a756d705f746f5f52425f7265636f72643d32265f5f6a756d705f746f5f52425f616374696f6e3d76696577272c2027272c202727293b22203e6170706c65266e6273703b636f6d70616e793c2f613e3c2f74643e0a3c2f74723e0a3c2f74626f64793e0a3c2f7461626c653e0a0a090909090a0a09090909090909090a090909090909093c2f6469763e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e0a0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a37373a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f43524d5f436f6e74616374737c31362f5574696c735f5265636f726442726f777365727c636f6e74616374223b7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f43616c637c3130223b613a333a7b733a353a2276616c7565223b733a323431333a223c6469762069643d2263616c63223e0a2020202020202020202020203c63656e7465723e0a2020202020202020202020203c666f726d206e616d653d2243616c63223e0a2020202020202020202020203c7461626c6520626f726465723d2230223e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c74643e0a2020202020202020202020202020202020202020202020203c696e70757420636c6173733d22746578742220747970653d227465787422206e616d653d22496e707574222053697a653d223136223e0a2020202020202020202020202020202020202020202020203c62723e0a20202020202020202020202020202020202020203c2f74643e0a202020202020202020202020202020203c2f74723e0a202020202020202020202020202020203c74723e0a20202020202020202020202020202020202020203c74643e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d226f6e652220202076616c75653d22202031202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565202b3d20273127223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d2274776f2220202076616c75653d22202032202022204f6e434c69636b3d2243616c632e496e7075742e76616c7565202b3d20273227223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d227468726565222076616c75653d22202033202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565202b3d20273327223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d22706c757322202076616c75653d2220202b202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565202b3d2027202b2027223e3c62723e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d22666f757222202076616c75653d22202034202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565202b3d20273427223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d226669766522202076616c75653d22202035202022204f6e434c69636b3d2243616c632e496e7075742e76616c7565202b3d20273527223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d227369782220202076616c75653d22202036202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565202b3d20273627223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d226d696e7573222076616c75653d2220202d202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565202b3d2027202d2027223e3c62723e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d22736576656e222076616c75653d22202037202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565202b3d20273727223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d226569676874222076616c75653d22202038202022204f6e434c69636b3d2243616c632e496e7075742e76616c7565202b3d20273827223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d226e696e6522202076616c75653d22202039202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565202b3d20273927223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d2274696d6573222076616c75653d22202078202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565202b3d2027202a2027223e3c62723e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d22636c656172222076616c75653d22202063202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565203d202727223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d227a65726f22202076616c75653d22202030202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565202b3d20273027223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d22446f497422202076616c75653d2220203d202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565203d206576616c2843616c632e496e7075742e76616c756529223e0a2020202020202020202020202020202020202020202020203c696e70757420747970653d22627574746f6e2220636c6173733d226b657922206e616d653d226469762220202076616c75653d2220202f202022204f6e436c69636b3d2243616c632e496e7075742e76616c7565202b3d2027202f2027223e0a20202020202020202020202020202020202020203c2f74643e0a202020202020202020202020202020203c2f74723e0a2020202020202020202020203c2f7461626c653e0a2020202020202020202020203c2f666f726d3e0a2020202020202020202020203c2f63656e7465723e0a20202020202020203c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a35343a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4d6f6e7468566965777c3133223b613a333a7b733a353a2276616c7565223b733a31323935373a223c6469762069643d22646174657069636b65725f7765656b5f73656c6563746f725f63616c656e6461722220636c6173733d227574696c735f706f70757063616c656e6461725f706f70757022207374796c653d22646973706c61793a6e6f6e653b7a2d696e6465783a323035303b77696474683a3170783b223e3c212d2d2053484144495720424547494e202d2d3e0a093c64697620636c6173733d226c6179657222207374796c653d2270616464696e673a20313070783b2077696474683a2032323070783b206d617267696e2d6c6566743a202d373070783b223e0a09093c64697620636c6173733d22636f6e74656e745f736861646f77223e0a3c212d2d202d2d3e0a0a3c212d2d3c696672616d65207374796c653d22626f726465723a203070783b2077696474683a2032323070783b206261636b67726f756e642d636f6c6f723a2077686974653b223e3c2f696672616d653e2d2d3e0a0a3c6469762069643d225574696c735f506f70757043616c656e646172223e3c7461626c652063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d2230223e3c74723e3c74642069643d22646174657069636b65725f7765656b5f73656c6563746f725f686561646572223e6572726f723c2f74643e3c2f74723e3c74723e3c74642069643d22646174657069636b65725f7765656b5f73656c6563746f725f76696577223e63616c656e646172206e6f74206c6f616465643c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e0a0a3c212d2d20534841444f5720454e44202d2d3e0a2009093c2f6469763e0a09093c64697620636c6173733d22736861646f772d746f70223e0a0909093c64697620636c6173733d226c656674223e3c2f6469763e0a0909093c64697620636c6173733d2263656e746572223e3c2f6469763e0a0909093c64697620636c6173733d227269676874223e3c2f6469763e0a09093c2f6469763e0a09093c64697620636c6173733d22736861646f772d6d6964646c65223e0a0909093c64697620636c6173733d226c656674223e3c2f6469763e0a0909093c64697620636c6173733d227269676874223e3c2f6469763e0a09093c2f6469763e0a09093c64697620636c6173733d22736861646f772d626f74746f6d223e0a0909093c64697620636c6173733d226c656674223e3c2f6469763e0a0909093c64697620636c6173733d2263656e746572223e3c2f6469763e0a0909093c64697620636c6173733d227269676874223e3c2f6469763e0a09093c2f6469763e0a093c2f6469763e0a3c212d2d202d2d3e3c2f6469763e3c63656e7465723e0d0a3c64697620636c6173733d226d6f6e74682d6170706c65742d6d656e75223e0d0a09093c7461626c6520626f726465723d22302220636c6173733d226d6f6e74682d6170706c65742d6d656e75223e0d0a0909093c74723e0d0a090909093c74643e3c6120636c6173733d22627574746f6e222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532464170706c6574735f4d6f6e746856696577253743313326253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532464170706c6574735f4d6f6e74685669657725374331335f646174653d323031322d31302d3135272c2027272c202727293b22203e3c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f43616c656e6461722f707265762e706e67223e3c2f613e3c2f74643e0d0a090909093c74643e3c6120636c6173733d22627574746f6e222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532464170706c6574735f4d6f6e746856696577253743313326253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532464170706c6574735f4d6f6e74685669657725374331335f646174653d323031322d31312d3134272c2027272c202727293b22203e3c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f43616c656e6461722f746869732e706e67223e3c2f613e3c2f74643e0d0a090909093c74643e3c6120636c6173733d22627574746f6e222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532464170706c6574735f4d6f6e746856696577253743313326253246426173655f426f7825374330253246426173655f44617368626f6172642537436d61696e5f302532464170706c6574735f4d6f6e74685669657725374331335f646174653d323031322d31322d3135272c2027272c202727293b22203e3c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f43616c656e6461722f6e6578742e706e67223e3c2f613e3c2f74643e0d0a090909093c746420636c6173733d2273656c6563745f646174655f64617368626f617264223e3c6120636c6173733d22627574746f6e22206f6e436c69636b3d2276617220706f7075703d242827646174657069636b65725f7765656b5f73656c6563746f725f63616c656e64617227293b706f7075702e636c6f6e65506f736974696f6e2827646174657069636b65725f7765656b5f73656c6563746f725f627574746f6e272c7b73657457696474683a66616c73652c7365744865696768743a66616c73652c6f6666736574546f703a242827646174657069636b65725f7765656b5f73656c6563746f725f627574746f6e27292e67657448656967687428297d293b3b242827646174657069636b65725f7765656b5f73656c6563746f725f63616c656e64617227292e746f67676c6528292220687265663d226a6176617363726970743a766f6964283029222069643d22646174657069636b65725f7765656b5f73656c6563746f725f627574746f6e223e266e6273703b266e6273703b3c696d67207374796c653d22766572746963616c2d616c69676e3a206d6964646c653b22207372633d646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f506f70757043616c656e6461722f73656c6563742e706e673e3c2f613e3c2f74643e0d0a090909093c212d2d203c7464207374796c653d2277696474683a20313070783b223e3c2f74643e0d0a090909093c74643e3c6120636c6173733d22627574746f6e22207374796c653d2277696474683a20383070783b223e3c696d6720626f726465723d2230222077696474683d22323022206865696768743d22323022207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f43616c656e6461722f3478332e706e6722207374796c653d22766572746963616c2d616c69676e3a206d6964646c653b2070616464696e673a203070783b206d617267696e2d6c6566743a20313070783b20646973706c61793a20626c6f636b3b20666c6f61743a206c6566743b2077696474683a20323070783b206865696768743a20323070783b223e34207820333c2f613e3c2f74643e202d2d3e0d0a0909093c2f74723e0d0a09093c2f7461626c653e0d0a3c2f6469763e0d0a0d0a0d0a0d0a3c7461626c6520626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d223522207374796c653d226261636b67726f756e642d636f6c6f723a20234646464646463b223e0d0a0d0a093c74723e09093c7464207374796c653d22766572746963616c2d616c69676e3a20746f70223e0d0a2020202020202020202020203c7461626c65206e616d653d2243524d43616c656e646172222069643d225574696c735f43616c656e6461725f5f79656172222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0d0a202020202020202020202020093c74723e0d0a20202020202020202020202009093c746420636c6173733d226865616465722d6d6f6e74682220636f6c7370616e3d2238223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532393038383030267377697463685f746f5f7461623d4d6f6e746826626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e4e6f76656d626572202662756c6c3b20323031323c2f613e3c2f74643e0d0a202020202020202020202020093c2f74723e0d0a202020202020202020202020093c74723e0d0a20202020202020202020202009093c746420636c6173733d227765656b2d6e756d626572223e266e6273703b3c2f74643e0d0a20202020202020202020202009092020202020202020202020200909093c746420636c6173733d22686561646572223e53756e3c2f74643e0d0a20202020202020202020202009092020202020202020202020200909093c746420636c6173733d22686561646572223e4d6f6e3c2f74643e0d0a20202020202020202020202009092020202020202020202020200909093c746420636c6173733d22686561646572223e5475653c2f74643e0d0a20202020202020202020202009092020202020202020202020200909093c746420636c6173733d22686561646572223e5765643c2f74643e0d0a20202020202020202020202009092020202020202020202020200909093c746420636c6173733d22686561646572223e5468753c2f74643e0d0a20202020202020202020202009092020202020202020202020200909093c746420636c6173733d22686561646572223e4672693c2f74643e0d0a20202020202020202020202009092020202020202020202020200909093c746420636c6173733d22686561646572223e5361743c2f74643e0d0a2020202020202020202020200909202020202020202020202020093c2f74723e0d0a2020202020202020202020200920202020202020202020202009093c74723e0d0a2020202020202020202020200909093c746420636c6173733d227765656b2d6e756d626572223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333531333533363030267377697463685f746f5f7461623d5765656b26626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e34333c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d22646179206f746865725f7765656b656e64223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333531333533363030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32383c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d22646179206f74686572223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333531343430303030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32393c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d22646179206f74686572223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333531353236343030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e33303c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d22646179206f74686572223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333531363132383030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e33313c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333531363939323030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e313c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333531373835363030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e323c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e745f7765656b656e64223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333531383732303030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e333c2f613e3c2f74643e0d0a20202020202020202020202009090920202020202020202020202009093c2f74723e0d0a2020202020202020202020200920202020202020202020202009093c74723e0d0a2020202020202020202020200909093c746420636c6173733d227765656b2d6e756d626572223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333531393538343030267377697463685f746f5f7461623d5765656b26626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e34343c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e745f7765656b656e64223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333531393538343030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e343c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532303434383030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e353c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532313331323030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e363c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532323137363030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e373c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532333034303030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e383c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532333930343030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e393c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e745f7765656b656e64223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532343736383030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e31303c2f613e3c2f74643e0d0a20202020202020202020202009090920202020202020202020202009093c2f74723e0d0a2020202020202020202020200920202020202020202020202009093c74723e0d0a2020202020202020202020200909093c746420636c6173733d227765656b2d6e756d626572223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532353633323030267377697463685f746f5f7461623d5765656b26626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e34353c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e745f7765656b656e64223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532353633323030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e31313c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532363439363030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e31323c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532373336303030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e31333c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d2264617920746f646179223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532383232343030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e31343c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532393038383030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e31353c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333532393935323030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e31363c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e745f7765656b656e64223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533303831363030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e31373c2f613e3c2f74643e0d0a20202020202020202020202009090920202020202020202020202009093c2f74723e0d0a2020202020202020202020200920202020202020202020202009093c74723e0d0a2020202020202020202020200909093c746420636c6173733d227765656b2d6e756d626572223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533313638303030267377697463685f746f5f7461623d5765656b26626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e34363c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e745f7765656b656e64223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533313638303030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e31383c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533323534343030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e31393c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533333430383030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32303c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533343237323030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32313c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533353133363030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32323c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533363030303030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32333c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e745f7765656b656e64223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533363836343030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32343c2f613e3c2f74643e0d0a20202020202020202020202009090920202020202020202020202009093c2f74723e0d0a2020202020202020202020200920202020202020202020202009093c74723e0d0a2020202020202020202020200909093c746420636c6173733d227765656b2d6e756d626572223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533373732383030267377697463685f746f5f7461623d5765656b26626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e34373c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e745f7765656b656e64223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533373732383030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32353c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533383539323030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32363c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333533393435363030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32373c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333534303332303030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32383c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333534313138343030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e32393c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d226461792063757272656e74223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333534323034383030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e33303c2f613e3c2f74643e0d0a202020202020202020202020090909202020202020202020202020090909093c746420636c6173733d22646179206f746865725f7765656b656e64223e3c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28276a756d705f746f5f646174653d31333534323931323030267377697463685f746f5f7461623d44617926626f785f6d61696e5f687265663d3364393432653439633962323432393439343539313132613738666464643239272c2027272c202727293b22203e313c2f613e3c2f74643e0d0a20202020202020202020202009090920202020202020202020202009093c2f74723e0d0a202020202020202020202020092020202020202020202020203c2f7461626c653e0d0a09093c2f74643e0d0a090d0a202020200d0a0d0a0d0a3c2f7461626c653e0d0a093c2f63656e7465723e0d223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d733a36373a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4d6f6e7468566965777c31332f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a35343a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4d6f6e7468566965777c3133223b7d733a34393a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4e6f74657c3134223b613a333a7b733a353a2276616c7565223b733a36353a223c6469762069643d224170706c6574735f4e6f7465223e3c64697620636c6173733d226e6f74652d6e6963652079656c6c6f77223e3c2f6469763e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b7d7d733a31323a22637573746f6d5f6465627567223b733a303a22223b733a31343a225f5f686973746f72795f69645f5f223b693a333b7d);
INSERT INTO `session_client` (`session_name`, `client_id`, `data`) VALUES
('njmveib0m1rriuolc3ee87n2t4', 1, 0x613a31343a7b733a31353a225f5f6d6f64756c655f766172735f5f223b613a32353a7b733a32343a222f426173655f426f787c302f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a31313a222f426173655f426f787c30223b613a323a7b733a343a226d61696e223b613a313a7b693a303b613a323a7b733a363a226d6f64756c65223b733a31303a22426173655f41646d696e223b733a343a226e616d65223b733a363a226d61696e5f30223b7d7d733a31323a225f5f68726566735f67635f5f223b693a313b7d733a35353a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f54616262656442726f777365727c30223b613a333a7b733a353a22666f726365223b4e3b733a343a2270616765223b693a303b733a393a226c6173745f70616765223b693a2d313b7d733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34363a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e2f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33393a222f426173655f426f787c302f426173655f4d656e757c6d656e752f5574696c735f4d656e757c30223b613a333a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a333a226f6c64223b733a33323a226634366234336161333061356635623439353535623437383932313831653839223b7d733a33393a222f426173655f426f787c302f426173655f4d656e757c717569636b5f6163636573735f6d656e75223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33303a222f426173655f426f787c302f426173655f5365617263687c736561726368223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34333a222f426173655f426f787c302f426173655f5365617263687c7365617263682f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33333a222f426173655f426f787c302f426173655f5374617475734261727c737461747573223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e6261722f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c31223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a35323a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f72223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a36353a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f722f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33303a222f426173655f426f787c302f43524d5f46696c746572737c66696c746572223b613a353a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a333a7b733a34313a2263616c6c6261636b5f6264343332646431303364326661646337373230623037613066393066383536223b613a323a7b733a343a2266756e63223b613a323a7b693a303b733a31373a2243524d5f46696c74657273436f6d6d6f6e223b693a313b733a31313a227365745f70726f66696c65223b7d733a343a2261726773223b613a313a7b693a303b733a323a226d79223b7d7d733a34313a2263616c6c6261636b5f3161383262623264373664383237336237373039313538396135363537333666223b613a323a7b733a343a2266756e63223b613a323a7b693a303b733a31373a2243524d5f46696c74657273436f6d6d6f6e223b693a313b733a31313a227365745f70726f66696c65223b7d733a343a2261726773223b613a313a7b693a303b733a333a22616c6c223b7d7d733a34313a2263616c6c6261636b5f6664323334363538396331393531663432613235666339636138343535316536223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31343a226d616e6167655f66696c74657273223b7d733a343a2261726773223b613a303a7b7d7d7d733a34313a2263616c6c6261636b5f6664323334363538396331393531663432613235666339636138343535316536223b4e3b733a34313a2263616c6c6261636b5f3161383262623264373664383237336237373039313538396135363537333666223b4e3b733a34313a2263616c6c6261636b5f6264343332646431303364326661646337373230623037613066393066383536223b4e3b7d733a34313a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a35343a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f2f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a32393a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f30223b613a32323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a31383a7b733a34313a2263616c6c6261636b5f3964353630653462316638663132316636623564656634376365623039303034223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31303a22426173655f41646d696e223b7d7d733a34313a2263616c6c6261636b5f6536376665303737323337393161303463663666623539353639353363373030223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31303a224c6962735f5443504446223b7d7d733a34313a2263616c6c6261636b5f3463663364663465626165353830303034636338663835316261326136616164223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a383a22426173655f41636c223b7d7d733a34313a2263616c6c6261636b5f3035613838666536663435373937316330633732313964313737646664373130223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a393a22426173655f4d61696c223b7d7d733a34313a2263616c6c6261636b5f6137633337306231616562303833333337613437323938633230323037363664223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a32343a22426173655f5468656d655f41646d696e6973747261746f72223b7d7d733a34313a2263616c6c6261636b5f3931393031653562613938303735626236373537316366376639633039613463223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31383a22426173655f557365725f53657474696e6773223b7d7d733a34313a2263616c6c6261636b5f3136336137353738333734363837336139343936376635663036613939363934223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31393a225574696c735f43757272656e63794669656c64223b7d7d733a34313a2263616c6c6261636b5f3762643335326136323538656131383835333830343432653665633030663766223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31343a22426173655f44617368626f617264223b7d7d733a34313a2263616c6c6261636b5f6530663132376536633133333938303230303634316665343539613332643662223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31353a22426173655f457065736953746f7265223b7d7d733a34313a2263616c6c6261636b5f3232383231323462333539366264393461663463353832306662353639653037223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a32333a22426173655f4c616e675f41646d696e6973747261746f72223b7d7d733a34313a2263616c6c6261636b5f6261626435396339336234356339313465386235616336333163353034346565223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a32333a22426173655f557365725f41646d696e6973747261746f72223b7d7d733a34313a2263616c6c6261636b5f6435393335636233376138343432356266666635393766643565616430646335223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a32343a22426173655f4d61696e4d6f64756c65496e64696361746f72223b7d7d733a34313a2263616c6c6261636b5f3733396464646236393430346633323437636637613061366130396663633331223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31363a225574696c735f436f6d6d6f6e44617461223b7d7d733a34313a2263616c6c6261636b5f6436393636656262653935363931326461323733393432333235353035383338223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31343a22446174615f436f756e7472696573223b7d7d733a34313a2263616c6c6261636b5f6461303636323737326465393330663931303832343736653166366234333931223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31393a225574696c735f5265636f726442726f77736572223b7d7d733a34313a2263616c6c6261636b5f3335333465623464313435326331333561613533323732303034306439356134223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31363a225574696c735f4174746163686d656e74223b7d7d733a34313a2263616c6c6261636b5f3165626533306662646638343161633161653334363439393430376436653063223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31343a2243524d5f4c6f67696e4175646974223b7d7d733a34313a2263616c6c6261636b5f6363663761656533393832336233633139616632336266613464366534373464223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31333a2243524d5f526f756e6463756265223b7d7d7d733a31353a2273656c65637465645f6d6f64756c65223b733a31353a22426173655f457065736953746f7265223b733a343a2268726566223b4e3b733a34313a2263616c6c6261636b5f6363663761656533393832336233633139616632336266613464366534373464223b4e3b733a34313a2263616c6c6261636b5f3165626533306662646638343161633161653334363439393430376436653063223b4e3b733a34313a2263616c6c6261636b5f3335333465623464313435326331333561613533323732303034306439356134223b4e3b733a34313a2263616c6c6261636b5f6461303636323737326465393330663931303832343736653166366234333931223b4e3b733a34313a2263616c6c6261636b5f6436393636656262653935363931326461323733393432333235353035383338223b4e3b733a34313a2263616c6c6261636b5f3733396464646236393430346633323437636637613061366130396663633331223b4e3b733a34313a2263616c6c6261636b5f6435393335636233376138343432356266666635393766643565616430646335223b4e3b733a34313a2263616c6c6261636b5f6261626435396339336234356339313465386235616336333163353034346565223b4e3b733a34313a2263616c6c6261636b5f3232383231323462333539366264393461663463353832306662353639653037223b4e3b733a34313a2263616c6c6261636b5f3762643335326136323538656131383835333830343432653665633030663766223b4e3b733a34313a2263616c6c6261636b5f3136336137353738333734363837336139343936376635663036613939363934223b4e3b733a34313a2263616c6c6261636b5f3931393031653562613938303735626236373537316366376639633039613463223b4e3b733a34313a2263616c6c6261636b5f6137633337306231616562303833333337613437323938633230323037363664223b4e3b733a34313a2263616c6c6261636b5f3035613838666536663435373937316330633732313964313737646664373130223b4e3b733a34313a2263616c6c6261636b5f3463663364663465626165353830303034636338663835316261326136616164223b4e3b733a34313a2263616c6c6261636b5f6536376665303737323337393161303463663666623539353639353363373030223b4e3b733a34313a2263616c6c6261636b5f3964353630653462316638663132316636623564656634376365623039303034223b4e3b733a34313a2263616c6c6261636b5f6530663132376536633133333938303230303634316665343539613332643662223b4e3b7d733a34373a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f426173655f457065736953746f72657c30223b613a363a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a333a7b733a34313a2263616c6c6261636b5f6663393239373162616234333935373233376136323533626135373138366638223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32353a22646973706c61795f726567697374726174696f6e5f666f726d223b7d733a343a2261726773223b613a303a7b7d7d733a34313a2263616c6c6261636b5f3236316333313130383439346462303032623437666262613061356531373230223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a22646973706c61795f696e766f69636573223b7d733a343a2261726773223b613a303a7b7d7d733a34313a2263616c6c6261636b5f6539316537393262383738396439626336343835363630303662643738383962223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31333a227377697463685f73696d706c65223b7d733a343a2261726773223b613a313a7b693a303b623a313b7d7d7d733a31303a2266696c7465725f736574223b623a313b733a34313a2263616c6c6261636b5f6663393239373162616234333935373233376136323533626135373138366638223b733a313a2231223b733a34313a2263616c6c6261636b5f6539316537393262383738396439626336343835363630303662643738383962223b4e3b733a34313a2263616c6c6261636b5f3236316333313130383439346462303032623437666262613061356531373230223b4e3b7d733a31343a22426173652f457373436c69656e74223b613a303a7b7d733a36343a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f426173655f457065736953746f72657c302f426173655f457373436c69656e747c30223b613a333a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a313a7b733a34313a2263616c6c6261636b5f3831613366383064636664623938393434653831393231393937303534303135223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31363a226c6963656e73655f6b65795f666f726d223b7d733a343a2261726773223b613a303a7b7d7d7d733a31363a22745f616e645f635f6163636570746564223b4e3b7d7d733a31353a225f5f6c6f616465645f6a7365735f5f223b613a33323a7b733a34393a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f7363726970746163756c6f75732e6a73223b623a313b733a34333a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f6275696c6465722e6a73223b623a313b733a34333a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f656666656374732e6a73223b623a313b733a34343a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f6472616764726f702e6a73223b623a313b733a34343a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f636f6e74726f6c732e6a73223b623a313b733a34323a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f736c696465722e6a73223b623a313b733a34313a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f736f756e642e6a73223b623a313b733a35383a226d6f64756c65732f4c6962732f517569636b466f726d2f4669656c6454797065732f6175746f73656c6563742f6175746f73656c6563742e6a73223b623a313b733a33333a226d6f64756c65732f546f6f6c732f53657373696f6e4b65657065722f736b2e6a73223b623a313b733a33373a226d6f64756c65732f5574696c732f53686f72746375742f6a732f53686f72746375742e6a73223b623a313b733a33353a226d6f64756c65732f5574696c732f546f6f6c7469702f6a732f546f6f6c7469702e6a73223b623a313b733a34393a226d6f64756c65732f5574696c732f47656e6572696342726f777365722f6a732f7461626c655f6f766572666c6f772e6a73223b623a313b733a32383a226d6f64756c65732f426173652f44617368626f6172642f61622e6a73223b623a313b733a36353a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656661756c742e6a73223b623a313b733a34363a226d6f64756c65732f4c6962732f517569636b466f726d2f52656e64657265722f54434d5344656661756c742e6a73223b623a313b733a33353a226d6f64756c65732f5574696c732f5265636f726442726f777365722f6d61696e2e6a73223b623a313b733a33343a226d6f64756c65732f4170706c6574732f436c6f636b2f636f6f6c636c6f636b2e6a73223b623a313b733a32393a226d6f64756c65732f5574696c732f4d656e752f6a732f6d656e752e6a73223b623a313b733a33333a226d6f64756c65732f426173652f5374617475734261722f6a732f6d61696e2e6a73223b623a313b733a33353a226d6f64756c65732f4c6962732f4c6569676874626f782f6c6569676874626f782e6a73223b623a313b733a35393a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4c6962732f4c6569676874626f782f64656661756c742e6a73223b623a313b733a34313a226d6f64756c65732f426173652f426f782f636865636b5f666f725f6e65775f76657273696f6e2e6a73223b623a313b733a35333a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f426f782f64656661756c742e6a73223b623a313b733a35353a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f53657475702f64656661756c742e6a73223b623a313b733a32393a226d6f64756c65732f426173652f53657475702f6a732f6d61696e2e6a73223b623a313b733a32393a226d6f64756c65732f5574696c732f547265652f6a732f747265652e6a73223b623a313b733a33343a226d6f64756c65732f5574696c732f54616262656442726f777365722f74625f2e6a73223b623a313b733a34313a226d6f64756c65732f426173652f457373436c69656e742f6d657373616765735f686964696e672e6a73223b623a313b733a36343a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f54616262656442726f777365722f64656661756c742e6a73223b623a313b733a33323a226d6f64756c65732f4c6962732f517569636b466f726d2f73656c6563742e6a73223b623a313b733a33303a226d6f64756c65732f5574696c732f436f6d6d6f6e446174612f71662e6a73223b623a313b733a34313a226d6f64756c65732f4c6962732f436f646570726573732f302e392e362f636f646570726573732e6a73223b623a313b7d733a31363a225f5f6c6f616465645f63737365735f5f223b613a32323a7b733a33343a226d6f64756c65732f4c6962732f434b456469746f722f66726f6e74656e642e637373223b623a313b733a35393a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f546f6f6c7469702f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4c6962732f517569636b466f726d2f64656661756c742e637373223b623a313b733a36363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f64656661756c742e637373223b623a313b733a36313a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f417070732f53686f7574626f782f636861745f666f726d2e637373223b623a313b733a35373a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f43616c656e6461722f6167656e64612e637373223b623a313b733a35383a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4170706c6574732f4e6f74652f64656661756c742e637373223b623a313b733a36313a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f557365722f4c6f67696e2f64656661756c742e637373223b623a313b733a35363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f4d656e752f64656661756c742e637373223b623a313b733a35363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f5365617263682f5365617263682e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f5374617475734261722f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f416374696f6e4261722f64656661756c742e637373223b623a313b733a36323a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f416374696f6e4261722f6c61756e63687061642e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4c6962732f4c6569676874626f782f64656661756c742e637373223b623a313b733a37303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f64656661756c742e637373223b623a313b733a35373a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f64656661756c742e637373223b623a313b733a35343a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f426f782f64656661756c742e637373223b623a313b733a35363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f41646d696e2f64656661756c742e637373223b623a313b733a35363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f53657475702f64656661756c742e637373223b623a313b733a35363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f547265652f64656661756c742e637373223b623a313b733a36353a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f54616262656442726f777365722f64656661756c742e637373223b623a313b7d733a31353a225f5f6576616c65645f6a7365735f5f223b613a31343a7b733a33323a226165323237613837613165333738626336653033313137393139346666373163223b623a313b733a33323a223566653665643063613431366336323833313735343633653565663337366136223b623a313b733a33323a223166303639366238373430643532313431303833393565666466623732383133223b623a313b733a33323a226138656563333633366635343938613134653133666138306238373937653837223b623a313b733a33323a223239643966373266653431326331373938636161376331613838373736633537223b623a313b733a33323a223039616633633762396262316636363264353536346533306532333666393136223b623a313b733a33323a223963663564376239353661636362636365363938616433623932366462333835223b623a313b733a33323a223064336631343437646665393039333932613539373265333836316263376433223b623a313b733a33323a223432383962323139393663333432383365336233386163326139663338313034223b623a313b733a33323a223539656365373332326466343438303966653939373239613338356165613763223b623a313b733a33323a223964323131623263326333383630613736373866396264613339376330343434223b623a313b733a33323a226231623533376361303136653465333837386562663163323961376436383539223b623a313b733a33323a223333663131396132303032393836663830306636383939303330623039306439223b623a313b733a33323a223761363934663637323734623236313062663437613465396631336366356630223b623a313b7d733a31333a227574696c735f746f6f6c746970223b613a313a7b733a31303a226469765f657869737473223b623a313b7d733a32303a227574696c735f67656e6572696362726f77736572223b613a313a7b733a31303a226469765f657869737473223b623a313b7d733a343a2268656c70223b613a323a7b733a343a224d656e75223b613a323a7b693a303b623a303b693a313b733a32393a226d6f64756c65732f5574696c732f4d656e752f68656c702f696e646578223b7d733a31363a22416374696f6e42617220626173696373223b613a323a7b693a303b623a303b693a313b733a33323a226d6f64756c65732f426173652f416374696f6e4261722f68656c702f6d61696e223b7d7d733a31313a22696d6167655f6361636865223b623a313b733a393a22717569636b666f726d223b613a313a7b733a31323a226175746f636f6d706c657465223b613a323a7b733a33323a226331633939396231636630383734323233633630373534376163616664386565223b613a333a7b733a383a2263616c6c6261636b223b613a323a7b693a303b733a32353a2248544d4c5f517569636b466f726d5f6175746f73656c656374223b693a313b733a32373a226765745f6175746f636f6d706c6574655f73756767657374626f78223b7d733a353a226669656c64223b733a31303a22746f5f5f736561726368223b733a343a2261726773223b613a323a7b693a303b613a323a7b693a303b733a31393a22417070735f53686f7574626f78436f6d6d6f6e223b693a313b733a31313a22757365725f736561726368223b7d693a313b613a303a7b7d7d7d733a33323a226438306630313337653764303533303463343334383062653137326535666433223b613a333a7b733a383a2263616c6c6261636b223b613a323a7b693a303b733a32353a2248544d4c5f517569636b466f726d5f6175746f73656c656374223b693a313b733a32373a226765745f6175746f636f6d706c6574655f73756767657374626f78223b7d733a353a226669656c64223b733a32363a2263726d5f66696c7465725f636f6e746163745f5f736561726368223b733a343a2261726773223b613a323a7b693a303b613a323a7b693a303b733a31383a2243524d5f436f6e7461637473436f6d6d6f6e223b693a313b733a32393a226175746f73656c6563745f636f6e746163745f73756767657374626f78223b7d693a313b613a333a7b693a303b613a303a7b7d693a313b613a323a7b693a303b733a31383a2243524d5f436f6e7461637473436f6d6d6f6e223b693a313b733a32353a22636f6e746163745f666f726d61745f6e6f5f636f6d70616e79223b7d693a323b623a303b7d7d7d7d7d733a31343a22626173655f626f785f6872656673223b613a32363a7b733a33323a223534396266343738353161383362383437623361343761353461383761653931223b613a353a7b733a313a226d223b733a31333a22417070735f53686f7574626f78223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a226330626139316630376539653862336135646165666131626561333633363765223b613a353a7b733a313a226d223b733a393a2243524d5f5461736b73223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a226236376263376562613030346535633638316437653736373033343838396532223b613a353a7b733a313a226d223b733a31333a2243524d5f50686f6e6543616c6c223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a223365333661363633653735306365663863653539613065383864643364626536223b613a353a7b733a313a226d223b733a31323a2243524d5f43616c656e646172223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a223038653736323961363563303539326331663237653464353866653666633937223b613a353a7b733a313a226d223b733a31333a224170706c6574735f436c6f636b223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a313a7b693a303b733a393a2273776973735261696c223b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a223865323334613137336337306230343635666463346636373766373630646338223b613a323a7b733a313a226d223b733a31323a2243524d5f43616c656e646172223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226135633761306230656539376566646333656666366662366466643737643265223b613a323a7b733a313a226d223b733a31323a2243524d5f436f6e7461637473223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223862343431353961323532613132336537653534373962646366623632336635223b613a323a7b733a313a226d223b733a31313a2243524d5f4d656574696e67223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223738656634383463356365306264646335653636383737613964643666326463223b613a323a7b733a313a226d223b733a31333a2243524d5f50686f6e6543616c6c223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223434656531306165303436656438663265333236333963346335336336346630223b613a323a7b733a313a226d223b733a393a2243524d5f5461736b73223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226131663033323238653838636539353738623235356331623831366231376233223b613a323a7b733a313a226d223b733a31343a22426173655f44617368626f617264223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223437396133393836393061663463636632643632626363663266313236663465223b613a323a7b733a313a226d223b733a31333a2243524d5f526f756e6463756265223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226364346338393363366637366633323535623461373366393265623265373461223b613a333a7b733a313a226d223b733a31353a225574696c735f4d657373656e676572223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b733a313a2266223b733a363a2262726f777365223b7d733a33323a223138373234323131336264333532353531343433323963313665663439636661223b613a323a7b733a313a226d223b733a31393a22417070735f41637469766974795265706f7274223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226663656237353137393539636664383762613835323831656162303533303038223b613a323a7b733a313a226d223b733a31313a22426173655f536561726368223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226430303761653063633230373262393764653837386131353764343738653537223b613a323a7b733a313a226d223b733a31333a22417070735f53686f7574626f78223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226130663564393462343730313432343030333066616137376232643861656662223b613a323a7b733a313a226d223b733a31383a22426173655f557365725f53657474696e6773223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223337363639613966316636633735666631363237613732333265666437633332223b613a323a7b733a313a226d223b4e3b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223464653166363139326539633663653339646234613734376631646632356534223b613a323a7b733a313a226d223b733a31343a22426173655f457373436c69656e74223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223930323534336265643266323765616435393239326636633939383731383536223b613a333a7b733a313a226d223b733a31303a22426173655f41626f7574223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b733a313a2266223b733a343a22696e666f223b7d733a33323a223062373530356235646137623130643130353438386335383364626166323531223b613a323a7b733a313a226d223b733a31303a22426173655f41646d696e223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223734393238653032363439396661663166653238363539363264626563313235223b613a323a7b733a313a226d223b733a31323a2243524d5f43616c656e646172223b733a313a2270223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d733a33323a223636633934646330646665666364393465333534663331303639306434646263223b613a323a7b733a313a226d223b733a31323a2243524d5f436f6e7461637473223b733a313a2270223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d733a33323a226335316566396139393163653639343738393734316665656334633835353937223b613a323a7b733a313a226d223b733a393a2243524d5f5461736b73223b733a313a2270223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d733a33323a223438333036316530633733326433326561343232396439643362336634303835223b613a323a7b733a313a226d223b733a31303a2243524d5f417373657473223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223266393462616462356339353838326232323936333936613730656366313862223b613a323a7b733a313a226d223b733a373a2243524d5f466178223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d7d733a383a2266696c7465725f31223b613a323a7b733a353a2276616c7565223b733a313a2231223b733a343a2264657363223b733a31303a224d79207265636f726473223b7d733a31383a225f5f6d6f64756c655f636f6e74656e745f5f223b613a32333a7b733a31313a222f426173655f426f787c30223b613a333a7b733a353a2276616c7565223b733a343431373a220a0a093c6469762069643d22746f705f6261722220636c6173733d226e6f6e73656c65637461626c6522207374796c653d2277696474683a31303025223e0a09093c6469762069643d224d656e75426172223e0a09093c7461626c652069643d22746f705f6261725f31222063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d2230223e0a09093c74626f64793e0a0909093c74723e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a090909093c746420636c6173733d226d656e752d626172223e3c7370616e2069643d222f426173655f426f787c307c32636f6e74656e74223e3c2f7370616e3e3c2f74643e0a090909093c7464207374796c653d2220656d7074792d63656c6c733a20686964653b2077696474683a203770783b223e3c2f74643e0a090909093c746420636c6173733d22686f6d652d626172222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827426173655f486f6d65506167655f6c6f61643d31272c2027272c202727293b22203e0a09090909093c6469762069643d22686f6d652d62617231223e0a0909090909093c64697620636c6173733d22686f6d652d6261722d69636f6e223e3c2f6469763e0a0909090909093c64697620636c6173733d22686f6d652d6261722d74657874223e0a09090909090909486f6d650a0909090909093c2f6469763e0a09090909093c2f6469763e0a090909093c2f74643e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a09090909090909093c746420636c6173733d22746f705f6261725f626c61636b2066696c6c6572223e3c2f74643e0a090909093c746420636c6173733d22746f705f6261725f626c61636b20706f776572656422206e6f777261703d2231223e0a09090909093c6469763e0a0909090909093c6120687265663d22687474703a2f2f6570652e736922207461726765743d225f626c616e6b22207374796c653d22636f6c6f723a77686974653b223e3c623e45504553493c2f623e20706f77657265643c2f613e266e6273703b0a09090909093c2f6469763e0a09090909093c6469763e3c7370616e2069643d2265706573695f6e65775f76657273696f6e223e3c7370616e20206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3330302922207469703d22436865636b696e6720696620746865726520617265207570646174657320617661696c61626c652e2e2e22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e76657273696f6e20312e342e303c2f7370616e3e3c2f7370616e3e3c2f6469763e0a090909093c2f74643e0a0909090909090909093c746420636c6173733d22746f705f6261725f626c61636b20646f6e61746522206e6f777261703d2231223e3c7370616e20206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22266c743b63656e7465722667743b496620796f752066696e64206f757220736f6674776172652075736566756c2c20706c6561736520737570706f7274207573206279206d616b696e67206120646f6e6174696f6e2e266c743b62722667743b596f75722066756e64696e672077696c6c2068656c7020746f20656e7375726520636f6e74696e75656420646576656c6f706d656e74206f6620746869732070726f6a6563742e266c743b62722667743b436c69636b20666f722064657461696c732e266c743b2f63656e7465722667743b22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e3c61207461726765743d225f626c616e6b2220687265663d22687474703a2f2f6570652e73692f636f7374223e537570706f7274204550455349213c2f613e3c2f7370616e3e3c2f74643e0a09090909090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a090909093c746420636c6173733d22746f705f6261725f626c61636b20746f705f6261725f68656c70223e3c64697620636c6173733d2268656c70223e3c6120687265663d226d6f64756c65732f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702e7068703f6369643d3122207461726765743d225f626c616e6b22206f6e4d6f7573654f7665723d2224282768656c705f69636f6e27292e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2224282768656c705f69636f6e27292e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702e706e67273b223e3c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702e706e67222069643d2268656c705f69636f6e2220616c743d223f2220626f726465723d2230223e3c64697620636c6173733d2268656c705f6c6162656c223e48656c703c2f6469763e3c2f613e3c2f6469763e3c2f74643e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e090909090a090909093c746420636c6173733d22746f705f6261725f626c61636b206d6f64756c652d696e64696361746f72223e3c6469762069643d226d6f64756c652d696e64696361746f72223e3c7370616e2069643d222f426173655f426f787c307c38636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a0909093c2f74723e0a09093c2f74626f64793e0a09093c2f7461626c653e0a09093c2f6469763e0a09093c6469762069643d22536861646f7742617222207374796c653d22646973706c61793a206e6f6e653b223e3c2f6469763e0a09093c6469762069643d22416374696f6e426172223e0a0909093c7461626c652069643d22746f705f6261725f32222063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d2230223e0a0909093c74626f64793e0a090909093c74723e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a09090909093c746420636c6173733d226c6f676f223e3c64697620636c6173733d22736861646f775f637373335f6c6f676f5f626f72646572223e3c7370616e2069643d222f426173655f426f787c307c3130636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a09090909093c746420636c6173733d2269636f6e73223e0a0909090909093c64697620636c6173733d22736861646f775f637373335f69636f6e735f626f72646572223e0a090909090909093c7370616e2069643d222f426173655f426f787c307c36636f6e74656e74223e3c2f7370616e3e0a0909090909093c2f6469763e0a09090909093c2f74643e0a09090909093c74642069643d226c61756e63687061645f627574746f6e5f73656374696f6e5f73706163696e6722207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b20646973706c61793a6e6f6e653b223e3c2f74643e0a09090909093c746420636c6173733d2269636f6e735f6c61756e6368706164222069643d226c61756e63687061645f627574746f6e5f73656374696f6e22207374796c653d22646973706c61793a6e6f6e653b223e0a0909090909093c64697620636c6173733d22736861646f775f637373335f69636f6e735f6c61756e63687061645f626f72646572223e200a090909090909093c7370616e2069643d222f426173655f426f787c307c37636f6e74656e74223e3c2f7370616e3e0a0909090909093c2f6469763e0a09090909093c2f74643e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a09090909093c74642069643d226c6f67696e2d7365617263682d7464223e0a0909090909093c64697620636c6173733d22736861646f775f637373335f6c6f67696e2d7365617263682d74645f626f72646572223e0a09090909090909093c64697620636c6173733d226c6f67696e223e3c7370616e2069643d222f426173655f426f787c307c31636f6e74656e74223e3c2f7370616e3e3c2f6469763e0a09090909090909093c64697620636c6173733d22736561726368222069643d227365617263685f626f78223e3c7370616e2069643d222f426173655f426f787c307c34636f6e74656e74223e3c2f7370616e3e3c2f6469763e0a09090909090909093c64697620636c6173733d2266696c746572222069643d2266696c7465725f626f78223e3c7370616e2069643d222f426173655f426f787c307c39636f6e74656e74223e3c2f7370616e3e3c2f6469763e0a0909090909093c2f6469763e090a09090909093c2f74643e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a090909093c2f74723e0a0909093c2f74626f64793e0a0909093c2f7461626c653e0a09093c2f6469763e0a093c2f6469763e0a093c212d2d202d2d3e0a093c6469762069643d22636f6e74656e74223e0a09093c6469762069643d22636f6e74656e745f626f647922207374796c653d22746f703a20353070783b223e0a0909093c63656e7465723e3c7370616e2069643d222f426173655f426f787c307c30636f6e74656e74223e3c2f7370616e3e3c2f63656e7465723e0a09093c2f6469763e0a093c2f6469763e0a0a3c7370616e2069643d222f426173655f426f787c307c35636f6e74656e74223e3c2f7370616e3e0a0a0a3c7374796c6520747970653d22746578742f637373223e0a646976203e2064697623746f705f626172207b20706f736974696f6e3a2066697865643b7d0a646976203e2064697623626f74746f6d5f626172207b20706f736974696f6e3a2066697865643b7d0a3c2f7374796c653e0a0a0a0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b623a303b7d733a32343a222f426173655f426f787c302f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b613a333a7b733a353a2276616c7565223b733a323936333a223c64697620636c6173733d226c6f676765645f6173223e4c6f67676564206173203c2f62723e3c6220636c6173733d22677265656e223e61646d696e3c2f623e3c2f6469763e0a3c64697620636c6173733d226c6f676f75745f637373335f626f78223e3c6120636c6173733d226c6f676f75745f69636f6e222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f557365725f4c6f67696e2537436c6f67696e26253246426173655f426f7825374330253246426173655f557365725f4c6f67696e2537436c6f67696e5f6c6f676f75743d31272c2027272c202727293b22203e4c6f676f75743c64697620636c6173733d226c6f676f75745f69636f6e5f696d67223e3c2f6469763e3c2f613e3c2f6469763e0a0a0a0a0a0a0a3c7374796c6520747970653d22746578742f637373223e0a646976203e2064697623746f705f626172207b20706f736974696f6e3a2066697865643b7d0a646976203e2064697623626f74746f6d5f626172207b20706f736974696f6e3a2066697865643b7d0a3c2f7374796c653e0a0a3c212d2d5b69662067746520494520352e355d3e3c215b6966206c7420494520375d3e0a0a3c7374796c6520747970653d22746578742f637373223e0a23746f705f626172207b0a09706f736974696f6e3a206162736f6c7574653b0a0977696474683a2065787072657373696f6e282028626f64792e6f666673657457696474682d3230292b27707827293b0a7d0a23636f6e74656e745f626f6479207b0a0977696474683a2065787072657373696f6e282028626f64792e6f666673657457696474682d3230292b27707827293b0a7d0a0a23626f64795f636f6e74656e74207b0a09646973706c61793a20626c6f636b3b0a096865696768743a20313030253b0a096d61782d6865696768743a20313030253b0a096f766572666c6f772d783a2068696464656e3b0a096f766572666c6f772d793a206175746f3b0a09706f736974696f6e3a2072656c61746976653b0a097a2d696e6465783a20303b0a0977696474683a313030253b0a7d0a0a68746d6c207b206865696768743a20313030253b206d61782d6865696768743a20313030253b2070616464696e673a20303b206d617267696e3a20303b20626f726465723a20303b206f766572666c6f773a68696464656e3b202f2a67657420726964206f66207363726f6c6c206261727320696e204945202a2f207d0a626f6479207b206865696768743a20313030253b206d61782d6865696768743a20313030253b20626f726465723a20303b207d0a0a0a0a0a2e6c61796572202e6c6566742c0a2e6c61796572202e72696768742c0a2e6c61796572202e63656e746572207b0a096261636b67726f756e643a206e6f6e652021696d706f7274616e743b0a7d0a0a2e6c61796572202e736861646f772d6d6964646c6520646976207b0a096865696768743a2065787072657373696f6e280a090978203d20746869732e706172656e744e6f64652e706172656e744e6f64652e6f66667365744865696768742c0a090979203d207061727365496e7428746869732e63757272656e745374796c652e746f70292c0a09092878202d202828782025203229203f2031203a203029202d202879202a20322929202b20277078270a09290a7d0a0a2e6c61796572202e736861646f772d746f70202e63656e7465722c0a2e6c61796572202e736861646f772d626f74746f6d202e63656e746572207b0a0977696474683a2065787072657373696f6e280a090978203d20746869732e706172656e744e6f64652e706172656e744e6f64652e6f666673657457696474682c0a090979203d207061727365496e7428746869732e63757272656e745374796c652e6c656674292c0a09092878202d202828782025203229203f2031203a203029202d202879202a20322929202b20277078270a09290a7d0a0909090909090909090909090909090909090909090909092f2a20504f50524157494320534349455a4b452021202a2f0a2e6c61796572202e736861646f772d746f70202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f746c2e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d746f70202e726967687409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f74722e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d626f74746f6d202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f626c2e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d626f74746f6d202e7269676874097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f62722e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d746f70202e63656e74657209097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f742e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d626f74746f6d202e63656e746572097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f622e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d6d6964646c65202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f6c2e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d6d6964646c65202e7269676874097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f722e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a0a2e6c61796572202e736861646f772d626f74746f6d206469762e63656e746572207b0a09626f74746f6d3a202d3370783b0a7d0a0a2e6c61796572202e736861646f772d746f70206469762e63656e746572207b0a09746f703a202d3270783b0a7d0a0a3c2f7374796c653e0a0a3c215b656e6469665d3e3c215b656e6469665d2d2d3e0a0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34363a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e2f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b7d733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b613a333a7b733a353a2276616c7565223b733a3236343a223c6469762069643d6d656e755f636f6e74656e65725f62326463653263356363323137633836663336326361333337383434363033313e3c696d672077696474683d22313622206865696768743d2231362220626f726465723d223022207374796c653d2277696474683a20313670783b206865696768743a20313670783b206d617267696e2d746f703a203270783b206d617267696e2d6c6566743a203270783b206261636b67726f756e642d636f6c6f723a2077686974653b20636f6c6f723a2077686974653b20626f726465723a203070783b22207372633d226d6f64756c65732f5574696c732f4d656e752f7468656d652f6c6f616465722e676966223e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33393a222f426173655f426f787c302f426173655f4d656e757c6d656e752f5574696c735f4d656e757c30223b613a333a7b733a353a2276616c7565223b733a3236343a223c6469762069643d6d656e755f636f6e74656e65725f62326463653263356363323137633836663336326361333337383434363033313e3c696d672077696474683d22313622206865696768743d2231362220626f726465723d223022207374796c653d2277696474683a20313670783b206865696768743a20313670783b206d617267696e2d746f703a203270783b206d617267696e2d6c6566743a203270783b206261636b67726f756e642d636f6c6f723a2077686974653b20636f6c6f723a2077686974653b20626f726465723a203070783b22207372633d226d6f64756c65732f5574696c732f4d656e752f7468656d652f6c6f616465722e676966223e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33393a222f426173655f426f787c302f426173655f4d656e757c717569636b5f6163636573735f6d656e75223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33303a222f426173655f426f787c302f426173655f5365617263687c736561726368223b613a333a7b733a353a2276616c7565223b733a323033353a22090d0a093c666f726d20206f6e7375626d69743d222428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427293b436f646550726573732e757064617465282428276c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642729293b5f63686a282428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f536561726368253743736561726368272c27536561726368696e67272c2727293b2428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3431383530656263656331363664613938303762303835373531393666656664222069643d226c6962735f71665f3431383530656263656331363664613938303762303835373531393666656664223e0d0a093c696e707574206e616d653d225f71665f5f6c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a0d0a202020203c212d2d20446973706c617920746865206669656c6473202d2d3e0d0a09202020203c7461626c652069643d22426173655f5365617263685f5f536561726368222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0d0a0909093c74723e0d0a090909093c746420636c6173733d22696e707574223e3c696e70757420782d7765626b69742d7370656563683d22782d7765626b69742d73706565636822206c616e673d22656e22206f6e7765626b69747370656563686368616e67653d222428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427293b436f646550726573732e757064617465282428276c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642729293b5f63686a282428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f536561726368253743736561726368272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d303b22206e616d653d22717569636b5f7365617263682220747970653d227465787422202f3e3c2f74643e0d0a090909093c746420636c6173733d227375626d6974223e3c64697620636c6173733d227365617263685f627574746f6e5f637373335f626f78223e3c6120636c6173733d227365617263685f627574746f6e222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d222428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427293b436f646550726573732e757064617465282428276c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642729293b5f63686a282428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e73657269616c697a6528292b27265f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f536561726368253743736561726368272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d303b22203e5365617263683c64697620636c6173733d227365617263685f69636f6e223e3c2f6469763e3c2f613e3c2f6469763e3c2f74643e0d0a0909093c2f74723e09090d0a09093c2f7461626c653e0d0a093c2f666f726d3e0d0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34333a222f426173655f426f787c302f426173655f5365617263687c7365617263682f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33303a222f426173655f426f787c302f426173655f5365617263687c736561726368223b7d733a33333a222f426173655f426f787c302f426173655f5374617475734261727c737461747573223b613a333a7b733a353a2276616c7565223b733a3232323a223c6469762069643d22426173655f5374617475734261722220636c6173733d22426173655f537461747573426172223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22736861646f775f31357078222069643d227374617475736261725f636f6e74656e74223e0a0909093c6469762069643d227374617475736261725f746578742220636c6173733d226d657373616765206c6f6164696e67223e0a090909094c6f6164696e672e2e2e0a0909093c2f6469763e0a09093c2f6469763e0a093c2f6469763e0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b613a333a7b733a353a2276616c7565223b733a3237323a223c6469762069643d22426173655f416374696f6e4261722220616c69676e3d2263656e746572223e0a093c7461626c6520636c6173733d22416374696f6e426172223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a202020202020202020202020202020203c74642076616c69676e3d22746f70223e0a20202020202020202020202020202020202020203c6469762069643d2270616e656c223e0a09090909090909090909090909090909093c2f6469763e0a202020202020202020202020202020203c2f74643e0a2020202020202020202020203c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e6261722f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b613a333a7b733a353a2276616c7565223b733a333630323a223c6469762069643d22616374696f6e6261725f6c61756e636870616422206269673d22312220636c6173733d226c6569676874626f78223e3c696e70757420747970653d2268696464656e222069643d22616374696f6e6261725f6c61756e63687061645f62696773697a65222076616c75653d223022202f3e0a3c6469762069643d224c6569676874626f785f686561646572223e0a202020203c7461626c6520626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d2230223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a090909090a202020202020202020202020202020203c746420636c6173733d226c65667422203e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f726573697a6522206f6e436c69636b3d226c6962735f6c6569676874626f785f726573697a6528746869732e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f646529223e0a09090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f726573697a655f74657874223e526573697a653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a090909093c746420636c6173733d2263656e746572223e4c61756e63687061643c2f74643e0a090909093c746420636c6173733d227269676874223e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f636c6f73652220687265663d226a6176617363726970743a6c6569676874626f785f646561637469766174652827616374696f6e6261725f6c61756e63687061642729223e0a0909090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f636c6f73655f74657874223e436c6f73653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a0909093c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e0a0a3c6469762069643d224c6569676874626f785f636f6e74656e74223e0a202020203c63656e7465723e0a0a3c7461626c652069643d22426173655f416374696f6e4261725f5f6c61756e6368706164222063656c6c73706163696e673d2230222063656c6c70616464696e673d223022207374796c653d226d617267696e3a20313070783b223e0a093c74723e0a09202020200909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f43616c656e64617226626f785f6d61696e5f687265663d3734393238653032363439396661663166653238363539363264626563313235272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f43616c656e6461722f69636f6e2e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e43616c656e6461723c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f436f6e7461637473266d6f64653d636f6d70616e79265f5f69636f6e5f5f3d636f6d70616e6965732e706e67265f5f69636f6e5f736d616c6c5f5f3d636f6d70616e6965732d736d616c6c2e706e6726626f785f6d61696e5f687265663d3636633934646330646665666364393465333534663331303639306434646263272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f436f6e74616374732f636f6d70616e6965732e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e436f6d70616e6965733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f436f6e7461637473266d6f64653d636f6e74616374265f5f69636f6e5f5f3d636f6e74616374732e706e67265f5f69636f6e5f736d616c6c5f5f3d636f6e74616374732d736d616c6c2e706e6726626f785f6d61696e5f687265663d3636633934646330646665666364393465333534663331303639306434646263272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f436f6e74616374732f636f6e74616374732e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e436f6e74616374733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f5461736b7326626f785f6d61696e5f687265663d6335316566396139393163653639343738393734316665656334633835353937272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f5461736b732f69636f6e2e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e5461736b733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090a093c2f74723e0a3c2f7461626c653e0a0a3c2f63656e7465723e0a3c2f6469763e3c2f6469763e3c6469762069643d22426173655f416374696f6e4261722220616c69676e3d2263656e746572223e0a093c7461626c6520636c6173733d22416374696f6e426172223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a202020202020202020202020202020203c74642076616c69676e3d22746f70223e0a20202020202020202020202020202020202020203c6469762069643d2270616e656c223e0a0909090909090909090909090909090909093c6120636c6173733d226c624f6e222072656c3d22616374696f6e6261725f6c61756e63687061642220687265663d226a6176617363726970743a766f6964283029223e0a090909090909093c64697620636c6173733d2270616e656c5f6469765f72696768742065706573695f6269675f627574746f6e223e0a090909090909090909090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f416374696f6e4261722f6c61756e636865722e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a0909090909090909090909090909090909090909090909093c7370616e3e4c61756e63687061643c2f7370616e3e0a0909090909090909090909090909093c2f6469763e0a0909090909093c2f613e0a09090909090909090909093c2f6469763e0a202020202020202020202020202020203c2f74643e0a2020202020202020202020203c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c31223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b7d733a35323a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f72223b613a333a7b733a353a2276616c7565223b733a35363a223c64697620636c6173733d2274657874223e0a41646d696e697374726174696f6e3a20436f6e74726f6c2050616e656c0a3c2f6469763e20223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a36353a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f722f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a35323a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f72223b7d733a33303a222f426173655f426f787c302f43524d5f46696c746572737c66696c746572223b613a333a7b733a353a2276616c7565223b733a343331343a223c6469762069643d2263726d5f66696c7465727322206269673d22312220636c6173733d226c6569676874626f78223e3c696e70757420747970653d2268696464656e222069643d2263726d5f66696c746572735f62696773697a65222076616c75653d223122202f3e0a3c6469762069643d224c6569676874626f785f686561646572223e0a202020203c7461626c6520626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d2230223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a090909090a202020202020202020202020202020203c746420636c6173733d226c65667422203e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f726573697a6522206f6e436c69636b3d226c6962735f6c6569676874626f785f726573697a6528746869732e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f646529223e0a09090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f726573697a655f74657874223e526573697a653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a090909093c746420636c6173733d2263656e746572223e50657273706563746976653c2f74643e0a090909093c746420636c6173733d227269676874223e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f636c6f73652220687265663d226a6176617363726970743a6c6569676874626f785f64656163746976617465282763726d5f66696c746572732729223e0a0909090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f636c6f73655f74657874223e436c6f73653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a0909093c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e0a0a3c6469762069643d224c6569676874626f785f636f6e74656e74223e0a202020203c63656e7465723e0a0a3c7461626c652069643d2243524d5f46696c74657273222063656c6c73706163696e673d2230222063656c6c70616464696e673d2230223e0a093c74723e0a20202020202020203c212d2d204d59202d2d3e0a20202020202020203c74643e0a0a09202020203c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c74657226253246426173655f426f782537433025324643524d5f46696c7465727325374366696c7465725f63616c6c6261636b5f62643433326464313033643266616463373732306230376130663930663835363d31272c2027272c202727293b22202069643d2263726d5f66696c746572735f6d79223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f6d792e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020202020202020202020202020202020203c7370616e3e4d79207265636f7264733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a0a20202020202020203c2f74643e0a0a20202020202020203c212d2d20414c4c202d2d3e0a20202020202020203c74643e0a0a09202020203c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c74657226253246426173655f426f782537433025324643524d5f46696c7465727325374366696c7465725f63616c6c6261636b5f31613832626232643736643832373362373730393135383961353635373336663d31272c2027272c202727293b22202069643d2263726d5f66696c746572735f616c6c223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f616c6c2e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020202020202020202020202020202020203c7370616e3e416c6c207265636f7264733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a0a20202020202020203c2f74643e0a0a20202020202020203c212d2d204d414e4147452046494c54455253202d2d3e0a20202020202020203c74643e0a0a09202020203c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c74657226253246426173655f426f782537433025324643524d5f46696c7465727325374366696c7465725f63616c6c6261636b5f66643233343635383963313935316634326132356663396361383435353165363d31272c2027272c202727293b22202069643d2263726d5f66696c746572735f6d616e616765223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f6d616e6167652e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020202020202020202020202020202020203c7370616e3e4d616e61676520707265736574733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a0a20202020202020203c2f74643e0a202020203c2f74723e0a20202020202020203c746420636f6c7370616e3d223322207374796c653d22746578742d616c69676e3a2063656e7465723b223e0a0909093c666f726d20206f6e7375626d69743d222428276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827293b436f646550726573732e757064617465282428276c6962735f71665f34303361396335353338383036353561383038326338636431626566653463382729293b5f63686a282428276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c746572272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3430336139633535333838303635356138303832633863643162656665346338222069643d226c6962735f71665f3430336139633535333838303635356138303832633863643162656665346338223e3c696e707574206e616d653d225f71665f5f6c6962735f71665f34303361396335353338383036353561383038326338636431626566653463382220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a0a0a090909095265636f726473206f66266e6273703b3c7370616e20636c6173733d2266696c746572732d6175746f73656c656374223e3c7370616e2069643d225f5f63726d5f66696c7465725f636f6e746163745f73656c6563745f7370616e223e3c73656c656374206e616d653d2263726d5f66696c7465725f636f6e74616374222069643d2263726d5f66696c7465725f636f6e74616374223e0a3c6f7074696f6e2076616c75653d22223e537461727420747970696e6720746f207365617263682e2e2e3c2f6f7074696f6e3e093c6f7074696f6e2076616c75653d2231222073656c65637465643d2273656c6563746564223e6875692077616e673c2f6f7074696f6e3e0a3c2f73656c6563743e3c2f7370616e3e3c7370616e2069643d225f5f63726d5f66696c7465725f636f6e746163745f6175746f636f6d706c6574655f7370616e22207374796c653d22646973706c61793a6e6f6e653b223e3c696e70757420706c616365686f6c6465723d22537461727420747970696e6720746f207365617263682e2e2e22206e616d653d2263726d5f66696c7465725f636f6e746163745f5f7365617263682220747970653d2274657874222069643d225f5f6175746f636f6d706c6574655f69645f63726d5f66696c7465725f636f6e746163745f5f73656172636822202f3e3c6469762069643d225f5f6175746f636f6d706c6574655f69645f63726d5f66696c7465725f636f6e746163745f5f7365617263685f73756767657374626f782220636c6173733d226175746f636f6d706c657465223e266e6273703b3c2f6469763e3c2f7370616e3e3c2f7370616e3e266e6273703b3c7370616e20636c6173733d226368696c645f627574746f6e223e3c696e707574206f6e636c69636b3d2263726d5f66696c746572735f64656163746976617465282922206e616d653d227375626d6974222076616c75653d2253686f772220747970653d227375626d697422202f3e3c2f7370616e3e0a0909093c2f666f726d3e0a0a09093c2f74643e0a202020203c2f74723e0a3c2f7461626c653e0a0a3c62723e0a0a0a3c2f63656e7465723e0a3c2f6469763e3c2f6469763e3c6120636c6173733d226c624f6e2064697361626c656420627574746f6e222072656c3d2263726d5f66696c74657273223e50657273706563746976653a203c623e4d79207265636f7264733c2f623e3c64697620636c6173733d2266696c7465725f69636f6e5f696d67223e3c2f6469763e3c2f613e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34313a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f223b613a333a7b733a353a2276616c7565223b733a3131383a223c6120687265663d2223223e3c696d6720626f726465723d223022207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f696d616765732f6c6f676f2d736d616c6c2e706e67222077696474683d2231393322206865696768743d223833223e3c2f613e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a35343a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f2f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a34313a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f223b7d733a32393a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f30223b613a333a7b733a353a2276616c7565223b733a35373a223c7370616e2069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f307c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34373a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f426173655f457065736953746f72657c30223b613a333a7b733a353a2276616c7565223b733a37353a223c7370616e2069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f426173655f457065736953746f72657c307c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a32393a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f30223b7d733a36343a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f426173655f457065736953746f72657c302f426173655f457373436c69656e747c30223b613a333a7b733a353a2276616c7565223b733a333437393a223c64697620636c6173733d22696d706f7274616e745f6e6f74696365223e3c63656e7465723e3c48313e455045534920526567697374726174696f6e3c2f48313e3c2f63656e7465723e3c62723e526567697374726174696f6e206f6620796f757220455045534920696e7374616c6c6174696f6e2077697468203c6120687265663d22687474703a2f2f7777772e74656c617875732e636f6d22207461726765743d225f626c616e6b223e54656c61787573204c4c43203c2f613e77696c6c20616c6c6f7720796f7520746f2062726f77736520616e64206d616b652070757263686173657320696e203c7374726f6e673e45504553492053746f72653c2f7374726f6e673e20616e642072656365697665206e6f74696669636174696f6e732076696120652d6d61696c2061626f757420696d706f7274616e7420757064617465732e3c62723e4f6e63652074686520726567697374726174696f6e20697320636f6d706c65746520796f752077696c6c20726563656976652061203c7374726f6e673e4c6963656e7365204b65793c2f7374726f6e673e2e205468697320756e69717565204c6963656e7365204b65792077696c6c206265207573656420746f206964656e7469667920796f757220696e7374616c6c6174696f6e20616e6420616c6c6f7720796f7520746f20646f776e6c6f616420616e6420757365206d6f64756c657320796f752070757263686173652e20506c65617365206e6f74652074686174203c7374726f6e673e4550455349204c6963656e7365204b65793c2f7374726f6e673e2063616e206e6f7420626520636f7069656420746f20616e79206f7468657220455045534920696e7374616c6c6174696f6e2e20416c6c2070757263686173657320616e6420646f776e6c6f61647320796f75206d616b65207573696e6720796f7572204550455349204c6963656e7365204b65792063616e206265207573656420666f72207468697320696e7374616c6c6174696f6e206f6e6c792e3c62723e3c62723e4966206e65636573736172792c20796f752063616e206d6f766520796f757220696e7374616c6c6174696f6e20746f20616e6f746865722073657276657220616e64206b65657020796f7572204550455349204c6963656e7365204b65792c2062757420617420616e7920676976656e2074696d65206e6f2074776f20696e7374616c6c6174696f6e732063616e20757365207468652073616d65204550455349204c6963656e7365204b65792e2053686172696e6720796f7572204c6963656e7365204b6579207769746820756e617574686f72697a656420757365727320697320612076696f6c6174696f6e206f6620746869732061677265656d656e7420616e642077696c6c20726573756c7420696e207265766f6b696e6720746865204c6963656e7365204b65792e3c62723e3c62723e496620796f7520616c726561647920686176652061204c6963656e7365204b657920666f72207468697320696e7374616c6c6174696f6e2c20796f752063616e20656e74657220697420686572653a203c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f30253246426173655f457065736953746f726525374330253246426173655f457373436c69656e742537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f30253246426173655f457065736953746f726525374330253246426173655f457373436c69656e74253743305f63616c6c6261636b5f38316133663830646366646239383934346538313932313939373035343031353d31272c2027272c202727293b22203e656e746572204c6963656e7365204b65793c2f613e3c62723e3c62723e46756c6c205465726d7320616e6420436f6e646974696f6e732061726520617661696c61626c6520686572653a203c61207461726765743d225f626c616e6b2220687265663d22687474703a2f2f6c6f63616c686f73742f65706573695f312e342e302f6d6f64756c65732f426173652f457373436c69656e742f746f732f746f732e706870223e5465726d7320616e6420436f6e646974696f6e733c2f613e3c63656e7465723e0a3c666f726d206f6e7375626d69743d222428276c6962735f71665f346265386461336633323738326232353938383234346435343162376639326327292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f346265386461336633323738326232353938383234346435343162376639326327293b436f646550726573732e757064617465282428276c6962735f71665f34626538646133663332373832623235393838323434643534316237663932632729293b5f63686a282428276c6962735f71665f346265386461336633323738326232353938383234346435343162376639326327292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f30253246426173655f457065736953746f726525374330253246426173655f457373436c69656e7425374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f346265386461336633323738326232353938383234346435343162376639326327292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3462653864613366333237383262323539383832343464353431623766393263222069643d226c6962735f71665f3462653864613366333237383262323539383832343464353431623766393263223e0a3c6469763e0a3c696e707574206e616d653d225f71665f5f6c6962735f71665f34626538646133663332373832623235393838323434643534316237663932632220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a3c7461626c6520626f726465723d2230222069643d22717569636b666f726d223e0a0a093c74723e0a09093c746420636c6173733d22656c656d656e74223e3c7370616e207374796c653d22636f6c6f723a2023666630303030223e2a3c2f7370616e3e4920616772656520746f205465726d7320616e6420436f6e646974696f6e733c2f74643e0a09093c746420636c6173733d22656c656d656e745f636865636b626f78223e3c7370616e20636c6173733d226572726f72222069643d226572726f726c6962735f71665f34626538646133663332373832623235393838323434643534316237663932636167726565223e3c2f7370616e3e093c696e707574206e616d653d2261677265652220747970653d22636865636b626f78222076616c75653d2231222069643d2271665f3222202f3e3c2f74643e0a093c2f74723e0a093c74723e0a09093c746420636c6173733d22656c656d656e74223e3c2f74643e0a09093c746420636c6173733d22656c656d656e745f7375626d6974223e3c7370616e20636c6173733d226572726f72222069643d226572726f726c6962735f71665f34626538646133663332373832623235393838323434643534316237663932637375626d6974223e3c2f7370616e3e093c696e707574207374796c653d2277696474683a323030707822206e616d653d227375626d6974222076616c75653d224f627461696e204570657369204c6963656e7365204b65792220747970653d227375626d697422202f3e3c2f74643e0a093c2f74723e0a093c74723e0a09093c74643e3c2f74643e0a093c746420616c69676e3d226c656674222076616c69676e3d22746f70223e3c7370616e20636c6173733d2272657175697265645f6e6f74655f73746172223e2a3c2f7370616e3e203c7370616e20636c6173733d2272657175697265645f6e6f7465223e64656e6f746573207265717569726564206669656c643c2f7370616e3e3c2f74643e0a093c2f74723e0a3c2f7461626c653e0a3c2f6469763e0a3c2f666f726d3e3c2f63656e7465723e3c2f6469763e3c6469762069643d22636c69656e745f6d657373616765735f6672616d65223e3c6469762069643d22636c69656e745f6d657373616765735f6672616d655f636f6e74656e74223e3c2f6469763e3c64697620636c6173733d22627574746f6e22207374796c653d2277696474683a6175746f3b2070616464696e673a3270782031307078222069643d22636c69656e745f6d657373616765735f6672616d655f68696465223e48696465206d657373616765733c2f6469763e3c64697620636c6173733d22627574746f6e22207374796c653d2277696474683a6175746f3b2070616464696e673a3270782031307078222069643d22636c69656e745f6d657373616765735f6672616d655f73686f775f646973636172646564223e53686f77206469736361726465643c2f6469763e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a34373a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f426173655f457065736953746f72657c30223b7d7d733a31323a22637573746f6d5f6465627567223b733a303a22223b733a31343a225f5f686973746f72795f69645f5f223b693a31333b7d);
INSERT INTO `session_client` (`session_name`, `client_id`, `data`) VALUES
('65c6av8e2fhmbtcvl6k316nop2', 2, 0x613a31363a7b733a31353a225f5f6d6f64756c655f766172735f5f223b613a32353a7b733a32343a222f426173655f426f787c302f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a31313a222f426173655f426f787c30223b613a323a7b733a343a226d61696e223b613a313a7b693a303b613a323a7b733a363a226d6f64756c65223b733a31303a22426173655f41646d696e223b733a343a226e616d65223b733a363a226d61696e5f30223b7d7d733a31323a225f5f68726566735f67635f5f223b693a313b7d733a35353a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f5574696c735f54616262656442726f777365727c30223b613a333a7b733a353a22666f726365223b4e3b733a343a2270616765223b693a303b733a393a226c6173745f70616765223b693a2d313b7d733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34363a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e2f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33393a222f426173655f426f787c302f426173655f4d656e757c6d656e752f5574696c735f4d656e757c30223b613a333a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a333a226f6c64223b733a33323a226634366234336161333061356635623439353535623437383932313831653839223b7d733a33393a222f426173655f426f787c302f426173655f4d656e757c717569636b5f6163636573735f6d656e75223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33303a222f426173655f426f787c302f426173655f5365617263687c736561726368223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34333a222f426173655f426f787c302f426173655f5365617263687c7365617263682f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33333a222f426173655f426f787c302f426173655f5374617475734261727c737461747573223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e6261722f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c31223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a35323a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f72223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a36353a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f722f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a33303a222f426173655f426f787c302f43524d5f46696c746572737c66696c746572223b613a353a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a333a7b733a34313a2263616c6c6261636b5f6264343332646431303364326661646337373230623037613066393066383536223b613a323a7b733a343a2266756e63223b613a323a7b693a303b733a31373a2243524d5f46696c74657273436f6d6d6f6e223b693a313b733a31313a227365745f70726f66696c65223b7d733a343a2261726773223b613a313a7b693a303b733a323a226d79223b7d7d733a34313a2263616c6c6261636b5f3161383262623264373664383237336237373039313538396135363537333666223b613a323a7b733a343a2266756e63223b613a323a7b693a303b733a31373a2243524d5f46696c74657273436f6d6d6f6e223b693a313b733a31313a227365745f70726f66696c65223b7d733a343a2261726773223b613a313a7b693a303b733a333a22616c6c223b7d7d733a34313a2263616c6c6261636b5f6664323334363538396331393531663432613235666339636138343535316536223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31343a226d616e6167655f66696c74657273223b7d733a343a2261726773223b613a303a7b7d7d7d733a34313a2263616c6c6261636b5f6664323334363538396331393531663432613235666339636138343535316536223b4e3b733a34313a2263616c6c6261636b5f3161383262623264373664383237336237373039313538396135363537333666223b4e3b733a34313a2263616c6c6261636b5f6264343332646431303364326661646337373230623037613066393066383536223b4e3b7d733a34313a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a35343a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f2f426173655f5468656d657c30223b613a323a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d7d733a32393a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f30223b613a32343a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a32303a7b733a34313a2263616c6c6261636b5f3964353630653462316638663132316636623564656634376365623039303034223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31303a22426173655f41646d696e223b7d7d733a34313a2263616c6c6261636b5f6536376665303737323337393161303463663666623539353639353363373030223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31303a224c6962735f5443504446223b7d7d733a34313a2263616c6c6261636b5f3463663364663465626165353830303034636338663835316261326136616164223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a383a22426173655f41636c223b7d7d733a34313a2263616c6c6261636b5f3035613838666536663435373937316330633732313964313737646664373130223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a393a22426173655f4d61696c223b7d7d733a34313a2263616c6c6261636b5f6636313131663930613532393362353066663432663433376134356334363962223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31303a22426173655f4572726f72223b7d7d733a34313a2263616c6c6261636b5f6137633337306231616562303833333337613437323938633230323037363664223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a32343a22426173655f5468656d655f41646d696e6973747261746f72223b7d7d733a34313a2263616c6c6261636b5f3931393031653562613938303735626236373537316366376639633039613463223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31383a22426173655f557365725f53657474696e6773223b7d7d733a34313a2263616c6c6261636b5f3136336137353738333734363837336139343936376635663036613939363934223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31393a225574696c735f43757272656e63794669656c64223b7d7d733a34313a2263616c6c6261636b5f3762643335326136323538656131383835333830343432653665633030663766223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31343a22426173655f44617368626f617264223b7d7d733a34313a2263616c6c6261636b5f6530663132376536633133333938303230303634316665343539613332643662223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31353a22426173655f457065736953746f7265223b7d7d733a34313a2263616c6c6261636b5f3232383231323462333539366264393461663463353832306662353639653037223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a32333a22426173655f4c616e675f41646d696e6973747261746f72223b7d7d733a34313a2263616c6c6261636b5f6261626435396339336234356339313465386235616336333163353034346565223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a32333a22426173655f557365725f41646d696e6973747261746f72223b7d7d733a34313a2263616c6c6261636b5f6435393335636233376138343432356266666635393766643565616430646335223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a32343a22426173655f4d61696e4d6f64756c65496e64696361746f72223b7d7d733a34313a2263616c6c6261636b5f3733396464646236393430346633323437636637613061366130396663633331223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31363a225574696c735f436f6d6d6f6e44617461223b7d7d733a34313a2263616c6c6261636b5f6436393636656262653935363931326461323733393432333235353035383338223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31343a22446174615f436f756e7472696573223b7d7d733a34313a2263616c6c6261636b5f6461303636323737326465393330663931303832343736653166366234333931223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31393a225574696c735f5265636f726442726f77736572223b7d7d733a34313a2263616c6c6261636b5f3630626266666665343061613334663238383461386238376364316233613035223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31333a22446174615f5461785261746573223b7d7d733a34313a2263616c6c6261636b5f3335333465623464313435326331333561613533323732303034306439356134223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31363a225574696c735f4174746163686d656e74223b7d7d733a34313a2263616c6c6261636b5f3165626533306662646638343161633161653334363439393430376436653063223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31343a2243524d5f4c6f67696e4175646974223b7d7d733a34313a2263616c6c6261636b5f6363663761656533393832336233633139616632336266613464366534373464223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a31303a227365745f6d6f64756c65223b7d733a343a2261726773223b613a313a7b693a303b733a31333a2243524d5f526f756e6463756265223b7d7d7d733a31353a2273656c65637465645f6d6f64756c65223b733a31393a225574696c735f5265636f726442726f77736572223b733a343a2268726566223b4e3b733a34313a2263616c6c6261636b5f6363663761656533393832336233633139616632336266613464366534373464223b4e3b733a34313a2263616c6c6261636b5f3165626533306662646638343161633161653334363439393430376436653063223b4e3b733a34313a2263616c6c6261636b5f3335333465623464313435326331333561613533323732303034306439356134223b4e3b733a34313a2263616c6c6261636b5f3630626266666665343061613334663238383461386238376364316233613035223b4e3b733a34313a2263616c6c6261636b5f6436393636656262653935363931326461323733393432333235353035383338223b4e3b733a34313a2263616c6c6261636b5f3733396464646236393430346633323437636637613061366130396663633331223b4e3b733a34313a2263616c6c6261636b5f6435393335636233376138343432356266666635393766643565616430646335223b4e3b733a34313a2263616c6c6261636b5f6261626435396339336234356339313465386235616336333163353034346565223b4e3b733a34313a2263616c6c6261636b5f3232383231323462333539366264393461663463353832306662353639653037223b4e3b733a34313a2263616c6c6261636b5f6530663132376536633133333938303230303634316665343539613332643662223b4e3b733a34313a2263616c6c6261636b5f3762643335326136323538656131383835333830343432653665633030663766223b4e3b733a34313a2263616c6c6261636b5f3136336137353738333734363837336139343936376635663036613939363934223b4e3b733a34313a2263616c6c6261636b5f3931393031653562613938303735626236373537316366376639633039613463223b4e3b733a34313a2263616c6c6261636b5f6137633337306231616562303833333337613437323938633230323037363664223b4e3b733a34313a2263616c6c6261636b5f6636313131663930613532393362353066663432663433376134356334363962223b4e3b733a34313a2263616c6c6261636b5f3035613838666536663435373937316330633732313964313737646664373130223b4e3b733a34313a2263616c6c6261636b5f3463663364663465626165353830303034636338663835316261326136616164223b4e3b733a34313a2263616c6c6261636b5f6536376665303737323337393161303463663666623539353639353363373030223b4e3b733a34313a2263616c6c6261636b5f3964353630653462316638663132316636623564656634376365623039303034223b4e3b733a34313a2263616c6c6261636b5f6461303636323737326465393330663931303832343736653166366234333931223b4e3b7d733a35313a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c30223b613a33323a7b733a333a22746162223b733a31313a2272635f6163636f756e7473223b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a32343a7b733a34313a2263616c6c6261636b5f3536333934333736386536616433643636333537316532653334353065326234223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a383a226e61766967617465223b7d733a343a2261726773223b613a343a7b693a303b733a31303a22766965775f656e747279223b693a313b733a333a22616464223b693a323b4e3b693a333b613a303a7b7d7d7d733a34313a2263616c6c6261636b5f3662653939613730343634613231356331616365343031333233333831386366223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a373b7d7d733a34313a2263616c6c6261636b5f3935636634333936613437343631663633623339636532633032343432346631223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32333a2264656c6574655f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a373b7d7d733a34313a2263616c6c6261636b5f6131336632313738303363646233653637663866333132646265366663376363223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a383b7d7d733a34313a2263616c6c6261636b5f3435393338626566636334333735616464333735393562303934633136663864223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32333a2264656c6574655f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a383b7d7d733a34313a2263616c6c6261636b5f3966363733333763666666373132623765666565653833356539633638363262223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a393b7d7d733a34313a2263616c6c6261636b5f3064323634303630666362323061326432333735306538333865373763663131223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32333a2264656c6574655f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a393b7d7d733a34313a2263616c6c6261636b5f6163383430646639653839653434623433613335613939616633393131653266223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a31303b7d7d733a34313a2263616c6c6261636b5f6133613334396632336136396463383164366133373365626630396332383264223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32333a2264656c6574655f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a31303b7d7d733a34313a2263616c6c6261636b5f3538656166303630346235353365303066653036646663666531333265313130223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a31313b7d7d733a34313a2263616c6c6261636b5f6261326138386339626236333139616139356565666663326163623666636435223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32333a2264656c6574655f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a31313b7d7d733a34313a2263616c6c6261636b5f3335343263396135376262353364333937623534326539373665313534643239223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a333b7d7d733a34313a2263616c6c6261636b5f3932373630303231623965396237376665346665636131653839616364653866223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32333a2264656c6574655f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a333b7d7d733a34313a2263616c6c6261636b5f6365663263636563613063623239616434363338653239623463633134386561223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a353b7d7d733a34313a2263616c6c6261636b5f3165626432316161663132633037613264643831376462623337316139386435223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32333a2264656c6574655f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a353b7d7d733a34313a2263616c6c6261636b5f3562323339363932353530613261303631616364316566353364666236376163223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a343b7d7d733a34313a2263616c6c6261636b5f3737353238613932373662346438316262633138373639343937393133343964223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32333a2264656c6574655f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a343b7d7d733a34313a2263616c6c6261636b5f3366623635643633653834336437353361353031396266396661316534643031223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a363b7d7d733a34313a2263616c6c6261636b5f3033666664376134313233336462383536386130646138343437316134356632223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32333a2264656c6574655f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a363b7d7d733a34313a2263616c6c6261636b5f3034656261346536616565353066616263623538663663306464336263646638223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a313b7d7d733a34313a2263616c6c6261636b5f6361643131356638633063633033636465373365616166666264333234613065223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32333a2264656c6574655f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a313b7d7d733a34313a2263616c6c6261636b5f3961386232373033653034653332376665636231343661363431333430666631223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a323b7d7d733a34313a2263616c6c6261636b5f6132343931636439306235633963303436666338663030633638633361623238223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32333a2264656c6574655f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b693a323b7d7d733a34313a2263616c6c6261636b5f3437323863623332653837333139663065653564373062346535646235363431223b613a323a7b733a343a2266756e63223b613a323a7b693a303b4e3b693a313b733a32313a22656469745f7065726d697373696f6e735f72756c65223b7d733a343a2261726773223b613a313a7b693a303b4e3b7d7d7d733a32323a2261646d696e5f62726f7773655f7265636f7264736574223b733a31313a2272635f6163636f756e7473223b733a31323a2261646d696e5f66696c746572223b693a303b733a31313a2263726974735f7374756666223b613a303a7b7d733a31313a226f726465725f7374756666223b613a313a7b733a31303a223a4564697465645f6f6e223b733a343a2244455343223b7d733a31393a227365745f62726f777365645f7265636f726473223b613a343a7b733a333a22746162223b733a31303a2263726d5f617373657473223b733a353a226372697473223b613a303a7b7d733a353a226f72646572223b613a313a7b733a31303a223a4564697465645f6f6e223b733a343a2244455343223b7d733a373a227265636f726473223b613a303a7b7d7d733a34313a2263616c6c6261636b5f3536333934333736386536616433643636333537316532653334353065326234223b4e3b733a34313a2263616c6c6261636b5f3437323863623332653837333139663065653564373062346535646235363431223b4e3b733a34313a2263616c6c6261636b5f6132343931636439306235633963303436666338663030633638633361623238223b4e3b733a34313a2263616c6c6261636b5f3961386232373033653034653332376665636231343661363431333430666631223b4e3b733a34313a2263616c6c6261636b5f6361643131356638633063633033636465373365616166666264333234613065223b4e3b733a34313a2263616c6c6261636b5f3034656261346536616565353066616263623538663663306464336263646638223b4e3b733a34313a2263616c6c6261636b5f3033666664376134313233336462383536386130646138343437316134356632223b4e3b733a34313a2263616c6c6261636b5f3366623635643633653834336437353361353031396266396661316534643031223b4e3b733a34313a2263616c6c6261636b5f3737353238613932373662346438316262633138373639343937393133343964223b4e3b733a34313a2263616c6c6261636b5f3562323339363932353530613261303631616364316566353364666236376163223b4e3b733a34313a2263616c6c6261636b5f3165626432316161663132633037613264643831376462623337316139386435223b4e3b733a34313a2263616c6c6261636b5f6365663263636563613063623239616434363338653239623463633134386561223b4e3b733a34313a2263616c6c6261636b5f3932373630303231623965396237376665346665636131653839616364653866223b4e3b733a34313a2263616c6c6261636b5f3335343263396135376262353364333937623534326539373665313534643239223b4e3b733a34313a2263616c6c6261636b5f6133613334396632336136396463383164366133373365626630396332383264223b4e3b733a34313a2263616c6c6261636b5f6163383430646639653839653434623433613335613939616633393131653266223b4e3b733a34313a2263616c6c6261636b5f3064323634303630666362323061326432333735306538333865373763663131223b4e3b733a34313a2263616c6c6261636b5f3966363733333763666666373132623765666565653833356539633638363262223b4e3b733a34313a2263616c6c6261636b5f3435393338626566636334333735616464333735393562303934633136663864223b4e3b733a34313a2263616c6c6261636b5f6131336632313738303363646233653637663866333132646265366663376363223b4e3b733a34313a2263616c6c6261636b5f3935636634333936613437343631663633623339636532633032343432346631223b4e3b733a34313a2263616c6c6261636b5f3662653939613730343634613231356331616365343031333233333831386366223b4e3b733a34313a2263616c6c6261636b5f6261326138386339626236333139616139356565666663326163623666636435223b4e3b733a34313a2263616c6c6261636b5f3538656166303630346235353365303066653036646663666531333265313130223b4e3b7d733a37333a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c30223b613a333a7b733a353a22666f726365223b4e3b733a343a2270616765223b733a313a2233223b733a393a226c6173745f70616765223b693a2d313b7d733a39363a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f47656e6572696342726f777365727c7065726d697373696f6e735f72635f6163636f756e7473223b613a393a7b733a32323a225f5f7368617265645f756e697175655f766172735f5f223b613a303a7b7d733a31333a225f5f63616c6c6261636b735f5f223b613a303a7b7d733a31333a2266697273745f646973706c6179223b733a343a22646f6e65223b733a383a227065725f70616765223b4e3b733a353a226f72646572223b4e3b733a363a22736561726368223b4e3b733a31303a226164765f736561726368223b693a303b733a363a226f6666736574223b4e3b733a31383a2273686f775f616c6c5f747269676765726564223b623a303b7d7d733a31353a225f5f6c6f616465645f6a7365735f5f223b613a32393a7b733a34393a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f7363726970746163756c6f75732e6a73223b623a313b733a34333a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f6275696c6465722e6a73223b623a313b733a34333a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f656666656374732e6a73223b623a313b733a34343a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f6472616764726f702e6a73223b623a313b733a34343a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f636f6e74726f6c732e6a73223b623a313b733a34323a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f736c696465722e6a73223b623a313b733a34313a226d6f64756c65732f4c6962732f5363726970744163756c6f55732f312e382e302f736f756e642e6a73223b623a313b733a35383a226d6f64756c65732f4c6962732f517569636b466f726d2f4669656c6454797065732f6175746f73656c6563742f6175746f73656c6563742e6a73223b623a313b733a34313a226d6f64756c65732f4c6962732f436f646570726573732f302e392e362f636f646570726573732e6a73223b623a313b733a33333a226d6f64756c65732f546f6f6c732f53657373696f6e4b65657065722f736b2e6a73223b623a313b733a33373a226d6f64756c65732f5574696c732f53686f72746375742f6a732f53686f72746375742e6a73223b623a313b733a33353a226d6f64756c65732f5574696c732f546f6f6c7469702f6a732f546f6f6c7469702e6a73223b623a313b733a34393a226d6f64756c65732f5574696c732f47656e6572696342726f777365722f6a732f7461626c655f6f766572666c6f772e6a73223b623a313b733a32383a226d6f64756c65732f426173652f44617368626f6172642f61622e6a73223b623a313b733a36353a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656661756c742e6a73223b623a313b733a34363a226d6f64756c65732f4c6962732f517569636b466f726d2f52656e64657265722f54434d5344656661756c742e6a73223b623a313b733a33353a226d6f64756c65732f5574696c732f5265636f726442726f777365722f6d61696e2e6a73223b623a313b733a33353a226d6f64756c65732f4c6962732f4c6569676874626f782f6c6569676874626f782e6a73223b623a313b733a35393a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4c6962732f4c6569676874626f782f64656661756c742e6a73223b623a313b733a33343a226d6f64756c65732f4170706c6574732f436c6f636b2f636f6f6c636c6f636b2e6a73223b623a313b733a33393a226d6f64756c65732f5574696c732f506f70757043616c656e6461722f6a732f6d61696e322e6a73223b623a313b733a34313a226d6f64756c65732f5574696c732f506f70757043616c656e6461722f646174657069636b65722e6a73223b623a313b733a32393a226d6f64756c65732f5574696c732f4d656e752f6a732f6d656e752e6a73223b623a313b733a33333a226d6f64756c65732f426173652f5374617475734261722f6a732f6d61696e2e6a73223b623a313b733a34313a226d6f64756c65732f426173652f426f782f636865636b5f666f725f6e65775f76657273696f6e2e6a73223b623a313b733a35333a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f426f782f64656661756c742e6a73223b623a313b733a33323a226d6f64756c65732f4c6962732f517569636b466f726d2f73656c6563742e6a73223b623a313b733a33343a226d6f64756c65732f5574696c732f54616262656442726f777365722f74625f2e6a73223b623a313b733a36343a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f54616262656442726f777365722f64656661756c742e6a73223b623a313b7d733a31353a225f5f6576616c65645f6a7365735f5f223b613a31333a7b733a33323a223333663131396132303032393836663830306636383939303330623039306439223b623a313b733a33323a226165323237613837613165333738626336653033313137393139346666373163223b623a313b733a33323a223566653665643063613431366336323833313735343633653565663337366136223b623a313b733a33323a223166303639366238373430643532313431303833393565666466623732383133223b623a313b733a33323a226138656563333633366635343938613134653133666138306238373937653837223b623a313b733a33323a223239643966373266653431326331373938636161376331613838373736633537223b623a313b733a33323a223865333637303537303239366539386132346532373936613763356164353131223b623a313b733a33323a223738303634313930386438333664336639636438343333393366306262646364223b623a313b733a33323a226165376633393963663730343936623862366164373562366562326334393163223b623a313b733a33323a226565623838373464326566333230336463393961316638643038383562363637223b623a313b733a33323a223039616633633762396262316636363264353536346533306532333666393136223b623a313b733a33323a223963663564376239353661636362636365363938616433623932366462333835223b623a313b733a33323a223064336631343437646665393039333932613539373265333836316263376433223b623a313b7d733a31363a225f5f6c6f616465645f63737365735f5f223b613a32343a7b733a33343a226d6f64756c65732f4c6962732f434b456469746f722f66726f6e74656e642e637373223b623a313b733a35393a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f546f6f6c7469702f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4c6962732f517569636b466f726d2f64656661756c742e637373223b623a313b733a36363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f44617368626f6172642f64656661756c742e637373223b623a313b733a36313a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f417070732f53686f7574626f782f636861745f666f726d2e637373223b623a313b733a35373a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f43616c656e6461722f6167656e64612e637373223b623a313b733a36393a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f4c6569676874626f7850726f6d70742f6c6569676874626f782e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4c6962732f4c6569676874626f782f64656661756c742e637373223b623a313b733a35383a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4170706c6574732f4e6f74652f64656661756c742e637373223b623a313b733a36353a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f506f70757043616c656e6461722f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f4170706c6574732f4d6f6e7468566965772f796561722e637373223b623a313b733a36313a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f557365722f4c6f67696e2f64656661756c742e637373223b623a313b733a35363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f4d656e752f64656661756c742e637373223b623a313b733a35363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f5365617263682f5365617263682e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f5374617475734261722f64656661756c742e637373223b623a313b733a36303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f416374696f6e4261722f64656661756c742e637373223b623a313b733a36323a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f416374696f6e4261722f6c61756e63687061642e637373223b623a313b733a37303a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f64656661756c742e637373223b623a313b733a35373a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f64656661756c742e637373223b623a313b733a35343a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f426f782f64656661756c742e637373223b623a313b733a35363a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f41646d696e2f64656661756c742e637373223b623a313b733a36353a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f54616262656442726f777365722f64656661756c742e637373223b623a313b733a37343a22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f5265636f726442726f777365722f656469745f7065726d697373696f6e732e637373223b623a313b7d733a31333a227574696c735f746f6f6c746970223b613a323a7b733a31303a226469765f657869737473223b623a313b733a393a2263616c6c6261636b73223b613a313a7b693a313b613a323a7b733a383a2263616c6c6261636b223b613a323a7b693a303b733a31383a2243524d5f436f6e7461637473436f6d6d6f6e223b693a313b733a31393a22636f6e746163745f6765745f746f6f6c746970223b7d733a343a2261726773223b613a313a7b693a303b613a33383a7b733a323a226964223b733a313a2231223b733a31303a22637265617465645f6279223b733a313a2231223b733a31303a22637265617465645f6f6e223b733a31393a22323031322d31312d31342031333a30383a3039223b733a373a223a616374697665223b733a313a2231223b733a393a226c6173745f6e616d65223b733a333a22687569223b733a31303a2266697273745f6e616d65223b733a343a2277616e67223b733a31323a22636f6d70616e795f6e616d65223b733a313a2231223b733a31373a2272656c617465645f636f6d70616e696573223b613a303a7b7d733a353a2267726f7570223b613a323a7b733a363a226f6666696365223b733a363a226f6666696365223b733a353a226669656c64223b733a353a226669656c64223b7d733a353a227469746c65223b733a303a22223b733a31303a22776f726b5f70686f6e65223b733a303a22223b733a31323a226d6f62696c655f70686f6e65223b733a303a22223b733a333a22666178223b733a303a22223b733a353a22656d61696c223b733a32313a2277616e67687569313938383331403132362e636f6d223b733a31313a227765625f61646472657373223b733a303a22223b733a393a22616464726573735f31223b733a303a22223b733a393a22616464726573735f32223b733a303a22223b733a343a2263697479223b733a363a2273757a686f75223b733a373a22636f756e747279223b733a323a225553223b733a343a227a6f6e65223b733a303a22223b733a363a22636f756e7479223b733a303a22223b733a31313a22706f7374616c5f636f6465223b733a303a22223b733a31303a227065726d697373696f6e223b733a313a2230223b733a31303a22686f6d655f70686f6e65223b733a303a22223b733a31343a22686f6d655f616464726573735f31223b733a303a22223b733a31343a22686f6d655f616464726573735f32223b733a303a22223b733a393a22686f6d655f63697479223b733a303a22223b733a31303a2262697274685f64617465223b733a303a22223b733a31323a22686f6d655f636f756e747279223b733a303a22223b733a393a22686f6d655f7a6f6e65223b733a303a22223b733a31313a22686f6d655f636f756e7479223b733a303a22223b733a31363a22686f6d655f706f7374616c5f636f6465223b733a303a22223b733a353a226c6f67696e223b733a313a2231223b733a383a22757365726e616d65223b733a303a22223b733a31323a227365745f70617373776f7264223b733a303a22223b733a31363a22636f6e6669726d5f70617373776f7264223b733a303a22223b733a353a2261646d696e223b733a303a22223b733a363a22616363657373223b613a303a7b7d7d7d7d7d7d733a32303a227574696c735f67656e6572696362726f77736572223b613a313a7b733a31303a226469765f657869737473223b623a313b7d733a343a2268656c70223b613a333a7b733a31383a225065726d697373696f6e7320456469746f72223b613a323a7b693a303b623a303b693a313b733a34343a226d6f64756c65732f5574696c732f5265636f726442726f777365722f68656c702f7065726d697373696f6e73223b7d733a343a224d656e75223b613a323a7b693a303b623a303b693a313b733a32393a226d6f64756c65732f5574696c732f4d656e752f68656c702f696e646578223b7d733a31363a22416374696f6e42617220626173696373223b613a323a7b693a303b623a303b693a313b733a33323a226d6f64756c65732f426173652f416374696f6e4261722f68656c702f6d61696e223b7d7d733a31313a22696d6167655f6361636865223b623a313b733a393a22717569636b666f726d223b613a313a7b733a31323a226175746f636f6d706c657465223b613a323a7b733a33323a226331633939396231636630383734323233633630373534376163616664386565223b613a333a7b733a383a2263616c6c6261636b223b613a323a7b693a303b733a32353a2248544d4c5f517569636b466f726d5f6175746f73656c656374223b693a313b733a32373a226765745f6175746f636f6d706c6574655f73756767657374626f78223b7d733a353a226669656c64223b733a31303a22746f5f5f736561726368223b733a343a2261726773223b613a323a7b693a303b613a323a7b693a303b733a31393a22417070735f53686f7574626f78436f6d6d6f6e223b693a313b733a31313a22757365725f736561726368223b7d693a313b613a303a7b7d7d7d733a33323a226438306630313337653764303533303463343334383062653137326535666433223b613a333a7b733a383a2263616c6c6261636b223b613a323a7b693a303b733a32353a2248544d4c5f517569636b466f726d5f6175746f73656c656374223b693a313b733a32373a226765745f6175746f636f6d706c6574655f73756767657374626f78223b7d733a353a226669656c64223b733a32363a2263726d5f66696c7465725f636f6e746163745f5f736561726368223b733a343a2261726773223b613a323a7b693a303b613a323a7b693a303b733a31383a2243524d5f436f6e7461637473436f6d6d6f6e223b693a313b733a32393a226175746f73656c6563745f636f6e746163745f73756767657374626f78223b7d693a313b613a333a7b693a303b613a303a7b7d693a313b613a323a7b693a303b733a31383a2243524d5f436f6e7461637473436f6d6d6f6e223b693a313b733a32353a22636f6e746163745f666f726d61745f6e6f5f636f6d70616e79223b7d693a323b623a303b7d7d7d7d7d733a31343a22626173655f626f785f6872656673223b613a32383a7b733a33323a223534396266343738353161383362383437623361343761353461383761653931223b613a353a7b733a313a226d223b733a31333a22417070735f53686f7574626f78223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a226330626139316630376539653862336135646165666131626561333633363765223b613a353a7b733a313a226d223b733a393a2243524d5f5461736b73223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a226236376263376562613030346535633638316437653736373033343838396532223b613a353a7b733a313a226d223b733a31333a2243524d5f50686f6e6543616c6c223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a223365333661363633653735306365663863653539613065383864643364626536223b613a353a7b733a313a226d223b733a31323a2243524d5f43616c656e646172223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a226132336239313066363765653930646433666131386461623766626264666263223b613a353a7b733a313a226d223b733a31323a2243524d5f436f6e7461637473223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a303a7b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a223038653736323961363563303539326331663237653464353866653666633937223b613a353a7b733a313a226d223b733a31333a224170706c6574735f436c6f636b223b733a313a2270223b733a33333a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f30223b733a313a2261223b613a313a7b693a303b733a393a2273776973735261696c223b7d733a313a2263223b613a303a7b7d733a313a2266223b733a343a22626f6479223b7d733a33323a223364393432653439633962323432393439343539313132613738666464643239223b613a323a7b733a313a226d223b733a31323a2243524d5f43616c656e646172223b733a313a2270223b733a35343a222f426173655f426f787c302f426173655f44617368626f6172647c6d61696e5f302f4170706c6574735f4d6f6e7468566965777c3133223b7d733a33323a223438333036316530633733326433326561343232396439643362336634303835223b613a323a7b733a313a226d223b733a31303a2243524d5f417373657473223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223865323334613137336337306230343635666463346636373766373630646338223b613a323a7b733a313a226d223b733a31323a2243524d5f43616c656e646172223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226135633761306230656539376566646333656666366662366466643737643265223b613a323a7b733a313a226d223b733a31323a2243524d5f436f6e7461637473223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223266393462616462356339353838326232323936333936613730656366313862223b613a323a7b733a313a226d223b733a373a2243524d5f466178223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223862343431353961323532613132336537653534373962646366623632336635223b613a323a7b733a313a226d223b733a31313a2243524d5f4d656574696e67223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223738656634383463356365306264646335653636383737613964643666326463223b613a323a7b733a313a226d223b733a31333a2243524d5f50686f6e6543616c6c223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223434656531306165303436656438663265333236333963346335336336346630223b613a323a7b733a313a226d223b733a393a2243524d5f5461736b73223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226131663033323238653838636539353738623235356331623831366231376233223b613a323a7b733a313a226d223b733a31343a22426173655f44617368626f617264223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223437396133393836393061663463636632643632626363663266313236663465223b613a323a7b733a313a226d223b733a31333a2243524d5f526f756e6463756265223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226364346338393363366637366633323535623461373366393265623265373461223b613a333a7b733a313a226d223b733a31353a225574696c735f4d657373656e676572223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b733a313a2266223b733a363a2262726f777365223b7d733a33323a223138373234323131336264333532353531343433323963313665663439636661223b613a323a7b733a313a226d223b733a31393a22417070735f41637469766974795265706f7274223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226663656237353137393539636664383762613835323831656162303533303038223b613a323a7b733a313a226d223b733a31313a22426173655f536561726368223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226430303761653063633230373262393764653837386131353764343738653537223b613a323a7b733a313a226d223b733a31333a22417070735f53686f7574626f78223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a226130663564393462343730313432343030333066616137376232643861656662223b613a323a7b733a313a226d223b733a31383a22426173655f557365725f53657474696e6773223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223337363639613966316636633735666631363237613732333265666437633332223b613a323a7b733a313a226d223b4e3b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223464653166363139326539633663653339646234613734376631646632356534223b613a323a7b733a313a226d223b733a31343a22426173655f457373436c69656e74223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223930323534336265643266323765616435393239326636633939383731383536223b613a333a7b733a313a226d223b733a31303a22426173655f41626f7574223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b733a313a2266223b733a343a22696e666f223b7d733a33323a223062373530356235646137623130643130353438386335383364626166323531223b613a323a7b733a313a226d223b733a31303a22426173655f41646d696e223b733a313a2270223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33323a223734393238653032363439396661663166653238363539363264626563313235223b613a323a7b733a313a226d223b733a31323a2243524d5f43616c656e646172223b733a313a2270223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d733a33323a223636633934646330646665666364393465333534663331303639306434646263223b613a323a7b733a313a226d223b733a31323a2243524d5f436f6e7461637473223b733a313a2270223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d733a33323a226335316566396139393163653639343738393734316665656334633835353937223b613a323a7b733a313a226d223b733a393a2243524d5f5461736b73223b733a313a2270223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d7d733a383a2266696c7465725f31223b613a323a7b733a353a2276616c7565223b733a313a2231223b733a343a2264657363223b733a31303a224d79207265636f726473223b7d733a31383a225f5f6d6f64756c655f636f6e74656e745f5f223b613a32333a7b733a31313a222f426173655f426f787c30223b613a333a7b733a353a2276616c7565223b733a343431373a220a0a093c6469762069643d22746f705f6261722220636c6173733d226e6f6e73656c65637461626c6522207374796c653d2277696474683a31303025223e0a09093c6469762069643d224d656e75426172223e0a09093c7461626c652069643d22746f705f6261725f31222063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d2230223e0a09093c74626f64793e0a0909093c74723e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a090909093c746420636c6173733d226d656e752d626172223e3c7370616e2069643d222f426173655f426f787c307c32636f6e74656e74223e3c2f7370616e3e3c2f74643e0a090909093c7464207374796c653d2220656d7074792d63656c6c733a20686964653b2077696474683a203770783b223e3c2f74643e0a090909093c746420636c6173733d22686f6d652d626172222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a2827426173655f486f6d65506167655f6c6f61643d31272c2027272c202727293b22203e0a09090909093c6469762069643d22686f6d652d62617231223e0a0909090909093c64697620636c6173733d22686f6d652d6261722d69636f6e223e3c2f6469763e0a0909090909093c64697620636c6173733d22686f6d652d6261722d74657874223e0a09090909090909486f6d650a0909090909093c2f6469763e0a09090909093c2f6469763e0a090909093c2f74643e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a09090909090909093c746420636c6173733d22746f705f6261725f626c61636b2066696c6c6572223e3c2f74643e0a090909093c746420636c6173733d22746f705f6261725f626c61636b20706f776572656422206e6f777261703d2231223e0a09090909093c6469763e0a0909090909093c6120687265663d22687474703a2f2f6570652e736922207461726765743d225f626c616e6b22207374796c653d22636f6c6f723a77686974653b223e3c623e45504553493c2f623e20706f77657265643c2f613e266e6273703b0a09090909093c2f6469763e0a09090909093c6469763e3c7370616e2069643d2265706573695f6e65775f76657273696f6e223e3c7370616e20206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3330302922207469703d22436865636b696e6720696620746865726520617265207570646174657320617661696c61626c652e2e2e22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e76657273696f6e20312e342e303c2f7370616e3e3c2f7370616e3e3c2f6469763e0a090909093c2f74643e0a0909090909090909093c746420636c6173733d22746f705f6261725f626c61636b20646f6e61746522206e6f777261703d2231223e3c7370616e20206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d22266c743b63656e7465722667743b496620796f752066696e64206f757220736f6674776172652075736566756c2c20706c6561736520737570706f7274207573206279206d616b696e67206120646f6e6174696f6e2e266c743b62722667743b596f75722066756e64696e672077696c6c2068656c7020746f20656e7375726520636f6e74696e75656420646576656c6f706d656e74206f6620746869732070726f6a6563742e266c743b62722667743b436c69636b20666f722064657461696c732e266c743b2f63656e7465722667743b22206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e3c61207461726765743d225f626c616e6b2220687265663d22687474703a2f2f6570652e73692f636f7374223e537570706f7274204550455349213c2f613e3c2f7370616e3e3c2f74643e0a09090909090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a090909093c746420636c6173733d22746f705f6261725f626c61636b20746f705f6261725f68656c70223e3c64697620636c6173733d2268656c70223e3c6120687265663d226d6f64756c65732f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702e7068703f6369643d3222207461726765743d225f626c616e6b22206f6e4d6f7573654f7665723d2224282768656c705f69636f6e27292e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702d686f7665722e706e67273b22206f6e4d6f7573654f75743d2224282768656c705f69636f6e27292e7372633d27646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702e706e67273b223e3c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f4d61696e4d6f64756c65496e64696361746f722f68656c702e706e67222069643d2268656c705f69636f6e2220616c743d223f2220626f726465723d2230223e3c64697620636c6173733d2268656c705f6c6162656c223e48656c703c2f6469763e3c2f613e3c2f6469763e3c2f74643e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e090909090a090909093c746420636c6173733d22746f705f6261725f626c61636b206d6f64756c652d696e64696361746f72223e3c6469762069643d226d6f64756c652d696e64696361746f72223e3c7370616e2069643d222f426173655f426f787c307c38636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a0909093c2f74723e0a09093c2f74626f64793e0a09093c2f7461626c653e0a09093c2f6469763e0a09093c6469762069643d22536861646f7742617222207374796c653d22646973706c61793a206e6f6e653b223e3c2f6469763e0a09093c6469762069643d22416374696f6e426172223e0a0909093c7461626c652069643d22746f705f6261725f32222063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d2230223e0a0909093c74626f64793e0a090909093c74723e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a09090909093c746420636c6173733d226c6f676f223e3c64697620636c6173733d22736861646f775f637373335f6c6f676f5f626f72646572223e3c7370616e2069643d222f426173655f426f787c307c3130636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f74643e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a09090909093c746420636c6173733d2269636f6e73223e0a0909090909093c64697620636c6173733d22736861646f775f637373335f69636f6e735f626f72646572223e0a090909090909093c7370616e2069643d222f426173655f426f787c307c36636f6e74656e74223e3c2f7370616e3e0a0909090909093c2f6469763e0a09090909093c2f74643e0a09090909093c74642069643d226c61756e63687061645f627574746f6e5f73656374696f6e5f73706163696e6722207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b20646973706c61793a6e6f6e653b223e3c2f74643e0a09090909093c746420636c6173733d2269636f6e735f6c61756e6368706164222069643d226c61756e63687061645f627574746f6e5f73656374696f6e22207374796c653d22646973706c61793a6e6f6e653b223e0a0909090909093c64697620636c6173733d22736861646f775f637373335f69636f6e735f6c61756e63687061645f626f72646572223e200a090909090909093c7370616e2069643d222f426173655f426f787c307c37636f6e74656e74223e3c2f7370616e3e0a0909090909093c2f6469763e0a09090909093c2f74643e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203670783b223e3c2f74643e0a09090909093c74642069643d226c6f67696e2d7365617263682d7464223e0a0909090909093c64697620636c6173733d22736861646f775f637373335f6c6f67696e2d7365617263682d74645f626f72646572223e0a09090909090909093c64697620636c6173733d226c6f67696e223e3c7370616e2069643d222f426173655f426f787c307c31636f6e74656e74223e3c2f7370616e3e3c2f6469763e0a09090909090909093c64697620636c6173733d22736561726368222069643d227365617263685f626f78223e3c7370616e2069643d222f426173655f426f787c307c34636f6e74656e74223e3c2f7370616e3e3c2f6469763e0a09090909090909093c64697620636c6173733d2266696c746572222069643d2266696c7465725f626f78223e3c7370616e2069643d222f426173655f426f787c307c39636f6e74656e74223e3c2f7370616e3e3c2f6469763e0a0909090909093c2f6469763e090a09090909093c2f74643e0a09090909093c7464207374796c653d22656d7074792d63656c6c733a20686964653b2077696474683a203870783b223e3c2f74643e0a090909093c2f74723e0a0909093c2f74626f64793e0a0909093c2f7461626c653e0a09093c2f6469763e0a093c2f6469763e0a093c212d2d202d2d3e0a093c6469762069643d22636f6e74656e74223e0a09093c6469762069643d22636f6e74656e745f626f647922207374796c653d22746f703a20353070783b223e0a0909093c63656e7465723e3c7370616e2069643d222f426173655f426f787c307c30636f6e74656e74223e3c2f7370616e3e3c2f63656e7465723e0a09093c2f6469763e0a093c2f6469763e0a0a3c7370616e2069643d222f426173655f426f787c307c35636f6e74656e74223e3c2f7370616e3e0a0a0a3c7374796c6520747970653d22746578742f637373223e0a646976203e2064697623746f705f626172207b20706f736974696f6e3a2066697865643b7d0a646976203e2064697623626f74746f6d5f626172207b20706f736974696f6e3a2066697865643b7d0a3c2f7374796c653e0a0a0a0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b623a303b7d733a32343a222f426173655f426f787c302f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b613a333a7b733a353a2276616c7565223b733a323936333a223c64697620636c6173733d226c6f676765645f6173223e4c6f67676564206173203c2f62723e3c6220636c6173733d22677265656e223e61646d696e3c2f623e3c2f6469763e0a3c64697620636c6173733d226c6f676f75745f637373335f626f78223e3c6120636c6173733d226c6f676f75745f69636f6e222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f557365725f4c6f67696e2537436c6f67696e26253246426173655f426f7825374330253246426173655f557365725f4c6f67696e2537436c6f67696e5f6c6f676f75743d31272c2027272c202727293b22203e4c6f676f75743c64697620636c6173733d226c6f676f75745f69636f6e5f696d67223e3c2f6469763e3c2f613e3c2f6469763e0a0a0a0a0a0a0a3c7374796c6520747970653d22746578742f637373223e0a646976203e2064697623746f705f626172207b20706f736974696f6e3a2066697865643b7d0a646976203e2064697623626f74746f6d5f626172207b20706f736974696f6e3a2066697865643b7d0a3c2f7374796c653e0a0a3c212d2d5b69662067746520494520352e355d3e3c215b6966206c7420494520375d3e0a0a3c7374796c6520747970653d22746578742f637373223e0a23746f705f626172207b0a09706f736974696f6e3a206162736f6c7574653b0a0977696474683a2065787072657373696f6e282028626f64792e6f666673657457696474682d3230292b27707827293b0a7d0a23636f6e74656e745f626f6479207b0a0977696474683a2065787072657373696f6e282028626f64792e6f666673657457696474682d3230292b27707827293b0a7d0a0a23626f64795f636f6e74656e74207b0a09646973706c61793a20626c6f636b3b0a096865696768743a20313030253b0a096d61782d6865696768743a20313030253b0a096f766572666c6f772d783a2068696464656e3b0a096f766572666c6f772d793a206175746f3b0a09706f736974696f6e3a2072656c61746976653b0a097a2d696e6465783a20303b0a0977696474683a313030253b0a7d0a0a68746d6c207b206865696768743a20313030253b206d61782d6865696768743a20313030253b2070616464696e673a20303b206d617267696e3a20303b20626f726465723a20303b206f766572666c6f773a68696464656e3b202f2a67657420726964206f66207363726f6c6c206261727320696e204945202a2f207d0a626f6479207b206865696768743a20313030253b206d61782d6865696768743a20313030253b20626f726465723a20303b207d0a0a0a0a0a2e6c61796572202e6c6566742c0a2e6c61796572202e72696768742c0a2e6c61796572202e63656e746572207b0a096261636b67726f756e643a206e6f6e652021696d706f7274616e743b0a7d0a0a2e6c61796572202e736861646f772d6d6964646c6520646976207b0a096865696768743a2065787072657373696f6e280a090978203d20746869732e706172656e744e6f64652e706172656e744e6f64652e6f66667365744865696768742c0a090979203d207061727365496e7428746869732e63757272656e745374796c652e746f70292c0a09092878202d202828782025203229203f2031203a203029202d202879202a20322929202b20277078270a09290a7d0a0a2e6c61796572202e736861646f772d746f70202e63656e7465722c0a2e6c61796572202e736861646f772d626f74746f6d202e63656e746572207b0a0977696474683a2065787072657373696f6e280a090978203d20746869732e706172656e744e6f64652e706172656e744e6f64652e6f666673657457696474682c0a090979203d207061727365496e7428746869732e63757272656e745374796c652e6c656674292c0a09092878202d202828782025203229203f2031203a203029202d202879202a20322929202b20277078270a09290a7d0a0909090909090909090909090909090909090909090909092f2a20504f50524157494320534349455a4b452021202a2f0a2e6c61796572202e736861646f772d746f70202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f746c2e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d746f70202e726967687409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f74722e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d626f74746f6d202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f626c2e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d626f74746f6d202e7269676874097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f62722e706e67222c2073697a696e674d6574686f643d2263726f7022293b20207d0a2e6c61796572202e736861646f772d746f70202e63656e74657209097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f742e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d626f74746f6d202e63656e746572097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f622e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d6d6964646c65202e6c65667409097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f6c2e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a2e6c61796572202e736861646f772d6d6964646c65202e7269676874097b2066696c7465723a2070726f6769643a4458496d6167655472616e73666f726d2e4d6963726f736f66742e416c706861496d6167654c6f61646572287372633d226d6f64756c65732f426173652f5468656d652f696d616765732f736861646f772f722e706e67222c202073697a696e674d6574686f643d227363616c6522293b207d0a0a2e6c61796572202e736861646f772d626f74746f6d206469762e63656e746572207b0a09626f74746f6d3a202d3370783b0a7d0a0a2e6c61796572202e736861646f772d746f70206469762e63656e746572207b0a09746f703a202d3270783b0a7d0a0a3c2f7374796c653e0a0a3c215b656e6469665d3e3c215b656e6469665d2d2d3e0a0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34363a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e2f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33333a222f426173655f426f787c302f426173655f557365725f4c6f67696e7c6c6f67696e223b7d733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b613a333a7b733a353a2276616c7565223b733a3236343a223c6469762069643d6d656e755f636f6e74656e65725f62326463653263356363323137633836663336326361333337383434363033313e3c696d672077696474683d22313622206865696768743d2231362220626f726465723d223022207374796c653d2277696474683a20313670783b206865696768743a20313670783b206d617267696e2d746f703a203270783b206d617267696e2d6c6566743a203270783b206261636b67726f756e642d636f6c6f723a2077686974653b20636f6c6f723a2077686974653b20626f726465723a203070783b22207372633d226d6f64756c65732f5574696c732f4d656e752f7468656d652f6c6f616465722e676966223e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33393a222f426173655f426f787c302f426173655f4d656e757c6d656e752f5574696c735f4d656e757c30223b613a333a7b733a353a2276616c7565223b733a3236343a223c6469762069643d6d656e755f636f6e74656e65725f62326463653263356363323137633836663336326361333337383434363033313e3c696d672077696474683d22313622206865696768743d2231362220626f726465723d223022207374796c653d2277696474683a20313670783b206865696768743a20313670783b206d617267696e2d746f703a203270783b206d617267696e2d6c6566743a203270783b206261636b67726f756e642d636f6c6f723a2077686974653b20636f6c6f723a2077686974653b20626f726465723a203070783b22207372633d226d6f64756c65732f5574696c732f4d656e752f7468656d652f6c6f616465722e676966223e3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a32363a222f426173655f426f787c302f426173655f4d656e757c6d656e75223b7d733a33393a222f426173655f426f787c302f426173655f4d656e757c717569636b5f6163636573735f6d656e75223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33303a222f426173655f426f787c302f426173655f5365617263687c736561726368223b613a333a7b733a353a2276616c7565223b733a323033353a22090d0a093c666f726d20206f6e7375626d69743d222428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427293b436f646550726573732e757064617465282428276c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642729293b5f63686a282428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f536561726368253743736561726368272c27536561726368696e67272c2727293b2428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3431383530656263656331363664613938303762303835373531393666656664222069643d226c6962735f71665f3431383530656263656331363664613938303762303835373531393666656664223e0d0a093c696e707574206e616d653d225f71665f5f6c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a0d0a202020203c212d2d20446973706c617920746865206669656c6473202d2d3e0d0a09202020203c7461626c652069643d22426173655f5365617263685f5f536561726368222063656c6c70616464696e673d2230222063656c6c73706163696e673d22302220626f726465723d2230223e0d0a0909093c74723e0d0a090909093c746420636c6173733d22696e707574223e3c696e70757420782d7765626b69742d7370656563683d22782d7765626b69742d73706565636822206c616e673d22656e22206f6e7765626b69747370656563686368616e67653d222428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427293b436f646550726573732e757064617465282428276c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642729293b5f63686a282428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f536561726368253743736561726368272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d303b22206e616d653d22717569636b5f7365617263682220747970653d227465787422202f3e3c2f74643e0d0a090909093c746420636c6173733d227375626d6974223e3c64697620636c6173733d227365617263685f627574746f6e5f637373335f626f78223e3c6120636c6173733d227365617263685f627574746f6e222020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d222428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427293b436f646550726573732e757064617465282428276c6962735f71665f34313835306562636563313636646139383037623038353735313936666566642729293b5f63686a282428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e73657269616c697a6528292b27265f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f536561726368253743736561726368272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f343138353065626365633136366461393830376230383537353139366665666427292e7375626d697465642e76616c75653d303b22203e5365617263683c64697620636c6173733d227365617263685f69636f6e223e3c2f6469763e3c2f613e3c2f6469763e3c2f74643e0d0a0909093c2f74723e09090d0a09093c2f7461626c653e0d0a093c2f666f726d3e0d0a223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34333a222f426173655f426f787c302f426173655f5365617263687c7365617263682f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33303a222f426173655f426f787c302f426173655f5365617263687c736561726368223b7d733a33333a222f426173655f426f787c302f426173655f5374617475734261727c737461747573223b613a333a7b733a353a2276616c7565223b733a3232323a223c6469762069643d22426173655f5374617475734261722220636c6173733d22426173655f537461747573426172223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22736861646f775f31357078222069643d227374617475736261725f636f6e74656e74223e0a0909093c6469762069643d227374617475736261725f746578742220636c6173733d226d657373616765206c6f6164696e67223e0a090909094c6f6164696e672e2e2e0a0909093c2f6469763e0a09093c2f6469763e0a093c2f6469763e0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b613a333a7b733a353a2276616c7565223b733a313231363a223c6469762069643d22426173655f416374696f6e4261722220616c69676e3d2263656e746572223e0a093c7461626c6520636c6173733d22416374696f6e426172223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a202020202020202020202020202020203c74642076616c69676e3d22746f70223e0a20202020202020202020202020202020202020203c6469762069643d2270616e656c223e0a0909090909090909090909093c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f6261636b3d31272c2027272c202727293b2220203e0a090909090909093c64697620636c6173733d2270616e656c5f6469765f6c6566742065706573695f6269675f627574746f6e223e0a090909090909090909090909090909090909090909090909093c64697620636c6173733d226469765f69636f6e2069636f6e5f6261636b22207374796c653d226d617267696e2d746f703a203370783b223e3c2f6469763e0a09090909090909090909090909090909090909090909090909090909090909093c7370616e3e4261636b3c2f7370616e3e0a0909090909090909090909090909093c2f6469763e0a0909090909093c2f613e0a0909090909090909090909093c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f34373238636233326538373331396630656535643730623465356462353634313d31272c2027272c202727293b2220203e0a090909090909093c64697620636c6173733d2270616e656c5f6469765f6c6566742065706573695f6269675f627574746f6e223e0a090909090909090909090909090909090909090909090909093c64697620636c6173733d226469765f69636f6e2069636f6e5f61646422207374796c653d226d617267696e2d746f703a203370783b223e3c2f6469763e0a09090909090909090909090909090909090909090909090909090909090909093c7370616e3e416464206e65772072756c653c2f7370616e3e0a0909090909090909090909090909093c2f6469763e0a0909090909093c2f613e0a09090909090909090909090909090909093c2f6469763e0a202020202020202020202020202020203c2f74643e0a2020202020202020202020203c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e6261722f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c616374696f6e626172223b7d733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b613a333a7b733a353a2276616c7565223b733a333630323a223c6469762069643d22616374696f6e6261725f6c61756e636870616422206269673d22312220636c6173733d226c6569676874626f78223e3c696e70757420747970653d2268696464656e222069643d22616374696f6e6261725f6c61756e63687061645f62696773697a65222076616c75653d223022202f3e0a3c6469762069643d224c6569676874626f785f686561646572223e0a202020203c7461626c6520626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d2230223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a090909090a202020202020202020202020202020203c746420636c6173733d226c65667422203e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f726573697a6522206f6e436c69636b3d226c6962735f6c6569676874626f785f726573697a6528746869732e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f646529223e0a09090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f726573697a655f74657874223e526573697a653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a090909093c746420636c6173733d2263656e746572223e4c61756e63687061643c2f74643e0a090909093c746420636c6173733d227269676874223e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f636c6f73652220687265663d226a6176617363726970743a6c6569676874626f785f646561637469766174652827616374696f6e6261725f6c61756e63687061642729223e0a0909090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f636c6f73655f74657874223e436c6f73653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a0909093c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e0a0a3c6469762069643d224c6569676874626f785f636f6e74656e74223e0a202020203c63656e7465723e0a0a3c7461626c652069643d22426173655f416374696f6e4261725f5f6c61756e6368706164222063656c6c73706163696e673d2230222063656c6c70616464696e673d223022207374796c653d226d617267696e3a20313070783b223e0a093c74723e0a09202020200909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f43616c656e64617226626f785f6d61696e5f687265663d3734393238653032363439396661663166653238363539363264626563313235272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f43616c656e6461722f69636f6e2e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e43616c656e6461723c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f436f6e7461637473266d6f64653d636f6d70616e79265f5f69636f6e5f5f3d636f6d70616e6965732e706e67265f5f69636f6e5f736d616c6c5f5f3d636f6d70616e6965732d736d616c6c2e706e6726626f785f6d61696e5f687265663d3636633934646330646665666364393465333534663331303639306434646263272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f436f6e74616374732f636f6d70616e6965732e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e436f6d70616e6965733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f436f6e7461637473266d6f64653d636f6e74616374265f5f69636f6e5f5f3d636f6e74616374732e706e67265f5f69636f6e5f736d616c6c5f5f3d636f6e74616374732d736d616c6c2e706e6726626f785f6d61696e5f687265663d3636633934646330646665666364393465333534663331303639306434646263272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f436f6e74616374732f636f6e74616374732e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e436f6e74616374733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090909093c74643e0a09202020203c61206f6e436c69636b3d22616374696f6e6261725f6c61756e63687061645f6465616374697661746528293b5f63686a2827706172656e745f6d6f64756c653d43524d5f5461736b7326626f785f6d61696e5f687265663d6335316566396139393163653639343738393734316665656334633835353937272c2027272c202727293b2220687265663d226a6176617363726970743a766f6964283029223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f5461736b732f69636f6e2e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020090909093c7370616e3e5461736b733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a09093c2f74643e0a090a093c2f74723e0a3c2f7461626c653e0a0a3c2f63656e7465723e0a3c2f6469763e3c2f6469763e3c6469762069643d22426173655f416374696f6e4261722220616c69676e3d2263656e746572223e0a093c7461626c6520636c6173733d22416374696f6e426172223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a202020202020202020202020202020203c74642076616c69676e3d22746f70223e0a20202020202020202020202020202020202020203c6469762069643d2270616e656c223e0a0909090909090909090909090909090909093c6120636c6173733d226c624f6e222072656c3d22616374696f6e6261725f6c61756e63687061642220687265663d226a6176617363726970743a766f6964283029223e0a090909090909093c64697620636c6173733d2270616e656c5f6469765f72696768742065706573695f6269675f627574746f6e223e0a090909090909090909090909090909093c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f426173652f416374696f6e4261722f6c61756e636865722e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a0909090909090909090909090909090909090909090909093c7370616e3e4c61756e63687061643c2f7370616e3e0a0909090909090909090909090909093c2f6469763e0a0909090909093c2f613e0a09090909090909090909093c2f6469763e0a202020202020202020202020202020203c2f74643e0a2020202020202020202020203c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b7d733a34393a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e63687061642f426173655f5468656d657c31223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a33363a222f426173655f426f787c302f426173655f416374696f6e4261727c6c61756e6368706164223b7d733a35323a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f72223b613a333a7b733a353a2276616c7565223b733a35363a223c64697620636c6173733d2274657874223e0a41646d696e697374726174696f6e3a20436f6e74726f6c2050616e656c0a3c2f6469763e20223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a36353a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f722f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a35323a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6d6f64756c65696e64696361746f72223b7d733a33303a222f426173655f426f787c302f43524d5f46696c746572737c66696c746572223b613a333a7b733a353a2276616c7565223b733a343334373a223c6469762069643d2263726d5f66696c7465727322206269673d22312220636c6173733d226c6569676874626f78223e3c696e70757420747970653d2268696464656e222069643d2263726d5f66696c746572735f62696773697a65222076616c75653d223122202f3e0a3c6469762069643d224c6569676874626f785f686561646572223e0a202020203c7461626c6520626f726465723d2230222063656c6c70616464696e673d2230222063656c6c73706163696e673d2230223e0a20202020202020203c74626f64793e0a2020202020202020202020203c74723e0a090909090a202020202020202020202020202020203c746420636c6173733d226c65667422203e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f726573697a6522206f6e436c69636b3d226c6962735f6c6569676874626f785f726573697a6528746869732e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f64652e706172656e744e6f646529223e0a09090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f726573697a655f74657874223e526573697a653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a090909093c746420636c6173733d2263656e746572223e50657273706563746976653c2f74643e0a090909093c746420636c6173733d227269676874223e0a09090909093c6120636c6173733d226c61756e63687061645f69636f6e5f636c6f73652220687265663d226a6176617363726970743a6c6569676874626f785f64656163746976617465282763726d5f66696c746572732729223e0a0909090909093c6e6f62723e3c7370616e20636c6173733d226c61756e63687061635f69636f6e5f636c6f73655f74657874223e436c6f73653c2f7370616e3e3c2f6e6f62723e0a09090909093c2f613e0a090909093c2f74643e0a090909090a0909093c2f74723e0a20202020202020203c2f74626f64793e0a202020203c2f7461626c653e0a3c2f6469763e0a0a3c6469762069643d224c6569676874626f785f636f6e74656e74223e0a202020203c63656e7465723e0a0a3c7461626c652069643d2243524d5f46696c74657273222063656c6c73706163696e673d2230222063656c6c70616464696e673d2230223e0a093c74723e0a20202020202020203c212d2d204d59202d2d3e0a20202020202020203c74643e0a0a09202020203c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c74657226253246426173655f426f782537433025324643524d5f46696c7465727325374366696c7465725f63616c6c6261636b5f62643433326464313033643266616463373732306230376130663930663835363d31272c2027272c202727293b22202069643d2263726d5f66696c746572735f6d79223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f6d792e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020202020202020202020202020202020203c7370616e3e4d79207265636f7264733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a0a20202020202020203c2f74643e0a0a20202020202020203c212d2d20414c4c202d2d3e0a20202020202020203c74643e0a0a09202020203c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c74657226253246426173655f426f782537433025324643524d5f46696c7465727325374366696c7465725f63616c6c6261636b5f31613832626232643736643832373362373730393135383961353635373336663d31272c2027272c202727293b22202069643d2263726d5f66696c746572735f616c6c223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f616c6c2e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020202020202020202020202020202020203c7370616e3e416c6c207265636f7264733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a0a20202020202020203c2f74643e0a0a20202020202020203c212d2d204d414e4147452046494c54455253202d2d3e0a20202020202020203c74643e0a0a09202020203c612020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c74657226253246426173655f426f782537433025324643524d5f46696c7465727325374366696c7465725f63616c6c6261636b5f66643233343635383963313935316634326132356663396361383435353165363d31272c2027272c202727293b22202069643d2263726d5f66696c746572735f6d616e616765223e0a09093c64697620636c6173733d2265706573695f6269675f627574746f6e223e0a2020202020202020202020202020202020202020202020203c696d67207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f43524d2f46696c746572732f6d616e6167652e706e672220616c743d222220616c69676e3d226d6964646c652220626f726465723d2230222077696474683d22333222206865696768743d223332223e0a202020202020202020202020202020202020202020202020202020202020202020202020202020203c7370616e3e4d616e61676520707265736574733c2f7370616e3e0a20202020202020202020202020202020202020203c2f6469763e0a09202020203c2f613e0a0a20202020202020203c2f74643e0a202020203c2f74723e0a20202020202020203c746420636f6c7370616e3d223322207374796c653d22746578742d616c69676e3a2063656e7465723b223e0a0909093c666f726d20206f6e7375626d69743d222428276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827293b436f646550726573732e757064617465282428276c6962735f71665f34303361396335353338383036353561383038326338636431626566653463382729293b5f63686a282428276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f782537433025324643524d5f46696c7465727325374366696c746572272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f343033613963353533383830363535613830383263386364316265666534633827292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f3430336139633535333838303635356138303832633863643162656665346338222069643d226c6962735f71665f3430336139633535333838303635356138303832633863643162656665346338223e3c696e707574206e616d653d225f71665f5f6c6962735f71665f34303361396335353338383036353561383038326338636431626566653463382220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223022202f3e0a0a0a090909095265636f726473206f66266e6273703b3c7370616e20636c6173733d2266696c746572732d6175746f73656c656374223e3c7370616e2069643d225f5f63726d5f66696c7465725f636f6e746163745f73656c6563745f7370616e223e3c73656c656374206e616d653d2263726d5f66696c7465725f636f6e74616374222069643d2263726d5f66696c7465725f636f6e74616374223e0a3c6f7074696f6e2076616c75653d22223e537461727420747970696e6720746f207365617263682e2e2e3c2f6f7074696f6e3e093c6f7074696f6e2076616c75653d2231222073656c65637465643d2273656c6563746564223e6875692077616e673c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d2232223e7a206c6c3c2f6f7074696f6e3e0a3c2f73656c6563743e3c2f7370616e3e3c7370616e2069643d225f5f63726d5f66696c7465725f636f6e746163745f6175746f636f6d706c6574655f7370616e22207374796c653d22646973706c61793a6e6f6e653b223e3c696e70757420706c616365686f6c6465723d22537461727420747970696e6720746f207365617263682e2e2e22206e616d653d2263726d5f66696c7465725f636f6e746163745f5f7365617263682220747970653d2274657874222069643d225f5f6175746f636f6d706c6574655f69645f63726d5f66696c7465725f636f6e746163745f5f73656172636822202f3e3c6469762069643d225f5f6175746f636f6d706c6574655f69645f63726d5f66696c7465725f636f6e746163745f5f7365617263685f73756767657374626f782220636c6173733d226175746f636f6d706c657465223e266e6273703b3c2f6469763e3c2f7370616e3e3c2f7370616e3e266e6273703b3c7370616e20636c6173733d226368696c645f627574746f6e223e3c696e707574206f6e636c69636b3d2263726d5f66696c746572735f64656163746976617465282922206e616d653d227375626d6974222076616c75653d2253686f772220747970653d227375626d697422202f3e3c2f7370616e3e0a0909093c2f666f726d3e0a0a09093c2f74643e0a202020203c2f74723e0a3c2f7461626c653e0a0a3c62723e0a0a0a3c2f63656e7465723e0a3c2f6469763e3c2f6469763e3c6120636c6173733d226c624f6e2064697361626c656420627574746f6e222072656c3d2263726d5f66696c74657273223e50657273706563746976653a203c623e4d79207265636f7264733c2f623e3c64697620636c6173733d2266696c7465725f69636f6e5f696d67223e3c2f6469763e3c2f613e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a34313a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f223b613a333a7b733a353a2276616c7565223b733a3131383a223c6120687265663d2223223e3c696d6720626f726465723d223022207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f696d616765732f6c6f676f2d736d616c6c2e706e67222077696474683d2231393322206865696768743d223833223e3c2f613e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a35343a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f2f426173655f5468656d657c30223b613a333a7b733a353a2276616c7565223b733a303a22223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a34313a222f426173655f426f787c302f426173655f4d61696e4d6f64756c65496e64696361746f727c6c6f676f223b7d733a32393a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f30223b613a333a7b733a353a2276616c7565223b733a35373a223c7370616e2069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f307c30636f6e74656e74223e3c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a31313a222f426173655f426f787c30223b7d733a35313a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c30223b613a333a7b733a353a2276616c7565223b733a363435363a223c666f726d20206f6e7375626d69743d222428276c6962735f71665f666634363833336464356166633463383230313563303263656133313030633127292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f666634363833336464356166633463383230313563303263656133313030633127293b436f646550726573732e757064617465282428276c6962735f71665f66663436383333646435616663346338323031356330326365613331303063312729293b5f63686a282428276c6962735f71665f666634363833336464356166633463383230313563303263656133313030633127292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f7773657225374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f666634363833336464356166633463383230313563303263656133313030633127292e7375626d697465642e76616c75653d303b72657475726e2066616c73653b2220616374696f6e3d222f65706573695f312e342e302f70726f636573732e70687022206d6574686f643d22706f737422206e616d653d226c6962735f71665f6666343638333364643561666334633832303135633032636561333130306331222069643d226c6962735f71665f6666343638333364643561666334633832303135633032636561333130306331223e3c696e707574206e616d653d225f71665f5f6c6962735f71665f66663436383333646435616663346338323031356330326365613331303063312220747970653d2268696464656e222076616c75653d2222202f3e0a3c696e707574206e616d653d227375626d697465642220747970653d2268696464656e222076616c75653d223122202f3e0a0a0d0a0d0a3c7461626c65207374796c653d22626f726465722d73706163696e673a203370783b2077696474683a35303070783b223e0d0a09090909090909090909090909090909090909090909093c74723e0d0a0909093c746420636c6173733d2265706573695f6c6162656c22207374796c653d2277696474683a2031353070783b77686974652d73706163653a206e6f777261703b223e0d0a090909095265636f72647365740909093c2f74643e0d0a0909093c746420636c6173733d2265706573695f6461746122207374796c653d2277696474683a2033353070783b223e0d0a090909093c646976207374796c653d22706f736974696f6e3a2072656c61746976653b223e0d0a09090909093c7370616e20636c6173733d22666f726d5f6572726f72222069643d226572726f725f6c6962735f71665f66663436383333646435616663346338323031356330326365613331303063315f7265636f72647365745f73656c656374223e3c2f7370616e3e0d0a09090909093c73656c656374206f6e6368616e67653d222428276c6962735f71665f666634363833336464356166633463383230313563303263656133313030633127292e7375626d697465642e76616c75653d313b4576656e742e6669726528646f63756d656e742c27653a7375626d69745f666f726d272c276c6962735f71665f666634363833336464356166633463383230313563303263656133313030633127293b436f646550726573732e757064617465282428276c6962735f71665f66663436383333646435616663346338323031356330326365613331303063312729293b5f63686a282428276c6962735f71665f666634363833336464356166633463383230313563303263656133313030633127292e73657269616c697a6528292b2726616d703b5f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f7773657225374330272c2750726f63657373696e672e2e2e272c2727293b2428276c6962735f71665f666634363833336464356166633463383230313563303263656133313030633127292e7375626d697465642e76616c75653d303b22206f6e6b6579646f776e3d2274797065416865616428293b22206e616d653d227265636f7264736574223e0a093c6f7074696f6e2076616c75653d2263726d5f617373657473223e4173736574733c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d22636f6d70616e79223e436f6d70616e6965733c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d22636f6e74616374223e436f6e74616374733c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d2272635f6163636f756e7473222073656c65637465643d2273656c6563746564223e4d61696c206163636f756e74733c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d2272635f6d756c7469706c655f656d61696c73223e4d61696c206164647265737365733c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d2272635f6d61696c73223e4d61696c733c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d2272635f6d61696c735f6173736f63223e4d61696c73204173736f63696174696f6e733c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d2263726d5f6d656574696e67223e4d656574696e67733c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d2270686f6e6563616c6c223e50686f6e6563616c6c733c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d227461736b223e5461736b733c2f6f7074696f6e3e0a093c6f7074696f6e2076616c75653d22646174615f7461785f7261746573223e5461782052617465733c2f6f7074696f6e3e0a3c2f73656c6563743e0d0a090909093c2f6469763e0d0a0909093c2f74643e0d0a09093c2f74723e0d0a090909093c74723e0d0a09093c746420636f6c7370616e3d2232223e0d0a0909093c63656e74657220636c6173733d226368696c645f627574746f6e223e0d0a090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909090909093c2f63656e7465723e0d0a09093c2f74643e0d0a093c2f74723e0d0a3c2f7461626c653e0d0a0d0a0d0a3c2f666f726d3e0a0a3c64697620636c6173733d225574696c735f54616262656442726f777365725f646976223e0a0a3c7461626c652063656c6c73706163696e673d2230222063656c6c70616464696e673d22302220626f726465723d223022207374796c653d2277696474683a20313030253b223e0a093c74723e0a09093c74643e0a0909093c756c20636c6173733d225574696c735f54616262656442726f77736572223e0a0909090909090909090909093c6c693e0a09090909090909093c7370616e2069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c305f63302220687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d227461626265645f62726f777365725f73776974636828302c352c746869732c272f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c3027292220636c6173733d227461626265645f62726f777365725f756e73656c656374656422206f726967696e616c5f616374696f6e3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743302532465574696c735f54616262656442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743302532465574696c735f54616262656442726f77736572253743305f706167653d30272c2027272c202727293b223e4d616e616765205265636f7264733c696d6720636c6173733d227461625f69636f6e222069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c305f63305f69636f6e22207372633d2222207374796c653d22646973706c61793a6e6f6e653b223e3c2f7370616e3e0a090909093c2f6c693e266e6273703b0a0909090909090909090909093c6c693e0a09090909090909093c7370616e2069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c305f63312220687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d227461626265645f62726f777365725f73776974636828312c352c746869732c272f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c3027292220636c6173733d227461626265645f62726f777365725f756e73656c656374656422206f726967696e616c5f616374696f6e3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743302532465574696c735f54616262656442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743302532465574696c735f54616262656442726f77736572253743305f706167653d31272c2027272c202727293b223e4d616e616765204669656c64733c696d6720636c6173733d227461625f69636f6e222069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c305f63315f69636f6e22207372633d2222207374796c653d22646973706c61793a6e6f6e653b223e3c2f7370616e3e0a090909093c2f6c693e266e6273703b0a0909090909090909090909093c6c693e0a09090909090909093c7370616e2069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c305f63322220687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d227461626265645f62726f777365725f73776974636828322c352c746869732c272f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c3027292220636c6173733d227461626265645f62726f777365725f756e73656c656374656422206f726967696e616c5f616374696f6e3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743302532465574696c735f54616262656442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743302532465574696c735f54616262656442726f77736572253743305f706167653d32272c2027272c202727293b223e4d616e616765204164646f6e733c696d6720636c6173733d227461625f69636f6e222069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c305f63325f69636f6e22207372633d2222207374796c653d22646973706c61793a6e6f6e653b223e3c2f7370616e3e0a090909093c2f6c693e266e6273703b0a0909090909090909090909093c6c693e0a09090909090909093c7370616e2069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c305f63332220687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d227461626265645f62726f777365725f73776974636828332c352c746869732c272f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c3027292220636c6173733d227461626265645f62726f777365725f73656c656374656422206f726967696e616c5f616374696f6e3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743302532465574696c735f54616262656442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743302532465574696c735f54616262656442726f77736572253743305f706167653d33272c2027272c202727293b223e5065726d697373696f6e733c696d6720636c6173733d227461625f69636f6e222069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c305f63335f69636f6e22207372633d2222207374796c653d22646973706c61793a6e6f6e653b223e3c2f7370616e3e0a090909093c2f6c693e266e6273703b0a0909090909090909090909093c6c693e0a09090909090909093c7370616e2069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c305f63342220687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d227461626265645f62726f777365725f73776974636828342c352c746869732c272f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c3027292220636c6173733d227461626265645f62726f777365725f756e73656c656374656422206f726967696e616c5f616374696f6e3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743302532465574696c735f54616262656442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743302532465574696c735f54616262656442726f77736572253743305f706167653d34272c2027272c202727293b223e436c6970626f617264205061747465726e3c696d6720636c6173733d227461625f69636f6e222069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c305f63345f69636f6e22207372633d2222207374796c653d22646973706c61793a6e6f6e653b223e3c2f7370616e3e0a090909093c2f6c693e266e6273703b0a0909090909093c2f756c3e0a09093c2f74643e0a093c2f74723e0a093c7472203e0a09093c7464203e0a09093c64697620636c6173733d22626f726465725f626f74746f6d223e3c2f6469763e0a0909093c63656e7465723e3c6469762069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f54616262656442726f777365727c305f643322203e3c7370616e2069643d222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c307c30636f6e74656e74223e3c2f7370616e3e3c2f6469763e3c2f63656e7465723e0a09093c2f74643e0a093c2f74723e0a3c2f7461626c653e0a0a3c2f6469763e3c7370616e207374796c653d22646973706c61793a6e6f6e65223e33653761336532653235383435353132373361376165653031623363623565623c2f7370616e3e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a32393a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f30223b7d733a39363a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c302f5574696c735f47656e6572696342726f777365727c7065726d697373696f6e735f72635f6163636f756e7473223b613a333a7b733a353a2276616c7565223b733a31333534343a220a3c6469763e0a0a0a0a3c64697620636c6173733d227461626c65223e0a093c64697620636c6173733d226c61796572223e0a09093c64697620636c6173733d22637373335f636f6e74656e745f736861646f77223e0a0909093c64697620636c6173733d226d617267696e327078223e0a090909090a090909093c7461626c6520636c6173733d225574696c735f47656e6572696342726f77736572222063656c6c73706163696e673d2230222063656c6c70616464696e673d223022207374796c653d2277696474683a313030253b7461626c652d6c61796f75743a66697865643b6f766572666c6f773a68696464656e3b746578742d6f766572666c6f773a656c6c69707369733b223e0a3c74686561643e3c747220636c6173733d226e6f6e73656c65637461626c65223e0a3c7468207374796c653d2277696474683a20333870783b2220636c6173733d226669727374223e3c7370616e3e3c7370616e3e266e6273703b3c2f7370616e3e3c2f7370616e3e3c2f74683e0a3c74682077696474683d22313030707822206e6f777261703d22312220203e3c7370616e3e41636365737320747970653c2f7370616e3e3c2f74683e0a3c74682077696474683d2233332522206e6f777261703d22312220203e3c7370616e3e436c656172616e63652072657175697265643c2f7370616e3e3c2f74683e0a3c74682077696474683d2236362522206e6f777261703d22312220203e3c7370616e3e4170706c69657320746f207265636f7264733c2f7370616e3e3c2f74683e0a3c74682077696474683d22313030707822206e6f777261703d2231222020636c6173733d226c617374223e3c7370616e3e4669656c64733c2f7370616e3e3c2f74683e0a3c2f74723e3c2f74686561643e0a3c74626f64793e0a3c74723e0a3c7464206e6f777261703d226e6f777261702220636c6173733d225574696c735f47656e6572696342726f777365725f5f7464223e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d224564697422206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f33353432633961353762623533643339376235343265393736653135346432393d31272c2027272c202727293b22203e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f656469742e706e672220626f726465723d2230223e3c2f613e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2244656c65746522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d22696628636f6e6669726d282741726520796f75207375726520796f752077616e7420746f2064656c65746520746869732072756c653f272929207b5f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f39323736303032316239653962373766653466656361316538396163646538663d31272c2027272c202727293b7d223e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656c6574652e706e672220626f726465723d2230223e3c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e566965773c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e4163636573733a20456d706c6f7965653c2f7370616e3e3c2f74643e0a3c74642020636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d2277686974652d73706163653a206e6f726d616c3b223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e3c623e457065736920557365723c2f623e20697320657175616c20746f203c623e55736572204c6f67696e3c2f623e203c2f7370616e3e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d226261636b67726f756e642d636f6c6f723a23626266664242223e3137202f2031373c2f74643e0a3c2f74723e0a3c74723e0a3c7464206e6f777261703d226e6f777261702220636c6173733d225574696c735f47656e6572696342726f777365725f5f7464223e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d224564697422206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f63656632636365636130636232396164343633386532396234636331343865613d31272c2027272c202727293b22203e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f656469742e706e672220626f726465723d2230223e3c2f613e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2244656c65746522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d22696628636f6e6669726d282741726520796f75207375726520796f752077616e7420746f2064656c65746520746869732072756c653f272929207b5f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f31656264323161616631326330376132646438313764626233373161393864353d31272c2027272c202727293b7d223e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656c6574652e706e672220626f726465723d2230223e3c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e456469743c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e4163636573733a20456d706c6f7965653c2f7370616e3e3c2f74643e0a3c74642020636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d2277686974652d73706163653a206e6f726d616c3b223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e3c2f7370616e3e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d226261636b67726f756e642d636f6c6f723a23626666624242223e3c7370616e20206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3330302922207469703d22266c743b622667743b4578636c75646564206669656c64733a266c743b2f622667743b266c743b68722667743b4570657369205573657222206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922203e3136202f2031373c2f7370616e3e3c2f74643e0a3c2f74723e0a3c74723e0a3c7464206e6f777261703d226e6f777261702220636c6173733d225574696c735f47656e6572696342726f777365725f5f7464223e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d224564697422206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f35623233393639323535306132613036316163643165663533646662363761633d31272c2027272c202727293b22203e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f656469742e706e672220626f726465723d2230223e3c2f613e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2244656c65746522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d22696628636f6e6669726d282741726520796f75207375726520796f752077616e7420746f2064656c65746520746869732072756c653f272929207b5f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f37373532386139323736623464383162626331383736393439373931333439643d31272c2027272c202727293b7d223e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656c6574652e706e672220626f726465723d2230223e3c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e4164643c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e4163636573733a20456d706c6f7965653c2f7370616e3e3c2f74643e0a3c74642020636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d2277686974652d73706163653a206e6f726d616c3b223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e3c2f7370616e3e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d226261636b67726f756e642d636f6c6f723a23626266664242223e3137202f2031373c2f74643e0a3c2f74723e0a3c74723e0a3c7464206e6f777261703d226e6f777261702220636c6173733d225574696c735f47656e6572696342726f777365725f5f7464223e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d224564697422206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f33666236356436336538343364373533613530313962663966613165346430313d31272c2027272c202727293b22203e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f656469742e706e672220626f726465723d2230223e3c2f613e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2244656c65746522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d22696628636f6e6669726d282741726520796f75207375726520796f752077616e7420746f2064656c65746520746869732072756c653f272929207b5f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f30336666643761343132333364623835363861306461383434373161343566323d31272c2027272c202727293b7d223e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656c6574652e706e672220626f726465723d2230223e3c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e44656c6574653c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e4163636573733a20456d706c6f7965653c2f7370616e3e3c2f74643e0a3c74642020636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d2277686974652d73706163653a206e6f726d616c3b223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e3c623e457065736920557365723c2f623e20697320657175616c20746f203c623e55736572204c6f67696e3c2f623e203c2f7370616e3e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d226261636b67726f756e642d636f6c6f723a23626266664242223e3137202f2031373c2f74643e0a3c2f74723e0a3c74723e0a3c7464206e6f777261703d226e6f777261702220636c6173733d225574696c735f47656e6572696342726f777365725f5f7464223e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d224564697422206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f30346562613465366165653530666162636235386636633064643362636466383d31272c2027272c202727293b22203e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f656469742e706e672220626f726465723d2230223e3c2f613e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2244656c65746522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d22696628636f6e6669726d282741726520796f75207375726520796f752077616e7420746f2064656c65746520746869732072756c653f272929207b5f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f63616431313566386330636330336364653733656161666662643332346130653d31272c2027272c202727293b7d223e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656c6574652e706e672220626f726465723d2230223e3c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e5072696e743c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e537570657261646d696e3c2f7370616e3e3c2f74643e0a3c74642020636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d2277686974652d73706163653a206e6f726d616c3b223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e3c2f7370616e3e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d226261636b67726f756e642d636f6c6f723a23626266664242223e3137202f2031373c2f74643e0a3c2f74723e0a3c74723e0a3c7464206e6f777261703d226e6f777261702220636c6173733d225574696c735f47656e6572696342726f777365725f5f7464223e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d224564697422206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d225f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f39613862323730336530346533323766656362313436613634313334306666313d31272c2027272c202727293b22203e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f656469742e706e672220626f726465723d2230223e3c2f613e3c6120206f6e4d6f7573654d6f76653d22696628747970656f66285574696c735f546f6f6c7469705f5f73686f7754697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f73686f7754697028746869732c6576656e742c3530302922207469703d2244656c65746522206f6e4d6f7573654f75743d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922206f6e4d6f75736555703d22696628747970656f66285574696c735f546f6f6c7469705f5f6869646554697029213d27756e646566696e656427295574696c735f546f6f6c7469705f5f68696465546970282922202020687265663d226a6176617363726970743a766f696428302922206f6e436c69636b3d22696628636f6e6669726d282741726520796f75207375726520796f752077616e7420746f2064656c65746520746869732072756c653f272929207b5f63686a28275f5f616374696f6e5f6d6f64756c655f5f3d253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f777365722537433026253246426173655f426f7825374330253246426173655f41646d696e2537436d61696e5f302532465574696c735f5265636f726442726f77736572253743305f63616c6c6261636b5f61323439316364393062356339633034366663386630306336386333616232383d31272c2027272c202727293b7d223e3c696d6720636c6173733d22616374696f6e5f627574746f6e22207372633d22646174612f426173655f5468656d652f74656d706c617465732f64656661756c742f5574696c732f47656e6572696342726f777365722f64656c6574652e706e672220626f726465723d2230223e3c2f613e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e4578706f72743c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f746420223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e537570657261646d696e3c2f7370616e3e3c2f74643e0a3c74642020636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d2277686974652d73706163653a206e6f726d616c3b223e3c7370616e20636c6173733d225574696c735f5265636f726442726f777365725f5f7065726d697373696f6e735f6372697473223e3c2f7370616e3e3c2f74643e0a3c746420206f6e6d6f7573656f7665723d22696628747970656f66287461626c655f6f766572666c6f775f73686f7729213d27756e646566696e656427297461626c655f6f766572666c6f775f73686f772874686973293b2220636c6173733d225574696c735f47656e6572696342726f777365725f5f74642022207374796c653d226261636b67726f756e642d636f6c6f723a23626266664242223e3137202f2031373c2f74643e0a3c2f74723e0a3c2f74626f64793e0a3c2f7461626c653e0a0a090909090a0a09090909090909090a090909090909093c2f6469763e0a2009093c2f6469763e0a093c2f6469763e0a3c2f6469763e0a0a3c2f6469763e223b733a323a226a73223b613a303a7b7d733a363a22706172656e74223b733a35313a222f426173655f426f787c302f426173655f41646d696e7c6d61696e5f302f5574696c735f5265636f726442726f777365727c30223b7d7d733a31323a22637573746f6d5f6465627567223b733a303a22223b733a31343a225f5f686973746f72795f69645f5f223b693a373b733a31333a227265636f726462726f77736572223b613a313a7b733a31323a2261646d696e5f616363657373223b623a313b7d733a31393a227574696c735f7265636f726462726f77736572223b613a313a7b733a33323a223661636662613365383966656132663461636563343464646132616633663966223b613a363a7b733a333a22746162223b733a31303a2263726d5f617373657473223b733a353a226372697473223b613a303a7b7d733a343a22636f6c73223b613a303a7b7d733a353a226f72646572223b613a313a7b733a31303a223a4564697465645f6f6e223b733a343a2244455343223b7d733a353a2261646d696e223b623a313b733a32313a226d6f72655f7461626c655f70726f70657274696573223b613a303a7b7d7d7d7d);
INSERT INTO `session_client` (`session_name`, `client_id`, `data`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `task_access`
--

CREATE TABLE IF NOT EXISTS `task_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crits` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `task_access`
--

INSERT INTO `task_access` (`id`, `action`, `crits`) VALUES
(1, 'print', 'a:0:{}'),
(2, 'export', 'a:0:{}'),
(3, 'view', 'a:2:{s:12:"(!permission";i:2;s:10:"|employees";s:4:"USER";}'),
(4, 'add', 'a:0:{}'),
(5, 'edit', 'a:3:{s:11:"(permission";i:0;s:10:"|employees";s:4:"USER";s:10:"|customers";s:4:"USER";}'),
(6, 'delete', 'a:1:{s:11:":Created_by";s:7:"USER_ID";}'),
(7, 'delete', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `task_access_clearance`
--

CREATE TABLE IF NOT EXISTS `task_access_clearance` (
  `rule_id` int(11) DEFAULT NULL,
  `clearance` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task_access_clearance`
--

INSERT INTO `task_access_clearance` (`rule_id`, `clearance`) VALUES
(1, 'SUPERADMIN'),
(2, 'SUPERADMIN'),
(3, 'ACCESS:employee'),
(4, 'ACCESS:employee'),
(5, 'ACCESS:employee'),
(6, 'ACCESS:employee'),
(7, 'ACCESS:employee'),
(7, 'ACCESS:manager');

-- --------------------------------------------------------

--
-- Table structure for table `task_access_fields`
--

CREATE TABLE IF NOT EXISTS `task_access_fields` (
  `rule_id` int(11) DEFAULT NULL,
  `block_field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task_access_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `task_callback`
--

CREATE TABLE IF NOT EXISTS `task_callback` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task_callback`
--

INSERT INTO `task_callback` (`field`, `callback`, `freezed`) VALUES
('Title', 'CRM_TasksCommon::display_title', 1),
('Employees', 'CRM_TasksCommon::display_employees', 1),
('Employees', 'CRM_ContactsCommon::QFfield_contact', 0),
('Customers', 'CRM_ContactsCommon::display_company_contact', 1),
('Customers', 'CRM_ContactsCommon::QFfield_company_contact', 0),
('Status', 'CRM_TasksCommon::display_status', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_data_1`
--

CREATE TABLE IF NOT EXISTS `task_data_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `private` int(11) DEFAULT '0',
  `active` tinyint(4) DEFAULT '1',
  `f_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_description` text COLLATE utf8_unicode_ci,
  `f_employees` text COLLATE utf8_unicode_ci,
  `f_customers` text COLLATE utf8_unicode_ci,
  `f_status` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_priority` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_permission` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_longterm` tinyint(4) DEFAULT NULL,
  `f_deadline` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `task_data_1`
--


-- --------------------------------------------------------

--
-- Table structure for table `task_edit_history`
--

CREATE TABLE IF NOT EXISTS `task_edit_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edited_by` (`edited_by`),
  KEY `task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `task_edit_history`
--


-- --------------------------------------------------------

--
-- Table structure for table `task_edit_history_data`
--

CREATE TABLE IF NOT EXISTS `task_edit_history_data` (
  `edit_id` int(11) DEFAULT NULL,
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_value` text COLLATE utf8_unicode_ci,
  KEY `edit_id` (`edit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task_edit_history_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `task_favorite`
--

CREATE TABLE IF NOT EXISTS `task_favorite` (
  `fav_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`fav_id`),
  KEY `user_id` (`user_id`),
  KEY `task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `task_favorite`
--


-- --------------------------------------------------------

--
-- Table structure for table `task_field`
--

CREATE TABLE IF NOT EXISTS `task_field` (
  `field` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` tinyint(4) DEFAULT '1',
  `visible` tinyint(4) DEFAULT '1',
  `required` tinyint(4) DEFAULT '1',
  `active` tinyint(4) DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `filter` tinyint(4) DEFAULT '0',
  `param` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `task_field`
--

INSERT INTO `task_field` (`field`, `type`, `extra`, `visible`, `required`, `active`, `position`, `filter`, `param`, `style`) VALUES
('id', 'foreign index', 0, 0, 1, 1, 1, 0, NULL, NULL),
('General', 'page_split', 0, 1, 1, 1, 2, 0, NULL, NULL),
('Title', 'text', 0, 1, 1, 1, 3, 0, '255', ''),
('Description', 'long text', 0, 0, 0, 1, 4, 0, '255', ''),
('Employees', 'multiselect', 0, 1, 1, 1, 5, 1, 'contact::Last Name|First Name;CRM_ContactsCommon::contact_format_no_company;CRM_TasksCommon::employees_crits', ''),
('Customers', 'multiselect', 0, 1, 0, 1, 6, 0, '', ''),
('Status', 'commondata', 0, 1, 1, 1, 7, 1, '1__CRM/Status', ''),
('Priority', 'commondata', 0, 1, 1, 1, 8, 1, '1__CRM/Priority', ''),
('Permission', 'commondata', 0, 0, 1, 1, 9, 0, '1__CRM/Access', ''),
('Longterm', 'checkbox', 0, 1, 0, 1, 10, 1, '', ''),
('Deadline', 'date', 0, 1, 0, 1, 11, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `task_recent`
--

CREATE TABLE IF NOT EXISTS `task_recent` (
  `recent_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `visited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`recent_id`),
  KEY `user_id` (`user_id`),
  KEY `task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `task_recent`
--


-- --------------------------------------------------------

--
-- Table structure for table `tools_whoisonline_users`
--

CREATE TABLE IF NOT EXISTS `tools_whoisonline_users` (
  `session_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_login_id` int(11) NOT NULL,
  PRIMARY KEY (`session_name`),
  KEY `user_login_id` (`user_login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tools_whoisonline_users`
--

INSERT INTO `tools_whoisonline_users` (`session_name`, `user_login_id`) VALUES
('65c6av8e2fhmbtcvl6k316nop2', 1),
('njmveib0m1rriuolc3ee87n2t4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_autologin`
--

CREATE TABLE IF NOT EXISTS `user_autologin` (
  `user_login_id` int(11) NOT NULL,
  `autologin_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_log` datetime DEFAULT NULL,
  `description` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  KEY `user_login_id` (`user_login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_autologin`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE IF NOT EXISTS `user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `login`, `active`, `admin`) VALUES
(1, 'admin', 1, 2),
(2, 'zll', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_login_ban`
--

CREATE TABLE IF NOT EXISTS `user_login_ban` (
  `failed_on` int(11) DEFAULT NULL,
  `from_addr` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_login_ban`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_password`
--

CREATE TABLE IF NOT EXISTS `user_password` (
  `user_login_id` int(11) NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_password`
--

INSERT INTO `user_password` (`user_login_id`, `password`, `mail`) VALUES
(1, 'e10adc3949ba59abbe56e057f20f883e', 'wanghui198831@126.com'),
(2, 'e10adc3949ba59abbe56e057f20f883e', 'hank.huiwang@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_reset_pass`
--

CREATE TABLE IF NOT EXISTS `user_reset_pass` (
  `user_login_id` int(11) NOT NULL,
  `hash_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `user_login_id` (`user_login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_reset_pass`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_attachment_download`
--

CREATE TABLE IF NOT EXISTS `utils_attachment_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attach_file_id` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `expires_on` datetime DEFAULT NULL,
  `remote` tinyint(4) DEFAULT '0',
  `download_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `attach_file_id` (`attach_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `utils_attachment_download`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_attachment_file`
--

CREATE TABLE IF NOT EXISTS `utils_attachment_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attach_id` int(11) NOT NULL,
  `original` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attach_id` (`attach_id`,`revision`),
  KEY `created_by` (`created_by`),
  KEY `utils_attachment_file__revision__idx` (`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `utils_attachment_file`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_attachment_googledocs`
--

CREATE TABLE IF NOT EXISTS `utils_attachment_googledocs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note_id` int(11) NOT NULL,
  `view_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_id` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `utils_attachment_googledocs`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_attachment_link`
--

CREATE TABLE IF NOT EXISTS `utils_attachment_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `local` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(4) DEFAULT '0',
  `permission` smallint(6) DEFAULT '0',
  `permission_by` int(11) DEFAULT NULL,
  `sticky` tinyint(4) DEFAULT '0',
  `func` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `args` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_by` (`permission_by`),
  KEY `utils_attachment_link__attachment__local__idx` (`local`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `utils_attachment_link`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_attachment_note`
--

CREATE TABLE IF NOT EXISTS `utils_attachment_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attach_id` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_by` int(11) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attach_id` (`attach_id`,`revision`),
  KEY `created_by` (`created_by`),
  KEY `utils_attachment_note__revision__idx` (`revision`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `utils_attachment_note`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_bbcode`
--

CREATE TABLE IF NOT EXISTS `utils_bbcode` (
  `code` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `func` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utils_bbcode`
--

INSERT INTO `utils_bbcode` (`code`, `func`) VALUES
('b', 'Utils_BBCodeCommon::tag_b'),
('color', 'Utils_BBCodeCommon::tag_color'),
('company', 'CRM_ContactsCommon::company_bbcode'),
('contact', 'CRM_ContactsCommon::contact_bbcode'),
('i', 'Utils_BBCodeCommon::tag_i'),
('img', 'Utils_BBCodeCommon::tag_img'),
('meeting', 'CRM_MeetingCommon::meeting_bbcode'),
('phone', 'CRM_PhoneCallCommon::phone_bbcode'),
('s', 'Utils_BBCodeCommon::tag_s'),
('task', 'CRM_TasksCommon::task_bbcode'),
('u', 'Utils_BBCodeCommon::tag_u'),
('url', 'Utils_BBCodeCommon::tag_url');

-- --------------------------------------------------------

--
-- Table structure for table `utils_commondata_tree`
--

CREATE TABLE IF NOT EXISTS `utils_commondata_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '-1',
  `akey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `readonly` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `parent_id` (`parent_id`,`akey`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=677 ;

--
-- Dumping data for table `utils_commondata_tree`
--

INSERT INTO `utils_commondata_tree` (`id`, `parent_id`, `akey`, `value`, `readonly`) VALUES
(1, -1, 'Calling_Codes', NULL, 0),
(2, 1, 'US', '+1', 0),
(3, 1, 'CA', '+1', 0),
(4, 1, 'BS', '+1242', 0),
(5, 1, 'BB', '+1246', 0),
(6, 1, 'AI', '+1264', 0),
(7, 1, 'AG', '+1268', 0),
(8, 1, 'VG', '+1284', 0),
(9, 1, 'VI', '+1340', 0),
(10, 1, 'KY', '+1345', 0),
(11, 1, 'BM', '+1441', 0),
(12, 1, 'GD', '+1473', 0),
(13, 1, 'TC', '+1649', 0),
(14, 1, 'MS', '+1664', 0),
(15, 1, 'MP', '+1670', 0),
(16, 1, 'GU', '+1671', 0),
(17, 1, 'AS', '+1684', 0),
(18, 1, 'LC', '+1758', 0),
(19, 1, 'DM', '+1767', 0),
(20, 1, 'VC', '+1784', 0),
(21, 1, 'PR', '+1787', 0),
(22, 1, 'DO', '+1849', 0),
(23, 1, 'TT', '+1868', 0),
(24, 1, 'KN', '+1869', 0),
(25, 1, 'JM', '+1876', 0),
(26, 1, 'EG', '+20', 0),
(27, 1, 'MA', '+212', 0),
(28, 1, 'EH', '+212', 0),
(29, 1, 'DZ', '+213', 0),
(30, 1, 'TN', '+216', 0),
(31, 1, 'LY', '+218', 0),
(32, 1, 'GM', '+220', 0),
(33, 1, 'SN', '+221', 0),
(34, 1, 'MR', '+222', 0),
(35, 1, 'ML', '+223', 0),
(36, 1, 'GN', '+224', 0),
(37, 1, 'CI', '+225', 0),
(38, 1, 'BF', '+226', 0),
(39, 1, 'NE', '+227', 0),
(40, 1, 'TG', '+228', 0),
(41, 1, 'BJ', '+229', 0),
(42, 1, 'MU', '+230', 0),
(43, 1, 'LR', '+231', 0),
(44, 1, 'SL', '+232', 0),
(45, 1, 'GH', '+233', 0),
(46, 1, 'NG', '+234', 0),
(47, 1, 'TD', '+235', 0),
(48, 1, 'CF', '+236', 0),
(49, 1, 'CM', '+237', 0),
(50, 1, 'CV', '+238', 0),
(51, 1, 'ST', '+239', 0),
(52, 1, 'GQ', '+240', 0),
(53, 1, 'GA', '+241', 0),
(54, 1, 'CG', '+242', 0),
(55, 1, 'CD', '+243', 0),
(56, 1, 'AO', '+244', 0),
(57, 1, 'GW', '+245', 0),
(58, 1, 'IO', '+246', 0),
(59, 1, 'AC', '+247', 0),
(60, 1, 'SC', '+248', 0),
(61, 1, 'SD', '+249', 0),
(62, 1, 'RW', '+250', 0),
(63, 1, 'ET', '+251', 0),
(64, 1, 'SO', '+252', 0),
(65, 1, 'QS', '+252', 0),
(66, 1, 'DJ', '+253', 0),
(67, 1, 'KE', '+254', 0),
(68, 1, 'TZ', '+255', 0),
(69, 1, 'UG', '+256', 0),
(70, 1, 'BI', '+257', 0),
(71, 1, 'MZ', '+258', 0),
(72, 1, 'ZM', '+260', 0),
(73, 1, 'MG', '+261', 0),
(74, 1, 'RE', '+262', 0),
(75, 1, 'YT', '+262', 0),
(76, 1, 'ZW', '+263', 0),
(77, 1, 'NA', '+264', 0),
(78, 1, 'MW', '+265', 0),
(79, 1, 'LS', '+266', 0),
(80, 1, 'BW', '+267', 0),
(81, 1, 'SZ', '+268', 0),
(82, 1, 'KM', '+269', 0),
(83, 1, 'ZA', '+27', 0),
(84, 1, 'SH', '+290', 0),
(85, 1, 'TA', '+290', 0),
(86, 1, 'ER', '+291', 0),
(87, 1, 'AW', '+297', 0),
(88, 1, 'FO', '+298', 0),
(89, 1, 'GL', '+299', 0),
(90, 1, 'GR', '+30', 0),
(91, 1, 'NL', '+31', 0),
(92, 1, 'BE', '+32', 0),
(93, 1, 'FR', '+33', 0),
(94, 1, 'ES', '+34', 0),
(95, 1, 'GI', '+350', 0),
(96, 1, 'PT', '+351', 0),
(97, 1, 'LU', '+352', 0),
(98, 1, 'IE', '+353', 0),
(99, 1, 'IS', '+354', 0),
(100, 1, 'AL', '+355', 0),
(101, 1, 'MT', '+356', 0),
(102, 1, 'CY', '+357', 0),
(103, 1, 'FI', '+358', 0),
(104, 1, 'AX', '+358', 0),
(105, 1, 'BG', '+359', 0),
(106, 1, 'HU', '+36', 0),
(107, 1, 'LT', '+370', 0),
(108, 1, 'LV', '+371', 0),
(109, 1, 'EE', '+372', 0),
(110, 1, 'MD', '+373', 0),
(111, 1, 'AM', '+374', 0),
(112, 1, 'QN', '+994', 0),
(113, 1, 'BY', '+375', 0),
(114, 1, 'AD', '+376', 0),
(115, 1, 'MC', '+377', 0),
(116, 1, 'SM', '+378', 0),
(117, 1, 'VA', '+39', 0),
(118, 1, 'UA', '+380', 0),
(119, 1, 'RS', '+381', 0),
(120, 1, 'ME', '+382', 0),
(121, 1, 'HR', '+385', 0),
(122, 1, 'SI', '+386', 0),
(123, 1, 'BA', '+387', 0),
(124, 1, 'EU', '+388', 0),
(125, 1, 'MK', '+389', 0),
(126, 1, 'IT', '+39', 0),
(127, 1, 'RO', '+40', 0),
(128, 1, 'CH', '+41', 0),
(129, 1, 'CZ', '+420', 0),
(130, 1, 'SK', '+421', 0),
(131, 1, 'LI', '+423', 0),
(132, 1, 'AT', '+43', 0),
(133, 1, 'GB', '+44', 0),
(134, 1, 'GG', '+44', 0),
(135, 1, 'IM', '+44', 0),
(136, 1, 'JE', '+44', 0),
(137, 1, 'DK', '+45', 0),
(138, 1, 'SE', '+46', 0),
(139, 1, 'NO', '+47', 0),
(140, 1, 'SJ', '+47', 0),
(141, 1, 'PL', '+48', 0),
(142, 1, 'DE', '+49', 0),
(143, 1, 'FK', '+500', 0),
(144, 1, 'BZ', '+501', 0),
(145, 1, 'GT', '+502', 0),
(146, 1, 'SV', '+503', 0),
(147, 1, 'HN', '+504', 0),
(148, 1, 'NI', '+505', 0),
(149, 1, 'CR', '+506', 0),
(150, 1, 'PA', '+507', 0),
(151, 1, 'PM', '+508', 0),
(152, 1, 'HT', '+509', 0),
(153, 1, 'PE', '+51', 0),
(154, 1, 'MX', '+52', 0),
(155, 1, 'CU', '+53', 0),
(156, 1, 'AR', '+54', 0),
(157, 1, 'BR', '+55', 0),
(158, 1, 'CL', '+56', 0),
(159, 1, 'CO', '+57', 0),
(160, 1, 'VE', '+58', 0),
(161, 1, 'GP', '+590', 0),
(162, 1, 'BL', '+590', 0),
(163, 1, 'MF', '+590', 0),
(164, 1, 'BO', '+591', 0),
(165, 1, 'GY', '+592', 0),
(166, 1, 'EC', '+593', 0),
(167, 1, 'GF', '+594', 0),
(168, 1, 'PY', '+595', 0),
(169, 1, 'MQ', '+596', 0),
(170, 1, 'SR', '+597', 0),
(171, 1, 'UY', '+598', 0),
(172, 1, 'AN', '+599', 0),
(173, 1, 'MY', '+60', 0),
(174, 1, 'AU', '+61', 0),
(175, 1, 'CX', '+61', 0),
(176, 1, 'CC', '+61', 0),
(177, 1, 'ID', '+62', 0),
(178, 1, 'PH', '+63', 0),
(179, 1, 'NZ', '+64', 0),
(180, 1, 'SG', '+65', 0),
(181, 1, 'TH', '+66', 0),
(182, 1, 'TL', '+670', 0),
(183, 1, 'NF', '+672', 0),
(184, 1, 'AQ', '+672', 0),
(185, 1, 'BN', '+673', 0),
(186, 1, 'NR', '+674', 0),
(187, 1, 'PG', '+675', 0),
(188, 1, 'TO', '+676', 0),
(189, 1, 'SB', '+677', 0),
(190, 1, 'VU', '+678', 0),
(191, 1, 'FJ', '+679', 0),
(192, 1, 'PW', '+680', 0),
(193, 1, 'WF', '+681', 0),
(194, 1, 'CK', '+682', 0),
(195, 1, 'NU', '+683', 0),
(196, 1, 'WS', '+685', 0),
(197, 1, 'KI', '+686', 0),
(198, 1, 'NC', '+687', 0),
(199, 1, 'TV', '+688', 0),
(200, 1, 'PF', '+689', 0),
(201, 1, 'TK', '+690', 0),
(202, 1, 'FM', '+691', 0),
(203, 1, 'MH', '+692', 0),
(204, 1, 'RU', '+7', 0),
(205, 1, 'KZ', '+7', 0),
(206, 1, 'XT', '+800', 0),
(207, 1, 'XS', '+808', 0),
(208, 1, 'JP', '+81', 0),
(209, 1, 'KR', '+82', 0),
(210, 1, 'VN', '+84', 0),
(211, 1, 'KP', '+850', 0),
(212, 1, 'HK', '+852', 0),
(213, 1, 'MO', '+853', 0),
(214, 1, 'KH', '+855', 0),
(215, 1, 'LA', '+856', 0),
(216, 1, 'CN', '+86', 0),
(217, 1, 'XN', '+870', 0),
(218, 1, 'PN', '+872', 0),
(219, 1, 'XP', '+878', 0),
(220, 1, 'BD', '+880', 0),
(221, 1, 'XG', '+881', 0),
(222, 1, 'XV', '+882', 0),
(223, 1, 'XL', '+883', 0),
(224, 1, 'TW', '+886', 0),
(225, 1, 'XD', '+888', 0),
(226, 1, 'TR', '+90', 0),
(227, 1, 'QY', '+90', 0),
(228, 1, 'IN', '+91', 0),
(229, 1, 'PK', '+92', 0),
(230, 1, 'AF', '+93', 0),
(231, 1, 'LK', '+94', 0),
(232, 1, 'MM', '+95', 0),
(233, 1, 'MV', '+960', 0),
(234, 1, 'LB', '+961', 0),
(235, 1, 'JO', '+962', 0),
(236, 1, 'SY', '+963', 0),
(237, 1, 'IQ', '+964', 0),
(238, 1, 'KW', '+965', 0),
(239, 1, 'SA', '+966', 0),
(240, 1, 'YE', '+967', 0),
(241, 1, 'OM', '+968', 0),
(242, 1, 'PS', '+972', 0),
(243, 1, 'AE', '+971', 0),
(244, 1, 'IL', '+972', 0),
(245, 1, 'BH', '+973', 0),
(246, 1, 'QA', '+974', 0),
(247, 1, 'BT', '+975', 0),
(248, 1, 'MN', '+976', 0),
(249, 1, 'NP', '+977', 0),
(250, 1, 'XR', '+979', 0),
(251, 1, 'IR', '+98', 0),
(252, 1, 'XC', '+991', 0),
(253, 1, 'TJ', '+992', 0),
(254, 1, 'TM', '+993', 0),
(255, 1, 'AZ', '+994', 0),
(256, 1, 'GE', '+995', 0),
(257, 1, 'KG', '+996', 0),
(258, 1, 'UZ', '+998', 0),
(259, -1, 'Countries', NULL, 0),
(260, 259, 'AF', 'Afghanistan', 0),
(261, 259, 'AL', 'Albania', 0),
(262, 259, 'DZ', 'Algeria', 0),
(263, 259, 'AS', 'Samoa American', 0),
(264, 259, 'AD', 'Andorra', 0),
(265, 259, 'AG', 'Antigua & Barbuda', 0),
(266, 259, 'AI', 'Anguilla', 0),
(267, 259, 'AR', 'Argentina', 0),
(268, 259, 'AA', 'Armenia', 0),
(269, 259, 'AW', 'Aruba', 0),
(270, 259, 'AU', 'Australia', 0),
(271, 259, 'AT', 'Austria', 0),
(272, 259, 'AZ', 'Azerbaijan', 0),
(273, 259, 'BS', 'Bahamas', 0),
(274, 259, 'BH', 'Bahrain', 0),
(275, 259, 'BD', 'Bangladesh', 0),
(276, 259, 'BB', 'Barbados', 0),
(277, 259, 'BY', 'Belarus', 0),
(278, 259, 'BE', 'Belgium', 0),
(279, 259, 'BZ', 'Belize', 0),
(280, 259, 'BJ', 'Benin', 0),
(281, 259, 'BM', 'Bermuda', 0),
(282, 259, 'BT', 'Bhutan', 0),
(283, 259, 'BO', 'Bolivia', 0),
(284, 259, 'BL', 'Bonaire', 0),
(285, 259, 'BA', 'Bosnia & Herzegovina', 0),
(286, 259, 'BW', 'Botswana', 0),
(287, 259, 'BR', 'Brazil', 0),
(288, 259, 'BC', 'British Indian Ocean Territory', 0),
(289, 259, 'BN', 'Brunei', 0),
(290, 259, 'BG', 'Bulgaria', 0),
(291, 259, 'BF', 'Burkina Faso', 0),
(292, 259, 'BI', 'Burundi', 0),
(293, 259, 'KH', 'Cambodia', 0),
(294, 259, 'CM', 'Cameroon', 0),
(295, 259, 'CA', 'Canada', 0),
(296, 259, 'IC', 'Canary Islands', 0),
(297, 259, 'CV', 'Cape Verde', 0),
(298, 259, 'KY', 'Cayman Islands', 0),
(299, 259, 'CF', 'Central African Republic', 0),
(300, 259, 'TD', 'Chad', 0),
(301, 259, 'CD', 'Channel Islands', 0),
(302, 259, 'CL', 'Chile', 0),
(303, 259, 'CN', 'China', 0),
(304, 259, 'CI', 'Christmas Island', 0),
(305, 259, 'CS', 'Cocos Islands', 0),
(306, 259, 'CO', 'Colombia', 0),
(307, 259, 'CC', 'Comoros', 0),
(308, 259, 'CG', 'Congo', 0),
(309, 259, 'CK', 'Cook Islands', 0),
(310, 259, 'CR', 'Costa Rica', 0),
(311, 259, 'CT', 'Cote D''Ivoire', 0),
(312, 259, 'HR', 'Croatia', 0),
(313, 259, 'CU', 'Cuba', 0),
(314, 259, 'CB', 'Curacao', 0),
(315, 259, 'CY', 'Cyprus', 0),
(316, 259, 'CZ', 'Czech Republic', 0),
(317, 259, 'DK', 'Denmark', 0),
(318, 259, 'DJ', 'Djibouti', 0),
(319, 259, 'DM', 'Dominica', 0),
(320, 259, 'DO', 'Dominican Republic', 0),
(321, 259, 'TM', 'East Timor', 0),
(322, 259, 'EC', 'Ecuador', 0),
(323, 259, 'EG', 'Egypt', 0),
(324, 259, 'SV', 'El Salvador', 0),
(325, 259, 'GQ', 'Equatorial Guinea', 0),
(326, 259, 'ER', 'Eritrea', 0),
(327, 259, 'EE', 'Estonia', 0),
(328, 259, 'ET', 'Ethiopia', 0),
(329, 259, 'FA', 'Falkland Islands', 0),
(330, 259, 'FO', 'Faroe Islands', 0),
(331, 259, 'FJ', 'Fiji', 0),
(332, 259, 'FI', 'Finland', 0),
(333, 259, 'FR', 'France', 0),
(334, 259, 'GF', 'French Guiana', 0),
(335, 259, 'PF', 'French Polynesia', 0),
(336, 259, 'FS', 'French Southern Territories', 0),
(337, 259, 'GA', 'Gabon', 0),
(338, 259, 'GM', 'Gambia', 0),
(339, 259, 'GE', 'Georgia', 0),
(340, 259, 'DE', 'Germany', 0),
(341, 259, 'GH', 'Ghana', 0),
(342, 259, 'GI', 'Gibraltar', 0),
(343, 259, 'GB', 'United Kingdom', 0),
(344, 259, 'GR', 'Greece', 0),
(345, 259, 'GL', 'Greenland', 0),
(346, 259, 'GD', 'Grenada', 0),
(347, 259, 'GP', 'Guadeloupe', 0),
(348, 259, 'GU', 'Guam', 0),
(349, 259, 'GT', 'Guatemala', 0),
(350, 259, 'GN', 'Guinea', 0),
(351, 259, 'GY', 'Guyana', 0),
(352, 259, 'HT', 'Haiti', 0),
(353, 259, 'HW', 'Hawaii', 0),
(354, 259, 'HN', 'Honduras', 0),
(355, 259, 'HK', 'Hong Kong', 0),
(356, 259, 'HU', 'Hungary', 0),
(357, 259, 'IS', 'Iceland', 0),
(358, 259, 'IN', 'India', 0),
(359, 259, 'ID', 'Indonesia', 0),
(360, 259, 'IA', 'Iran', 0),
(361, 259, 'IQ', 'Iraq', 0),
(362, 259, 'IR', 'Ireland', 0),
(363, 259, 'IM', 'Isle of Man', 0),
(364, 259, 'IL', 'Israel', 0),
(365, 259, 'IT', 'Italy', 0),
(366, 259, 'JM', 'Jamaica', 0),
(367, 259, 'JP', 'Japan', 0),
(368, 259, 'JO', 'Jordan', 0),
(369, 259, 'KZ', 'Kazakhstan', 0),
(370, 259, 'KE', 'Kenya', 0),
(371, 259, 'KI', 'Kiribati', 0),
(372, 259, 'NK', 'Korea North', 0),
(373, 259, 'KS', 'Korea South', 0),
(374, 259, 'KW', 'Kuwait', 0),
(375, 259, 'KG', 'Kyrgyzstan', 0),
(376, 259, 'LA', 'Laos', 0),
(377, 259, 'LV', 'Latvia', 0),
(378, 259, 'LB', 'Lebanon', 0),
(379, 259, 'LS', 'Lesotho', 0),
(380, 259, 'LR', 'Liberia', 0),
(381, 259, 'LY', 'Libya', 0),
(382, 259, 'LI', 'Liechtenstein', 0),
(383, 259, 'LT', 'Lithuania', 0),
(384, 259, 'LU', 'Luxembourg', 0),
(385, 259, 'MO', 'Macau', 0),
(386, 259, 'MK', 'Macedonia', 0),
(387, 259, 'MG', 'Madagascar', 0),
(388, 259, 'MY', 'Malaysia', 0),
(389, 259, 'MW', 'Malawi', 0),
(390, 259, 'MV', 'Maldives', 0),
(391, 259, 'ML', 'Mali', 0),
(392, 259, 'MT', 'Malta', 0),
(393, 259, 'MH', 'Marshall Islands', 0),
(394, 259, 'MQ', 'Martinique', 0),
(395, 259, 'MR', 'Mauritania', 0),
(396, 259, 'MU', 'Mauritius', 0),
(397, 259, 'ME', 'Mayotte', 0),
(398, 259, 'MX', 'Mexico', 0),
(399, 259, 'MI', 'Midway Islands', 0),
(400, 259, 'MD', 'Moldova', 0),
(401, 259, 'MC', 'Monaco', 0),
(402, 259, 'MN', 'Mongolia', 0),
(403, 259, 'MS', 'Montserrat', 0),
(404, 259, 'MA', 'Morocco', 0),
(405, 259, 'MZ', 'Mozambique', 0),
(406, 259, 'MM', 'Myanmar', 0),
(407, 259, 'NA', 'Nambia', 0),
(408, 259, 'NU', 'Nauru', 0),
(409, 259, 'NP', 'Nepal', 0),
(410, 259, 'AN', 'Netherland Antilles', 0),
(411, 259, 'NL', 'Netherlands', 0),
(412, 259, 'NV', 'Nevis', 0),
(413, 259, 'NC', 'New Caledonia', 0),
(414, 259, 'NZ', 'New Zealand', 0),
(415, 259, 'NI', 'Nicaragua', 0),
(416, 259, 'NE', 'Niger', 0),
(417, 259, 'NG', 'Nigeria', 0),
(418, 259, 'NW', 'Niue', 0),
(419, 259, 'NF', 'Norfolk Island', 0),
(420, 259, 'NO', 'Norway', 0),
(421, 259, 'OM', 'Oman', 0),
(422, 259, 'PK', 'Pakistan', 0),
(423, 259, 'PW', 'Palau Island', 0),
(424, 259, 'PS', 'Palestine', 0),
(425, 259, 'PA', 'Panama', 0),
(426, 259, 'PG', 'Papua New Guinea', 0),
(427, 259, 'PY', 'Paraguay', 0),
(428, 259, 'PE', 'Peru', 0),
(429, 259, 'PH', 'Philippines', 0),
(430, 259, 'PO', 'Pitcairn Island', 0),
(431, 259, 'PL', 'Poland', 0),
(432, 259, 'PT', 'Portugal', 0),
(433, 259, 'PR', 'Puerto Rico', 0),
(434, 259, 'QA', 'Qatar', 0),
(435, 259, 'RE', 'Reunion', 0),
(436, 259, 'RO', 'Romania', 0),
(437, 259, 'RU', 'Russia', 0),
(438, 259, 'RW', 'Rwanda', 0),
(439, 259, 'NT', 'St Barthelemy', 0),
(440, 259, 'EU', 'St Eustatius', 0),
(441, 259, 'HE', 'St Helena', 0),
(442, 259, 'KN', 'St Kitts-Nevis', 0),
(443, 259, 'LC', 'St Lucia', 0),
(444, 259, 'MB', 'St Maarten', 0),
(445, 259, 'PM', 'St Pierre & Miquelon', 0),
(446, 259, 'VC', 'St Vincent & Grenadines', 0),
(447, 259, 'SP', 'Saipan', 0),
(448, 259, 'SO', 'Samoa', 0),
(449, 259, 'SM', 'San Marino', 0),
(450, 259, 'ST', 'Sao Tome & Principe', 0),
(451, 259, 'SA', 'Saudi Arabia', 0),
(452, 259, 'SN', 'Senegal', 0),
(453, 259, 'SC', 'Seychelles', 0),
(454, 259, 'SS', 'Serbia & Montenegro', 0),
(455, 259, 'SL', 'Sierra Leone', 0),
(456, 259, 'SG', 'Singapore', 0),
(457, 259, 'SK', 'Slovakia', 0),
(458, 259, 'SI', 'Slovenia', 0),
(459, 259, 'SB', 'Solomon Islands', 0),
(460, 259, 'OI', 'Somalia', 0),
(461, 259, 'ZA', 'South Africa', 0),
(462, 259, 'ES', 'Spain', 0),
(463, 259, 'LK', 'Sri Lanka', 0),
(464, 259, 'SD', 'Sudan', 0),
(465, 259, 'SR', 'Suriname', 0),
(466, 259, 'SZ', 'Swaziland', 0),
(467, 259, 'SE', 'Sweden', 0),
(468, 259, 'CH', 'Switzerland', 0),
(469, 259, 'SY', 'Syria', 0),
(470, 259, 'TA', 'Tahiti', 0),
(471, 259, 'TW', 'Taiwan', 0),
(472, 259, 'TJ', 'Tajikistan', 0),
(473, 259, 'TZ', 'Tanzania', 0),
(474, 259, 'TH', 'Thailand', 0),
(475, 259, 'TG', 'Togo', 0),
(476, 259, 'TK', 'Tokelau', 0),
(477, 259, 'TO', 'Tonga', 0),
(478, 259, 'TT', 'Trinidad & Tobago', 0),
(479, 259, 'TN', 'Tunisia', 0),
(480, 259, 'TR', 'Turkey', 0),
(481, 259, 'TU', 'Turkmenistan', 0),
(482, 259, 'TC', 'Turks & Caicos Is', 0),
(483, 259, 'TV', 'Tuvalu', 0),
(484, 259, 'UG', 'Uganda', 0),
(485, 259, 'UA', 'Ukraine', 0),
(486, 259, 'AE', 'United Arab Emirates', 0),
(487, 259, 'US', 'United States of America', 0),
(488, 259, 'UY', 'Uruguay', 0),
(489, 259, 'UZ', 'Uzbekistan', 0),
(490, 259, 'VU', 'Vanuatu', 0),
(491, 259, 'VS', 'Vatican City State', 0),
(492, 259, 'VE', 'Venezuela', 0),
(493, 259, 'VN', 'Vietnam', 0),
(494, 259, 'VB', 'Virgin Islands (Brit)', 0),
(495, 259, 'VA', 'Virgin Islands (USA)', 0),
(496, 259, 'WK', 'Wake Island', 0),
(497, 259, 'WF', 'Wallis & Futana Is', 0),
(498, 259, 'YE', 'Yemen', 0),
(499, 259, 'ZR', 'Zaire', 0),
(500, 259, 'ZM', 'Zambia', 0),
(501, 259, 'ZW', 'Zimbabwe', 0),
(502, 487, 'AL', 'Alabama', 0),
(503, 487, 'AK', 'Alaska', 0),
(504, 487, 'AZ', 'Arizona', 0),
(505, 487, 'AR', 'Arkansas', 0),
(506, 487, 'CA', 'California', 0),
(507, 487, 'CO', 'Colorado', 0),
(508, 487, 'CT', 'Connecticut', 0),
(509, 487, 'DE', 'Delaware', 0),
(510, 487, 'DC', 'District Of Columbia', 0),
(511, 487, 'FL', 'Florida', 0),
(512, 487, 'GA', 'Georgia', 0),
(513, 487, 'HI', 'Hawaii', 0),
(514, 487, 'ID', 'Idaho', 0),
(515, 487, 'IL', 'Illinois', 0),
(516, 487, 'IN', 'Indiana', 0),
(517, 487, 'IA', 'Iowa', 0),
(518, 487, 'KS', 'Kansas', 0),
(519, 487, 'KY', 'Kentucky', 0),
(520, 487, 'LA', 'Louisiana', 0),
(521, 487, 'ME', 'Maine', 0),
(522, 487, 'MD', 'Maryland', 0),
(523, 487, 'MA', 'Massachusetts', 0),
(524, 487, 'MI', 'Michigan', 0),
(525, 487, 'MN', 'Minnesota', 0),
(526, 487, 'MS', 'Mississippi', 0),
(527, 487, 'MO', 'Missouri', 0),
(528, 487, 'MT', 'Montana', 0),
(529, 487, 'NE', 'Nebraska', 0),
(530, 487, 'NV', 'Nevada', 0),
(531, 487, 'NH', 'New Hampshire', 0),
(532, 487, 'NJ', 'New Jersey', 0),
(533, 487, 'NM', 'New Mexico', 0),
(534, 487, 'NY', 'New York', 0),
(535, 487, 'NC', 'North Carolina', 0),
(536, 487, 'ND', 'North Dakota', 0),
(537, 487, 'OH', 'Ohio', 0),
(538, 487, 'OK', 'Oklahoma', 0),
(539, 487, 'OR', 'Oregon', 0),
(540, 487, 'PA', 'Pennsylvania', 0),
(541, 487, 'RI', 'Rhode Island', 0),
(542, 487, 'SC', 'South Carolina', 0),
(543, 487, 'SD', 'South Dakota', 0),
(544, 487, 'TN', 'Tennessee', 0),
(545, 487, 'TX', 'Texas', 0),
(546, 487, 'UT', 'Utah', 0),
(547, 487, 'VT', 'Vermont', 0),
(548, 487, 'VA', 'Virginia', 0),
(549, 487, 'WA', 'Washington', 0),
(550, 487, 'WV', 'West Virginia', 0),
(551, 487, 'WI', 'Wisconsin', 0),
(552, 487, 'WY', 'Wyoming', 0),
(553, 431, 'DS', 'Lower Silesian', 0),
(554, 431, 'KP', 'Kuyavian-Pomeranian', 0),
(555, 431, 'LB', 'Lubusz', 0),
(556, 431, 'LD', 'Łódź', 0),
(557, 431, 'LU', 'Lublin', 0),
(558, 431, 'MA', 'Masovian', 0),
(559, 431, 'MP', 'Lesser Poland', 0),
(560, 431, 'OP', 'Opole', 0),
(561, 431, 'PD', 'Podlaskie', 0),
(562, 431, 'PK', 'Subcarpathian', 0),
(563, 431, 'PM', 'Pomeranian', 0),
(564, 431, 'SL', 'Silesian', 0),
(565, 431, 'SW', 'Świętokrzyskie', 0),
(566, 431, 'WM', 'Warmian-Masurian', 0),
(567, 431, 'WP', 'Greater Poland', 0),
(568, 431, 'ZP', 'West Pomeranian', 0),
(569, 436, 'AB', 'Alba', 0),
(570, 436, 'AG', 'Arges', 0),
(571, 436, 'AR', 'Arad', 0),
(572, 436, 'B', 'Bucuresti', 0),
(573, 436, 'BC', 'Bacau', 0),
(574, 436, 'BH', 'Bihor', 0),
(575, 436, 'BN', 'Bistrita-Nasaud', 0),
(576, 436, 'BR', 'Braila', 0),
(577, 436, 'BT', 'Botosani', 0),
(578, 436, 'BV', 'Brasov', 0),
(579, 436, 'BZ', 'Buzau', 0),
(580, 436, 'CJ', 'Cluj', 0),
(581, 436, 'CL', 'Calarasi', 0),
(582, 436, 'CS', 'Caras-Severin', 0),
(583, 436, 'CT', 'Constanta', 0),
(584, 436, 'CV', 'Covasna', 0),
(585, 436, 'DB', 'Dambovita', 0),
(586, 436, 'DJ', 'Dolj', 0),
(587, 436, 'GJ', 'Gorj', 0),
(588, 436, 'GL', 'Galati', 0),
(589, 436, 'GR', 'Giurgiu', 0),
(590, 436, 'HD', 'Hunedoara', 0),
(591, 436, 'HR', 'Harghita', 0),
(592, 436, 'IF', 'Ilfov', 0),
(593, 436, 'IL', 'Ialomita', 0),
(594, 436, 'IS', 'Iasi', 0),
(595, 436, 'MH', 'Mehedinti', 0),
(596, 436, 'MM', 'Maramures', 0),
(597, 436, 'MS', 'Mures', 0),
(598, 436, 'NT', 'Neamt', 0),
(599, 436, 'OT', 'Olt', 0),
(600, 436, 'PH', 'Prahova', 0),
(601, 436, 'SB', 'Sibiu', 0),
(602, 436, 'SJ', 'Salaj', 0),
(603, 436, 'SM', 'Satu-Mare', 0),
(604, 436, 'SV', 'Suceava', 0),
(605, 436, 'TL', 'Tulcea', 0),
(606, 436, 'TM', 'Timis', 0),
(607, 436, 'TR', 'Teleorman', 0),
(608, 436, 'VL', 'Valcea', 0),
(609, 436, 'VN', 'Vrancea', 0),
(610, 436, 'VS', 'Vaslui', 0),
(611, 295, 'ON', 'Ontario', 0),
(612, 295, 'AB', 'Alberta', 0),
(613, 295, 'BC', 'British Columbia', 0),
(614, 295, 'MB', 'Manitoba', 0),
(615, 295, 'QC', 'Quebec', 0),
(616, 295, 'LB', 'Labrador', 0),
(617, 295, 'NS', 'Nova Scotia', 0),
(618, 295, 'PE', 'Prince Edwards Island', 0),
(619, 295, 'YK', 'Yukon', 0),
(620, 295, 'NT', 'Northwest Territories', 0),
(621, 295, 'NU', 'Nunavut', 0),
(622, 295, 'NB', 'New Brunswick', 0),
(623, 295, 'SK', 'Saskatchewan', 0),
(624, 540, 'philadelphia', 'Philadelphia', 0),
(625, 540, 'montgomery', 'Montgomery', 0),
(626, 540, 'delaware', 'Delaware', 0),
(627, 540, 'lancaster', 'Lancaster', 0),
(628, 540, 'chester', 'Chester', 0),
(629, 540, 'bucks', 'Bucks', 0),
(630, -1, 'CRM', NULL, 1),
(631, 630, 'Priority', NULL, 1),
(632, 631, '0', 'Low', 1),
(633, 631, '1', 'Medium', 1),
(634, 631, '2', 'High', 1),
(635, 630, 'Access', NULL, 1),
(636, 635, '0', 'Public', 1),
(637, 635, '1', 'Public, Read-Only', 1),
(638, 635, '2', 'Private', 1),
(639, 630, 'Status', NULL, 1),
(640, 639, '0', 'Open', 1),
(641, 639, '1', 'In Progress', 1),
(642, 639, '2', 'On Hold', 1),
(643, 639, '3', 'Closed', 1),
(644, 639, '4', 'Canceled', 1),
(645, -1, 'Companies_Groups', NULL, 1),
(646, 645, 'customer', 'Customer', 1),
(647, 645, 'vendor', 'Vendor', 1),
(648, 645, 'other', 'Other', 1),
(649, 645, 'manager', 'Manager', 1),
(650, -1, 'Contacts_Groups', NULL, 1),
(651, 650, 'office', 'Office Staff', 1),
(652, 650, 'field', 'Field Staff', 1),
(653, 650, 'custm', 'Customer', 1),
(654, -1, 'Contacts', NULL, 0),
(655, 654, 'Access', NULL, 0),
(656, 655, 'manager', 'Manager', 0),
(657, 655, 'employee', 'Employee', 0),
(658, 630, 'Roundcube', NULL, 0),
(659, 658, 'Security', NULL, 1),
(660, 659, 'tls', 'TLS', 1),
(661, 659, 'ssl', 'SSL', 1),
(662, -1, 'crm_assets_category', NULL, 1),
(663, 662, '0', 'Desktop', 1),
(664, 662, '1', 'Server', 1),
(665, 662, '2', 'Notebook', 1),
(666, 662, '3', 'Monitor', 1),
(667, 662, '4', 'Printer', 1),
(668, 662, '5', 'Other', 1),
(669, -1, 'crm_assets_monitor_type', NULL, 0),
(670, 669, '0', 'CRT', 0),
(671, 669, '1', 'LCD', 0),
(672, 669, '2', 'Other', 0),
(673, -1, 'crm_assets_printer_type', NULL, 0),
(674, 673, '0', 'Ink', 0),
(675, 673, '1', 'Laser', 0),
(676, 673, '2', 'Other', 0);

-- --------------------------------------------------------

--
-- Table structure for table `utils_currency`
--

CREATE TABLE IF NOT EXISTS `utils_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimal_sign` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thousand_sign` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `decimals` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `pos_before` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `utils_currency`
--

INSERT INTO `utils_currency` (`id`, `symbol`, `code`, `decimal_sign`, `thousand_sign`, `decimals`, `active`, `pos_before`) VALUES
(1, '$', 'USD', '.', ',', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `utils_custommenu_entry`
--

CREATE TABLE IF NOT EXISTS `utils_custommenu_entry` (
  `page_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`path`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utils_custommenu_entry`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_custommenu_page`
--

CREATE TABLE IF NOT EXISTS `utils_custommenu_page` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `module` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `function` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `arguments` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `module` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utils_custommenu_page`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_filedownload_files`
--

CREATE TABLE IF NOT EXISTS `utils_filedownload_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` text COLLATE utf8_unicode_ci,
  `curr` bigint(20) DEFAULT '0',
  `size` bigint(20) DEFAULT '0',
  `rate` double DEFAULT '0',
  `time` double DEFAULT '0',
  `view_time` double DEFAULT '0',
  `posted_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `utils_filedownload_files`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_messenger_message`
--

CREATE TABLE IF NOT EXISTS `utils_messenger_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `callback_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `callback_args` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `alert_on` datetime DEFAULT NULL,
  `parent_module` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `utils_messenger_message`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_messenger_users`
--

CREATE TABLE IF NOT EXISTS `utils_messenger_users` (
  `message_id` int(11) DEFAULT NULL,
  `done` tinyint(4) DEFAULT '0',
  `user_login_id` int(11) DEFAULT NULL,
  `done_on` datetime DEFAULT NULL,
  `follow` tinyint(4) DEFAULT '0',
  KEY `message_id` (`message_id`),
  KEY `user_login_id` (`user_login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utils_messenger_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_watchdog_category`
--

CREATE TABLE IF NOT EXISTS `utils_watchdog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `utils_watchdog_category`
--

INSERT INTO `utils_watchdog_category` (`id`, `name`, `callback`) VALUES
(1, '93c731f1c3a84ef05cd54d044c379eaa', 'CRM_ContactsCommon::company_watchdog_label'),
(2, '2f8a6bf31f3bd67bd2d9720c58b19c9a', 'CRM_ContactsCommon::contact_watchdog_label'),
(3, '9f121d1bcc2b246d18ba60b3390f8f4e', 'CRM_PhoneCallCommon::watchdog_label'),
(4, '478f3a4c51824ad23cb50c1c60670c0f', 'CRM_TasksCommon::watchdog_label'),
(5, 'ac7305f48d3761a1209f762996de7ad5', 'CRM_MeetingCommon::watchdog_label'),
(6, 'fe76cf931ee133da44ecf7bfd52610f1', 'CRM_AssetsCommon::watchdog_label');

-- --------------------------------------------------------

--
-- Table structure for table `utils_watchdog_category_subscription`
--

CREATE TABLE IF NOT EXISTS `utils_watchdog_category_subscription` (
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utils_watchdog_category_subscription`
--


-- --------------------------------------------------------

--
-- Table structure for table `utils_watchdog_event`
--

CREATE TABLE IF NOT EXISTS `utils_watchdog_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `internal_id` int(11) DEFAULT NULL,
  `message` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `utils_watchdog_event__internal_id__idx` (`internal_id`),
  KEY `utils_watchdog_event__cat_int__idx` (`category_id`,`internal_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `utils_watchdog_event`
--

INSERT INTO `utils_watchdog_event` (`id`, `category_id`, `internal_id`, `message`, `event_time`) VALUES
(1, 1, 1, 'C', '2012-11-14 13:08:09'),
(2, 2, 1, 'C', '2012-11-14 13:08:09'),
(3, 1, 2, 'C', '2012-11-14 13:19:39'),
(4, 2, 2, 'C', '2012-11-14 13:23:17');

-- --------------------------------------------------------

--
-- Table structure for table `utils_watchdog_subscription`
--

CREATE TABLE IF NOT EXISTS `utils_watchdog_subscription` (
  `category_id` int(11) DEFAULT NULL,
  `internal_id` int(11) DEFAULT NULL,
  `last_seen_event` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `utils_watchdog_subscription__cat_int__idx` (`category_id`,`internal_id`),
  KEY `utils_watchdog_subscription__user__idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utils_watchdog_subscription`
--

INSERT INTO `utils_watchdog_subscription` (`category_id`, `internal_id`, `last_seen_event`, `user_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(1, 2, 3, 1),
(2, 2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `variables`
--

CREATE TABLE IF NOT EXISTS `variables` (
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `variables`
--

INSERT INTO `variables` (`name`, `value`) VALUES
('allow_lang_change', 'b:1;'),
('anonymous_setup', 'b:0;'),
('base_page_title', 's:5:"EPESI";'),
('crm_roundcube_global_signature', 's:100:"Message sent with EPESI - managing business your way!<br /><a href="http://epe.si">http://epe.si</a>";'),
('default_lang', 's:2:"en";'),
('default_module', 's:8:"Base_Box";'),
('default_theme', 's:7:"default";'),
('error_mail', 's:19:"hank.wang@dokec.com";'),
('host_ban_time', 'i:300;'),
('logo_file', 's:0:"";'),
('mail_auth', 'b:0;'),
('mail_from_addr', 's:21:"wanghui198831@126.com";'),
('mail_from_name', 's:5:"admin";'),
('mail_host', 's:19:"smtp.example.com:25";'),
('mail_method', 's:4:"mail";'),
('mail_password', 's:0:"";'),
('mail_user', 's:0:"";'),
('preload_image_cache_default', 'b:1;'),
('preload_image_cache_selected', 'b:1;'),
('show_caption_in_title', 's:1:"1";'),
('show_module_indicator', 's:1:"1";'),
('simple_setup', 'b:0;'),
('utils_attachments_google_pass', 's:11:"wanghui8831";'),
('utils_attachments_google_user', 's:22:"hank.huiwang@gmail.com";'),
('version', 's:5:"1.4.0";');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apps_shoutbox_messages`
--
ALTER TABLE `apps_shoutbox_messages`
  ADD CONSTRAINT `apps_shoutbox_messages_ibfk_1` FOREIGN KEY (`base_user_login_id`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `base_acl_rules`
--
ALTER TABLE `base_acl_rules`
  ADD CONSTRAINT `base_acl_rules_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `base_acl_permission` (`id`);

--
-- Constraints for table `base_acl_rules_clearance`
--
ALTER TABLE `base_acl_rules_clearance`
  ADD CONSTRAINT `base_acl_rules_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `base_acl_rules` (`id`);

--
-- Constraints for table `base_dashboard_applets`
--
ALTER TABLE `base_dashboard_applets`
  ADD CONSTRAINT `base_dashboard_applets_ibfk_1` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `base_dashboard_applets_ibfk_2` FOREIGN KEY (`tab`) REFERENCES `base_dashboard_tabs` (`id`);

--
-- Constraints for table `base_dashboard_default_applets`
--
ALTER TABLE `base_dashboard_default_applets`
  ADD CONSTRAINT `base_dashboard_default_applets_ibfk_1` FOREIGN KEY (`tab`) REFERENCES `base_dashboard_default_tabs` (`id`);

--
-- Constraints for table `base_dashboard_default_settings`
--
ALTER TABLE `base_dashboard_default_settings`
  ADD CONSTRAINT `base_dashboard_default_settings_ibfk_1` FOREIGN KEY (`applet_id`) REFERENCES `base_dashboard_default_applets` (`id`);

--
-- Constraints for table `base_dashboard_settings`
--
ALTER TABLE `base_dashboard_settings`
  ADD CONSTRAINT `base_dashboard_settings_ibfk_1` FOREIGN KEY (`applet_id`) REFERENCES `base_dashboard_applets` (`id`);

--
-- Constraints for table `base_dashboard_tabs`
--
ALTER TABLE `base_dashboard_tabs`
  ADD CONSTRAINT `base_dashboard_tabs_ibfk_1` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `base_user_settings`
--
ALTER TABLE `base_user_settings`
  ADD CONSTRAINT `base_user_settings_ibfk_1` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `company_access_clearance`
--
ALTER TABLE `company_access_clearance`
  ADD CONSTRAINT `company_access_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `company_access` (`id`);

--
-- Constraints for table `company_access_fields`
--
ALTER TABLE `company_access_fields`
  ADD CONSTRAINT `company_access_fields_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `company_access` (`id`);

--
-- Constraints for table `company_edit_history`
--
ALTER TABLE `company_edit_history`
  ADD CONSTRAINT `company_edit_history_ibfk_1` FOREIGN KEY (`edited_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `company_edit_history_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company_data_1` (`id`);

--
-- Constraints for table `company_edit_history_data`
--
ALTER TABLE `company_edit_history_data`
  ADD CONSTRAINT `company_edit_history_data_ibfk_1` FOREIGN KEY (`edit_id`) REFERENCES `company_edit_history` (`id`);

--
-- Constraints for table `company_favorite`
--
ALTER TABLE `company_favorite`
  ADD CONSTRAINT `company_favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `company_favorite_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company_data_1` (`id`);

--
-- Constraints for table `company_recent`
--
ALTER TABLE `company_recent`
  ADD CONSTRAINT `company_recent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `company_recent_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `company_data_1` (`id`);

--
-- Constraints for table `contact_access_clearance`
--
ALTER TABLE `contact_access_clearance`
  ADD CONSTRAINT `contact_access_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `contact_access` (`id`);

--
-- Constraints for table `contact_access_fields`
--
ALTER TABLE `contact_access_fields`
  ADD CONSTRAINT `contact_access_fields_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `contact_access` (`id`);

--
-- Constraints for table `contact_edit_history`
--
ALTER TABLE `contact_edit_history`
  ADD CONSTRAINT `contact_edit_history_ibfk_1` FOREIGN KEY (`edited_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `contact_edit_history_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contact_data_1` (`id`);

--
-- Constraints for table `contact_edit_history_data`
--
ALTER TABLE `contact_edit_history_data`
  ADD CONSTRAINT `contact_edit_history_data_ibfk_1` FOREIGN KEY (`edit_id`) REFERENCES `contact_edit_history` (`id`);

--
-- Constraints for table `contact_favorite`
--
ALTER TABLE `contact_favorite`
  ADD CONSTRAINT `contact_favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `contact_favorite_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contact_data_1` (`id`);

--
-- Constraints for table `contact_recent`
--
ALTER TABLE `contact_recent`
  ADD CONSTRAINT `contact_recent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `contact_recent_ibfk_2` FOREIGN KEY (`contact_id`) REFERENCES `contact_data_1` (`id`);

--
-- Constraints for table `crm_assets_access_clearance`
--
ALTER TABLE `crm_assets_access_clearance`
  ADD CONSTRAINT `crm_assets_access_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `crm_assets_access` (`id`);

--
-- Constraints for table `crm_assets_access_fields`
--
ALTER TABLE `crm_assets_access_fields`
  ADD CONSTRAINT `crm_assets_access_fields_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `crm_assets_access` (`id`);

--
-- Constraints for table `crm_assets_edit_history`
--
ALTER TABLE `crm_assets_edit_history`
  ADD CONSTRAINT `crm_assets_edit_history_ibfk_1` FOREIGN KEY (`edited_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `crm_assets_edit_history_ibfk_2` FOREIGN KEY (`crm_assets_id`) REFERENCES `crm_assets_data_1` (`id`);

--
-- Constraints for table `crm_assets_edit_history_data`
--
ALTER TABLE `crm_assets_edit_history_data`
  ADD CONSTRAINT `crm_assets_edit_history_data_ibfk_1` FOREIGN KEY (`edit_id`) REFERENCES `crm_assets_edit_history` (`id`);

--
-- Constraints for table `crm_assets_favorite`
--
ALTER TABLE `crm_assets_favorite`
  ADD CONSTRAINT `crm_assets_favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `crm_assets_favorite_ibfk_2` FOREIGN KEY (`crm_assets_id`) REFERENCES `crm_assets_data_1` (`id`);

--
-- Constraints for table `crm_assets_recent`
--
ALTER TABLE `crm_assets_recent`
  ADD CONSTRAINT `crm_assets_recent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `crm_assets_recent_ibfk_2` FOREIGN KEY (`crm_assets_id`) REFERENCES `crm_assets_data_1` (`id`);

--
-- Constraints for table `crm_filters_contacts`
--
ALTER TABLE `crm_filters_contacts`
  ADD CONSTRAINT `crm_filters_contacts_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `crm_filters_group` (`id`);

--
-- Constraints for table `crm_filters_default`
--
ALTER TABLE `crm_filters_default`
  ADD CONSTRAINT `crm_filters_default_ibfk_1` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `crm_filters_group`
--
ALTER TABLE `crm_filters_group`
  ADD CONSTRAINT `crm_filters_group_ibfk_1` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `crm_meeting_access_clearance`
--
ALTER TABLE `crm_meeting_access_clearance`
  ADD CONSTRAINT `crm_meeting_access_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `crm_meeting_access` (`id`);

--
-- Constraints for table `crm_meeting_access_fields`
--
ALTER TABLE `crm_meeting_access_fields`
  ADD CONSTRAINT `crm_meeting_access_fields_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `crm_meeting_access` (`id`);

--
-- Constraints for table `crm_meeting_edit_history`
--
ALTER TABLE `crm_meeting_edit_history`
  ADD CONSTRAINT `crm_meeting_edit_history_ibfk_1` FOREIGN KEY (`edited_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `crm_meeting_edit_history_ibfk_2` FOREIGN KEY (`crm_meeting_id`) REFERENCES `crm_meeting_data_1` (`id`);

--
-- Constraints for table `crm_meeting_edit_history_data`
--
ALTER TABLE `crm_meeting_edit_history_data`
  ADD CONSTRAINT `crm_meeting_edit_history_data_ibfk_1` FOREIGN KEY (`edit_id`) REFERENCES `crm_meeting_edit_history` (`id`);

--
-- Constraints for table `crm_meeting_favorite`
--
ALTER TABLE `crm_meeting_favorite`
  ADD CONSTRAINT `crm_meeting_favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `crm_meeting_favorite_ibfk_2` FOREIGN KEY (`crm_meeting_id`) REFERENCES `crm_meeting_data_1` (`id`);

--
-- Constraints for table `crm_meeting_recent`
--
ALTER TABLE `crm_meeting_recent`
  ADD CONSTRAINT `crm_meeting_recent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `crm_meeting_recent_ibfk_2` FOREIGN KEY (`crm_meeting_id`) REFERENCES `crm_meeting_data_1` (`id`);

--
-- Constraints for table `data_tax_rates_access_clearance`
--
ALTER TABLE `data_tax_rates_access_clearance`
  ADD CONSTRAINT `data_tax_rates_access_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `data_tax_rates_access` (`id`);

--
-- Constraints for table `data_tax_rates_access_fields`
--
ALTER TABLE `data_tax_rates_access_fields`
  ADD CONSTRAINT `data_tax_rates_access_fields_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `data_tax_rates_access` (`id`);

--
-- Constraints for table `data_tax_rates_edit_history`
--
ALTER TABLE `data_tax_rates_edit_history`
  ADD CONSTRAINT `data_tax_rates_edit_history_ibfk_1` FOREIGN KEY (`edited_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `data_tax_rates_edit_history_ibfk_2` FOREIGN KEY (`data_tax_rates_id`) REFERENCES `data_tax_rates_data_1` (`id`);

--
-- Constraints for table `data_tax_rates_edit_history_data`
--
ALTER TABLE `data_tax_rates_edit_history_data`
  ADD CONSTRAINT `data_tax_rates_edit_history_data_ibfk_1` FOREIGN KEY (`edit_id`) REFERENCES `data_tax_rates_edit_history` (`id`);

--
-- Constraints for table `data_tax_rates_favorite`
--
ALTER TABLE `data_tax_rates_favorite`
  ADD CONSTRAINT `data_tax_rates_favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `data_tax_rates_favorite_ibfk_2` FOREIGN KEY (`data_tax_rates_id`) REFERENCES `data_tax_rates_data_1` (`id`);

--
-- Constraints for table `data_tax_rates_recent`
--
ALTER TABLE `data_tax_rates_recent`
  ADD CONSTRAINT `data_tax_rates_recent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `data_tax_rates_recent_ibfk_2` FOREIGN KEY (`data_tax_rates_id`) REFERENCES `data_tax_rates_data_1` (`id`);

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`session_name`) REFERENCES `session` (`name`);

--
-- Constraints for table `home_page`
--
ALTER TABLE `home_page`
  ADD CONSTRAINT `home_page_ibfk_1` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `phonecall_access_clearance`
--
ALTER TABLE `phonecall_access_clearance`
  ADD CONSTRAINT `phonecall_access_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `phonecall_access` (`id`);

--
-- Constraints for table `phonecall_access_fields`
--
ALTER TABLE `phonecall_access_fields`
  ADD CONSTRAINT `phonecall_access_fields_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `phonecall_access` (`id`);

--
-- Constraints for table `phonecall_edit_history`
--
ALTER TABLE `phonecall_edit_history`
  ADD CONSTRAINT `phonecall_edit_history_ibfk_1` FOREIGN KEY (`edited_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `phonecall_edit_history_ibfk_2` FOREIGN KEY (`phonecall_id`) REFERENCES `phonecall_data_1` (`id`);

--
-- Constraints for table `phonecall_edit_history_data`
--
ALTER TABLE `phonecall_edit_history_data`
  ADD CONSTRAINT `phonecall_edit_history_data_ibfk_1` FOREIGN KEY (`edit_id`) REFERENCES `phonecall_edit_history` (`id`);

--
-- Constraints for table `phonecall_favorite`
--
ALTER TABLE `phonecall_favorite`
  ADD CONSTRAINT `phonecall_favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `phonecall_favorite_ibfk_2` FOREIGN KEY (`phonecall_id`) REFERENCES `phonecall_data_1` (`id`);

--
-- Constraints for table `phonecall_recent`
--
ALTER TABLE `phonecall_recent`
  ADD CONSTRAINT `phonecall_recent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `phonecall_recent_ibfk_2` FOREIGN KEY (`phonecall_id`) REFERENCES `phonecall_data_1` (`id`);

--
-- Constraints for table `rc_accounts_access_clearance`
--
ALTER TABLE `rc_accounts_access_clearance`
  ADD CONSTRAINT `rc_accounts_access_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `rc_accounts_access` (`id`);

--
-- Constraints for table `rc_accounts_access_fields`
--
ALTER TABLE `rc_accounts_access_fields`
  ADD CONSTRAINT `rc_accounts_access_fields_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `rc_accounts_access` (`id`);

--
-- Constraints for table `rc_accounts_edit_history`
--
ALTER TABLE `rc_accounts_edit_history`
  ADD CONSTRAINT `rc_accounts_edit_history_ibfk_1` FOREIGN KEY (`edited_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_accounts_edit_history_ibfk_2` FOREIGN KEY (`rc_accounts_id`) REFERENCES `rc_accounts_data_1` (`id`);

--
-- Constraints for table `rc_accounts_edit_history_data`
--
ALTER TABLE `rc_accounts_edit_history_data`
  ADD CONSTRAINT `rc_accounts_edit_history_data_ibfk_1` FOREIGN KEY (`edit_id`) REFERENCES `rc_accounts_edit_history` (`id`);

--
-- Constraints for table `rc_accounts_favorite`
--
ALTER TABLE `rc_accounts_favorite`
  ADD CONSTRAINT `rc_accounts_favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_accounts_favorite_ibfk_2` FOREIGN KEY (`rc_accounts_id`) REFERENCES `rc_accounts_data_1` (`id`);

--
-- Constraints for table `rc_accounts_recent`
--
ALTER TABLE `rc_accounts_recent`
  ADD CONSTRAINT `rc_accounts_recent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_accounts_recent_ibfk_2` FOREIGN KEY (`rc_accounts_id`) REFERENCES `rc_accounts_data_1` (`id`);

--
-- Constraints for table `rc_mails_access_clearance`
--
ALTER TABLE `rc_mails_access_clearance`
  ADD CONSTRAINT `rc_mails_access_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `rc_mails_access` (`id`);

--
-- Constraints for table `rc_mails_access_fields`
--
ALTER TABLE `rc_mails_access_fields`
  ADD CONSTRAINT `rc_mails_access_fields_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `rc_mails_access` (`id`);

--
-- Constraints for table `rc_mails_assoc_access_clearance`
--
ALTER TABLE `rc_mails_assoc_access_clearance`
  ADD CONSTRAINT `rc_mails_assoc_access_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `rc_mails_assoc_access` (`id`);

--
-- Constraints for table `rc_mails_assoc_access_fields`
--
ALTER TABLE `rc_mails_assoc_access_fields`
  ADD CONSTRAINT `rc_mails_assoc_access_fields_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `rc_mails_assoc_access` (`id`);

--
-- Constraints for table `rc_mails_assoc_edit_history`
--
ALTER TABLE `rc_mails_assoc_edit_history`
  ADD CONSTRAINT `rc_mails_assoc_edit_history_ibfk_1` FOREIGN KEY (`edited_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_mails_assoc_edit_history_ibfk_2` FOREIGN KEY (`rc_mails_assoc_id`) REFERENCES `rc_mails_assoc_data_1` (`id`);

--
-- Constraints for table `rc_mails_assoc_edit_history_data`
--
ALTER TABLE `rc_mails_assoc_edit_history_data`
  ADD CONSTRAINT `rc_mails_assoc_edit_history_data_ibfk_1` FOREIGN KEY (`edit_id`) REFERENCES `rc_mails_assoc_edit_history` (`id`);

--
-- Constraints for table `rc_mails_assoc_favorite`
--
ALTER TABLE `rc_mails_assoc_favorite`
  ADD CONSTRAINT `rc_mails_assoc_favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_mails_assoc_favorite_ibfk_2` FOREIGN KEY (`rc_mails_assoc_id`) REFERENCES `rc_mails_assoc_data_1` (`id`);

--
-- Constraints for table `rc_mails_assoc_recent`
--
ALTER TABLE `rc_mails_assoc_recent`
  ADD CONSTRAINT `rc_mails_assoc_recent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_mails_assoc_recent_ibfk_2` FOREIGN KEY (`rc_mails_assoc_id`) REFERENCES `rc_mails_assoc_data_1` (`id`);

--
-- Constraints for table `rc_mails_attachments`
--
ALTER TABLE `rc_mails_attachments`
  ADD CONSTRAINT `rc_mails_attachments_ibfk_1` FOREIGN KEY (`mail_id`) REFERENCES `rc_mails_data_1` (`id`);

--
-- Constraints for table `rc_mails_edit_history`
--
ALTER TABLE `rc_mails_edit_history`
  ADD CONSTRAINT `rc_mails_edit_history_ibfk_1` FOREIGN KEY (`edited_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_mails_edit_history_ibfk_2` FOREIGN KEY (`rc_mails_id`) REFERENCES `rc_mails_data_1` (`id`);

--
-- Constraints for table `rc_mails_edit_history_data`
--
ALTER TABLE `rc_mails_edit_history_data`
  ADD CONSTRAINT `rc_mails_edit_history_data_ibfk_1` FOREIGN KEY (`edit_id`) REFERENCES `rc_mails_edit_history` (`id`);

--
-- Constraints for table `rc_mails_favorite`
--
ALTER TABLE `rc_mails_favorite`
  ADD CONSTRAINT `rc_mails_favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_mails_favorite_ibfk_2` FOREIGN KEY (`rc_mails_id`) REFERENCES `rc_mails_data_1` (`id`);

--
-- Constraints for table `rc_mails_recent`
--
ALTER TABLE `rc_mails_recent`
  ADD CONSTRAINT `rc_mails_recent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_mails_recent_ibfk_2` FOREIGN KEY (`rc_mails_id`) REFERENCES `rc_mails_data_1` (`id`);

--
-- Constraints for table `rc_multiple_emails_access_clearance`
--
ALTER TABLE `rc_multiple_emails_access_clearance`
  ADD CONSTRAINT `rc_multiple_emails_access_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `rc_multiple_emails_access` (`id`);

--
-- Constraints for table `rc_multiple_emails_access_fields`
--
ALTER TABLE `rc_multiple_emails_access_fields`
  ADD CONSTRAINT `rc_multiple_emails_access_fields_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `rc_multiple_emails_access` (`id`);

--
-- Constraints for table `rc_multiple_emails_edit_history`
--
ALTER TABLE `rc_multiple_emails_edit_history`
  ADD CONSTRAINT `rc_multiple_emails_edit_history_ibfk_1` FOREIGN KEY (`edited_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_multiple_emails_edit_history_ibfk_2` FOREIGN KEY (`rc_multiple_emails_id`) REFERENCES `rc_multiple_emails_data_1` (`id`);

--
-- Constraints for table `rc_multiple_emails_edit_history_data`
--
ALTER TABLE `rc_multiple_emails_edit_history_data`
  ADD CONSTRAINT `rc_multiple_emails_edit_history_data_ibfk_1` FOREIGN KEY (`edit_id`) REFERENCES `rc_multiple_emails_edit_history` (`id`);

--
-- Constraints for table `rc_multiple_emails_favorite`
--
ALTER TABLE `rc_multiple_emails_favorite`
  ADD CONSTRAINT `rc_multiple_emails_favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_multiple_emails_favorite_ibfk_2` FOREIGN KEY (`rc_multiple_emails_id`) REFERENCES `rc_multiple_emails_data_1` (`id`);

--
-- Constraints for table `rc_multiple_emails_recent`
--
ALTER TABLE `rc_multiple_emails_recent`
  ADD CONSTRAINT `rc_multiple_emails_recent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `rc_multiple_emails_recent_ibfk_2` FOREIGN KEY (`rc_multiple_emails_id`) REFERENCES `rc_multiple_emails_data_1` (`id`);

--
-- Constraints for table `session_client`
--
ALTER TABLE `session_client`
  ADD CONSTRAINT `session_client_ibfk_1` FOREIGN KEY (`session_name`) REFERENCES `session` (`name`);

--
-- Constraints for table `task_access_clearance`
--
ALTER TABLE `task_access_clearance`
  ADD CONSTRAINT `task_access_clearance_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `task_access` (`id`);

--
-- Constraints for table `task_access_fields`
--
ALTER TABLE `task_access_fields`
  ADD CONSTRAINT `task_access_fields_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `task_access` (`id`);

--
-- Constraints for table `task_edit_history`
--
ALTER TABLE `task_edit_history`
  ADD CONSTRAINT `task_edit_history_ibfk_1` FOREIGN KEY (`edited_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `task_edit_history_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `task_data_1` (`id`);

--
-- Constraints for table `task_edit_history_data`
--
ALTER TABLE `task_edit_history_data`
  ADD CONSTRAINT `task_edit_history_data_ibfk_1` FOREIGN KEY (`edit_id`) REFERENCES `task_edit_history` (`id`);

--
-- Constraints for table `task_favorite`
--
ALTER TABLE `task_favorite`
  ADD CONSTRAINT `task_favorite_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `task_favorite_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `task_data_1` (`id`);

--
-- Constraints for table `task_recent`
--
ALTER TABLE `task_recent`
  ADD CONSTRAINT `task_recent_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `task_recent_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `task_data_1` (`id`);

--
-- Constraints for table `tools_whoisonline_users`
--
ALTER TABLE `tools_whoisonline_users`
  ADD CONSTRAINT `tools_whoisonline_users_ibfk_1` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `user_autologin`
--
ALTER TABLE `user_autologin`
  ADD CONSTRAINT `user_autologin_ibfk_1` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `user_password`
--
ALTER TABLE `user_password`
  ADD CONSTRAINT `user_password_ibfk_1` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `user_reset_pass`
--
ALTER TABLE `user_reset_pass`
  ADD CONSTRAINT `user_reset_pass_ibfk_1` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `utils_attachment_download`
--
ALTER TABLE `utils_attachment_download`
  ADD CONSTRAINT `utils_attachment_download_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `utils_attachment_download_ibfk_2` FOREIGN KEY (`attach_file_id`) REFERENCES `utils_attachment_file` (`id`);

--
-- Constraints for table `utils_attachment_file`
--
ALTER TABLE `utils_attachment_file`
  ADD CONSTRAINT `utils_attachment_file_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `utils_attachment_file_ibfk_2` FOREIGN KEY (`attach_id`) REFERENCES `utils_attachment_link` (`id`);

--
-- Constraints for table `utils_attachment_link`
--
ALTER TABLE `utils_attachment_link`
  ADD CONSTRAINT `utils_attachment_link_ibfk_1` FOREIGN KEY (`permission_by`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `utils_attachment_note`
--
ALTER TABLE `utils_attachment_note`
  ADD CONSTRAINT `utils_attachment_note_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `utils_attachment_note_ibfk_2` FOREIGN KEY (`attach_id`) REFERENCES `utils_attachment_link` (`id`);

--
-- Constraints for table `utils_custommenu_entry`
--
ALTER TABLE `utils_custommenu_entry`
  ADD CONSTRAINT `utils_custommenu_entry_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `utils_custommenu_page` (`id`);

--
-- Constraints for table `utils_custommenu_page`
--
ALTER TABLE `utils_custommenu_page`
  ADD CONSTRAINT `utils_custommenu_page_ibfk_1` FOREIGN KEY (`module`) REFERENCES `modules` (`name`);

--
-- Constraints for table `utils_messenger_message`
--
ALTER TABLE `utils_messenger_message`
  ADD CONSTRAINT `utils_messenger_message_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `utils_messenger_users`
--
ALTER TABLE `utils_messenger_users`
  ADD CONSTRAINT `utils_messenger_users_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `utils_messenger_message` (`id`),
  ADD CONSTRAINT `utils_messenger_users_ibfk_2` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`);

--
-- Constraints for table `utils_watchdog_category_subscription`
--
ALTER TABLE `utils_watchdog_category_subscription`
  ADD CONSTRAINT `utils_watchdog_category_subscription_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`),
  ADD CONSTRAINT `utils_watchdog_category_subscription_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `utils_watchdog_category` (`id`);

--
-- Constraints for table `utils_watchdog_event`
--
ALTER TABLE `utils_watchdog_event`
  ADD CONSTRAINT `utils_watchdog_event_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `utils_watchdog_category` (`id`);

--
-- Constraints for table `utils_watchdog_subscription`
--
ALTER TABLE `utils_watchdog_subscription`
  ADD CONSTRAINT `utils_watchdog_subscription_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login` (`id`);