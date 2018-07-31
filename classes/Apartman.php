<?php

class Apartman extends ActiveRecord{

/*  public $idApartmana;*/
  public $idDestinacije;
  public $naziv;
  public $opis;
  public $cover;
  public $galerijaSlika;
  public $cenovnik;
  public $uslovi;

  static $table= "apartmani";
  static $key= "idApartmana";






static function rendApp() {


$id= $_GET['idDestinacije'];
$filter= " where idDestinacije=".$id;

$a= self::getAll($filter);

$d= Destinacija::get($id);


$naziv=$d->naziv;
$dir1=mb_strtolower( $naziv,'UTF-8');
$dir=str_replace(' ','-',$dir1);

foreach ($a as $app){

echo "<a href='?page=apartman&idDestinacije={$d->idDestinacije}&idApartmana={$app->idApartmana}' target='_blank' ><p>{$app->naziv}</p>
<img src='images/apartmani/{$dir}/{$app->cover}'>
<p>{$d->naziv}</p>";

}
}

public function appGallery(){

  $d=Destinacija::get($_GET['idDestinacije']);
  $f=$d->galerijaSlika;

  $this->galleryRand($f);



}

public function newApp(){
  if (isset ($_POST['newApp'])){

/*  $this->idApartmana= null;*/
  $this->idDestinacije=$_GET['idDestinacije'];
  $this->naziv=$_POST['nazivApp'];
  $this->opis=$_POST['opisApp'];


  $dir1=strtolower($this->naziv);
  $dir=str_replace(' ','-',$dir1);
  $cover= $dir.".jpg";

$this->cover=$cover;
$this->galerijaSlika=$dir;

$table= $_POST['cenovnik'];
$cenovnik = preg_replace("/<([a-z][a-z0-9]*) .+?>/",'<$1>',$table);

$this->cenovnik=$cenovnik;
$this->uslovi=$_POST['uslovi'];

$this->insert();

$dest= Destinacija::get($_GET['idDestinacije']);
$filter=$dest->galerijaSlika;


$this->makeDir($filter);

}
}






/*$db=Database::connection();

$d=$db->query("select * from destinacije where idDestinacije={$idDestinacije}");
$dest=$d->fetch(PDO::FETCH_OBJ);


$bla=$dest->naziv;
 $dir=mb_strtolower("$bla",'UTF-8');
 str_replace(' ', '-', $dir);*/



}




