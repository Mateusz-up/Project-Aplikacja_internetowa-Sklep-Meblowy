<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
if(isset($_SESSION['id'])) $id_uzytkownika = $_SESSION['id']; 
		
    } 
include("connect.php");

$id_prod=$_POST['idzik4'];
$ilosc=$_POST['idzik5'];
$cena=$_POST['idzik6'];
$id_kosz=$_POST['idzik8'];


?>


<!DOCTYPE html>
<html lang="pl">

<head>
<meta charset="utf-8" />
<title>Sklep meblowy MD</title>
<meta name="description" content="Meble do salonu, sypialni,łazienki,jadalni i kuchni."/>
<meta name="keywords" content="meble,kuchnia,sypialnia,jadalnia,salon" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="css/fontello.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="zegar.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>

</head>


<body>

		<body onload="odliczanie();">
		
		<div id="zegar">
		
</div>	
		
		<span class="scrollTopButton"></span>
<script>

$(function(){
 
	$(window).scroll(function() {
		if ($(window).scrollTop() > 100) {
			$('.scrollTopButton').addClass('show');
		} else {
			$('.scrollTopButton').removeClass('show');
		}
	});
 
	$('.scrollTopButton').click(function() {
		$('body,html').animate({scrollTop: 0}, 400, 'linear');
	});
}); 

</script>
		
		<div class="pasreje">

		
	<?php
	
	if(isset($id_uzytkownika)!="")
	{
		echo"<h888>";
		echo"Witaj ".$_SESSION['user']."";
		echo"</h888>";
		echo"<h889>";
			echo "Email:".$_SESSION['email'],"";
			echo"</h888>";
			echo'<li class="Wylogowanie"><a href="logout.php">Wyloguj się!</a></li>';
			if($id_uzytkownika!=5){
		echo'<li class="Konto"><a href="panel_uzytkownika.php">Twoje konto</a></li>';
			}
			
	}
	
	
  ?>
			
			
				

</div>
		
	<div class="obw">
	
		<div class="naglowek">
		
		<div class="logo"> 
			<a href="index.php"> <img class='logo' src="images/logo.jpg" width='170' height'170'></a>
			
			</div>
	
	
		
				
				
		</div>
		
		
		
	<div id="kontener">
	<div class="nav">
	<ul id="menu">
	
	
		<li><a href="wyswietlanie_koszyka.php">Powrót do koszyka</a></li>
		
		
	</ul>
	
	</div>
	</div>
	
	<br><br><br>
	
	<div class="napisek">
	
	<h67>
	Podaj dane do wysyłki</h67>
	
	</div>
	
	
	<?php

		echo"<div id='container'>";

		echo"<form action='zamawianie4.php' method='post'>";
			 echo"<input type='text' name='imie' placeholder='Imię' onfocus='this.placeholder=''' onblur='this.placeholder='Imię'' />";
				echo"<input type='text' name='nazwisko' placeholder='Nazwisko' onfocus='this.placeholder=''' onblur='this.placeholder='Nazwisko'' />";	
			 echo"<input type='text' name='miasto' placeholder='Miasto' onfocus='this.placeholder=''' onblur='this.placeholder='Miasto'' />";
				echo"<input type='text' name='ulica' placeholder='Ulica' onfocus='this.placeholder=''' onblur='this.placeholder='Ulica'' />";
			echo"<input type='hidden' name='idzik4' value='$id_prod'>";
		echo"<input type='hidden' name='idzik5' value='$ilosc'>";
		echo"<input type='hidden' name='idzik8' value='$id_kosz'>";
		echo"<input type='hidden' name='idzik6' value='$cena'>";
		echo"<input type='submit' value='Zamawiam'>";

	echo"</form>";
	echo"<a></a>";
	echo"</div>";
?>
<script src="jquery-3.4.1.min.js"></script>
<script>

	$(document).ready(function() {
	var NavY = $('.nav').offset().top;
	 
	var stickyNav = function(){
	var ScrollY = $(window).scrollTop();
		  
	if (ScrollY > NavY) { 
		$('.nav').addClass('sticky');
	} else {
		$('.nav').removeClass('sticky'); 
	}
	};
	 
	stickyNav();
	 
	$(window).scroll(function() {
		stickyNav();
	});
	});
	
</script>


<div class="info">

<h410>
<h5211 style="color:#009933;">Infolinia</h5211>
<br><br>
832 492 921
<br><br>
	pn - pt od 10:00 do 16:00
	<br>
	sob od 9:00 do 13:00
</h410>

<h411>

Dla klientów
<br><br>
<a href="regulamin.php">Regulamin</a>
<br><br>
<a href="kontakt.php"> Kontakt</a>
<br><br>
<a href="promocja.php"> Promocje</a>

</h411>

</div>


<div id="footer">
			&copy by MD
		</div>
	</div>
</body>
</html>