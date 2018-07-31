
<div id="main">

<article id="description">

<?php
 $d=Destinacija::get($_GET['idDestinacije']);
 $d->opis();

?>
  <!-- galerija-->
<div class="sliderSmall">

   <?php


   $d->galleryRand();

   ?>
</div> <!--gelery ends -->

<div class="offer">
 <h5>Smeštaj</h6>
<hr>
<?php
Apartman::rendApp();
?>
</a>

</div>
    </article>
    </div>

