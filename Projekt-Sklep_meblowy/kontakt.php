<?php

session_start();
if(isset($_SESSION['id'])) $id_uzytkownika = $_SESSION['id']; 
if(isset($_SESSION['email'])) $login = $_SESSION['email']; 
require_once"connect.php";



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

<header>
<div class="pasreje">

		
	<?php
	
	if(isset($id_uzytkownika)!="")
	{echo"<h888>";
		echo"Witaj ".$_SESSION['user']."";
		echo"</h888>";
		echo"<h889>";
			echo "Email:".$_SESSION['email'],"";
			echo"</h888>";
			echo'<li class="Wylogowanie"><a href="logout.php">Wyloguj się!</a></li>';
			if($id_uzytkownika!=5){
		echo'<li class="Konto"><a href="panel_uzytkownika.php">Twoje konto</a></li>';
			}
			else{
				echo'<li class="Konto"><a href="panel_admina.php">Panel admina</a></li>';
			}
			
	}
	
	else
      	{
		echo'<li class="Zakladanie"><a href="rejestracja.php">Rejestracja</a></li>';
		echo'<li class="Logowanie"><a href="logowanie.php">Zaloguj się</a></li>';
	 }  
  ?>
			
			
				

</div>

</header>

	<div class="obw">
	
		<div class="naglowek">
		
		<div class="logo"> 
			<a href="index.php"> <img class='logo' src="images/logo.jpg" width='170' height'170'></a>
			
			</div>
	
	
		<div class="szukanied">
		<form action="wyszukiwarka.php" method="post">
		<input type="text" name='wartosc' placeholder="Szukaj" onfocus="this.placeholder=''" onblur="this.placeholder='Szukaj '" > 
		<input type="image" id="szukan" alt="szukan"
       src="images/lupa.jpg" width='40' height'40'>
		</form>
		</div>
				
				<div class="koszydiv">
		<a href="wyswietlanie_koszyka.php"> <div class='tooltip3'> <img class='koszyk' src="images/koszyk.jpg" width='40' height'40'></a>
		<span class='tooltiptext3'> Koszyk</span>
		</div>
			</div>
		</div>
	

	<div id="kontener">
	<div class="nav">
	<ul id="menu">
	
		<li><a href="index.php"><i class="icon-home-outline"></i></a></li>
		
		<li><a>Kuchnia</a>
		<ul>
			<li><a href="krzesla_kuchnia.php">Krzesła</a></li>
			<li><a href="stoly_kuchnia.php">Stoły</a></li>
			<li><a href="szafki_kuchnia.php">Szafki</a></li>
			<li><a href="blaty_kuchnia.php">Blaty</a></li>
		</ul>
		</li>
		<li><a>Łazienka</a>
		<ul>
			<li><a href="lazienka_lustra.php">Lustra</a></li>
			<li><a href="lazienka_umywalki.php">Umywalki</a></li>
			<li><a href="lazienka_szafki.php">Szafki</a></li>
			<li><a href="lazienka_akcesorie_lazienkowe.php">Akcesoria Łazienkowe</a></li>
		</ul></li>
		<li><a>Salon</a>
		<ul>
			<li><a href="salon_stoly.php">Stoły</a></li>
			<li><a href="salon_szafy.php">Szafy</a></li>
			<li><a href="salon_narozniki.php">Narożniki</a></li>
			<li><a href="salon_krzesla.php">Krzesła</a></li>
		</ul></li>
		<li><a>Jadalnia</a>
		<ul>
			<li><a href="jadalnia_krzesla.php">Krzesła</a></li>
			<li><a href="jadalnia_stoly.php">Stoły</a></li>
			<li><a href="jadalnia_komody.php">Komody</a></li>
			<li><a href="jadalnia_witryny.php">Witryny</a></li>
		</ul></li>
		<li><a>Sypialnia</a>
		<ul>
			<li><a href="sypialnia_lozka.php">Łóżka</a></li>
			<li><a href="sypialnia_szafy.php">Szafy</a></li>
			<li><a href="sypialnia_materace.php">Materace</a></li>
			<li><a href="sypialnia_lustra.php">Lustra</a></li>
		</ul></li>
		<li><a href="regulamin.php">Regulamin</a></li>
		<li><a href="kontakt.php"> Kontakt</a></li>
		<li><a href="promocja.php"> Promocje</a></li>
		
	</ul>
	
	</div>
	</div>
	
	<br><br><br>
	
	
	
	
	<div class="napisek">
	
	<h67>
	Kontakt</h67>
	
	</div>
	
	<br><br><br>
	
	
	<div class="texto">
	
	<h92>
	<b>Sklep meblowy MD  </b>
	
	<br>
	Podchorążych 2 
	<br>
	30-084 Kraków
	
	</h92>
	
	
	</div>
	
	<div class="godzko">
	
	<h921>
	<b>Godziny otwarcia </b>
	
	<br>
	pn - pt od 10.00 do 18.00
	<br>
	sob od 9.00 do 15.00
	
	</h921>
	
	
	</div>
	
	
	
	<div class="telefono">
	
	<h521>
	<b>Numer Kontaktowy </b>
	
	<br>
	+48 54 421 25 23
	<br>
	+48 832 492 921
	
	</h521>
	
	
	
	</div>
	
	<div class="mapa">
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d10243.372314638147!2d19.909789292175898!3d50.07050037079433!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47165bb0c172b203%3A0x15a71d3ed97809d2!2sUniwersytet+Pedagogiczny+im.+Komisji+Edukacji+Narodowej!5e0!3m2!1spl!2spl!4v1557415554165!5m2!1spl!2spl" width="800" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
		
		<h5>
		
		<br><br><br>
		
		</h5>

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



</body>
</html>