<?php


  if(!isset($_SESSION)) 
    { 
        session_start(); 

			
	if(isset($_SESSION['id'])) $id_uzytkownika = $_SESSION['id']; 
    } 
include("connect.php");


if(isset($id_uzytkownika)==""&& $id_uzytkownika!='5')
{
	header('Location: index.php');
}

$ilosc2=$_POST['ile2'];
$idee2=$_POST['idzik2'];
?>

<?php
function odejmij($idee2,$ilosc2)

{
	
	global $link;
	
	
$zapytanie2 = "update promocja set ilosc=ilosc-$ilosc2 where id=$idee2";
$sql2 = mysqli_query($link,$zapytanie2) or die ("Źle sformułowane żądanie danych");

	
	
	
}

odejmij($idee2,$ilosc2);

header('Location: panel_admina.php');
?>