<?php

$selectedDestinacija = new Destinacija;
$app= new Apartman;




if (isset($_GET['idDestinacije'])){

  $selectedDestinacija = Destinacija::get($_GET['idDestinacije']);


}
 if (isset($GET_['idApartmana'])){

 $app= Apartman::get($_GET['idApartmana']);

}

print_r($app);

/* $App->upDate(); */

?>



<form method="post" action="">





<h5><?= $selectedDestinacija->naziv?></h5>


<div id="opisApp">

<p class="polje">Naziv apartmana</p>

<input class="input" type="text" name="nazivApp" value="<?php echo $app->naziv;?>">

<br>
<br>
  <span>Opis Apartmana</span>
<textarea class="tinymce" id="texteditor" name="opisApp" data-container=''>

<?php echo $app->opis ?>

</textarea>



</div>

<div id="cenovnikApp">

<p>Cenovnik</p>

<textarea class="tinymce" id="texteditor" name="cenovnik" data-container=''>

<?php echo $app->cenovnik;?>


</textarea>



</div>

<div id="uslovi">

<p>Uslovi putovanja</p>

<textarea class="tinymce" id="texteditor" name="uslovi" data-container=''>


  <?php echo $app->uslovi;?>
</textarea>






<input class="button" type="submit" name="udDate">
</div>



  </form>
