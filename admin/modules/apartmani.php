
<?php

$selectedDestinacija = new Destinacija;

if (isset($_GET['idDestinacije']) && ($_GET['idDestinacije'])!= -1 ){


  $selectedDestinacija= Destinacija::get($_GET['idDestinacije']);


}
?>




<div class="menu">


<ul>
 <li> <a href="?page=createApp">Kreiraj Apartman</a></li>
 <li ><a href="?page=updateApp">Promeni Apartman</a></li>
</ul>

  </div>

 <!-- <div> -->

<!-- <form method="post" action="">

<select onchange="window.location='?page=apartmani&idDestinacije ='+this.value" name="selDestinacija">

<option value="-1">Izaberi Destinaciju</option>
 -->
<?php

/*$d= Destinacija::getAll();

foreach ($d as $destinacija) {


 echo "<option".($selectedDestinacija->idDestinacije==$destinacija->idDestinacije?'selected':'')." value='{$destinacija->idDestinacije}'>{$destinacija->naziv}</option>";
}*/

?>


<!-- </select>

</form>

  </div> -->




  <div id="apartmani">


  <ul>
   <?php

  $a= Apartman::getAll("order by idDestinacije");

  foreach ($a as $app) {
    echo "<li><a href=?page=updateApp&idDestinacije=".$app->idDestinacije."&idApartmana=".$app->idApartmana.">".$app->naziv."</a> <input type='checkbox' ></li>";
  }
   ?>

</ul>

  </div>