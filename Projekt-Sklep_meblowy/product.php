
<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 

			
	if(isset($_SESSION['id'])) $id_uzytkownika = $_SESSION['id']; 
    } 
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
	
	

	
	<div class="blok">
	
	
	
	
	
	
	
	<?php

function showProduct($id)
{
	global $link;
	

	

	$wyniki = mysqli_query($link,"Select * from produkty where id=$id") 
or die('Błąd zapytania'); 
	
	while($r = mysqli_fetch_object($wyniki))
	{
		
		$ide=$r->id;
		
		$stanik=$r->ilosc;
		if(isset($_SESSION['id'])!="")
		{
			$id_uzytkownika = $_SESSION['id'];
if($id_uzytkownika==5)
{
		echo"<div class='input_div'>";
		echo"<form action='dodawanie_odejmowanie_prod.php' method='post'>";
		echo"Dodaj ilość sztuk produktu:  ";
    echo"<input type='number' name='ile' min='0' max='50' id='count'>";
	echo"<input type='hidden' name='idzik' value='$ide'>";
		
   echo"<input type='image' id='szukan' alt='szukan'
       src='images/wyslij.jpg' width='70' height'70'>";
	
	echo"</form>";
echo"</div>";
echo"<br><br><br>";

		

echo"<div class='input_div'>";
		echo"<form action='odejmowanie_prod.php' method='post'>";
		echo"Usuń ilość sztuk produktu:      ";
    echo"<input type='number' name='ile2' min='0' max='$stanik' id='count'>";
	echo"<input type='hidden' name='idzik2' value='$ide'>";
   echo"<input type='image' id='szukan' alt='szukan'
       src='images/wyslij.jpg' width='70' height'70'>";
	
	echo"</form>";
echo"</div>";
		echo"<div>";
}
		}
		
		$idik=$r->id_opisu_zdj;
		
		
		echo" <div class='tooltip2'> <img id='myImg'src=images/".$r->id_zdjec.".jpg  alt='$idik' width='200' height'200'>";
		echo"<div id='myModal' class='modal'>";
  echo"<span class='close'>&times;</span>";
  echo"<img class='modal-content' id='img01'>";
  echo"<div id='caption'></div>";
echo"</div>";
		 //echo"<span class='tooltiptext2'> $idik</span>";
		echo"</div>";
		echo"<div class='textt'>";
		echo "<b>".$r->nazwa."</b>"; 
		echo"</div>";
		
		echo"<br>";
		echo"<div class='parametryt'>";
		echo"<h88>";
		echo "Parametry";
		echo"</h88>";
		echo"<br><br>";
		echo "<b>".nl2br($r->parametry)."</b>"; 
		echo "<br><br>";
		echo"</div>";
		echo"<hr style='border: 0px; background: red; height: 1px;position: relative; top:5cm;'>";
		echo"<br>";
	echo"<div class='opist'>";
	echo"<h125>";
		echo "Opis produktu";
		echo"</h125>";
		echo "<br><br>";
		echo "<b>".nl2br($r->opis)."</b>"; 
		echo "<br><br><br><br>";
		echo"</div>";
		
		
		
		echo"<div class='cenat'>";
		echo "<b>".$r->cena." zł</b>"; 
		echo"</div>";
		echo "<br><br><br>";
		
		
		$idik_prod=$r->id;
		$ilosc_prod=$r->ilosc;
		echo "<br><br>";
		echo"<br><br>";
		
		echo"<div class='ilosct'>";
		if($ilosc_prod >0)
		{
			echo"<h123>";
			echo"Dostępnych sztuk:$ilosc_prod";
			echo"</h123>";
		}
		else
		{
			echo"<h124>";
			echo"Brak dostępnych produków w magazynie";
			echo"</h124>";
		}
		echo"</div>";
		echo"<br><br>";
		
		
		
			

		if($ilosc_prod >0)
		{
			
			
				echo"<div class='input_di2'>";
		echo"<form action='koszyk.php' method='post'>";
		echo"<h811>";
		echo"Wybierz ilość sztuk produktu:      ";
		echo"</h811>";

		
    echo"<input type='number' name='ile3' value='1' min='0' max='$ilosc_prod' id='count'>";
	echo"<input type='hidden' name='idzik3' value='$idik_prod'>";
   echo"</div>";
	
	

			echo"<div class='koszykt'>";
		
        echo"<div class='tooltip'> <input type='submit'value='Do koszyka' />";
		echo"</form>";
		if(isset($_SESSION['id'])=="")
		echo"<span class='tooltiptext'>Musisz być zalogowanym aby dodać towar do koszyka</span>";
		echo"</div>";
		echo"</div>";
		}
		
		else
		{
			
      
    
			
		}
	}
	
	echo"</div>";
	
	
}



if(isset($_GET['product_id']))
{
	showProduct($_GET['product_id']);
	
}


?>
	
	

	
	
	
	</div>
	
	
	
	
	
	
	</div>

	<script>

var modal = document.getElementById('myModal');


var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");
img.onclick = function(){
  modal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}


var span = document.getElementsByClassName("close")[0];

span.onclick = function() { 
  modal.style.display = "none";
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