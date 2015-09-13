<?php
	include("Includes/header.php");
?>

<?php
    if (!isset($_SESSION["UserEmail"]))
    { 
        echo include("homepage.html");
    }  
	else
	{
		echo include("ribbon.php");
	}
?>

<?php include("Includes/footer.php"); ?>
