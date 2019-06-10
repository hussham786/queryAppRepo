<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width = device-width,initial-scale = 1">
<link href="css/login.css" rel="stylesheet" id="bootstrap-css">
<!-- <link rel="stylesheet" href="css/homeStyle.css"> -->
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<!-- <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script> -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/homeLayout.js"></script>
</head>
<body>
	<%
		session.invalidate();
	%>
	<div class="container-fluid bg">
		<div class=row>
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<!-- form start  -->
				<form class="form-container" action="home.jsp" id="loginFrm"
					method="post">
					<h1>Log In</h1>
					<div class="form-group">
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							name="email" aria-describedby="emailHelp"
							placeholder="Enter email">

					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							name="password" placeholder="Password">
					</div>
					<div class="form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="exampleCheck1">Remember
							me</label>
					</div>
					<br>
					<div class="social-login">
						<button type="button" id="btnPrimary"
							onclick=" location.href = 'https://en-gb.facebook.com/login/';"
							class="btn btn-primary">Sign in with Facebook</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button type="button" id="btnDanger "
							onclick=" location.href = 'https://accounts.google.com/ServiceLogin/identifier?service=CPanel&flowName=GlifWebSignIn&flowEntry=AddSession';"
							class="btn btn-danger">Sign in with Google</button>


					</div>
					<br>
					<button type="button" class="btn btn-success" id="submitBtn">Submit</button>
				</form>

				<!-- form end -->
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
		</div>
	</div>
</body>
</html>