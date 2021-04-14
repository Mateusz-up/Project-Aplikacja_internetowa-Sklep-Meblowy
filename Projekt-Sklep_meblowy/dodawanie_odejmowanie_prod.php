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

$ilosc=$_POST['ile'];
$idee=$_POST['idzik'];

?>
<?php
	
	
	
	function dododej($idee,$ilosc)

{
	
	global $link;
	
	
$zapytanie2 = "update produkty set ilosc=ilosc+$ilosc where id=$idee";
$sql2 = mysqli_query($link,$zapytanie2) or die ("Źle sformułowane żądanie danych");

	
	
	
}

dododej($idee,$ilosc);

header('Location: panel_admina.php');
?>