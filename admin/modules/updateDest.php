<?php
/*session_start();
if(!isset ($_SESSION['userName'])) {
header ("location:login.html");

  //die ("invalid access");


}*/



$selectedRegija = new Regija;
$selectedDestinacija = new Destinacija;



if (isset($_GET['idRegije'])&& ($_GET['idRegije']) != -1){

  $selectedRegija = Regija::get($_GET['idRegije']);

}




if (isset($_GET['idRegije']) && isset($_GET['idDestinacije'])){

  $selectedDestinacija = Destinacija::get($_GET['idDestinacije']);


}

$selectedDestinacija->upDate();

?>



<form method="post" action="">
<div class="select">
<select onchange="window.location='?page=updateDest&idRegije='+this.value" name="selRegija">


<option value="-1">Izaberi regiju</option>

<?php

$reg=Regija::getAll();

foreach ($reg as $regija) {

echo "<option "   .($selectedRegija->idRegije==$regija->idRegije?'selected':'')  . " value=". $regija->idRegije.">" .$regija->naziv."</option>";



}

?>


</select>

<div id="links">
 <a class= "button" href="?page=createDest">Kreiraj Destinaciju</a>
 <a class= "button" href="?page=updateDest">Promeni Destinaciju</a>
 <a class= "button" href="?page=destGalery">Destinacije Galerija</a>
</div>

  </div>
<!-- create -->

<br>
<br>
<div class="select">
<select onchange="window.location='?page=updateDest&idRegije=<?=$selectedRegija->idRegije?>&idDestinacije='+this.value" name="selDestinacija">


  <option value="-1">Izaberi Destinaciju</option>

<?php


$filter= "where idRegije=". $_GET['idRegije'];

$d= Destinacija::getAll($filter);

foreach ($d as $destinacija) {

 echo "<option".($selectedDestinacija->idDestinacije==$destinacija->idDestinacije?'selected':'')." value='{$destinacija->idDestinacije}'>{$destinacija->naziv}</option>";

}


?>


</select>
</div>
<br>

<p>Naziv Destinacije:</p>

<input class="input" type="text" name="destName" value="<?= $selectedDestinacija->naziv;?>">

<br>


<p>Opis:</p>

<textarea class="tinymce" id="texteditor" name="opisDest" data-container=''>
<?php echo  $selectedDestinacija->opis; ?>

</textarea>

<br>
<br>
<input class="button" type="submit" name="Update" value="Update">



</form>

</div>