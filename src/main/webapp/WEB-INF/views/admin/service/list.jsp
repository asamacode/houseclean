<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Tên dịch vụ</th>
      <th scope="col">Giới thiệu</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="s" items="${services}">
    <tr data-id="${s.id}">
      <th scope="row">${s.id}</th>
      <td>${s.name}</td>
      <td>${s.introduce}</td>
      <td>
      	<a type="button" class="btn btn-primary" href="/manager/services/edit/${s.id}">
      	Sửa</a>
      	<a type="button" class="btn btn-danger btn-open-dialog-service" data-toggle="modal" data-target="#sModal">Xóa</a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
<!-- Modal -->
<div class="modal fade" id="sModal" tabindex="-1" role="dialog" aria-labelledby="#sModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Nhắc nhở</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<span>Bạn có chắc chắn muốn xóa dịch vụ này ?</span>
      	<input id="serviceid" type="hidden" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Không</button>
        <button id="btn-delete-service" type="button" class="btn btn-primary">Có</button>
      </div>
    </div>
  </div>
</div>