 $(document).ready(function(){
	 	$("#myModal").modal('show');

         });         
    // window.onload = function(){
    //     $("#myModal").modal('show');
    // };
      // $("#loginBtn").click(function()){
      //        $("#myModal").modal('show');
      //    };




$('#submitBtn').click(function(event) {
    var loginId = document.getElementById('exampleInputEmail1').value;
var password = document.getElementById('exampleInputPassword1').value;

if (loginId != "" && password != "") {
//$('#loginUser').html('<h6>' + loginId + '</h6>');
document.getElementById("loginFrm").submit();
} else {
alert("User Id and password cannot be blank");
}
    });