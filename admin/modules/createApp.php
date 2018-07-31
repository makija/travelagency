


<?php

$selectedRegija = new Regija;
$selectedDestinacija = new Destinacija;
$App= new Apartman;



if (isset($_GET['idRegije'])&& ($_GET['idRegije']) != -1){

  $selectedRegija = Regija::get($_GET['idRegije']);

}




if (isset($_GET['idRegije']) && isset($_GET['idDestinacije'])){

  $selectedDestinacija = Destinacija::get($_GET['idDestinacije']);


}


  $App-> newApp();

?>



<form method="post" action="">

<div id='appSel' class="select">
<select onchange="window.location='?page=createApp&idRegije='+this.value" name="selRegija">


<option value="-1">Izaberi regiju</option>

<?php

$reg=Regija::getAll();

foreach ($reg as $regija) {

echo "<option "   .($selectedRegija->idRegije==$regija->idRegije ? 'selected':'')  . " value=". $regija->idRegije.">" .$regija->naziv."</option>";



}

?>


</select>


<select onchange="window.location='?page=createApp&idRegije=<?=$selectedRegija->idRegije?>&idDestinacije='+this.value" name="selDestinacija">


  <option value="-1">Izaberi Destinaciju</option>

<?php


$filter= "where idRegije=". $_GET['idRegije'];

$d= Destinacija::getAll($filter);

foreach ($d as $destinacija) {

 echo "<option".($selectedDestinacija->idDestinacije==$destinacija->idDestinacije ? 'selected':'')." value='{$destinacija->idDestinacije}'>{$destinacija->naziv}</option>";

}


?>


</select>

<br>



<h5><?= $selectedDestinacija->naziv?></h5>
</div>

<div id="opisApp">

<p class="polje">Naziv apartmana</p>

<input class="input" type="text" name="nazivApp">

<br>
<br>
  <span>Opis Apartmana</span>
<textarea class="tinymce" id="texteditor" name="opisApp" data-container=''></textarea>


</div>

<div id="cenovnikApp">

<p>Cenovnik</p>

<textarea class="tinymce" id="texteditor" name="cenovnik" data-container=''></textarea>


</div>

<div id="uslovi">

<p>Uslovi putovanja</p>

<textarea class="tinymce" id="texteditor" name="uslovi" data-container=''></textarea>

<br>
<br>
<input class="button" type="submit" name="newApp" value="Novi Apartman">
</div>



  </form>

