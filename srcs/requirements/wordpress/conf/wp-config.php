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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'achane-l' );

/** Database password */
define( 'DB_PASSWORD', 'poire1234' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

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
define( 'AUTH_KEY','|]0l0A`JIish,+U|<#^~vd,J;cnyZ2!41Ty!O6)a5IefnYS zeVLW2)TxEb;{+sZ');
define( 'SECURE_AUTH_KEY','kWvps=W-E|n8+P 6EJx!|@2VYxl!1E9),20<`q~yErM>n}#=Hs(uUvpdNSDB=wAD');
define( 'LOGGED_IN_KEY','*gIX_&.hIV:(SGssG@(vtb^+.)V)DMuhSRk9NrU!O:n+)yM?9WJr]RAw[-vAieUP');
define( 'NONCE_KEY','Z+d!Wb6~c|^&~e]]e%(Qvec>-UON/Z5rGtR+E=UMM~%d J.F,Ye[92d`|leH8@}5');
define( 'AUTH_SALT','&bz*z&zvyp-17Jm{*..tR5j7e7n6)2?GTI&8qQRE@x-<= Fe}bpp8p(!ebJl/Efi');
define( 'SECURE_AUTH_SALT','ONztGxF}6(DM>3XE>9*!9l4V2c.FS+S!G7%[Gp+8m)h~- J[nz(4%],-f<p{0S-');
define( 'LOGGED_IN_SALT','GH~2Y|ZcjAd3MkPTAe=}#Gt `Q$Wq.*{)CekSN)B_zc>3w<sdX0cY:_F+dKXr`<O');
define( 'NONCE_SALT','c4cCH$=`(1AfR-5;6>9L/JIC|p)qa6C9NcYpie(D7jN>`$0~{UV/F^;sU?Tw}>c^');

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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */
	
define('WP_ALLOW_REPAIR', true);

define('WP_HOME','https://127.0.0.1');
define('WP_SITEURL','https://127.0.0.1');

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';