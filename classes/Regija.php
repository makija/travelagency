

<?php



class Regija extends ActiveRecord {

  public $idRegije;
  public $naziv;
  public $opis;
  public $galerijaSlika;
  public $cover;


  public static $table="regije";
  public static $key = "idRegije";
  public static $dir = "";



  public static function navigacija(){

    $n=self::getAll();


    foreach ($n as $regija) {
    echo "<li><a href='?page=page&idRegije= $regija->idRegije'> {$regija->naziv} </a></li>";
}

  }




  public function update(){


 if(isset($_POST['btnUpdate'])){

    $this->opis= $_POST['opisRegije'];

    $this->save();

  }

  }





}














