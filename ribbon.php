<?php
	include("Includes/header.php");
?>



<?php include("Includes/footer.php"); ?>

<script> 
	var jsonResponse = <?php getLastExamDateForAllContacts($_SESSION["UserEmail"]); ?>;
	alert(jsonResponse);
	var parsed = JSON.parse(jsonResponse);
	var lastExamAllContacts = [];
	for(var x in parsed){
	  lastExamAllContacts.push(parsed[x]);
	}
	alert(lastExamAllContacts);
</script>