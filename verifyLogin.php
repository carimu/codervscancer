<?php
	include "Includes/databaseClassMySQLi.php";
	
	if(isset($_POST["email"]) && isset($_POST["password"]))
	{
		$db = new database();
		$db->pick_db("codersvscancer");

        $stmt = $db->prepare("SELECT Password FROM tbl_users WHERE UserEmail = ?");
        
        $stmt->bind_param('s',$_POST["email"]);
        $stmt->execute();
        $stmt->bind_result($passHash);
        $stmt->fetch();

		if (password_verify($_POST["password"],$passHash))
		{
			//User/Pass combo valid
			session_start();
			$_SESSION["UserEmail"]=$_POST["email"];
			$result = true;
		}
		
	}
	echo isset($result) ? $result : false;

?>