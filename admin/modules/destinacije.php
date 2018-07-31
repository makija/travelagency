<?php
/*session_start();
if(!isset ($_SESSION['userName'])) {
header ("location:login.html");

  //die ("invalid access");


}*/



$d= Destinacija::getAll("order by idRegije");



?>



  <div class="menu">


<ul>
 <li> <a href="?page=createDest">Kreiraj Destinaciju</a></li>
 <li ><a href="?page=updateDest">Promeni Destinaciju</a></li>
  <li ><a href="?page=destGalery">Destinacije Galerija</a></li>
</ul>



  </div>
<div class="table">
<table class="lista">
  <tr>
    <td>Destinacija</td>
    <td>Regija</td>
 <?php

  foreach ($d as $dest) {


  $r= Regija::get($dest->idRegije);
  echo "<tr>";
  echo "<td><a href='?page=updateDest&idRegije=".$dest->idRegije."&idDestinacije=".$dest->idDestinacije."'>" . $dest->naziv ." </a></td>" ;
  echo "<td>" . $r->naziv. " </a></td>";  //odje join treba.
  echo "<tr>";



}


 ?>



  </tr>



</table>
</div>