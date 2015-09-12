<?php
	include("Includes/header.php");
	require_once("Includes/phpCommon.php");
?>

<!--Load all contacts for users
Add new button, click and email entry form appears with submit button -->



<div id="contactsList"></div>

<p>Add a new loved one</p>
<form role="form" id="addContactForm" class="form-horizontal">
	<div class="center-block text-center">
		<div class="form-group">
			<div class="col-sm-4 col-sm-offset-4 col-xs-8 col-xs-offset-2">
				<input type="email" class="form-control" name="email" id="email" placeholder="Enter your loved ones email address" required>
			</div>
		</div>
		<button type="submit" id="addContactSubmit" class="btn btn-default">Add</button>
	</div>		
</form>



<?php include("Includes/footer.php"); ?>

<script> 
	$(document).ready(function () { 
		var contacts = <?php echo getContacts($_SESSION["UserEmail"]); ?>;
		for (var index = 0; index < contacts.length; index++) 
		{
			$("#contactsList").append("<p>" + contacts[index] + "</p>");
		}
	});
</script>