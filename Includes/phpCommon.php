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
		$result[$UserEmail] = getLastExamDateForSingleUser($UserEmail);
		
		$contacts = json_decode($getContacts($UserEmail));
		foreach ($contacts as $contact)
		{
			$result[$contact] = getLastExamDateForSingleUser($contact);
		}
		return json_encode($result);
	}
	
	function getLastExamDateForSingleUser($UserEmail)
	{
		//$db = new database();
		//$db->pick_db("codersvscancer");
		
        if ($stmt = $db->prepare("SELECT LastExamCompleted FROM tbl_users WHERE UserEmail = ?"))
        {
            $stmt->bind_param('s',$UserEmail);
            $stmt->execute();
            $stmt->bind_result($result);
			$stmt->fetch();
        }
        $db->disconnect();
        return isset($result) ? $result : null;
	}
?>