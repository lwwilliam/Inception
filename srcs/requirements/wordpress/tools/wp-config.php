<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'MYSQL_DATABASE' );

/** Database username */
define( 'DB_USER', 'MYSQL_USER' );

/** Database password */
define( 'DB_PASSWORD', 'MYSQL_PASSWORD' );

/** Database hostname */
define( 'DB_HOST', 'MYSQL_LOCALHOST' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'p+E17Qr-CrqV9%0=h2Nf^s E%uIv/Wcb&z>P0V|-Zpe.b@b~,~h7;ng8~9gH Roq');
define('SECURE_AUTH_KEY',  '}2ZG.drCgiD|.Eg/qws91eJ?8 (T]:4QF@%kjfTpAkW;iB?Ou<=k)flTs%Cc]}71');
define('LOGGED_IN_KEY',    'gN}ujO9#$s[OD`Q%-Uie`n7qP!]S Er#=]fI-+vpeo{omp/n-~kSs$egJ%tL8NiY');
define('NONCE_KEY',        '7kR_8.t&rhzw0zEJ8D{e^4,B.P:;pJz^r!nRZC+<XWt-+V-;@Iq_yOs.Hl(rjWXk');
define('AUTH_SALT',        'R{34+&qkc$r:o~e:R.kd%X^rgj;$X{dR/P6ms~shk^&:J6=KOKpxK^@70>vt9o=d');
define('SECURE_AUTH_SALT', 'Dgaf7C+|Om#.Oa|,oW@[=bwvq`ZPPNV}K]VhL9$+o>wc+)3[Fd9Z^Py?E+ 6c|JR');
define('LOGGED_IN_SALT',   '.FT]gix-c{CCB{roM|0&-$)+9o86^SV#A+??nF+ezadAP,)YXi;t~c:]S&jN?v>]');
define('NONCE_SALT',       '}i#|Ghn`Wn2}(lk<W^D4oc:k`J;;F8:uQl5 s~cjzN2&II:W,Z-z#e<nS9zxpn=z');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
