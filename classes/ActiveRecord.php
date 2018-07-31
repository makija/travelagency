<?php

abstract class ActiveRecord{




  public static function getAll($filter="") {

  $q=Database::connection()->query("select * from " . static::$table. " ". $filter);

  $nav=[];
  $q->setFetchMode(PDO::FETCH_CLASS, get_called_class());

  while($rw=$q->fetch()) {

    $nav[]=$rw;
}
return $nav;
 }


 public static function get($id){

  $db=Database::connection();
   $q=$db->query("select * from ". static::$table. " where ".static::$key." = ". $id );
   $d=$q->setFetchMode(PDO::FETCH_CLASS, get_called_class());
   $d=$q->fetch();


  return $d;

}




public function opis(){

   echo "<h3>".$this->naziv."</h3>";
   echo "<p>".$this->opis."</p>";

  }


public function galleryRand($podDir=""){

     $dir = $this->galerijaSlika;

$images= scandir("images/".static::$table."/".$podDir."/".$dir);

               foreach ($images as $image ) {
               if ( $image != "." && $image != ".." && $image != 'thumb' ){
               echo "   <a href='images/".static::$table."/".$podDir."/".$dir."/".$image."' data-lightbox='galery' >
                        <img src='images/".static::$table."/".$podDir."/".$dir."/thumb/".$image."'>
                                                  </a>";
                                                }

}

}



/*admin metode*/

public function save(){

   $q= "update ". static::$table. " set " ;

   foreach ($this as $k=>$v ){
     if($k == static::$key) continue;
     $q.= $k. "='".$v. "',";
   }

$q= rtrim($q,",");

$keyField = static::$key;

$q.= "where ".static::$key. " = " . $this->$keyField;
Database::connection()->query($q);



}

public function insert (){

$fields = get_object_vars($this) ;

$keys= array_keys($fields);
$values=array_values($fields);
print_r($keys);
print_r($values);

$q= "insert into ".static::$table. " (";
$q.= implode(",", $keys);
$q.=") values ('";
$q.=implode("','", $values);
$q.="')";
Database::connection()->query($q);
Database::connection()->lastInsertId();


}


public function makeDir($podDir=""){

    $dir = $this->galerijaSlika;

   if(!is_dir(IMAGES."/".static::$table."/".$podDir."/".$dir))  {

             mkdir(IMAGES."/".static::$table."/".$podDir."/".$dir);
             mkdir(IMAGES."/".static::$table."/".$podDir."/".$dir. "/thumb");


}


}




}













