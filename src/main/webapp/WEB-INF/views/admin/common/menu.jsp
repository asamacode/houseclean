<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<sec:authorize access="isAuthenticated()">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
            	<sec:authorize access="hasRole('ROLE_MANAGER')">
                <div class="sb-sidenav-menu-heading">Quản lý</div>
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts"
                    aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Nhân sự
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="/manager/register">Thêm nhân
                            viên</a><a class="nav-link" href="/manager/list-user">Danh sách nhân viên</a></nav>
                </div>
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts1"
                    aria-expanded="false" aria-controls="collapseLayouts1">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Dịch vụ
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts1" aria-labelledby="headingOne"
                    data-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav"><a class="nav-link" href="/manager/services/add">Thêm dịch
                            vụ</a><a class="nav-link" href="/manager/services/list">Danh sách dịch vụ</a></nav>
                </div>
                </sec:authorize>
                <div class="sb-sidenav-menu-heading">Bài viết</div>
                <a class="nav-link" href="/admin/news/add">
                    <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                    Thêm bài viết
                </a>
                <sec:authorize access="hasRole('ROLE_MANAGER')">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts2"
                    aria-expanded="false" aria-controls="collapseLayouts2">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Danh mục bài viết
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts2" aria-labelledby="headingOne"
                    data-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                    <a class="nav-link" href="/manager/newscategory/add">Thêm danh mục</a>
                    <a class="nav-link" href="/manager/newscategory/list">Danh sách danh mục</a></nav>
                </div>
                <a class="nav-link" href="/manager/news/list">
                    <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                    Danh sách bài viết
                </a>
                </sec:authorize>
                <div class="sb-sidenav-menu-heading">Lịch hẹn</div>
                <a class="nav-link" href="/admin/request/list/process">
                    <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                    Chờ xác nhận
                </a>
                <a class="nav-link" href="/admin/request/list/accept">
                    <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                    Đã xác nhận
                </a>
                <a class="nav-link" href="/admin/request/list/complete">
                    <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                    Hoàn tất
                </a>
                <a class="nav-link" href="/admin/request/list/cancel">
                    <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                    Đã hủy
                </a>
            </div>
        </div>
        <div class="sb-sidenav-footer">
            <div class="small">Đang đăng nhập với tên :</div>
            <sec:authentication property="principal.username" />
        </div>
    </nav>
</sec:authorize>