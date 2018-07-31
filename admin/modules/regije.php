<?php


 $selectedRegija= new Regija;

    if (isset($_GET['idRegije']) && ($_GET['idRegije']) != -1){

     $selectedRegija=Regija::get($_GET['idRegije']);}

     $selectedRegija->update();



?>


 <form id="get-data-form" method="post" action="" enctype="multipart/form-data ">

 <div class="select">

<h5>Regija</h5>

<select onchange="window.location='?page=regije&&idRegije='+this.value" name="selRegija">



<option value="-1">Izaberi regiju</option>

<?php

$reg=Regija::getAll();

foreach ($reg as $regija) {

echo "<option "   .($selectedRegija->idRegije==$regija->idRegije?'selected':'')  . " value=".$regija->idRegije.">" .$regija->naziv."</option>";



}

?>


</select>

  </div>

<div id="input">

<h6>Naziv</h6>


 <input class="input" type="text" name="naziv" value= <?php echo $selectedRegija->naziv?>>


 </div>

<h6>Opis</h4>


<textarea class="tinymce" id="texteditor" name="opisRegije" data-container=''>
<?php echo  $selectedRegija->opis; ?>

</textarea>



<div id="image">

  <h6>Cover Image </h6>

  <input class="input" type="text" name="cImg"> <br><br>

<img src="../images/cover/<?=$selectedRegija->cover?>" style="width: 200px; height: 150px" > <br><br>

<input type="file" name="coverImage">

<input class="button" type="submit" name="btnUpdate" value="Update">


</div>
</form>


</div>














