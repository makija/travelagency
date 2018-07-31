 <?php

class Session{

  public static function start(){
    if(!isset ($_SESSION)){

      session_start();
    }

  }

  public static function end(){
   self::start();
   unset($_SESSION);

  }

  public static function get($key,$def=null){

   self::start();
   if(isset($_SESSION[$key]))
    return $_SESSION[$key];

  else return $def;

  }

  public static function set($key,$value){
    self::start();
    $_SESSION[$key] = $value;

  }





}