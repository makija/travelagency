

<div id="app">

<div  class="wrapper">



<div  id="apartman">

<div id="opis">


<?php
 $a = Apartman::get($_GET['idApartmana']);

 $d= Destinacija::get($_GET['idDestinacije']);

 echo "<h4>".$a->naziv."</h4>";
 echo "<img src=images/apartmani/".$d->naziv."/". $a->cover.">";
 echo $a->opis;



?>

</div>

<hr>

<h4>Galerija</h4>
<div class="sliderSmall">
 <?php

$a->appGallery();

 ?>


    </div>
<hr>
<div id="cenovnik">
<h4>Cenovnik</h4>

<?php
echo $a->cenovnik;
?>


</div>
<hr>

<div id="uslovi">

<h4>Uslovi</h4>

   <?php echo $a->uslovi ?>
</div>

</div>
</div>
</div>
    </div>