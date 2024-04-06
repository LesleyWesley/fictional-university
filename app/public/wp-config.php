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
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

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
define( 'AUTH_KEY',          'Jt]&|>d3RO~uz$`s#6laxZw^s-9MQ1?B4 w$+StHz}+IRtWH{y~UpONnY$dlVO[@' );
define( 'SECURE_AUTH_KEY',   'R8sa=cR(EMb_/O%#-9dVO*h39!37*3<IJ6,@M/F0Q|HtoQ+91 (`H`/HW{l};i:^' );
define( 'LOGGED_IN_KEY',     'ht,%z?Y+T]n7f=p0`8Kk%oy@MR7wx2rG[vot;v5|@A!1.N:M,`DST7j6<p1>:?GT' );
define( 'NONCE_KEY',         'w.P>8-Uf{GU`3b>SH.o!f%QNAQ.hx,7fYpO{C;1kY^2 $I,E0Vv_@+;#~Gu=K4RI' );
define( 'AUTH_SALT',         '2i,S54ks/.G(TLa4D` ,&a}V|W4y>@@ i2$|&~pP@SBgzn!lJ1%2`{gHVH.[ECXa' );
define( 'SECURE_AUTH_SALT',  '4{qF9>mv*=fTt=Xko/6u/#>Sq2C2_,Gm:ruU2W!V<9V$Eq=U15I(Y=FiK1p_%u:j' );
define( 'LOGGED_IN_SALT',    '&&UEg[5gHSxmW@NF!u:zzA}Z5XIBH%2:bL+kaQOF;!Q7Pk/7[]Lr[mH%}$hoe# O' );
define( 'NONCE_SALT',        ';gGLO0pyP)rXTwoG1K^GUwLp*#4!3zrVdy3nnnQA:S>/n+fTSXWEn_q5c}~wAhe:' );
define( 'WP_CACHE_KEY_SALT', 'PI=U<z.*5A/&(^}1S#d$RN0C_(JH1}NoQw T#D0O,WNP.R7VCwN4-!l;3CK!ky. ' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
