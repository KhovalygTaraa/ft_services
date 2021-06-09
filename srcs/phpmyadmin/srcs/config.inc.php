<?php
declare(strict_types=1);

/**
 * This is needed for cookie based authentication to encrypt password in
 * cookie. Needs to be 32 chars long.
 */
$cfg['blowfish_secret'] = 'nya7QcWDQEPMxN83O1LdMefAd2HgMyBC'; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */
/**
 * Servers configuration
 */
$i = 1;

/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = 'cookie';

/* Server parameters */
$cfg['Servers'][$i]['host'] = 'mysql-service';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = true;
$cfg['Servers'][$i]['port'] = '3306';

/**
 * Directories for saving/loading files from server
 */
$cfg['TempDir'] = '/www/tmp';
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';