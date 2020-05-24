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
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="user" items="${users}">
    <tr>
      <th scope="row">${user.id}</th>
      <td>${user.name}</td>
      <td>${user.phone}</td>
      <td>${(user.role == 'ROLE_MANAGER')?'Quản lý':'Nhân viên'}</td>
      <td>
      	<a type="button" class="btn btn-primary" href="/manager/edit-user/${user.id}">
      	Sửa</a>
      	<a type="button" class="btn btn-danger btn-delete"><i class="fa fa-trash" aria-hidden="true"></i></a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>