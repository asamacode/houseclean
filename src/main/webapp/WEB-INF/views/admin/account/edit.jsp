<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header">
                                <h3 class="text-center font-weight-light my-4">Thông tin người dùng</h3>
                            </div>
                            <div class="card-body">
                                <h4>${message}</h4>
                                <form:form action="/manager/edit-user" modelAttribute="user">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <div class="form-group"><label class="small mb-1" for="inputUserName">Tên
                                                    người dùng</label>
                                                <form:input path="id" class="form-control py-4" id="inputUserName"
                                                    type="text" placeholder="Enter username"  readonly="true"/>
                                                <form:errors path="id" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group"><label class="small mb-1" for="inputLastName">Họ
                                                    tên</label>
                                                <form:input path="name" class="form-control py-4" id="inputLastName"
                                                    type="text" placeholder="Enter full name" />
                                                <form:errors path="name" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <div class="form-group"><label class="small mb-1" for="inputEmail">Địa
                                                    chỉ email</label>
                                                <form:input path="email" class="form-control py-4" id="inputEmail"
                                                    type="email" placeholder="Enter email" />
                                                <form:errors path="email" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group"><label class="small mb-1" for="inputPhone">Chức
                                                    vụ</label>
                                                <form:select path="role">
                                                    <option value="ROLE_MANAGER">Quản lý</option>
                                                    <option value="ROLE_EMPLOYEE">Nhân viên</option>
                                                </form:select>
                                                <form:errors path="role" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <div class="form-group"><label class="small mb-1" for="inputPassword">Mật
                                                    khẩu</label>
                                                <form:input path="password" class="form-control py-4" id="inputPassword"
                                                    type="password" placeholder="Enter password" readonly="true"/>
                                                <form:errors path="password" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group"><label class="small mb-1" for="inputPhone">Số điện
                                                    thoại</label>
                                                <form:input path="phone" class="form-control py-4" id="inputPhone"
                                                    type="text" placeholder="Enter phone number" />
                                                <form:errors path="phone" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                            <div class="form-group"><label class="small mb-1" for="inputPhone">Trạng thái</label>
                                                <form:select path="active">
                                                    <form:option selected="${(user.active == true)? 'selected':'' }" value="true">Kích hoạt</form:option>
                                                    <form:option selected="${(user.active == false)? 'selected':'' }" value="false">Khóa</form:option>
                                                </form:select>
                                                <form:errors path="role" />
                                            </div>
                                        </div>
                                    <div class="form-group mt-4 mb-0"><button class="btn btn-primary btn-block" type="submit">Cập nhật thông tin</button></div>
                                </form:form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>