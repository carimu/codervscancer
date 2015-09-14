<?php
	include("Includes/header.php");
?>

<h2>Login to your account</h2>

<form role="form" id="loginForm" class="form-horizontal">
	<div class="center-block text-center">
		<div class="form-group">
			<label class="control-label col-sm-1 col-sm-offset-4" for="email">Email: </label>
			<div class="col-sm-3 col-sm-offset-0 col-xs-8 col-xs-offset-2">
				<input type="email" class="form-control" name="email" placeholder="Enter your Email Address" required>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-sm-1 col-sm-offset-4" for="password">Password: </label>
			<div class="col-sm-3 col-sm-offset-0 col-xs-8 col-xs-offset-2">
				<input type="password" class="form-control" name="password" placeholder="Enter your password" required>
			</div>
		</div>
		<button type="submit" class="btn btn-default">Submit</button>
	</div>		
</form>
<p id="loginErrorMsg"></p>
<?php include("Includes/footer.php"); ?>