-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 10, 2014 at 02:17 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.6-1ubuntu1.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `telvic`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2014-04-05 11:37:42', '2014-04-05 11:37:42', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=234 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/wordpress', 'yes'),
(2, 'blogname', 'Telvic Parking Solution', 'yes'),
(3, 'blogdescription', 'Revolutionizing car parking', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'patrickblack33@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'links_recently_updated_prepend', '<em>', 'yes'),
(26, 'links_recently_updated_append', '</em>', 'yes'),
(27, 'links_recently_updated_time', '120', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:1:{i:0;s:19:"akismet/akismet.php";}', 'yes'),
(36, 'home', 'http://127.0.0.1/wordpress', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:2:{i:0;s:55:"/var/www/wordpress/wp-content/themes/one-page/style.css";i:2;s:0:"";}', 'no'),
(44, 'template', 'onetone', 'yes'),
(45, 'stylesheet', 'onetone', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '22442', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:0:{}', 'yes'),
(84, 'widget_rss', 'a:0:{}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', 'Africa/Nairobi', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '22442', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1397086681;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1397130115;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1397157710;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:1:{i:0;O:8:"stdClass":9:{s:8:"response";s:7:"upgrade";s:8:"download";s:40:"http://wordpress.org/wordpress-3.8.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:40:"http://wordpress.org/wordpress-3.8.1.zip";s:10:"no_content";s:51:"http://wordpress.org/wordpress-3.8.1-no-content.zip";s:11:"new_bundled";s:52:"http://wordpress.org/wordpress-3.8.1-new-bundled.zip";s:7:"partial";b:0;}s:7:"current";s:5:"3.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1397074508;s:15:"version_checked";s:5:"3.5.2";}', 'yes'),
(102, '_site_transient_update_plugins', 'O:8:"stdClass":2:{s:12:"last_checked";i:1397074507;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"2.6.0";s:3:"url";s:37:"http://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.2.6.0.zip";}}}', 'yes'),
(105, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1397080237;s:7:"checked";a:2:{s:12:"twentyeleven";s:3:"1.5";s:12:"twentytwelve";s:3:"1.1";}s:8:"response";a:2:{s:12:"twentyeleven";a:4:{s:5:"theme";s:12:"twentyeleven";s:11:"new_version";s:3:"1.7";s:3:"url";s:40:"http://wordpress.org/themes/twentyeleven";s:7:"package";s:57:"http://wordpress.org/themes/download/twentyeleven.1.7.zip";}s:12:"twentytwelve";a:4:{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"1.3";s:3:"url";s:40:"http://wordpress.org/themes/twentytwelve";s:7:"package";s:57:"http://wordpress.org/themes/download/twentytwelve.1.3.zip";}}}', 'yes'),
(106, '_site_transient_timeout_browser_06863c24ef1a2824ab3760d64ecce854', '1397302702', 'yes'),
(107, '_site_transient_browser_06863c24ef1a2824ab3760d64ecce854', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"32.0.1700.77";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(108, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:26:"http://127.0.0.1/wordpress";s:4:"link";s:102:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://127.0.0.1/wordpress/";s:3:"url";s:135:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://127.0.0.1/wordpress/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:26:"http://wordpress.org/news/";s:3:"url";s:31:"http://wordpress.org/news/feed/";s:5:"title";s:14:"WordPress Blog";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:28:"http://planet.wordpress.org/";s:3:"url";s:33:"http://planet.wordpress.org/feed/";s:5:"title";s:20:"Other WordPress News";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(109, 'can_compress_scripts', '0', 'yes'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'ftp_credentials', 'a:3:{s:8:"hostname";s:12:"localhost:80";s:8:"username";s:6:"telewa";s:15:"connection_type";s:3:"ftp";}', 'yes'),
(160, '_site_transient_timeout_wporg_theme_feature_list', '1397091052', 'yes'),
(161, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'yes'),
(162, 'theme_mods_twentytwelve', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1397070979;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(163, 'current_theme', 'onetone', 'yes'),
(164, 'theme_mods_one-page', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"custom_menu";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1397079718;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:0:{}s:21:"secondary-widget-area";a:0:{}s:24:"first-footer-widget-area";a:0:{}s:25:"second-footer-widget-area";a:0:{}s:24:"third-footer-widget-area";a:0:{}s:25:"fourth-footer-widget-area";a:0:{}}}}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(166, 'onepage_options', 'a:48:{s:11:"of_template";a:57:{i:0;a:2:{s:4:"name";s:16:"General Settings";s:4:"type";s:7:"heading";}i:1;a:4:{s:4:"name";s:11:"Custom Logo";s:4:"desc";s:95:"Upload a logo for your Website. The recommended size for the logo is 250px width x 50px height.";s:2:"id";s:12:"onepage_logo";s:4:"type";s:6:"upload";}i:2;a:4:{s:4:"name";s:14:"Custom Favicon";s:4:"desc";s:78:"Here you can upload a Favicon for your Website. Specified size is 16px x 16px.";s:2:"id";s:15:"onepage_favicon";s:4:"type";s:6:"upload";}i:3;a:5:{s:4:"name";s:14:"Contact Number";s:4:"desc";s:82:"Mention your contact number here through which users can interact to you directly.";s:2:"id";s:22:"onepage_contact_number";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:4;a:5:{s:4:"name";s:22:"Mobile Navigation Menu";s:4:"desc";s:38:"Enter your mobile navigation menu text";s:2:"id";s:11:"onepage_nav";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:5;a:6:{s:4:"name";s:17:"Front Page On/Off";s:4:"desc";s:95:"If the front page option is active then home page will appear otherwise blog page will display.";s:2:"id";s:5:"re_nm";s:3:"std";s:2:"on";s:4:"type";s:5:"radio";s:7:"options";a:2:{s:2:"on";s:2:"On";s:3:"off";s:3:"Off";}}i:6;a:3:{s:4:"name";s:26:"Optional Menu on Home Page";s:4:"type";s:8:"saperate";s:5:"class";s:9:"saperator";}i:7;a:5:{s:4:"name";s:19:"Optional Menu Title";s:4:"desc";s:152:"Here you can create a page menu that will display in menu section on your featured homepage besides the default featured home page menu. It is optional.";s:2:"id";s:24:"onepage_opt_menu_heading";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:8;a:5:{s:4:"name";s:18:"Optional Menu Link";s:4:"desc";s:103:"Here you can mention a URL for the optional menu that will redirect the users to the a particular page.";s:2:"id";s:21:"onepage_opt_menu_link";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:9;a:2:{s:4:"name";s:25:"Homepage Top Feature Area";s:4:"type";s:7:"heading";}i:10;a:3:{s:4:"name";s:32:"Homepage Fulwidth Featured Image";s:4:"type";s:8:"saperate";s:5:"class";s:9:"saperator";}i:11;a:5:{s:4:"name";s:14:"Featured Image";s:4:"desc";s:108:"The optimal size of the image is 1920 px wide x 654 px height, but it can be varied as per your requirement.";s:2:"id";s:19:"onepage_slideimage1";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:12;a:5:{s:4:"name";s:14:"Featured Image";s:4:"desc";s:43:"Mention the heading for the featured image.";s:2:"id";s:22:"onepage_sliderheading1";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:13;a:5:{s:4:"name";s:23:"Link for Featured Image";s:4:"desc";s:35:"Mention the URL for featured image.";s:2:"id";s:19:"onepage_Sliderlink1";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:14;a:5:{s:4:"name";s:26:"Featured Image Description";s:4:"desc";s:64:"Here mention a short description for the featured image heading.";s:2:"id";s:18:"onepage_sliderdes1";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:15;a:2:{s:4:"name";s:21:"Homepage Feature Area";s:4:"type";s:7:"heading";}i:16;a:5:{s:4:"name";s:16:"Featured Heading";s:4:"desc";s:46:"Mention the punch line for your business here.";s:2:"id";s:25:"onepage_page_main_heading";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:17;a:5:{s:4:"name";s:20:"Featured Sub Heading";s:4:"desc";s:79:"Mention the tagline for your business here that will complement the punch line.";s:2:"id";s:24:"onepage_page_sub_heading";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:18;a:2:{s:4:"name";s:25:"Homepage Services Section";s:4:"type";s:7:"heading";}i:19;a:5:{s:4:"name";s:7:"Heading";s:4:"desc";s:101:"Here you can mention a suitable heading for your services. It will also appear on the home page menu.";s:2:"id";s:28:"onepage_our_services_heading";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:20;a:3:{s:4:"name";s:11:"First block";s:4:"type";s:8:"saperate";s:5:"class";s:9:"saperator";}i:21;a:5:{s:4:"name";s:11:"First Image";s:4:"desc";s:107:"The optimal size of the image is 264 px wide x 264 px height, but it can be varied as per your requirement.";s:2:"id";s:27:"onepage_our_services_image1";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:22;a:5:{s:4:"name";s:7:"Title 1";s:4:"desc";s:86:"Here you can mention a suitable title that will display the title in services section.";s:2:"id";s:27:"onepage_our_services_title1";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:23;a:5:{s:4:"name";s:16:"Link for Title 1";s:4:"desc";s:27:"Mention the URL for Title 1";s:2:"id";s:28:"onepage_services_title_link1";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:24;a:5:{s:4:"name";s:13:"Description 1";s:4:"desc";s:98:"Here you can mention a suitable title that will display the small description in services section.";s:2:"id";s:26:"onepage_our_services_desc1";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:25;a:3:{s:4:"name";s:12:"Second Block";s:4:"type";s:8:"saperate";s:5:"class";s:9:"saperator";}i:26;a:5:{s:4:"name";s:12:"Second Image";s:4:"desc";s:107:"The optimal size of the image is 264 px wide x 264 px height, but it can be varied as per your requirement.";s:2:"id";s:27:"onepage_our_services_image2";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:27;a:5:{s:4:"name";s:7:"Title 2";s:4:"desc";s:86:"Here you can mention a suitable title that will display the title in services section.";s:2:"id";s:27:"onepage_our_services_title2";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:28;a:5:{s:4:"name";s:16:"Link for Title 2";s:4:"desc";s:26:"Mention the URL for Title2";s:2:"id";s:28:"onepage_services_title_link2";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:29;a:5:{s:4:"name";s:13:"Description 2";s:4:"desc";s:98:"Here you can mention a suitable title that will display the small description in services section.";s:2:"id";s:26:"onepage_our_services_desc2";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:30;a:3:{s:4:"name";s:11:"Third block";s:4:"type";s:8:"saperate";s:5:"class";s:9:"saperator";}i:31;a:5:{s:4:"name";s:11:"Third Image";s:4:"desc";s:107:"The optimal size of the image is 264 px wide x 264 px height, but it can be varied as per your requirement.";s:2:"id";s:27:"onepage_our_services_image3";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:32;a:5:{s:4:"name";s:7:"Title 3";s:4:"desc";s:86:"Here you can mention a suitable title that will display the title in services section.";s:2:"id";s:27:"onepage_our_services_title3";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:33;a:5:{s:4:"name";s:16:"Link for Title 3";s:4:"desc";s:27:"Mention the URL for Title 3";s:2:"id";s:28:"onepage_services_title_link3";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:34;a:5:{s:4:"name";s:13:"Description 3";s:4:"desc";s:98:"Here you can mention a suitable title that will display the small description in services section.";s:2:"id";s:26:"onepage_our_services_desc3";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:35;a:3:{s:4:"name";s:12:"Fourth block";s:4:"type";s:8:"saperate";s:5:"class";s:9:"saperator";}i:36;a:5:{s:4:"name";s:12:"Fourth Image";s:4:"desc";s:107:"The optimal size of the image is 264 px wide x 264 px height, but it can be varied as per your requirement.";s:2:"id";s:27:"onepage_our_services_image4";s:3:"std";s:0:"";s:4:"type";s:6:"upload";}i:37;a:5:{s:4:"name";s:7:"Title 4";s:4:"desc";s:86:"Here you can mention a suitable title that will display the title in services section.";s:2:"id";s:27:"onepage_our_services_title4";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:38;a:5:{s:4:"name";s:16:"Link for Title 4";s:4:"desc";s:27:"Mention the URL for Title 4";s:2:"id";s:28:"onepage_services_title_link4";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:39;a:5:{s:4:"name";s:13:"Description 4";s:4:"desc";s:98:"Here you can mention a suitable title that will display the small description in services section.";s:2:"id";s:26:"onepage_our_services_desc4";s:3:"std";s:0:"";s:4:"type";s:8:"textarea";}i:40;a:2:{s:4:"name";s:29:"Homepage Recent Blogs Section";s:4:"type";s:7:"heading";}i:41;a:5:{s:4:"name";s:12:"Blog Heading";s:4:"desc";s:113:"Here you can mention a suitable heading that will display as blog heading on home page. Also display on the menu.";s:2:"id";s:27:"onepage_recent_blog_heading";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:42;a:5:{s:4:"name";s:108:"To show your recent posts on home page you need to insert the feature image of the blog while publishing it.";s:4:"desc";s:0:"";s:2:"id";s:0:"";s:3:"std";s:0:"";s:4:"type";s:0:"";}i:43;a:2:{s:4:"name";s:15:"Contact Section";s:4:"type";s:7:"heading";}i:44;a:5:{s:4:"name";s:15:"Contact Heading";s:4:"desc";s:119:"Here you can mention a suitable heading that will display as your contact title on home page. Also display on the menu.";s:2:"id";s:27:"onepage_our_contact_heading";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:45;a:5:{s:4:"name";s:19:"Contact Sub Heading";s:4:"desc";s:130:"Here you can mention a suitable heading that will display as contact heading on the right side of home page under contact section.";s:2:"id";s:31:"onepage_our_contact_sub_heading";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:46;a:5:{s:4:"name";s:16:"Business Address";s:4:"desc";s:86:"Here you can put your business address that will display on home page of your website.";s:2:"id";s:23:"onepage_contact_address";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:47;a:5:{s:4:"name";s:14:"Contact Number";s:4:"desc";s:71:"Here you can mention your contact number that will appear on home page.";s:2:"id";s:24:"onepage_contact_phone_no";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:48;a:5:{s:4:"name";s:13:"Contact Email";s:4:"desc";s:65:"Here you can mention your email id that will appear on home page.";s:2:"id";s:20:"onepage_ontact_email";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:49;a:5:{s:4:"name";s:13:" Your Website";s:4:"desc";s:69:"Here you can mention your website name that will appear on home page.";s:2:"id";s:23:"onepage_contact_website";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:50;a:2:{s:4:"name";s:12:"Social Icons";s:4:"type";s:7:"heading";}i:51;a:5:{s:4:"name";s:12:"Facebook URL";s:4:"desc";s:38:"Mention the URL of your Facebook here.";s:2:"id";s:16:"onepage_facebook";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:52;a:5:{s:4:"name";s:11:"Twitter URL";s:4:"desc";s:37:"Mention the URL of your Twitter here.";s:2:"id";s:15:"onepage_twitter";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:53;a:5:{s:4:"name";s:11:"Google+ URL";s:4:"desc";s:37:"Mention the URL of your Google+ here.";s:2:"id";s:14:"onepage_google";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:54;a:5:{s:4:"name";s:12:"Rss Feed URL";s:4:"desc";s:38:"Mention the URL of your Rss Feed here.";s:2:"id";s:11:"onepage_rss";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:55;a:5:{s:4:"name";s:13:"Pinterest URL";s:4:"desc";s:39:"Mention the URL of your Pinterest here.";s:2:"id";s:17:"onepage_pinterest";s:3:"std";s:0:"";s:4:"type";s:4:"text";}i:56;a:5:{s:4:"name";s:11:"YouTube URL";s:4:"desc";s:37:"Mention the URL of your YouTube here.";s:2:"id";s:15:"onepage_youtube";s:3:"std";s:0:"";s:4:"type";s:4:"text";}}s:12:"of_themename";s:14:"One page Theme";s:12:"of_shortname";s:2:"of";s:12:"onepage_logo";s:67:"http://127.0.0.1/wordpress/wp-content/uploads/2014/04/snapshot6.png";s:15:"onepage_favicon";s:64:"http://127.0.0.1/wordpress/wp-content/uploads/2014/04/mockup.jpg";s:22:"onepage_contact_number";s:0:"";s:11:"onepage_nav";s:0:"";s:5:"re_nm";s:2:"on";s:24:"onepage_opt_menu_heading";s:0:"";s:21:"onepage_opt_menu_link";s:0:"";s:19:"onepage_slideimage1";s:67:"http://127.0.0.1/wordpress/wp-content/uploads/2014/04/telviccut.mp4";s:22:"onepage_sliderheading1";s:20:"The Parking solution";s:19:"onepage_Sliderlink1";s:43:"https://www.youtube.com/watch?v=JoLjzpSMA7Q";s:18:"onepage_sliderdes1";s:0:"";s:25:"onepage_page_main_heading";s:0:"";s:24:"onepage_page_sub_heading";s:0:"";s:28:"onepage_our_services_heading";s:0:"";s:27:"onepage_our_services_image1";s:0:"";s:27:"onepage_our_services_title1";s:0:"";s:28:"onepage_services_title_link1";s:0:"";s:26:"onepage_our_services_desc1";s:0:"";s:27:"onepage_our_services_image2";s:0:"";s:27:"onepage_our_services_title2";s:0:"";s:28:"onepage_services_title_link2";s:0:"";s:26:"onepage_our_services_desc2";s:0:"";s:27:"onepage_our_services_image3";s:0:"";s:27:"onepage_our_services_title3";s:0:"";s:28:"onepage_services_title_link3";s:0:"";s:26:"onepage_our_services_desc3";s:0:"";s:27:"onepage_our_services_image4";s:0:"";s:27:"onepage_our_services_title4";s:0:"";s:28:"onepage_services_title_link4";s:0:"";s:26:"onepage_our_services_desc4";s:0:"";s:27:"onepage_recent_blog_heading";s:0:"";s:0:"";s:0:"";s:27:"onepage_our_contact_heading";s:0:"";s:31:"onepage_our_contact_sub_heading";s:0:"";s:23:"onepage_contact_address";s:0:"";s:24:"onepage_contact_phone_no";s:0:"";s:20:"onepage_ontact_email";s:0:"";s:23:"onepage_contact_website";s:0:"";s:16:"onepage_facebook";s:0:"";s:15:"onepage_twitter";s:0:"";s:14:"onepage_google";s:0:"";s:11:"onepage_rss";s:0:"";s:17:"onepage_pinterest";s:0:"";s:15:"onepage_youtube";s:0:"";s:10:"of_options";a:44:{s:12:"onepage_logo";s:0:"";s:15:"onepage_favicon";s:0:"";s:22:"onepage_contact_number";s:0:"";s:11:"onepage_nav";s:0:"";s:5:"re_nm";s:2:"on";s:24:"onepage_opt_menu_heading";s:0:"";s:21:"onepage_opt_menu_link";s:0:"";s:19:"onepage_slideimage1";s:0:"";s:22:"onepage_sliderheading1";s:0:"";s:19:"onepage_Sliderlink1";s:0:"";s:18:"onepage_sliderdes1";s:0:"";s:25:"onepage_page_main_heading";s:0:"";s:24:"onepage_page_sub_heading";s:0:"";s:28:"onepage_our_services_heading";s:0:"";s:27:"onepage_our_services_image1";s:0:"";s:27:"onepage_our_services_title1";s:0:"";s:28:"onepage_services_title_link1";s:0:"";s:26:"onepage_our_services_desc1";s:0:"";s:27:"onepage_our_services_image2";s:0:"";s:27:"onepage_our_services_title2";s:0:"";s:28:"onepage_services_title_link2";s:0:"";s:26:"onepage_our_services_desc2";s:0:"";s:27:"onepage_our_services_image3";s:0:"";s:27:"onepage_our_services_title3";s:0:"";s:28:"onepage_services_title_link3";s:0:"";s:26:"onepage_our_services_desc3";s:0:"";s:27:"onepage_our_services_image4";s:0:"";s:27:"onepage_our_services_title4";s:0:"";s:28:"onepage_services_title_link4";s:0:"";s:26:"onepage_our_services_desc4";s:0:"";s:27:"onepage_recent_blog_heading";s:0:"";s:0:"";s:0:"";s:27:"onepage_our_contact_heading";s:0:"";s:31:"onepage_our_contact_sub_heading";s:0:"";s:23:"onepage_contact_address";s:0:"";s:24:"onepage_contact_phone_no";s:0:"";s:20:"onepage_ontact_email";s:0:"";s:23:"onepage_contact_website";s:0:"";s:16:"onepage_facebook";s:0:"";s:15:"onepage_twitter";s:0:"";s:14:"onepage_google";s:0:"";s:11:"onepage_rss";s:0:"";s:17:"onepage_pinterest";s:0:"";s:15:"onepage_youtube";s:0:"";}}', 'yes'),
(167, 'of_options', 'a:0:{}', 'yes'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(171, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(172, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(175, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1397116135', 'no'),
(176, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not open handle for fopen() to http://wordpress.org/news/feed/</p></div>', 'no'),
(177, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1397116135', 'no'),
(178, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not open handle for fopen() to http://planet.wordpress.org/feed/</p></div>', 'no'),
(179, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1397116135', 'no'),
(180, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<p><strong>RSS Error</strong>: WP HTTP Error: Could not open handle for fopen() to http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://127.0.0.1/wordpress/</p>', 'no'),
(181, '_transient_timeout_plugin_slugs', '1397159337', 'no'),
(182, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(183, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1397116137', 'no'),
(184, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '', 'no'),
(188, '_site_transient_timeout_theme_roots', '1397082013', 'yes'),
(189, '_site_transient_theme_roots', 'a:5:{s:8:"OnePager";s:7:"/themes";s:8:"one-page";s:7:"/themes";s:7:"onetone";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(190, 'theme_mods_OnePager', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1397080237;s:4:"data";a:8:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}s:9:"sidebar-6";N;}}}', 'yes'),
(191, 'option_tree_settings', 'a:3:{s:15:"contextual_help";a:2:{s:7:"content";a:1:{i:0;a:3:{s:2:"id";s:12:"general_help";s:5:"title";s:8:"General1";s:7:"content";s:30:"<p>Help content goes here!</p>";}}s:7:"sidebar";s:33:"<p>Sidebar content goes here!</p>";}s:8:"sections";a:8:{i:0;a:2:{s:2:"id";s:7:"general";s:5:"title";s:16:"General Settings";}i:1;a:2:{s:2:"id";s:6:"slider";s:5:"title";s:6:"Slider";}i:2;a:2:{s:2:"id";s:7:"aboutus";s:5:"title";s:8:"About Us";}i:3;a:2:{s:2:"id";s:9:"portfolio";s:5:"title";s:9:"Portfolio";}i:4;a:2:{s:2:"id";s:6:"skills";s:5:"title";s:6:"Skills";}i:5;a:2:{s:2:"id";s:10:"industries";s:5:"title";s:10:"Industries";}i:6;a:2:{s:2:"id";s:7:"clients";s:5:"title";s:7:"Clients";}i:7;a:2:{s:2:"id";s:6:"social";s:5:"title";s:14:"Social Network";}}s:8:"settings";a:13:{i:0;a:8:{s:2:"id";s:10:"logo_image";s:5:"label";s:9:"Site Logo";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:7:"section";s:7:"general";s:4:"type";s:6:"upload";s:5:"class";s:0:"";s:7:"choices";a:0:{}}i:1;a:9:{s:2:"id";s:15:"skills_settings";s:5:"label";s:6:"Skills";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"type";s:9:"list-item";s:7:"section";s:6:"skills";s:5:"class";s:0:"";s:7:"choices";a:0:{}s:8:"settings";a:1:{i:0;a:7:{s:2:"id";s:11:"skill_value";s:5:"label";s:11:"Skill Level";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"type";s:4:"text";s:5:"class";s:0:"";s:7:"choices";a:0:{}}}}i:2;a:8:{s:2:"id";s:13:"industry_desc";s:5:"label";s:11:"Description";s:4:"desc";s:48:"This text will be the description of Industries.";s:3:"std";s:0:"";s:7:"section";s:10:"industries";s:4:"type";s:8:"textarea";s:5:"class";s:0:"";s:7:"choices";a:0:{}}i:3;a:8:{s:2:"id";s:15:"social_facebook";s:5:"label";s:12:"Facebook URL";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:7:"section";s:6:"social";s:4:"type";s:4:"text";s:5:"class";s:0:"";s:7:"choices";a:0:{}}i:4;a:8:{s:2:"id";s:14:"social_twitter";s:5:"label";s:11:"Twitter URL";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:7:"section";s:6:"social";s:4:"type";s:4:"text";s:5:"class";s:0:"";s:7:"choices";a:0:{}}i:5;a:8:{s:2:"id";s:15:"social_linkedin";s:5:"label";s:12:"Linkedin URL";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:7:"section";s:6:"social";s:4:"type";s:4:"text";s:5:"class";s:0:"";s:7:"choices";a:0:{}}i:6;a:8:{s:2:"id";s:12:"clients_desc";s:5:"label";s:11:"Description";s:4:"desc";s:45:"This text will be the description of Clients.";s:3:"std";s:0:"";s:7:"section";s:7:"clients";s:4:"type";s:8:"textarea";s:5:"class";s:0:"";s:7:"choices";a:0:{}}i:7;a:9:{s:2:"id";s:15:"client_settings";s:5:"label";s:7:"Clients";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"type";s:9:"list-item";s:7:"section";s:7:"clients";s:5:"class";s:0:"";s:7:"choices";a:0:{}s:8:"settings";a:2:{i:0;a:7:{s:2:"id";s:12:"client_image";s:5:"label";s:5:"Image";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"type";s:6:"upload";s:5:"class";s:0:"";s:7:"choices";a:0:{}}i:1;a:7:{s:2:"id";s:10:"client_url";s:5:"label";s:10:"Client URL";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"type";s:4:"text";s:5:"class";s:0:"";s:7:"choices";a:0:{}}}}i:8;a:8:{s:2:"id";s:14:"portfolio_desc";s:5:"label";s:11:"Description";s:4:"desc";s:101:"This text will be the description of Portfolio.You can add portfolios from the Portfolio Post Section";s:3:"std";s:0:"";s:7:"section";s:9:"portfolio";s:4:"type";s:8:"textarea";s:5:"class";s:0:"";s:7:"choices";a:0:{}}i:9;a:9:{s:2:"id";s:17:"industry_settings";s:5:"label";s:10:"Industries";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"type";s:9:"list-item";s:7:"section";s:10:"industries";s:5:"class";s:0:"";s:7:"choices";a:0:{}s:8:"settings";a:1:{i:0;a:7:{s:2:"id";s:12:"industry_url";s:5:"label";s:12:"Industry URL";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"type";s:4:"text";s:5:"class";s:0:"";s:7:"choices";a:0:{}}}}i:10;a:8:{s:2:"id";s:12:"aboutus_desc";s:5:"label";s:11:"Description";s:4:"desc";s:49:"This text will be placed in the About us Section.";s:3:"std";s:0:"";s:7:"section";s:7:"aboutus";s:4:"type";s:8:"textarea";s:5:"class";s:0:"";s:7:"choices";a:0:{}}i:11;a:8:{s:2:"id";s:11:"my_checkbox";s:5:"label";s:13:"Enable Slider";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"type";s:8:"checkbox";s:7:"section";s:6:"slider";s:5:"class";s:0:"";s:7:"choices";a:1:{i:0;a:2:{s:5:"value";s:3:"yes";s:5:"label";s:0:"";}}}i:12;a:9:{s:2:"id";s:9:"my_slider";s:5:"label";s:6:"Images";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"type";s:9:"list-item";s:7:"section";s:6:"slider";s:5:"class";s:0:"";s:7:"choices";a:0:{}s:8:"settings";a:2:{i:0;a:7:{s:2:"id";s:12:"slider_image";s:5:"label";s:5:"Image";s:4:"desc";s:0:"";s:3:"std";s:0:"";s:4:"type";s:6:"upload";s:5:"class";s:0:"";s:7:"choices";a:0:{}}i:1;a:7:{s:2:"id";s:14:"slider_caption";s:5:"label";s:7:"Caption";s:4:"desc";s:54:"This text is used to add fancy captions in the slider.";s:3:"std";s:0:"";s:4:"type";s:4:"text";s:5:"class";s:0:"";s:7:"choices";a:0:{}}}}}}', 'yes'),
(192, 'option_tree', 'a:13:{s:10:"logo_image";s:0:"";s:15:"skills_settings";s:0:"";s:13:"industry_desc";s:0:"";s:15:"social_facebook";s:0:"";s:14:"social_twitter";s:0:"";s:15:"social_linkedin";s:0:"";s:12:"clients_desc";s:0:"";s:15:"client_settings";s:0:"";s:14:"portfolio_desc";s:0:"";s:17:"industry_settings";s:0:"";s:12:"aboutus_desc";s:0:"";s:11:"my_checkbox";s:0:"";s:9:"my_slider";s:0:"";}', 'yes'),
(193, 'theme_mods_onetone', 'a:1:{i:0;b:0;}', 'yes'),
(194, 'onetone_optionsframework', 'a:1:{s:2:"id";s:7:"onetone";}', 'yes'),
(195, 'onetone', 'a:29:{s:4:"logo";s:69:"http://127.0.0.1/wordpress/wp-content/uploads/2014/04/Telvic-logo.png";s:7:"favicon";s:0:"";s:15:"page_background";a:5:{s:5:"color";s:7:"#6d6d6d";s:5:"image";s:0:"";s:6:"repeat";s:9:"no-repeat";s:8:"position";s:8:"top left";s:10:"attachment";s:5:"fixed";}s:10:"custom_css";s:17:"body{margin:0px;}";s:11:"section_num";s:1:"4";s:15:"section_title_0";s:0:"";s:12:"menu_title_0";s:4:"Home";s:20:"section_background_0";a:5:{s:5:"color";s:7:"#0f0f0f";s:5:"image";s:0:"";s:6:"repeat";s:6:"repeat";s:8:"position";s:8:"top left";s:10:"attachment";s:6:"scroll";}s:26:"section_background_video_0";s:0:"";s:19:"section_css_class_0";s:14:"section-banner";s:16:"sction_content_0";s:1508:"<div class="banner-box">\r\n<h1>Telvic Parking Solutions</h1><br /><hr />\r\n<p>\r\nWe are revolutionizing parking in Kenya and around the globe. No more hustle for an empty parking slot when you have a phone at your disposal. Simply follow the following four steps:<p>\r\n<ol style="margin-center">\r\n	<li style="margin-left: 15px;">Get phone</li>\r\n	<li style="margin-left: 15px;">Send SMS of your location to "0711767358"</li>\r\n	<li style="margin-left: 15px;">Wait for 30 seconds.</li>\r\n	<li style="margin-left: 15px;">Receive details of available parking spaces:</li>\r\n</ol>\r\n<div class="banner-scroll"><a class="scroll" href="#about-us" data-section="about-us"><img alt="" src="http://127.0.0.1/wordpress/wp-content/themes/onetone/images/down.png" /></a></div>\r\n<ul class="banner-sns">\r\n	<li><a href="#"><img alt="" src="http://127.0.0.1/wordpress/wp-content/themes/onetone/images/facebook.png" /></a></li>\r\n	<li><a href="#"><img alt="" src="http://127.0.0.1/wordpress/wp-content/themes/onetone/images/skype.png" /></a></li>\r\n	<li><a href="#"><img alt="" src="http://127.0.0.1/wordpress/wp-content/themes/onetone/images/title.png" /></a></li>\r\n	<li><a href="#"><img alt="" src="http://127.0.0.1/wordpress/wp-content/themes/onetone/images/linkedin.png" /></a></li>\r\n	<li><a href="#"><img alt="" src="http://127.0.0.1/wordpress/wp-content/themes/onetone/images/google.png" /></a></li>\r\n	<li><a href="#"><img alt="" src="http://127.0.0.1/wordpress/wp-content/themes/onetone/images/rss.png" /></a></li>\r\n</ul>\r\n</div>";s:15:"section_title_1";s:8:"About Us";s:12:"menu_title_1";s:8:"About Us";s:20:"section_background_1";a:5:{s:5:"color";s:0:"";s:5:"image";s:73:"http://127.0.0.1/wordpress/wp-content/themes/onetone/images/home-bg02.jpg";s:6:"repeat";s:6:"repeat";s:8:"position";s:8:"top left";s:10:"attachment";s:6:"scroll";}s:26:"section_background_video_1";s:0:"";s:19:"section_css_class_1";s:13:"section-about";s:16:"sction_content_1";s:994:"<div class="two_third">\r\n<h3>About Telvic</h3>\r\nTelvic Parking Solutions is a Kenyan based company that is providing a solution to the menace problem of car parking. Over the years it has become difficult to determine firsthand which part of the CBD has empty parking slots to park. That burden has officially been lifted by Telvic Parking solutions. At telvic you dont have to worry anymore because we have your back. All you have to do is SMS the location you are at to 0711767358 and we will provide you with information of the nearest empty parking slots in 30 seconds or less.\r\n\r\nThis will save you the trouble of having to drive around aimlessly searching for an empty parking slot.\r\n\r\n</div>\r\n<div class="one_third last">\r\n<h3>Personal Info</h3>\r\n<ul>\r\n	<li class="info-phone">+254711767358</li>\r\n	<li class="info-address">Chiromo, Riverside Road</li>\r\n	<li class="info-email"><a href="#">i</a>nfo@telvic.com</li>\r\n	<li class="info-website"><a href="#">t</a>elvic.com</li>\r\n</ul>\r\n</div>";s:15:"section_title_2";s:4:"Team";s:12:"menu_title_2";s:4:"Team";s:20:"section_background_2";a:5:{s:5:"color";s:0:"";s:5:"image";s:73:"http://127.0.0.1/wordpress/wp-content/themes/onetone/images/home-bg03.jpg";s:6:"repeat";s:6:"repeat";s:8:"position";s:8:"top left";s:10:"attachment";s:6:"scroll";}s:26:"section_background_video_2";s:0:"";s:19:"section_css_class_2";s:0:"";s:16:"sction_content_2";s:585:"<div class="one_third">\r\n\r\n<img alt="" src="http://127.0.0.1/wordpress/wp-content/themes/onetone/images/telewa.jpg" />\r\n<h3>Emmanuel Telewa</h3>\r\nDeveloper and president of Telvic Parking Solutions.\r\n\r\n</div>\r\n<div class="one_third">\r\n\r\n<img alt="" src="http://127.0.0.1/wordpress/wp-content/themes/onetone/images/victor.jpg" />\r\n<h3>Victor Wekesa</h3>\r\nDeveloper/Designer of Telvic Parking Solutions\r\n\r\n</div>\r\n<div class="one_third last">\r\n\r\n<img alt="" src="http://127.0.0.1/wordpress/wp-content/themes/onetone/images/services-icon-3.png" />\r\n<h3>Anon</h3>\r\nMarketing ....\r\n\r\n</div>";s:15:"section_title_3";s:8:"Contacts";s:12:"menu_title_3";s:8:"Contacts";s:20:"section_background_3";a:5:{s:5:"color";s:0:"";s:5:"image";s:73:"http://127.0.0.1/wordpress/wp-content/themes/onetone/images/home-bg02.jpg";s:6:"repeat";s:6:"repeat";s:8:"position";s:8:"top left";s:10:"attachment";s:6:"scroll";}s:26:"section_background_video_3";s:0:"";s:19:"section_css_class_3";s:0:"";s:16:"sction_content_3";s:689:"<p class="contact-text">We would like to hear from you. You can do so by writing to us and we will get back to you as soon as possible.</p>\r\n\r\n<div class="contact-area"><form class="contact-form" action="" method="post"><input id="name" tabindex="1" type="text" name="name" placeholder="Name" size="22" value="" />\r\n<input id="email" tabindex="2" type="text" name="email" placeholder="Email" size="22" value="" />\r\n<textarea id="message" tabindex="4" cols="39" name="message" placeholder="Message" rows="7"></textarea><input id="sendto" type="hidden" name="sendto" value="YOUR EMAIL HERE(Default Admin Email)" />\r\n<input id="submit" type="button" name="submit" value="Post" /></form></div>";}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_edit_lock', '1396698052:1'),
(3, 1, '_edit_lock', '1396705423:1'),
(4, 1, '_edit_last', '1'),
(11, 2, '_wp_trash_meta_status', 'publish'),
(12, 2, '_wp_trash_meta_time', '1396704345'),
(19, 12, '_edit_last', '1'),
(20, 12, '_edit_lock', '1397074346:1'),
(21, 13, '_wp_attached_file', '2014/04/pi_white_edited.jpg'),
(22, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1117;s:6:"height";i:916;s:4:"file";s:27:"2014/04/pi_white_edited.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"pi_white_edited-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"pi_white_edited-300x246.jpg";s:5:"width";i:300;s:6:"height";i:246;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"pi_white_edited-1024x839.jpg";s:5:"width";i:1024;s:6:"height";i:839;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post_thumbnail";a:4:{s:4:"file";s:27:"pi_white_edited-600x250.jpg";s:5:"width";i:600;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:16:"post_thumbnail_1";a:4:{s:4:"file";s:25:"pi_white_edited-70x70.jpg";s:5:"width";i:70;s:6:"height";i:70;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(23, 12, '_thumbnail_id', '13'),
(24, 12, '_wp_page_template', 'default'),
(43, 20, '_wp_attached_file', '2014/04/snapshot61.png'),
(44, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:496;s:6:"height";i:170;s:4:"file";s:22:"2014/04/snapshot61.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"snapshot61-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:22:"snapshot61-300x102.png";s:5:"width";i:300;s:6:"height";i:102;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(45, 21, '_wp_attached_file', '2014/04/Telvic-logo.png'),
(46, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:294;s:6:"height";i:100;s:4:"file";s:23:"2014/04/Telvic-logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Telvic-logo-150x100.png";s:5:"width";i:150;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-04-05 11:37:42', '2014-04-05 11:37:42', '', 'Telvic Parking Solutions', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-04-05 16:29:35', '2014-04-05 13:29:35', '', 0, 'http://127.0.0.1/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2014-04-05 11:37:42', '2014-04-05 11:37:42', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://127.0.0.1/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2014-04-05 16:25:45', '2014-04-05 13:25:45', '', 0, 'http://127.0.0.1/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-04-05 11:38:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-04-05 11:38:22', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/wordpress/?p=3', 0, 'post', '', 0),
(4, 1, '2014-04-05 11:55:10', '2014-04-05 11:55:10', 'Telvic Parking Solutions\n\n<a href="https://www.youtube.com/watch?v=JoLjzpSMA7Q">Telvic Parking solution</a>', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-autosave', '', '', '2014-04-05 11:55:10', '2014-04-05 11:55:10', '', 1, 'http://127.0.0.1/wordpress/?p=4', 0, 'revision', '', 0),
(5, 1, '2014-04-05 11:37:42', '2014-04-05 11:37:42', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2014-04-05 11:37:42', '2014-04-05 11:37:42', '', 1, 'http://127.0.0.1/wordpress/?p=5', 0, 'revision', '', 0),
(6, 1, '2014-04-05 12:09:02', '2014-04-05 12:09:02', 'Telvic Parking Solutions\r\n\r\n<a href="https://www.youtube.com/watch?v=JoLjzpSMA7Q">Telvic Parking solution</a>', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-2', '', '', '2014-04-05 12:09:02', '2014-04-05 12:09:02', '', 1, 'http://127.0.0.1/wordpress/?p=6', 0, 'revision', '', 0),
(8, 1, '2014-04-05 11:37:42', '2014-04-05 11:37:42', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://127.0.0.1/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2014-04-05 11:37:42', '2014-04-05 11:37:42', '', 2, 'http://127.0.0.1/wordpress/?p=8', 0, 'revision', '', 0),
(9, 1, '2014-04-05 12:09:25', '2014-04-05 12:09:25', 'Telvic Parking Solutions\r\n\r\n<a href="https://www.youtube.com/watch?v=JoLjzpSMA7Q">Telvic Parking solution</a>', 'Telvic Parking Solutions', '', 'inherit', 'open', 'open', '', '1-revision-3', '', '', '2014-04-05 12:09:25', '2014-04-05 12:09:25', '', 1, 'http://127.0.0.1/wordpress/?p=9', 0, 'revision', '', 0),
(12, 1, '2014-04-09 22:23:07', '2014-04-09 19:23:07', '', '', '', 'publish', 'open', 'open', '', 'home', '', '', '2014-04-09 23:14:17', '2014-04-09 20:14:17', '', 0, 'http://127.0.0.1/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2014-04-09 22:22:30', '2014-04-09 19:22:30', '', 'pi_white_edited', '', 'inherit', 'open', 'open', '', 'pi_white_edited', '', '', '2014-04-09 22:22:30', '2014-04-09 19:22:30', '', 12, 'http://127.0.0.1/wordpress/wp-content/uploads/2014/04/pi_white_edited.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2014-04-09 22:22:51', '2014-04-09 19:22:51', 'hy5yujn6o78', 'home', '', 'inherit', 'open', 'open', '', '12-revision', '', '', '2014-04-09 22:22:51', '2014-04-09 19:22:51', '', 12, 'http://127.0.0.1/wordpress/?p=14', 0, 'revision', '', 0),
(17, 1, '2014-04-09 22:23:07', '2014-04-09 19:23:07', 'hy5yujn6o78', 'home', '', 'inherit', 'open', 'open', '', '12-revision-2', '', '', '2014-04-09 22:23:07', '2014-04-09 19:23:07', '', 12, 'http://127.0.0.1/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2014-04-09 23:14:07', '2014-04-09 20:14:07', '', 'home', '', 'inherit', 'open', 'open', '', '12-revision-3', '', '', '2014-04-09 23:14:07', '2014-04-09 20:14:07', '', 12, 'http://127.0.0.1/wordpress/?p=18', 0, 'revision', '', 0),
(19, 1, '2014-04-10 00:41:59', '2014-04-09 21:41:59', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2014-04-10 00:41:59', '2014-04-09 21:41:59', '', 0, 'http://127.0.0.1/wordpress/?option-tree=media', 0, 'option-tree', '', 0),
(20, 1, '2014-04-10 00:53:15', '2014-04-09 21:53:15', '', 'snapshot6', '', 'inherit', 'open', 'open', '', 'snapshot6', '', '', '2014-04-10 00:53:15', '2014-04-09 21:53:15', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2014/04/snapshot61.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2014-04-10 00:59:55', '2014-04-09 21:59:55', '', 'Telvic logo', '', 'inherit', 'open', 'open', '', 'telvic-logo', '', '', '2014-04-10 00:59:55', '2014-04-09 21:59:55', '', 0, 'http://127.0.0.1/wordpress/wp-content/uploads/2014/04/Telvic-logo.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'telewa'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(16, 1, 'wp_user-settings-time', '1397083640'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(19, 1, 'closedpostboxes_nav-menus', 'a:1:{i:0;s:12:"add-category";}'),
(20, 1, 'meta-box-order_nav-menus', 'a:1:{s:4:"side";s:85:"nav-menu-theme-locations,add-custom-links,add-post,add-page,add-category,add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'telewa', '$P$B1BD4LTfBuqreP2J8QEl4xFy8SpvvC/', 'telewa', 'patrickblack33@gmail.com', '', '2014-04-05 11:37:41', '', 0, 'telewa');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
