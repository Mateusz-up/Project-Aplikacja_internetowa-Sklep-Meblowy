
<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 

			
	if(isset($_SESSION['id'])) $id_uzytkownika = $_SESSION['id']; 
    } 
include("connect.php");


$idee5=$_POST['idzik7'];
$ilosc5=$_POST['idzik6'];
$id_kosz=$_POST['idzik8'];
if($id_uzytkownika!='5')
{
	header('Location: index.php');
}


?>



<?php


function usuwanieKosza($idee5,$ilosc5,$id_kosz)
{
	
	global $link;
		
	
		
		$zapytanie2 = "update produkty set ilosc=ilosc+$ilosc5 where id=$idee5";
		$sql2 = mysqli_query($link,$zapytanie2) or die ("Źle sformułowane żądanie danych");
		

$zapytanie3 = "delete from koszyk where id=$id_kosz";
$sql3 = mysqli_query($link,$zapytanie3) or die ("Źle sformułowane żądanie danych");

header('Location: lista_uzytkownikow.php');
		




}


	usuwanieKosza($idee5,$ilosc5,$id_kosz);


?>