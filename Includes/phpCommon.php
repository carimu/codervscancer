<?php
	function getContacts($UserEmail)
    {
		$db = new database();
		$db->pick_db("codersvscancer");
        if ($stmt = $db->prepare("SELECT ContactEmail FROM tbl_contacts WHERE UserEmail = ?"))
        {
			$stmt->bind_param('s',$UserEmail);
            $stmt->execute();
            $stmt->bind_result($row);
			$contacts = array();
			while ($stmt->fetch()) {
				array_push($contacts, $row);
			}
        }
        $db->disconnect();
        return isset($contacts) ? json_encode($contacts) : null;
	}
	
	function getLastExamDateForAllContacts($UserEmail)
	{
		//Returns an array of email -> last date
		//First is the user, then all contacts
		$db = new database();
		$db->pick_db("codersvscancer");
		
		if ($stmt = $db->prepare("SELECT ContactEmail FROM tbl_contacts WHERE UserEmail = ?"))
        {
			$stmt->bind_param('s',$UserEmail);
            $stmt->execute();
            $stmt->bind_result($row);
			$contacts = array();
			while ($stmt->fetch()) {
				array_push($contacts, $row);
			}
        }
		
		$result[$UserEmail] = getLastExamDateForSingleUser($UserEmail, $db);
		
		foreach ($contacts as $contact)
		{
			$result[$contact] = getLastExamDateForSingleUser($contact, $db);
		}
		$db->disconnect();
		return json_encode($result, JSON_PRETTY_PRINT);
	}
	
	function getLastExamDateForSingleUser($UserEmail, $db)
	{
		//$db = new database();
		//$db->pick_db("codersvscancer");
		//echo "hi";
        if ($stmt = $db->prepare("SELECT LastExamCompleted FROM tbl_users WHERE UserEmail = ?"))
        {
            $stmt->bind_param('s',$UserEmail);
            $stmt->execute();
            $stmt->bind_result($result);
			$stmt->fetch();
        }
        return isset($result) ? $result : null;
	}
?>