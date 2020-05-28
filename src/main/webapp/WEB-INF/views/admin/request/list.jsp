<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Họ tên</th>
      <th scope="col">SĐT</th>
      <th scope="col">Ngày</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="req" items="${reqs}">
    <tr data-id="${req.id}">
      <th scope="row">${req.id}</th>
      <td>${req.name}</td>
      <td>${req.phone}</td>
      <td>${req.date}</td>
      <td>
      	<a type="button" class="btn btn-primary" href="/admin/request/${req.id}">
      	Xem</a>
      	<a type="button" class="btn btn-danger btn-open-dialog" data-toggle="modal" data-target="#exampleModal">Hủy</a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Nhắc nhở</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<span>Bạn có chắc chắn muốn hủy lịch hẹn này ?</span>
      	<input id="userid" type="hidden" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Không</button>
        <button id="btn-delete" type="button" class="btn btn-primary">Có</button>
      </div>
    </div>
  </div>
</div>