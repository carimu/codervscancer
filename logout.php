<?php
	session_start();
	if(isset($_SESSION['UserEmail']))
	{
		unset($_SESSION['UserEmail']);
	}
?>