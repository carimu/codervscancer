<?php
	include("Includes/header.php");
?>

<script> 
	var jsonResponse = <?php getLastExamDateForAllContacts($_SESSION["UserEmail"]); ?>;
	var parsed = JSON.parse(jsonResponse);
	var lastExamAllContacts = [];
	for(var x in parsed){
	  lastExamAllContacts.push(parsed[x]);
	}
	alert(lastExamAllContacts);
</script>


<?php include("Includes/footer.php"); ?>