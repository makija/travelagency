<article id="home">
 <div class="wrapper">
   <div id="homeTop">
    <div id="menu" class="negative">
      <ul>
      <li><a href=""><span class="promo">Nakiti</span> <span class="cenaMenu">169 &euro;</span> </a></li>
      <li><a href=""><span class="promo">StarVors</span> <span class="cenaMenu">169 &euro;</span> </a></li>
      <li><a href=""><span class="promo">Leptokratija</span> <span class="cenaMenu">169 &euro;</span> </a></li>
      <li><a href=""><span class="promo">Prefkori</span> <span class="cenaMenu">169 &euro;</span> </a></li>
      <li><a href=""><span class="promo">Polirhono</span> <span class="cenaMenu">169 &euro;</span> </a></li>
      <li><a href=""><span class="promo">Halkidiki</span> <span class="cenaMenu">169 &euro;</span> </a></li>

      </ul>

    </div><!-- menu end -->

    <div id="slider">
      <ul class="bxslider">
        <li><a href=""><img src="images/slide1.jpg" /></a></li>
        <li><a href=""><img src="images/slide2.jpg" /></a></li>
        <li><a href=""><img src="images/slide3.jpg" /></a></li>
      </ul>
    </div><!-- slider end -->
     </div> <!-- homeTopEnd -->

 </div>

<div class="clear"></div>


     </div><!-- wrapper end -->

    </article>

    <article id="homeBottom">
     <div class="wrapper">

     <h2>Letovanje 2017</h2>

<?php

$n=Regija::getAll();

foreach ($n as $regija){

echo "<a href='?page=page&idRegije={$regija->idRegije}' class='homeBottom'>
<h5>{$regija->naziv}</h5>
           <img src='images/cover/{$regija->cover}'>
           <p>Apartmani </p>
           </a>";

}
?>
  </div>
    </article>
