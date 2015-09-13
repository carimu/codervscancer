<?php
	include("Includes/header.php");
?>

<?php
    if (!isset($_SESSION["UserEmail"]))
    { 
        include("homepage.html");
    }  
	else
	{
		include("ribbon.php");
	}
?>

<?php include("Includes/footer.php"); ?>
