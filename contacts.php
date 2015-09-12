<?php
	include("Includes/header.php");
	include("Includes/phpCommon.php");
?>

<!--Load all contacts for users
Add new button, click and email entry form appears with submit button -->

<script> 
	var jsonResponse = <?php getContacts($_SESSION["UserEmail"]); ?>;
	var parsed = JSON.parse(jsonResponse);
	var contacts = [];
	for(var x in parsed){
	  contacts.push(parsed[x]);
	}
	alert(contacts);
</script>


<?php include("Includes/footer.php"); ?>