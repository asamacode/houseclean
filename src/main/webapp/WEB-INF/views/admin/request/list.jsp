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
      <th scope="col">Trạng thái</th>
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
      <c:choose>
	      <c:when test="${req.status==0}">
	      	<td><span class="badge badge-secondary">Chờ xác nhận</span></td>
	      </c:when>
	      <c:when test="${req.status==1}">
	      	<td><span class="badge badge-primary">Đã xác nhận</span></td>
	      </c:when>
	      <c:when test="${req.status==2}">
	      	<td><span class="badge badge-success">Hoàn tất</span></td>
	      </c:when>
	      <c:when test="${req.status==3}">
	      	<td><span class="badge badge-danger">Đã hủy</span></td>
	      </c:when>
      </c:choose>
      <td>
      	<a type="button" class="btn btn-primary" href="/admin/request/view/${req.id}">Xem</a>
      	<c:if test="${req.status==1}">
      		<a type="button" class="btn btn-success btn-dialog-complete" data-toggle="modal" data-target="#completeModal">Hoàn tất</a>
      	</c:if>
      	<a type="button" class="btn btn-danger btn-dialog-cancel" data-toggle="modal" data-target="#cancelModal">Hủy</a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
<div class="row text-center mt-5">
                <div class="col-12">
                	<c:if test="${(page - 2) > 0}">
                		<a href="/news/list/${page - 2}" class="p-3 d-inline-block">${page - 2}</a>
                	</c:if>
                	<c:if test="${(page - 1) > 0}">
                    	<a href="/news/list/${page - 1}" class="p-3 d-inline-block">${page - 1}</a>
                    </c:if>
                    <span class="p-3 d-inline-block text-black">${page}</span>
                    <c:if test="${(page + 1) <= pageCount}">
                    	<a href="/news/list/${page + 1}" class="p-3 d-inline-block">${page + 1}</a>
                    </c:if>
                    <c:if test="${(page + 2) <= pageCount}">
                    	<a href="/news/list/${page + 2}" class="p-3 d-inline-block">${page + 2}</a>
                    </c:if>
                </div>
            </div>
<!-- Modal -->
<div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="cancelModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="cancelModal">Nhắc nhở</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<span>Bạn có chắc chắn muốn hủy lịch hẹn này ?</span>
      	<input id="reqid" type="hidden" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Không</button>
        <button id="btn-cancel-rq" type="button" class="btn btn-primary">Có</button>
      </div>
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="completeModal" tabindex="-1" role="dialog" aria-labelledby="completeModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="completeModal">Nhắc nhở</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<span>Hoàn tất lịch hẹn này ?</span>
      	<input id="reqid" type="hidden" >
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Không</button>
        <button id="btn-complete-rq" type="button" class="btn btn-primary">Có</button>
      </div>
    </div>
  </div>
</div>