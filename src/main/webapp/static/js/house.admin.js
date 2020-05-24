$(document).ready(function() {
    $(".btn-edit").click(function() {
    	var userid = $(this).closest("tr").attr("data-id");
    $.ajax({
    	url: '/manager/edit-user/'+userid,
    	success: function() {
    		
    	}
    });
    });
    
    $(".btn-delete").click(function() {
    	alert("delete");
    });
});