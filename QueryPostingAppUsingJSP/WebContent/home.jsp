<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
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
<link rel="stylesheet" href="css/homeStyle.css">
<script src="js/homeLayout.js"></script>
</head>
<body>
	<%
		//Get a reference to the session object
		//HttpSession session1 = request.getSession();

		//Put some data in the session
		if (session.getAttribute("userName") == null)
			session.setAttribute("userName", request.getParameter("email"));

		//session1.setAttribute("password", request.getParameter("password"));
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
				<li class="nav-item active" id="home"><a class="nav-link"
					href="home.jsp"><i class="fas fa-home"></i> Home</a></li>
				<li class="nav-item" id="ans"><a class="nav-link"
					href="answer1.jsp" id="answerId" target="_blank"><i
						class="fas fa-edit"></i> Answer</a></li>
				<li class="nav-item" id="space"><a class="nav-link"
					href="space.jsp" id="spaceId"><i class="fas fa-users"></i>
						Spaces</a></li>
				<li class="nav-item" id="notify"><a class="nav-link" href="#"><i
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
					<li class="nav-item"><a class="nav-link" href="index.jsp"><i
							class="fas fa-sign-out-alt"></i> Log Out</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- <nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="home.html"><span class="fab fa-quora"></span></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="home.html"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="answer1.html" id="answerId" target="_blank"><i class="fas fa-edit"></i> Answer</a></li>
        <li><a href="space.html" id="spaceId"><i class="fas fa-users"></i> Spaces</a></li>
        <li><a href="#"><i class="fas fa-bell"></i> Notifications</a></li>
      </ul>
      <form class="form-inline waves-effect waves-light">
                <input class="form-control" type="text" placeholder="Search">
            </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="quoraprofile.html" id="profileId" target="_blank"><i class="fas fa-user"></i> Profile</a></li>
        <li><a href="QuoraContentPage.html" id="contentId" target="_blank"><i class="fas fa-file-alt"></i> Your Content</a></li>
        <li><a href="login.html"><i class="fas fa-sign-out-alt"></i> Log Out</a></li>
      </ul>
    </div>
  </div>
</nav> -->
	<br>
	<br>
	<div class="container-fluid text-center" id="externalContent">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<p>
					<a href="home.html"><span class="fas fa-sticky-note"></span>
						Feed</a>
				</p>
				<p>
					<a href="bollywood.jsp" id="bollywoodId" target="section"><span
						class="fas fa-film"></span> Bollywood Actors and Actresses</a>
				</p>
				<p>
					<a href="science.jsp" id="scienceId" target="section"><span
						class="fas fa-flask"></span> Science and Engineering</a>
				</p>
				<p>
					<a href="politics.jsp" id="politicsId" target="section"><span
						class="fa fa-handshake"></span> Politics</a>
				</p>
				<p>
					<a href="sports.jsp" id="sportsId" target="section"><span
						class="fas fa-volleyball-ball"></span> Sports</a>
				</p>
			</div>

			<div class="col-sm-8 text-left" id="includedContent">
				<br>
				<p>
					<span class="fas fa-user-circle"></span><%=" " + session.getAttribute("userName")%>
				</p>
				<textarea id="textId" class="form-control"
					placeholder="What is your question?"></textarea>
				<br>
				<button class="btn btn-primary" id="btn">Post</button>
				<br> <br>
				<div class="card">
					<span class="pull-right clickable close-icon" id="closeIcon"
						data-effect="fadeOut"><i class="fas fa-times"></i></span>
					<div class="card-header">
						<h3 id="answer">Your Questions will be posted right here!!!</h3>
					</div>
				</div>

				<br>
				<div class="card">
					<span class="pull-right clickable close-icon" id="closeIcon"
						data-effect="fadeOut"><i class="fas fa-times"></i></span>
					<div class="card-header">
						<h3>What is your experience of Sunday Chor Bazaar in Delhi?
							Did you buy something awesome that was worth your money? Do the
							electronics last?</h3>
					</div>
					<div class="card-body">
						<p>
							<span class="fas fa-user-circle"></span> Nupur Kumari, Developer
							EAS SAP at Tata Consultancy Services (2017-present)
						</p>
						<p class="para" id="para1">Chor bazaar (Thief market) is one
							of the tourist attraction in Delhi where people can get stolen
							product at cheapest cost or can be duped very easily. It is a
							saying “ If you lose anything in Delhi.</p>
					</div>
				</div>
				<br>
				<div class="card">
					<span class="pull-right clickable close-icon" id="closeIcon"
						data-effect="fadeOut"><i class="fas fa-times"></i></span>
					<div class="card-header">
						<h3>What is the reality of placements at IIM Lucknow?</h3>
					</div>
					<div class="card-body">
						<p>
							<span class="fas fa-user-circle"></span> Anthony Galli, Writer on
							History, Psychology, and Society
						</p>
						<p class="para">Disclaimer: I have no interest in being the
							poster-child for IIM Lucknow on Quora, hence anonymous. I just
							couldn’t stop myself looking at the misleading answers popping up
							every now & then about IIML, and unlike other “premier” institute
							alums, IIML people don’t really spend time in doing promotions
							for the institute, so might as well be me before I start working.</p>
					</div>
				</div>
				<br>

				<div class="card">
					<span class="pull-right clickable close-icon" id="closeIcon"
						data-effect="fadeOut"><i class="fas fa-times"></i></span>
					<div class="card-header">
						<h3>Can I get some SP Jain review (Dubai, Singapore & Sydney)
							from alumni & students?</h3>
					</div>
					<div class="card-body">
						<p>
							<span class="fas fa-user-circle"></span> Taj, Lives in Canada
						</p>
						<p class="para">I am Sneha Nagaraju, I was part of the
							September 2017 GMBA batch and I recently graduated in Singapore.</p>
						<p class="para">After working for 5 yrs in a leading
							investment bank, I realised, being a graduate is just not enough
							in today’s growing competition to succeed in one’s career. I
							decided to pursue a 1 yr MBA and chose SP Jain because of its tri
							-city model and its popularity in India and across the world,
							enabling more work opportunities post MBA.</p>
						<p class="para">The programme is well planned with the right
							mix of subjects based purely on market requirements.Most of our
							professors were highly qualified, experienced and also very
							approachable. Professors like Ramesh Lakshman sir , Dr.Nawazish
							Sir were very motivating through out my course and their advices
							helped me a lot.</p>
					</div>
				</div>
				<br>

				<div class="card">
					<span class="pull-right clickable close-icon" id="closeIcon"
						data-effect="fadeOut"><i class="fas fa-times"></i></span>
					<div class="card-header">
						<h3>How do you spend your monthly salary?</h3>
					</div>
					<div class="card-body">
						<p>
							<span class="fas fa-user-circle"></span> Gurtej Singh, lives in
							New Delhi
						</p>
						<p class="para">Female, unmarried, 27, Government Servant,
							Group B Officer, Living in Bangalore.</p>
						<p class="para">INR 70000 per month after tax.</p>
						<p class="para">20k to my parents.. Apparently they spend a
							major chunk of it on me….</p>
						<p class="para">6k on a chit fund. I get a consolidated amount
							of 1 lakh once year. Each year I buy something remarkable out of
							it… Last year bought some gold…</p>
						<p class="para">8k to 10k on Sarees. Yes.. my love towards
							sarees is extreme… sometimes exceeds 10k as well.</p>
						<p class="para">LIC premia of around 180000 per year, which
							comes up to 15000 per month. This is totally towards building my
							post retirement income.</p>
						<p class="para">When there's an accumulation of more than
							30000 in my account, I put it into a term deposit account.</p>
						<p class="para">My Employer provides me the phone and
							conveyance to and fro.</p>
						<p class="para">Electricity bill of 2000, Parents medicine
							bills up to 2000.</p>
						<p class="para">On books and others refreshments up to 1000
							per month.</p>
						<p class="para">My manager and I go out on lunch once every
							month plus our tea expenses ( both of us are tea addicts) comes
							up to 1500 - 2000 maximum. Manytimes, this gets funded by my
							employer.</p>
						<p class="para">I do all the house hold chores.. so neither
							any expenditure on domestic help nor towards gym. However, food
							never stops getting tasty, and I never stop getting fat….</p>
						<p class="para">Shopping: As and when time permits… Because
							free time is never guaranteed. Met by my credit card, which gets
							serviced in full every month.</p>
						<p class="para">Not saving anything for my wedding. My parents
							have already saved enough. Moreover, I am looking forward marry a
							value driven guy in a simple gathering rather than to have a
							materiaistic marriage. Post wedding savings will start after the
							wedding. LoL.</p>
					</div>
				</div>
			</div>

			<div class="col-sm-2 sidenav">
				<div class="well">
					<img src="image/car.gif">
				</div>
				<div class="well">
					<img src="image/lemonWater.gif">
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-bottom">
		<p id="footerId">
			<marquee direction="left" width="100%">Copyright@Query?
				Created by Ganesh, Manikanta, Apurva, Venketesh & Hussham</marquee>
		</p>
	</nav>

</body>
</html>

