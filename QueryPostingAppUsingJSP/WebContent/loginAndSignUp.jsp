<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login and SignUp</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #9153CA;
  padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #AAAAAA;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 40%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
  position: absolute;
  right: 35px;
  top: 15px;
  font-size: 40px;
  font-weight: bold;
  color: #f1f1f1;
}

.close:hover,
.close:focus {
  color: #f44336;
  cursor: pointer;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
<link href="css/new.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
	integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay"
	crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="js/login_effect.js"></script>

</head>
<body>
	<%
	session.invalidate();
%>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#myNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<a class="navbar-brand" href="home.html"><span
			class="fab fa-quora"></span></a>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="navbar-nav">
				<!-- <li class="nav-item active" id="home"><a class="nav-link"
                    href="home.jsp"><i class="fas fa-home"></i> Home</a></li>
                <li class="nav-item" id="ans"><a class="nav-link"
                    href="answer1.jsp" id="answerId" target="_blank"><i
                        class="fas fa-edit"></i> Answer</a></li>
                <li class="nav-item" id="space"><a class="nav-link"
                    href="space.jsp" id="spaceId"><i class="fas fa-users"></i>
                        Spaces</a></li>
                <li class="nav-item" id="notify"><a class="nav-link" ><i
                        class="fas fa-bell"></i> Notifications</a></li>
                </li> -->
			</ul>
			<form class="form-inline" action="#">
				<input class="form-control mr-sm-2" type="text" placeholder="Search">
				<button class="btn btn-success" type="submit">Search</button>
			</form>
			<div class="right-side">
				<ul class="navbar-nav text-right">
					<!-- <li class="nav-item" id="profile"><a class="nav-link"
                        href="quoraprofile.jsp" id="profileId" target="_blank"><i
                            class="fas fa-user"></i> Profile</a></li>
                    <li class="nav-item" id="cont"><a class="nav-link"
                        href="QuoraContentPage.jsp" id="contentId" target="_blank"><i
                            class="fas fa-file-alt"></i> Your Content</a></li> -->
					<li class="nav-item"><a class="nav-link loginBtn"
						id="loginBtn" href="" data-toggle="modal" data-target="#myModal"><i
							class="fas fa-sign-in-alt"></i> Log In</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<a href = "#" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Sign Up</a>

<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="#">
    <div class="container">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="first name"><b>First Name</b></label>
      <input type="text" placeholder="first namel" name="First Name" required>

      <label for="last name"><b>Last Name</b></label>
      <input type="text" placeholder="last name" name="last Name" required>


      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>

      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
      
      <label>
        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
      </label>

     

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
    </div>
  </form>
</div>
	<!-- <div class="card bg-light text-dark">
		<div class="card-body">
			<h1>How do I get a job in Bangalore as a fresher for IT
				graduate?</h1>
			<p>Those who are from 2012, 2013 ,2014,15,16,17 and still
				searching job,don't be upset friends.Just keep ‪#Faith‬ in yourself
				and God.Make your heart more‪#‎Positive‬. As present situation of
				market, getting job in IT Industry is not so difficult but you have
				to prepare in a result oriented strategy.If you follow these steps
				then you'll get job easily.</p>

		</div>
	</div>
 -->	
	<div id="myModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title"></h4>
				</div>
				<div class="modal-body">
					<p></p>
					<form class="form-container" action="user" id="loginFrm"
						method="post" onsubmit="return validateForm()">
						<div id="blank"></div>
						<%if(request.getAttribute("notValid") != null) {%>
						<%=request.getAttribute("notValid")%>
						<%
							}
						%>
						<h1>Log In</h1>
						<div class="form-group">
							<label for="exampleInputEmail1">Email address</label> <input
								type="email" name="email" class="form-control"
								id="exampleInputEmail1" aria-describedby="emailHelp"
								placeholder="Enter email">

						</div>
						<div class="form-group">
							<label for="exampleInputPassword1">Password</label> <input
								type="password" name="password" class="form-control"
								id="exampleInputPassword1" placeholder="Password">
						</div>
						<div class="form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">Remember me</label>
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
						<button type="submit" id="submitBtn" class="btn btn-success">Log
							In</button>
					</form>

					<!-- form end -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>
