<?php

include "Includes/databaseClassMySQLi.php";

if(isset($_POST["displayName"])&& isset($_POST["email"]) && isset($_POST["password"]))
{
	$encryptedPass = password_hash($_POST["password"], PASSWORD_DEFAULT);
	
	$db = new database();
	$db->pick_db("codersvscancer");

	if ($stmt = $db->prepare("INSERT INTO tbl_users (DisplayName, UserEmail, Password) VALUES (?,?,?)"))
    {
        $stmt->bind_param('sss', $_POST["displayName"], $_POST["email"], $encryptedPass);
        $stmt->execute();
        if ($stmt->affected_rows == 1)
        {
            //Account successfully created, now log the person in
		    session_start();
		    $_SESSION["UserEmail"]=$_POST["email"];
		    echo true;
        }
    }
}

?>