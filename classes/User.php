
<?php
class User extends ActiveRecord{

public $idUser;
public $userName;
public $password;

public static $key="idUser";
public static $table="users";

public function setSession(){

 Session::set('username',$this->username);


}



public static function login($username,$pass){

$u= self::getAll("where username = '".$username."'   and password = '".$pass."'");

if (count($u)>0) {

   $u[0]->setSession();

  return $u[0];

}
 else return null;

}


public static function logout(){

  Session::end();



}









 //obraditi da bude bezbedno



}