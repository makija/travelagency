
<?php
 include "config.php";
/*echo "the directory of this file is: " . __DIR__;*/


/*$username="marija";
$pass="1";

$u=User::login ($username,$pass);

print_r($u);*/

$o= new Destinacija;


$p=$o->createDest();

print_r($p);