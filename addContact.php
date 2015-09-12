<?php

include "Includes/databaseClassMySQLi.php";
session_start();

if(isset($_POST["email"]) && isset($_SESSION["UserEmail"]))
{
	$db = new database();
	$db->pick_db("codersvscancer");

	if ($stmt = $db->prepare("INSERT INTO tbl_contacts (ContactEmail, UserEmail) VALUES (?,?)"))
    {
        $stmt->bind_param('ss', $_POST["email"], $_SESSION["UserEmail"]);
        $stmt->execute();
        if ($stmt->affected_rows == 1)
        {
            //Contact successfully created
		    echo true;
        }
    }
}

?>