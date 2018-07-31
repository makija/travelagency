<?php

define ("DB","agencija");
define ("HOST","localhost");
define ("USER","root");
define ("PASS","123");
define ("DIR","/var/www/html/zavrsni");
define ("IMAGES","/var/www/html/zavrsni/images");




function __autoload ($class) {
 require_once DIR . "/classes/{$class}.php";

}


