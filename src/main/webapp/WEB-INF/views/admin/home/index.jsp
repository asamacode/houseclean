<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.container{
    padding:5%;
}
.container .img{
    text-align:center;
}
.container .details{
    border-left:3px solid #ded4da;
}
.container .details p{
    font-size:15px;
    font-weight:bold;
}
</style>
<div class="container">
  <div class="row">
    <div class="col-md-6 img">
      <img src="<c:url value='/static/images/logo.png' />"  alt="" class="img-rounded">
    </div>
    <div class="col-md-6 details">
      <blockquote>
        <h5>${u.name}</h5>
        <small><cite title="Source Title">${u.id}<i class="icon-map-marker"></i></cite></small>
      </blockquote>
      <p>
        ${u.email} <br>
        ${u.phone} <br>
        ${u.role=='ROLE_MANAGER'?'Quản lý':'Nhân viên' }
      </p>
    </div>
  </div>
</div>