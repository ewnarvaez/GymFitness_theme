<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'WRjU/467BbwsvFCOk0h3HE2nPPggvUFH4NvhyhkIj+o8SygylfjBgwmr9fzdtyTRGrD/fyxXt+tNSWzWHI9Fsg==');
define('SECURE_AUTH_KEY',  '8PZwN9kW3NrOUoBeZHkj3A6E0LQ7MtXehHsmq+9hzUQU+a+PkFc8XzdoYNV26MmwykMthnI9GiFkEBUujs//Ow==');
define('LOGGED_IN_KEY',    '2zIAHhCGe0MYBnf82mngBMpzehD4nxPtx359gMsZCC+8AEjrdGMb8jFgZk0wUqdqtwD9cL5/I21KShX71Md6lQ==');
define('NONCE_KEY',        'n7xdK5N2koPVprI/aZoPLP4AbSg0z6rXIjYU4oxBEEVUu2lucWAQ4s3pvD3Km9VwHSHmyLfZkyHzYBrczmzOYw==');
define('AUTH_SALT',        'cy1VZkyubDUipWKarOiD6pyGgLV5IErTs1Y8XqjOQl8eZV0LwSNEM/QK3YZ3AprwTEsf33GSNDlEsceD1Azssw==');
define('SECURE_AUTH_SALT', 'TRPtbuFJIjUJrOFpTXApRh1edPMcT/W0dZZTfa2hfLty2000DsIpTDWmE5h894JRWmJwRSwIHW3USPm84aboBA==');
define('LOGGED_IN_SALT',   's8qg9tdRP0ziyqSvZ0LzRAEG39audektR5wKy5kSsjVmJRr6Cr9vqjITs8H47rLPQQtzusMfmp45lriAuRUkFA==');
define('NONCE_SALT',       'el/5cM0Pw4CmFj29zTU9Vjac4wE3bJ3HMR6de9bRTlXzfcU1yDXbz6g170Jmx3bLt22OnmQFehDzRXykr+c3SQ==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
