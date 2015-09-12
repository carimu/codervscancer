<?php
	function getContacts($UserEmail)
    {
		$db = new database();
		$db->pick_db("codersvscancer");
        if ($stmt = $db->prepare("SELECT ContactEmail FROM tbl_contact WHERE UserEmail = ?"))//TO DO, return a list of contact emails
        {
            $stmt->bind_param('s',$UserEmail);
            $stmt->execute();
            $stmt->bind_result($row);
			$contacts = array();
			while ($stmt->fetch()) {
				foreach( $row as $value )
				{
					array_push($contacts, $value);
				} 
			}
        }
        $db->disconnect();
        return isset($contacts) ? json_encode($contacts) : null;
	}
	
	function getLastExamDateForAllContacts($UserEmail)
	{
		//Returns an array of email -> last date
		//First is the user, then all contacts
		$result[$UserEmail] = getLastExamDateForSingleUser($UserEmail);
		
		$contacts = $getContacts();
		foreach ($contacts as $contact)
		{
			$result[$contact] = getLastExamDateForSingleUser($contact);
		}
		return json_encode($result);
	}
	
	function getLastExamDateForSingleUser($UserEmail)
	{
		$db = new database();
		$db->pick_db("codersvscancer");
        if ($stmt = $db->prepare("SELECT CompletedDate FROM tbl_exam WHERE UserEmail = ? ORDER BY CompletedDate DESC LIMIT 1"))//TO DO
        {
            $stmt->bind_param('s',$UserEmail);
            $stmt->execute();
            $stmt->bind_result($result);
			$stmt->fetch()
        }
        $db->disconnect();
        return isset($result) ? $result : null;
	}
?>