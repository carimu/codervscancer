
<script> 
	$(document).ready(function () { 
		var jsonResponse = <?php echo getLastExamDateForAllContacts($_SESSION["UserEmail"]); ?>;
		
		for (var key in jsonResponse) {
		  if (jsonResponse.hasOwnProperty(key)) {
			alert(key + " -> " + jsonResponse[key]);
		  }
		}

	});
</script>