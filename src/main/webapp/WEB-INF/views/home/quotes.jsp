<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script src='https://www.google.com/recaptcha/api.js'></script>
<div class="">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 align-self-center mb-5 mt-5">

            <div class="bg-black  quote-form-wrap wrap text-white">
              <div class="mb-5">
                <h3 class="section-subtitle">Đặt lịch</h3>
                <h2 class="section-title mb-4"><strong>Tư vấn & Khảo sát</strong></h2>
              </div>
              <h5>${message}${param.message}</h5>
              <form:form modelAttribute="req_book" action="/home/request/book" class="quote-form" method="post">
                <div class="row">
                  <div class="col-md-12 form-group">
                    <form:input path="name" type="text" class="form-control" placeholder="Tên của bạn"/>
                    <form:errors path="name" />
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-md-12 form-group">
                    <form:input path="address" type="text" class="form-control" placeholder="Địa chỉ của bạn"/>
                    <form:errors path="address" />
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 form-group">
                    <form:input path="email" type="text" class="form-control" placeholder="Địa chỉ email"/>
                    <form:errors path="email" />
                  </div>
                  <div class="col-md-6 form-group">
                    <form:input path="phone" type="text" class="form-control" placeholder="Số điện thoại" onchange="validatePhone(this);"/>
                    <form:errors path="phone" />
                    <h6 id="phoneerr" style="color:red;"></h6>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-md-6 form-group date" data-provide="datepicker" data-date-format="dd/mm/yyyy">
				    <form:input path="date" type="text" class="form-control" placeholder="Ngày khảo sát"/>
				    <form:errors path="date" />
				    <div class="input-group-addon">
				        <span class="glyphicon glyphicon-th"></span>
				    </div>
				</div>
                  <div class="col-md-6 form-group">
				    <form:select path="time" class="form-control" id="exampleForm">
				    	<form:options items="${times}" />	
				    </form:select>
				    <form:errors path="time" />
				  </div>
                </div>

                <div class="row">
                  <div class="col-md-12 form-group">
                    <form:textarea path="description" class="form-control" id="" placeholder="Nhập nhu cầu của bạn" cols="30" rows="7"></form:textarea>
                  </div>
                </div>
                <div class="row">
                  <div class="g-recaptcha col-sm-5 form-group" data-sitekey="6LfSD_0UAAAAANndRi2LKyvCUEFvaGAitor5vQqE">
                  </div>
                  
                </div>
                <div class="row">
                  <div class="col-md-4 form-group align-self-end">
                    <input type="submit" class="btn btn-primary btn-block btn-lg rounded-0" value="Đặt lịch hẹn">
                  </div>
                </div>
                
              </form:form>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <script>
    function validatePhone(inputField) {
        var vnf_regex = /((09|03|07|08|05|849|843|847|848|845)+([0-9]{8})\b)/g;
        var mobile = inputField.value;

        if (mobile !== '') {
            if (mobile.length >= 10 && mobile.length <= 11) {
                if (vnf_regex.test(mobile) == false) {
                    $("#phoneerr").html("Số điện thoại không đúng");
                } else {
                	 $("#phoneerr").html("");
                }
            } else {
            	 $("#phoneerr").html("Số điện thoại không đúng");
            }
        } else {
        	 $("#phoneerr").html("Số điện thoại không đúng");
        }
    }
    </script>
