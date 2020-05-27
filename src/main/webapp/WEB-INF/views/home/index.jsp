<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- Slider -->
		<jsp:include page="slider.jsp" />  
	<!-- END slider -->

	 <!-- About us -->
    	<jsp:include page="about.jsp" /> 
    <!-- END About us -->

	 <!-- Services -->
    	<jsp:include page="services.jsp" /> 
	 <!-- END Services -->
	 
	 <!-- Reason -->
    	<jsp:include page="reason.jsp" /> 
    <!-- END Reason -->
    
	 <!-- People says -->
    	<jsp:include page="peoplesays.jsp" /> 
	 <!-- END People says -->
   
	 <!-- News -->
    	<jsp:include page="news.jsp" /> 
	 <!-- END News -->
    
    <div class="py-5 bg-primary block-4">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6">
            <h3 class="text-white">Subscribe To Newsletter</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt, reprehenderit!</p>
          </div>
          <div class="col-lg-6">
            <form action="#" class="form-subscribe d-flex">
              <input type="text" class="form-control form-control-lg">
              <input type="submit" class="btn btn-secondary px-4" value="Subcribe">
            </form>
          </div>
        </div>
      </div>
    </div>