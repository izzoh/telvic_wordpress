 
<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'telvic');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'ma1m6Yz6?[<s1:AD+TV&Yzm%#|NIfkiMQj[6?|stLk6MT0Z5[G83-DnLM}i}  9n');
define('SECURE_AUTH_KEY',  '<sKC++N7pmz0+Q]+WW{HOna%C8LBBo:l+6p;h4*&@eblul68D`gwb oNm+Y5+4W#');
define('LOGGED_IN_KEY',    'W,&Ba{k$(0x|@qn8y(IxL|_i>U*-C](rN%|rv(,=a463FvIb7QC1Xu]H>u.1Qwt)');
define('NONCE_KEY',        'D{G,q0^,Vz8UW*3R+P571<xir%Z?|HN:,5$bgc4^;8YOR.Q%C[,+tY@w@VmE6U <');
define('AUTH_SALT',        '^4Hf6#{Eu}1sTDYC{>/0f:u+  {cPF)a[{=w+_H4^!%tL+9k_L9LO>Y_EoVLy$YF');
define('SECURE_AUTH_SALT', '1]w@~S 3i*D*4Dj+z$=%`:>S$HP}Qu:HWk*Rr)(u}9U$hH_/-Kn4da&js[dIQ#(+');
define('LOGGED_IN_SALT',   '? -~r>)sn7e}s@Mf|h0)f0p-e`MCL}`L%O)DkZ;AwrHp=opk3T4h2[1(B3E7#z7$');
define('NONCE_SALT',       'YttF9r0F[F7 O}5K2@jw&CVe5Q8prx+>ciE:`Z2<Q=)S]q|shA&zYAYB~M]o bmy');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
