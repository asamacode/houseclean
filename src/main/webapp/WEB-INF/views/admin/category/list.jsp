<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Tên danh mục</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="c" items="${cats}">
    <tr data-id="${c.id}">
      <th scope="row">${c.id}</th>
      <td>${c.name}</td>
      <td>
      	<a type="button" class="btn btn-primary" href="/manager/newscategory/edit/${c.id}">
      	Sửa</a>
      	<a type="button" class="btn btn-danger btn-open-dialog-cat" data-toggle="modal" data-target="#nModal">Xóa</a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
<!-- Modal -->
<div class="modal fade" id="nModal" tabindex="-1" role="dialog" aria-labelledby="#nModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Nhắc nhở</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<span>Bạn có chắc chắn muốn xóa danh mục này ?</span>
      	<input id="catid" type="hidden" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Không</button>
        <button id="btn-delete-cat" type="button" class="btn btn-primary">Có</button>
      </div>
    </div>
  </div>
</div>