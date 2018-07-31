<div id="content">
  <div class="wrapper">

<div id="leftSide" class="negative">


  <ul>

<?php

Destinacija::navigacija();

?>
  </ul>

</div>

 <?php

if ( !isset($_GET['idDestinacije'])  ) include 'regija.php';
else include 'destinacija.php';

  ?>

</div>
  </div>