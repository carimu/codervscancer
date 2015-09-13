
<img class="col-sm-4 col-sm-offset-4 col-xs-12" src="images/heart5.png">


<script> 
	$(document).ready(function () { 
		var jsonResponse = <?php echo getLastExamDateForAllContacts($_SESSION["UserEmail"]); ?>;
		
		for (var key in jsonResponse) {
		  if (jsonResponse.hasOwnProperty(key)) {
			//alert(key + " -> " + jsonResponse[key]);
		  }
		}

	});
</script>