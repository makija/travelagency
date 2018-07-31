<?php




$selectedRegija= new Regija;

$dest = new Destinacija;




if (isset($_GET['idRegije']) && ($_GET['idRegije']) != -1 ){

  $selectedRegija=Regija::get($_GET['idRegije']);



}

$dest->createDest();


/* if (isset($_POST['createDest'])){

  $newDest= new Destinacija;


  $newDest->idRegije = $_GET['idRegije'];
  $newDest->naziv = $_POST['newDest'];
  $newDest->opis = $_POST['newOpis'];

  $newDest->insert();

  $dir1=strtolower($newDest->naziv);
  str_replace(' ','-',$dir1);

  if(!is_dir("../images/destinacije/".$dir1)&&!is_dir("../images/apartmani/".$dir1))  {

mkdir("../images/destinacije/".$dir1);
mkdir("../images/destinacije/".$dir1."/thumb");
mkdir("../images/apartmani/".$dir1);

}*/




/*}*/




/*if (isset($_GET['idDestinacije']) && ($_GET['idDestinacije']) != -1){

  $selectedDestinacija=Destinacija::get($_GET['idDestinacije']);
*/



?>




<form method="post" action="">


<div class="select">
<select onchange="window.location='?page=createDest&idRegije='+this.value" name="selRegija">


<option value="-1">Izaberi regiju</option>

<?php

$reg=Regija::getAll();

foreach ($reg as $regija) {

echo "<option "   .($selectedRegija->idRegije==$regija->idRegije?'selected':'')  . " value=". $regija->idRegije.">" .$regija->naziv."</option>";



}



?>


</select>

</div>

<div id="input">

 <h6>Naziv</h6>
  <input class="input" type="text" name="newDest">


  <br>  <br>  <br>



<h6>Opis</h6>

  <textarea class="tinymce" id="texteditor" name= "newOpis"  data-container=''  >

  </textarea>

<br>

<input class="button" type="submit" name="createDest" value="Nova Destinacija">
</div>
  </form>

