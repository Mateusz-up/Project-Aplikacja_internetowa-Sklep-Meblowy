<?php

session_start();
if(isset($_SESSION['id'])) $id_uzytkownika = $_SESSION['id']; 
if(isset($_SESSION['email'])) $login = $_SESSION['email']; 
include("connect.php");



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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script type="text/javascript" src="zegar.js"></script>

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
	

	
	<div class="slideshow-container">

<div class="mySlides fade">
 
 <a href="szafki_kuchnia.php"> <div class='tooltip2'> <img src="images/kuchniagal.jpg" style="width:100%"></a>
 <span class='tooltiptext2'> https://8.allegroimg.com/s512/01971d/09d680fd40819f537f6907c75868/Meble-kuchenne-Torino-Lidia-Pro-Belini</span>
		</div>
  <div class="text">Kuchnia</div>
</div>

<div class="mySlides fade">
  
   <a href="lazienka_szafki.php"> <div class='tooltip2'> <img src="images/lazienkagal.jpg"style="width:100%"></a>
    <span class='tooltiptext2'>http://cdn21.urzadzamy.smcloud.net/t/user_photos/t/87579/drewniane-meble-lazienkowe_2576737.jpg</span>
		</div>
  <div class="text">Łazienka</div>
</div>

<div class="mySlides fade">
 
   <a href="salon_stoly.php"> <div class='tooltip2'> <img src="images/salongal.jpg"style="width:100%"></a>
     <span class='tooltiptext2'>https://www.homesquare.pl/files/uploads/2018/02/Salon-w-szarościach-proj.-Pracownia-Projektowa-Dragon-Art.jpg</span>
		</div>
  <div class="text">Salon</div>
</div>

<div class="mySlides fade">
  
   <a href="jadalnia_komody.php"> <div class='tooltip2'> <img src="images/jadalniagal.jpg"style="width:100%"></a>
     <span class='tooltiptext2'>https://www.marmex.pl/static/media/cache/66/34/66342ae123bb6ff2f1968f62c035b513.jpg</span>
		</div>
  <div class="text">Jadalnia</div>
</div>

<div class="mySlides fade">
  
   <a href="sypialnia_lozka.php"> <div class='tooltip2'> <img src="images/sypialniagal.jpg"style="width:100%"></a>
     <span class='tooltiptext2'>http://cdn21.urzadzamy.smcloud.net/t/user_photos/t/87579/drewniane-meble-lazienkowe_2576737.jpg</span>
		</div>
  <div class="text">Sypialnia</div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
   <span class="dot" onclick="currentSlide(4)"></span> 
    <span class="dot" onclick="currentSlide(5)"></span> 
</div>

</div>


	
	
	<br><br><br><br><br><br><br><br><br>

	

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

		

		<script>
		var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

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
		
</body>
</html>