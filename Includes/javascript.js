$(document).ready(function () {
    


	$("#signUpForm").submit( function() {
		var request = $.ajax({
		   method: "POST",
		   url: "createNewAccount.php",
		   data: $("#signUpForm").serialize()
		 });

		 request.done( function(msg) {
			 if (msg == true)
			 {
				 window.location.href = "index.php";
			 }
			 else
			 {
				alert(msg);	
				//alert("That username is taken. Please try a new one.");
				$("#createAccountErrorMsg").text("That username is taken. Please try a new one.");
			 }
		 });
		 return false;
	});
	
	$("#loginForm").submit( function() {
		var request = $.ajax({
		   method: "POST",
		   url: "verifyLogin.php",
		   data: $("#loginForm").serialize()
		 });

		 request.done( function(msg) {
			 if (msg == true)
			 {
				 window.location.href = "index.php";
			 }
			 else
			 {
				//alert(msg);	
				//alert("That username/password combo was incorrect. Please try again.");
				$("#loginErrorMsg").text("That username/password combo was incorrect. Please try again.");
			 }
		 });
		 return false;
	});
	
	$("#logoutButton").click( function() {
		var request = $.ajax({
		   url: "logout.php"
		 })
		 .done( function() {
			window.location.href = "login.php";
		 });
	});
	
	$("#addContactSubmit").click( function() {
		var request = $.ajax({
		   method: "POST",
		   url: "addContact.php",
		   data: $("#addContactForm").serialize()
		 });

		 request.done( function(msg) {
			 if (msg == true)
			 {
				 $("#contactsList").append("<p>" + $("#email").val() + "</p>");
				 $("#email").val("");
			 }
			 else
			 {
				alert(msg);	
			 }
		 });
		 return false;
	});

});
