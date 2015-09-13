<?php
	include("Includes/header.php");
	
	//default to user, send get of UserEmail if someone else
	if (isset($_GET["UserEmail"]))
	{
		$user = $_GET["UserEmail"];
	}
	else
	{
		$user = $_SESSION["UserEmail"];
	}
	echo "<p>" . $user . "</p>";
?>




<?php include("Includes/footer.php"); ?>