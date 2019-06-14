$(document).ready(function() {
	$("#myModal").modal('show');

	
	$('#submitBtn').click(function(event) {
		//console.log("called")
		var loginId = document.getElementById('exampleInputEmail1').value;
		var password = document.getElementById('exampleInputPassword1').value;
		//console.log(loginId);
		//console.log(password);

		if (loginId != "" && password != "") {
			//$('#loginUser').html('<h6>' + loginId + '</h6>');
			document.getElementById("loginFrm").submit();
		} else {
			alert("User Id and password cannot be blank");
			document.getElementById("loginFrm").reset();
		}
	});
	
});
// window.onload = function(){
//     $("#myModal").modal('show');
// };
// $("#loginBtn").click(function()){
//        $("#myModal").modal('show');
//    };

