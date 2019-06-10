<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Answer Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
	<link rel="stylesheet" type="text/css" href="css/answer1.css">
	<!-- <link rel="stylesheet" href="homeStyle.css"> -->

	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
				<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
	<script>
		$(document).ready(function(){

			$('#queScroll').click(function(){
				$('#queScroll').fadeOut();
				$('#hiddenItem').fadeIn(10);
			});


			$("#button").click(function () {
				$('.item').append('<div>new div</div>')
			});

			$(function() {

				$(".region").click(function(e) {
					e.preventDefault();
					var content = $(this).html();
					$('#map').replaceWith('<div class="region">' + content + '</div>');
				});

			});
		</script>




	</head>
	<body>





	<div class="container-fluid bg-light" id="writeMain">

				 		<div class="row ">

					<div class="col-sm-4  border-0 rounded" id="questionsMenu">

						<div class="card-body menuCard rounded " >
							<div class="card-header border-0" >
								Questions
							</div>
							<ul class="list-group list-group-flush">
								<li class="list-group-item"><a href="#">Questions for you</a></li>
								<li class="list-group-item"><a href="#">Answer Requests</a></li>
								<li class="list-group-item"><a href="#">Answer later</a></li>
								<li class="list-group-item"><a href="#">Drafts</a></li>
							</ul>
						</div>

					</div>
					<div class="col-sm-8  rounded" style="width: 100%">

						<div class="questionList rounded" style="height: auto;">

							<div class="card rounded" style="width: 100%">
								<div class="card-header rounded" id="queHeaderHelp"><i class="fas fa-question-circle" >  Requested from Quora  </i></div>
								<div class="card-body  rounded" style="width: 100%" id="queScroll">

									<div class="reason_div" style="width: 100%">
										<div class="reason_text font-weight-light" id="cross"> Question Added <span class="bullet">.</span> <a href="#" style="white-space: nowrap;">West Indies </a><span id="bullet">.</span> Topic that you've written in 
											<span class="hideStory"><a href="#" data-toggle="tooltip" data-placement="top" title="Hide Story"><i class="fas fa-times" ></i></a></span>
										</div>
									</div>
									<h5 class="card-title QuestionHeading "><a href="#" class="text-dark"> Who will win the match between Afghanistan and West Indies of Cricket World Cup 2019 in Headingley, Leeds? </a>   </h5>
									<div class="question_footer">
										<p class="card-subtitle mb-2 "><span><a href="#">Not Answered yet</a></span> <span class="bullet">.</span>  <span class="lastFollowedTime">Last Followed Time   </span><span class="Exactime">  34min Ago  </span>  </p>

									</div>

									<div class="action_Icon_Bar">

										<div class="container-fluid actionIcon">
											<div class="row buttonPadding" id="rowDiv" >
												<div class="answerButton">
													<button type="button" class="btn btn-light "><span><a href="#" class="card-link"><i class="fas fa-pen">  Answer</i></a></span></button>
												</div>
												<div class="ignoreButton">
													<button type="button" class="btn btn-light actionButton1 "><span ><a href="#" class="card-link"><i class="fas fa-quidditch">  Ignore</i></a></span></button>
												</div>
												<div class="followButton">
													<button type="button" class="btn btn-light actionButton1"><span ><a href="#" class="card-link"><i class="fas fa-thumbs-up">  Follow  </i></a></span></button>
												</div>
												<div class="moreButton"> 
													<button type="button"  class="btn btn-light actionButton2"><span ><a href="#" class="card-link" ><i class="fas fa-ellipsis-h">  </i></a></span></button>
												</div> 


											</div>


										</div>

									</div>

								</div>

							<!-- <div class="row rowForMore text-center" id="moreButtonDiv" style="width: 100%;margin-bottom: 2%;">
								<button type="button" id="fadeInButton" class="btn btn-primary moremore">More <span class="badge badge-light">3</span></button> 
							</div> --> 

							<div class="card-body border" style="width: 100%;" id="hiddenItem">

								<div class="reason_div"  id="hideenDiv" style="width: 100%">
									<div class="reason_text font-weight-light"> Question Addedddd  <span class="bullet">.</span> <a href="#" style="white-space: nowrap;">West Indies </a><span id="bullet">.</span>Topic that you've written in 
										<span class="hideStory"><a href="#" data-toggle="tooltip" data-placement="top" title="Hide Story"><i class="fas fa-times"></i></a></span>
									</div>
								</div>
								<h5 class="card-title QuestionHeading "><a href="#" class="text-dark"> Who will win the match between Afghanistan and West Indies of Cricket World Cup 2019 in Headingley, Leeds? </a>   </h5>
								<div class="question_footer">
									<p class="card-subtitle mb-2 "><span><a href="#">Not Answered yet</a></span> <span class="bullet">.</span>  <span class="lastFollowedTime">Last Followed Time   </span><span class="Exactime">  34min Ago  </span>  </p>

								</div>

								<div class="action_Icon_Bar" id="hiddenActionBar">

									<div class="container-fluid actionIcon">
										<div class="row buttonPadding" id="rowDiv" >
											<div class="answerButton">
												<button type="button" class="btn btn-light "><span><a href="#" class="card-link"><i class="fas fa-pen">  Answer</i></a></span></button>
											</div>
											<div class="ignoreButton">
												<button type="button" class="btn btn-light actionButton1 "><span ><a href="#" class="card-link"><i class="fas fa-quidditch">  Ignore</i></a></span></button>
											</div>
											<div class="followButton">
												<button type="button" class="btn btn-light actionButton1"><span ><a href="#" class="card-link"><i class="fas fa-thumbs-up">  Follow  </i></a></span></button>
											</div>
											<div class="moreButton"> 
												<span class="moreButton"><button type="button" class="btn btn-light actionButton2"><span ><a href="#" class="card-link"><i class="fas fa-ellipsis-h"> </i></a></span></button></span>
											</div> 

										</div>


									</div>

								</div>

							</div>



						</div>


					</div>
					<div class="questionList" style="height: auto;">

						<div class="card" style="width: 100%">

							<div class="card-body border" style="width: 100%" id="queScroll">

								<div class="reason_div" style="width: 100%">
									<div class="reason_text font-weight-light"> Question Added <span class="bullet">.</span> <a href="#" style="white-space: nowrap;">West Indies </a><span id="bullet">.</span> Topic that you've written in 
										<span class="hideStory"><a href="#" data-toggle="tooltip" data-placement="top" title="Hide Story"><i class="fas fa-times"></i></a></span>
									</div>
								</div>
								<h5 class="card-title QuestionHeading "><a href="#" class="text-dark"> Who will win the match between Afghanistan and West Indies of Cricket World Cup 2019 in Headingley, Leeds? </a>   </h5>
								<div class="question_footer">
									<p class="card-subtitle mb-2 "><span><a href="#">Not Answered yet</a></span> <span class="bullet">.</span>  <span class="lastFollowedTime">Last Followed Time   </span><span class="Exactime">  34min Ago  </span>  </p>

								</div>

								<div class="action_Icon_Bar">

									<div class="container-fluid actionIcon">
										<div class="row buttonPadding" >
											<div class="answerButton">
												<button type="button" class="btn btn-light "><span><a href="#" class="card-link"><i class="fas fa-pen">  Answer</i></a></span></button>
											</div>
											<div class="ignoreButton">
												<button type="button" class="btn btn-light actionButton1 "><span ><a href="#" class="card-link"><i class="fas fa-quidditch">  Ignore</i></a></span></button>
											</div>
											<div class="followButton">
												<button type="button" class="btn btn-light actionButton1"><span ><a href="#" class="card-link"><i class="fas fa-thumbs-up">  Follow  </i></a></span></button>
											</div>
											<div class="moreButton">
												<span><button type="button" class="btn btn-light actionButton2"><span ><a href="#" class="card-link"><i class="fas fa-ellipsis-h">  </i></a></span></button></span>
											</div>

										</div>


									</div>

								</div>

							</div>

						</div>


					</div>
					<div class="questionList" style="height: auto;">

						<div class="card" style="width: 100%">

							<div class="card-body border " style="width: 100%" id="queScroll">

								<div class="reason_div" style="width: 100%">
									<div class="reason_text font-weight-light"> Question Added <span class="bullet">.</span> <a href="#" style="white-space: nowrap;">West Indies </a><span id="bullet">.</span> Topic that you've written in 
										<span class="hideStory"><a href="#" data-toggle="tooltip" data-placement="top" title="Hide Story"><i class="fas fa-times"></i></a></span>
									</div>
								</div>
								<h5 class="card-title QuestionHeading "><a href="#" class="text-dark"> Who will win the match between Afghanistan and West Indies of Cricket World Cup 2019 in Headingley, Leeds? </a>   </h5>
								<div class="question_footer">
									<p class="card-subtitle mb-2 "><span><a href="#">Not Answered yet</a></span> <span class="bullet">.</span>  <span class="lastFollowedTime">Last Followed Time   </span><span class="Exactime">  34min Ago  </span>  </p>

								</div>

								<div class="action_Icon_Bar">

									<div class="container-fluid actionIcon">
										<div class="row buttonPadding" >
											<div class="answerButton">
												<button type="button" class="btn btn-light "><span><a href="#" class="card-link"><i class="fas fa-pen">  Answer</i></a></span></button>
											</div>
											<div class="ignoreButton">
												<button type="button" class="btn btn-light actionButton1 "><span ><a href="#" class="card-link"><i class="fas fa-quidditch">  Ignore</i></a></span></button>
											</div>
											<div class="followButton">
												<button type="button" class="btn btn-light actionButton1"><span ><a href="#" class="card-link"><i class="fas fa-thumbs-up">  Follow  </i></a></span></button>
											</div>
											<div class="moreButton">
												<button type="button" class="btn btn-light actionButton1"><span ><a href="#" class="card-link"><i class="fas fa-ellipsis-h">  </i></a></span></button>
											</div>

										</div>


									</div>

								</div>

							</div>

						</div>


					</div>


				</div>
				<br>





				
			</body>
			</html>
