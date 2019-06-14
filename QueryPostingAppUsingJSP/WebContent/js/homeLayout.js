$(document).ready(function() {
    $('#btn').click(function(event) {
      var textId = document.getElementById('textId').value;
      if(textId != null && textId != ""){
      	$('#answer').html('<span>'+textId+'</span>');
      	document.getElementById('textId').value = "";
      }

    });

    $('#bollywoodId').click(function(e) {
    	e.preventDefault();
    	$('#includedContent').load('bollywood.jsp');
    });

    $('#scienceId').click(function(e) {
    	e.preventDefault();
    	$('#includedContent').load('science.jsp');
    });

    $('#politicsId').click(function(e) {
    	e.preventDefault();
    	$('#includedContent').load('politics.jsp');
    });

    $('#sportsId').click(function(e) {
    	e.preventDefault();
    	$('#includedContent').load('sports.jsp');
    });

    $('#spaceId').click(function(e) {
    	e.preventDefault();
    	document.getElementById("space").className = "nav-item active";
    	document.getElementById("home").className = "nav-item";
    	document.getElementById("cont").className = "nav-item";
    	document.getElementById("profile").className = "nav-item";
    	$('#externalContent').load('space.jsp');
    });

    $('#profileId').click(function(e) {
    	e.preventDefault();
    	document.getElementById("profile").className = "nav-item active";
    	document.getElementById("home").className = "nav-item";
    	document.getElementById("space").className = "nav-item";
    	document.getElementById("cont").className = "nav-item";
    	$('#externalContent').load('quoraprofile.jsp');
    });

    $('#contentId').click(function(e) {
    	e.preventDefault();
    	document.getElementById("cont").className = "nav-item active";
    	document.getElementById("home").className = "nav-item";
    	document.getElementById("space").className = "nav-item";
    	document.getElementById("profile").className = "nav-item";
    	$('#externalContent').load('QuoraContentPage.jsp');
    });

    $('#answerId').click(function(e) {
    	e.preventDefault();
    	document.getElementById("ans").className = "nav-item active";
    	document.getElementById("home").className = "nav-item";
    	document.getElementById("cont").className = "nav-item";
    	document.getElementById("space").className = "nav-item";
    	$('#externalContent').load('answer1.jsp');
    });

    /*$('#submitBtn').click(function(event) {
    	var loginId = document.getElementById('exampleInputEmail1').value;
		var password = document.getElementById('exampleInputPassword1').value;

		if (loginId != "" && password != "") {
			//$('#loginUser').html('<h6>' + loginId + '</h6>');
			document.getElementById("loginFrm").submit();
		} else {
			alert("User Id and password cannot be blank");
		}
    });*/

    $('.close-icon').on('click',function() {
	  $(this).closest('.card').fadeOut();
	});


  });