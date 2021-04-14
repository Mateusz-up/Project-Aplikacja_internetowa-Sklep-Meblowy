
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



<?php


function usuwanieKosza($id)
{
	
	global $link;
		
		if(isset($_SESSION['id'])!="")
			



$zapytanie2 = "delete from produkty where id=$id";
$sql2 = mysqli_query($link,$zapytanie2) or die ("Źle sformułowane żądanie danych");

header('Location: panel_admina.php');
		




}


	
	if(isset($_GET['usun_id']))
{
	usuwanieKosza($_GET['usun_id']);
	
}


?>