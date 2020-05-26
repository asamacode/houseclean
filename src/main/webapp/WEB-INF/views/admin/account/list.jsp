<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Họ tên</th>
      <th scope="col">SĐT</th>
      <th scope="col">Chức vụ</th>
      <th scope="col">Trạng thái</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="user" items="${users}">
    <tr data-id="${user.id}">
      <th scope="row">${user.id}</th>
      <td>${user.name}</td>
      <td>${user.phone}</td>
      <td>${(user.role == 'ROLE_MANAGER')?'Quản lý':'Nhân viên'}</td>
      <td>${user.active == true ? 'Hoạt động' : 'Khóa'}</td>
      <td>
      	<a type="button" class="btn btn-primary" href="/manager/edit-user/${user.id}">
      	Sửa</a>
      	<a type="button" class="btn btn-danger btn-open-dialog" data-toggle="modal" data-target="#exampleModal">Xóa</a>
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
      	<span>Bạn có chắc chắn muốn xóa người dùng này ?</span>
      	<input id="userid" type="hidden" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Không</button>
        <button id="btn-delete" type="button" class="btn btn-primary">Có</button>
      </div>
    </div>
  </div>
</div>