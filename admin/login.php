<?php


require_once "../config.php";


if (isset ($_POST['logIn'])){

$username=$_POST['userName'];
$pass=$_POST['userPassword'];

}

$u= User::login($username,$pass);

if($u){
  header ("location:index.php");
}
else echo "Invalid user";


