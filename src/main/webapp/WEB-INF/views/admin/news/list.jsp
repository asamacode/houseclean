<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Tiêu đề</th>
      <th scope="col">Danh mục</th>
      <th scope="col">Thời gian</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="n" items="${newss}">
    <tr data-id="${n.id}">
      <td scope="row">${n.title}</td>
      <th>${n.newsCategory.name}</th>
      <td>${n.timePost}</td>
      <td>
      	<a type="button" class="btn btn-primary" href="/manager/news/edit/${n.id}">
      	Sửa</a>
      	<a type="button" class="btn btn-danger btn-open-dialog-news" data-toggle="modal" data-target="#mModal">Xóa</a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
<!-- Modal -->
<div class="modal fade" id="mModal" tabindex="-1" role="dialog" aria-labelledby="#mModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Nhắc nhở</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<span>Bạn có chắc chắn muốn xóa bài viết này ?</span>
      	<input id="newsid" type="hidden" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Không</button>
        <button id="btn-delete-news" type="button" class="btn btn-primary">Có</button>
      </div>
    </div>
  </div>
</div>