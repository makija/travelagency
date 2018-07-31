
<?php
require_once "config.php";
?>


<!DOCTYPE html>
<html>

<head>

    <title></title>
    <meta charset="utf-8">
    <link href="lightbox/css/lightbox.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Droid+Sans|Fira+Sans" rel="stylesheet">

<!-- jQuery library (served from Google) -->
<script
  src="https://code.jquery.com/jquery-1.12.4.min.js"
  integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
  crossorigin="anonymous"></script>


<!-- bxSlider CSS file -->
<link href="js/jquery.bxslider.css" rel="stylesheet" />


</head>


<body>
    <header id="header">

            <div id="headerTop" class="negative">
            <div class="wrapper">
                <div id="headerTopLeft">
                <span><i class="fa fa-lg fa-phone"></i> &nbsp;&nbsp; 011.252.354&nbsp;&nbsp;&nbsp;&nbsp;</span>

                <span><i class="fa fa-lg fa-envelope-o"></i>&nbsp;&nbsp;  agencija@agencija.com</span>
               </div>

                <div id="headerTopRight">
                <span><i class="fa fa-facebook-square" aria-hidden="true"></i></span>
                <span><i class="fa fa-instagram" aria-hidden="true"></i></span>

                </div>
            <!-- header top end -->
        </div>
      </div>
        <!-- wrapper end -->
    <div id="headerBottom">
      <div class="wrapper">
       <div id="logo">
         <img src="images/logo.jpg">
       </div>

  <?php     include "modules/navigacija.php" ?>

      </div><!-- wrraper end -->
    </div>

    </header>


<?php



$defaultPage = (isset ($_GET['page']))?($_GET['page']): 'home';

$pages = array (

   'home'=>'modules/home.php',
   'page'=>'modules/page.php',
   'apartman'=>'modules/vila.php',
   'contact'=>'modules/contact.php'
  );

if (isset($pages[$defaultPage])) {

include $pages[$defaultPage];}




?>

    <footer id="footer" class="negative">
    <div class="wrapper">

    <div id="contact">
      <p>Kontakt</p>
      <ul>
        <li> &nbsp;&nbsp;Bulevar Despota Stefana 1</li>
        <li> &nbsp;&nbsp;011.222.653</li>
        <li>&nbsp;&nbsp;011.325.659</li>
        <li> &nbsp;&nbsp;agencija@agencija.com</li>
      </ul>
    </div>


    <div id="regije">
    <p>Regije</p>
      <ul>
        <?php
        $r=Regija::getAll();
        foreach ($r as $regija) {
          echo "<li><a href=?page=page&idRegije=".$regija->idRegije.">".$regija->naziv."</a></li>";
          # code...
        }

        ?>

      </ul>


    </div>

    <div id="mapa">

     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2830.21241518443!2d20.475541015601717!3d44.81723707909871!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a7a95635cf749%3A0xbbc405751bb4d7d7!2z0JHRg9C70LXQstCw0YAg0LTQtdGB0L_QvtGC0LAg0KHRgtC10YTQsNC90LAsINCR0LXQvtCz0YDQsNC0!5e0!3m2!1ssr!2srs!4v1504783144195" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen></iframe>


    </div>



</div>
    </footer>

<script src="lightbox/js/lightbox.min.js"></script>
<!-- bxSlider Javascript file -->
<script src="js/jquery.bxslider.js"></script>

    <script>
      $(document).ready(function(){
        $('.bxslider').bxSlider();
      });
    </script>


</body>

</html>