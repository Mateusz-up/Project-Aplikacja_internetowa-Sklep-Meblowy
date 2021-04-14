<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
if(isset($_SESSION['id'])) $id_uzytkownika = $_SESSION['id']; 
		
    } 
include("connect.php");

if($id_uzytkownika!='5')
{
	header('Location: index.php');
}

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
	
	<div class="pow">
	<a href="lista_uzytkownikow.php"> Powrót do listy użytkowników</a>
	</div>
	
	<div class="blok">
	
	
	<?php
	function wyswietl_koszyk($id_uzytkownika)
	{
		global $link;
		if(isset($_SESSION['id'])!="")
			
		
		
	$sql = mysqli_query($link,"select * from koszyk where id_uzytkownika=$id_uzytkownika")or die('Błąd zapytania');
	$i=0;
	$k=0;
	if(mysqli_num_rows($sql) > 0)
	{
		echo"<div class='pusto2'>";
		echo"<h45>";
		echo"Zawartość koszyka";
		echo"<br><br>";
		echo"</h45>";
		echo"</div>";
	}
	else
	{
	}
	echo"<br><br>";
	while($wiersz = mysqli_fetch_object($sql))
		{
		
		
		
		
		$numeryTowarow[$i]=$wiersz->product_id;
		
		if($numeryTowarow[$i]!= '')
		{
		$idkoszyka[$k]=$wiersz->id;
		$i++;
		$k++;
		}
		}
	for($j=0;$j<$i;$j++)
		{
		
		$zapytanie = "select * from produkty where id='$numeryTowarow[$j]'";
		$sql2 = mysqli_query($link,$zapytanie) or die ("Źle sformułowane żądanie danych");
		$wiersz2 = mysqli_fetch_object($sql2);
		$zapytanie2 = "select * from koszyk where id=$idkoszyka[$j]";
		$sql3 = mysqli_query($link,$zapytanie2) or die ("Źle sformułowane żądanie danych");
		$wiersz3 = mysqli_fetch_object($sql3);
		
		$idik_prod=$wiersz2->id;
		$id_kosz=$wiersz3->id;
		$id_data=$wiersz3->data;	
		
		
		
		echo"<div class='wyswie12'>";
		echo"<h555>";
		echo "<a style='text-decoration:none' target='_blank' href='producty.php?product_id=$idik_prod'>";
		echo ($j+1).".".$wiersz2->nazwa."";
		echo"</h555>";
		
			 echo "</a>";
			 echo"</div>";
			 echo"<div class='wyswie13'>";
		echo"<h556>";
		 echo "Dodano do koszyka dnia: ".$wiersz3->data."";
		
			 
	echo"</h556>";
	echo"</div>";
		echo"<div class='wyswie14'>";
		echo"<h542>";
		 echo "Ilość produktów: ".$wiersz3->ilosc_produktow."";
		
			 
	echo"</h542>";
				echo"</div>";
				
				$idp=$wiersz3->product_id;
		$ilop=$wiersz3->ilosc_produktow;
		

		
		
		
		echo"<div class='los'>";
				echo"<form action='usuwanie_koszyka.php' method='post'>";
		
		echo"<input type='hidden' name='idzik7' value='$idp'>";
		echo"<input type='hidden' name='idzik6' value='$ilop'>";
		echo"<input type='hidden' name='idzik8' value='$id_kosz'>";
		echo"<div class='tooltip4'> <input type='image' class='kosz' id='szukan2' alt='szukan'
       src='images/kosz.jpg' width='30' height'30'>";
	   echo"<span class='tooltiptext4'>Usuń z  koszyka</span>";
	   echo"</div>";
	  
		echo"</form>";
		echo"</div>";
		}
		if($i>0){
			
		}
	else
	{
		echo"<div class='pusto'>";
		echo"<h43>";
		echo"Jego koszyk jest pusty";
		echo"</h43>";
		echo"</div>";
	}

		
	
	
	
	
	
	}
	
	if(isset($_GET['usun_id']))
{
	wyswietl_koszyk($_GET['usun_id']);
	
}

	?>
	
	<?php
	function wyswietl2_koszyk($id_uzytkownika)
	{
		global $link;
		if(isset($_SESSION['id'])!="")
			
		
		
	$sql = mysqli_query($link,"select * from koszyk where id_uzytkownika=$id_uzytkownika")or die('Błąd zapytania');
	$i=0;
	$k=0;
	if(mysqli_num_rows($sql) > 0)
	{
		echo"<div class='pusto2'>";
		echo"<h45>";
		echo"Zawartość koszyka z promocji";
		echo"<br><br>";
		echo"</h45>";
		echo"</div>";
	}
	else
	{
	}
	echo"<br><br>";
	while($wiersz = mysqli_fetch_object($sql))
		{
		
		
		
		
		$numeryTowarow[$i]=$wiersz->id_promocji;
		
		if($numeryTowarow[$i]!= '')
		{
		$idkoszyka[$k]=$wiersz->id;
		$i++;
		$k++;
		}
		}
	for($j=0;$j<$i;$j++)
		{
		
		$zapytanie = "select * from promocja where id='$numeryTowarow[$j]'";
		$sql2 = mysqli_query($link,$zapytanie) or die ("Źle sformułowane żądanie danych");
		$wiersz2 = mysqli_fetch_object($sql2);
		$zapytanie2 = "select * from koszyk where id=$idkoszyka[$j]";
		$sql3 = mysqli_query($link,$zapytanie2) or die ("Źle sformułowane żądanie danych");
		$wiersz3 = mysqli_fetch_object($sql3);
		
		$idik_prod=$wiersz2->id;
		$id_kosz=$wiersz3->id;
		$id_data=$wiersz3->data;	
		
		
		
		echo"<div class='wyswie12'>";
		echo"<h555>";
		echo "<a style='text-decoration:none' target='_blank' href='producty2.php?product_id=$idik_prod'>";
		echo ($j+1).".".$wiersz2->nazwa."";
		echo"</h555>";
		
			 echo "</a>";
			 echo"</div>";
			 echo"<div class='wyswie13'>";
		echo"<h556>";
		 echo "Dodano do koszyka dnia: ".$wiersz3->data."";
		
			 
	echo"</h556>";
	echo"</div>";
		echo"<div class='wyswie14'>";
		echo"<h542>";
		 echo "Ilość produktów: ".$wiersz3->ilosc_produktow."";
		
			 
	echo"</h542>";
				echo"</div>";
				
				$idp=$wiersz3->id_promocji;
		$ilop=$wiersz3->ilosc_produktow;
		

		
		
		
		echo"<div class='los'>";
				echo"<form action='usuwanie_koszyka2.php' method='post'>";
		
		echo"<input type='hidden' name='idzik7' value='$idp'>";
		echo"<input type='hidden' name='idzik6' value='$ilop'>";
		echo"<input type='hidden' name='idzik8' value='$id_kosz'>";
		echo"<div class='tooltip4'> <input type='image' class='kosz' id='szukan2' alt='szukan'
       src='images/kosz.jpg' width='30' height'30'>";
	   echo"<span class='tooltiptext4'>Usuń z  koszyka</span>";
	   echo"</div>";
	  
		echo"</form>";
		echo"</div>";
		}
		if($i>0){
			
		}
	else
	{
		echo"<div class='pusto'>";
		echo"<h43>";
		echo"Jego koszyk z promocji jest pusty";
		echo"</h43>";
		echo"</div>";
	}

		
	
	
	
	
	
	}
	
	if(isset($_GET['usun_id']))
{
	wyswietl2_koszyk($_GET['usun_id']);
	
}

	?>
	

	
	
	</div>
</div>

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