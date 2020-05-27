$(document).ready(function() {
	
	$(".btn-open-dialog-news").click(function() {
    	var sid = $(this).closest("tr").attr("data-id");
    	$("#mModal #newsid").val(sid); 	
    });
    
	 $("#btn-delete-news").click(function() {
	    	var id = $("#mModal #newsid").val();
	    	
	    	$.ajax({
	    		url: "/manager/news/delete/"+id,
	    		success: function(res) {
	    			if (res) {
	    				$("[data-dismiss]").click();
	    				alert("Xóa thành công");
	    				location.reload();
	    			} else {
	    				alert("Xảy ra lỗi");
	    			}
	    		}
	    	});
	    })
	
	$(".btn-open-dialog-cat").click(function() {
    	var sid = $(this).closest("tr").attr("data-id");
    	$("#nModal #catid").val(sid); 	
    });
    
	 $("#btn-delete-cat").click(function() {
	    	var id = $("#nModal #catid").val();
	    	
	    	$.ajax({
	    		url: "/manager/newscategory/delete/"+id,
	    		success: function(res) {
	    			if (res) {
	    				$("[data-dismiss]").click();
	    				alert("Xóa thành công");
	    				location.reload();
	    			} else {
	    				alert("Xảy ra lỗi");
	    			}
	    		}
	    	});
	    })
	
	$(".btn-open-dialog-service").click(function() {
    	var sid = $(this).closest("tr").attr("data-id");
    	$("#sModal #serviceid").val(sid); 	
    });
    
	 $("#btn-delete-service").click(function() {
	    	var id = $("#sModal #serviceid").val();
	    	$.ajax({
	    		url: "/manager/services/delete/"+id,
	    		success: function(res) {
	    			if (res) {
	    				$("[data-dismiss]").click();
	    				alert("Xóa thành công");
	    				location.reload();
	    			} else {
	    				alert("Xảy ra lỗi");
	    			}
	    		}
	    	});
	    })
	
    $(".btn-open-dialog").click(function() {
    	var userid = $(this).closest("tr").attr("data-id");
    	$("#exampleModal #userid").val(userid); 	
    });
    
    $("#btn-delete").click(function() {
    	var id = $("#exampleModal #userid").val();
    	$.ajax({
    		url: "/manager/delete-user/"+id,
    		success: function(res) {
    			if (res) {
    				$("[data-dismiss]").click();
    				alert("Xóa thành công");
    				location.reload();
    			} else {
    				alert("Xảy ra lỗi");
    			}
    		}
    	});
    })
});