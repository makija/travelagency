<?php

require_once "../config.php";


if(!Session::get('username')){
header ("location:login.html");
}

/*$u= User::login($username,$pass);

if($u){
  header ("location:login.html");
}
else header("location:index.php")


$g=User::getSession();

if(!$g)
header ("location:login.html");

/*if(!isset ($_SESSION['username'])) {
header ("location:login.html");}

else header ("location:index.php");*/



?>


<!DOCTYPE html>
<html>
<head>
  <title>Admin</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">

</head>


<body>


    <header id="header">

            <div id="headerTop" class="negative">
            <div class="wrapper">
                <div id="headerTopLeft">


               </div>

                <div id="headerTopRight">

<span><a href="uptstvo.pdf">Uputstvo</a> </span>

                </div>
            <!-- header top end -->
        </div>
      </div>
        <!-- wrapper end -->

    <div id="headerBottom">
      <div class="wrapper">
       <div id="logo">
         <img src="../images/logo.jpg">
         <span id="admin">Admin</span>
       </div>

        <div id="nav">
<ul>
        <li><a href="?page=home">Home</a></li>
        <li><a href="?page=regije">Regije</a></li>
        <li><a href="?page=dest">Destinacije</a></li>
        <li><a href="?page=apartmani">Apartmani</a></li>
        <li><a href="?page=logOut">Log Out</a></li>

        </ul>


</div>
      </div><!-- wrraper end -->
    </div>

    </header>

<div class="form">


<div class="wrapper">
    <?php

        $defaultpage= (isset($_GET['page'])) ? ($_GET['page']):'home';

        $page = array(
          'home'     => 'modules/welcome.php',
          'regije' =>'modules/regije.php',
          'dest'    =>'modules/destinacije.php',
          'apartmani'=> 'modules/apartmani.php',
          'createDest'=>'modules/createDest.php',
          'updateDest'=>'modules/updateDest.php',
          'createApp'=>'modules/createApp.php',
          'updateApp'=>'modules/updateApp.php',
          'logOut'  => 'modules/logOut.php'

          );

           if (isset ($page[$defaultpage])){

            include $page[$defaultpage];
           }


        ?>
</div>
  </div>

</body>
</html>

<!-- JAVASCRIPT -->
<script type="text/javascript" src="../tinymce/js/jquery.min.js"></script>
<script type="text/javascript" src="../tinymce/plugin/tinymce/tinymce.min.js"></script>
<script type="text/javascript" src="../tinymce/plugin/tinymce/init-tinymce.js"></script>
<script type="text/javascript" src="../tinymce/js/getdata.js"></script>
</body>
</html>
 <!--  <script>






