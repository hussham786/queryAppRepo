$(document).ready(function() {
	
	/*$('#alltypesId').click(function(e) {
		
    	e.preventDefault();
    	$('#changeContent').load('all.jsp');
    });
*/
	
	$('#quesaskId').click(function(e) {
		
    	e.preventDefault();
    	$('#changeContent').load('queasked.jsp');
    });


    $('#quesfollId').click(function(e) {
    	e.preventDefault();
    	$('#changeContent').load('quefollowed.jsp');
    });

    $('#ansId').click(function(e) {
    	e.preventDefault();
    	$('#changeContent').load('answers.jsp');
    });
    
   

    $('#alltopId').click(function(e) {
    	e.preventDefault();
    	$('#changeContent').load('all.jsp');
    });
   
    $('#alltimeId').click(function(e) {
    	e.preventDefault();
    	$('#changeContent').load('alltime.jsp');
    });

    $('#2019Id').click(function(e) {
    	e.preventDefault();
    	$('#changeContent').load('2019.jsp');
    });

    $('#newId').click(function(e) {
    	e.preventDefault();
    	$('#changeContent').load('newfirst.jsp');
    });

    $('#oldId').click(function(e) {
    	e.preventDefault();
    	$('#changeContent').load('oldfirst.jsp');
    });
    
});
    