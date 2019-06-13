<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <!DOCTYPE html>
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
</html> --%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title></title>
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
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#myNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="home.html"><span
            class="fab fa-quora"></span></a>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="navbar-nav">
                <li class="nav-item active" id="home"><a class="nav-link"
                    href="home.jsp"><i class="fas fa-home"></i> Home</a></li>
                <li class="nav-item" id="ans"><a class="nav-link"
                    href="answer1.jsp" id="answerId" target="_blank"><i
                        class="fas fa-edit"></i> Answer</a></li>
                <li class="nav-item" id="space"><a class="nav-link"
                    href="space.jsp" id="spaceId"><i class="fas fa-users"></i>
                        Spaces</a></li>
                <li class="nav-item" id="notify"><a class="nav-link" ><i
                        class="fas fa-bell"></i> Notifications</a></li>
                </li>
            </ul>
            <form class="form-inline" action="#">
                <input class="form-control mr-sm-2" type="text" placeholder="Search">
                <button class="btn btn-success" type="submit">Search</button>
            </form>
            <div class="right-side">
                <ul class="navbar-nav text-right">
                    <li class="nav-item" id="profile"><a class="nav-link"
                        href="quoraprofile.jsp" id="profileId" target="_blank"><i
                            class="fas fa-user"></i> Profile</a></li>
                    <li class="nav-item" id="cont"><a class="nav-link"
                        href="QuoraContentPage.jsp" id="contentId" target="_blank"><i
                            class="fas fa-file-alt"></i> Your Content</a></li>
                    <li class="nav-item"><a class="nav-link loginBtn" id = "loginBtn" href="" data-toggle="modal" data-target="#myModal"><i
                            class="fas fa-sign-out-alt"></i> Log In</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <br>
    <br>
    <br>
    <br>
  <div class="card bg-light text-dark">
    <div class="card-body">
        <h1> How do I get a job in Bangalore as a fresher for IT graduate? </h1>
        <p>Those who are from 2012, 2013 ,2014,15,16,17 and still searching job,don't be upset friends.Just keep ‪#Faith‬ in yourself and God.Make your heart more‪#‎Positive‬.
As present situation of market, getting job in IT Industry is not so difficult but you have to prepare in a result oriented strategy.If you follow these steps then you'll get job easily.</p>

    </div>
  </div>
</div>
<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
				<p></p>
                <form class = "form-container" >
                <h1> Log In </h1>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                  </div>
                  <div class="form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Remember me</label>
                  </div>
                  <br>
                  <div class="social-login">
                <button type="button"  id="btnPrimary" onclick=" location.href = 'https://en-gb.facebook.com/login/';" class="btn btn-primary">Sign in with Facebook </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="button"  id = "btnDanger " onclick = " location.href = 'https://accounts.google.com/ServiceLogin/identifier?service=CPanel&flowName=GlifWebSignIn&flowEntry=AddSession';"class="btn btn-danger" > Sign in with Google</button>
               
                
            </div>
                  <br>
                  <button type="submit"  class="btn btn-success">Submit</button>
                </form>
            
            <!-- form end -->
            </div>
        </div>
    </div>
</div>
</body>
</html>                            
