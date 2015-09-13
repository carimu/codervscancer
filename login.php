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
<h1 class="font-family:'Arvo',serif;">Last self exam performed:</h1><br><h1 style="color:#FF6666" class="font-family:'Arvo',serif;">August 1st, 2015</h1><br><br><h1 class="color:#FF6666;font-family:'Arvo',serif;">It's been more than 30 days since your last check!</h1>
<button onclick="window.location.href='signUp.php'" class="btn btn-default center-block">Add a new loved one</button> 

<?php include("Includes/footer.php"); ?>