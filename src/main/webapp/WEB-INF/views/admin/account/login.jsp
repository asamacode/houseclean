<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Đăng nhập</h3></div>
                                    <div class="card-body">
                                    	${param.error == true ? '<div class="alert alert-danger" role="alert">
										  Tài khoản hoặc mật khẩu không đúng !
										</div>' : '' }
                                        <form method="post" action="/j_spring_security_check">
                                            <div class="form-group"><label class="small mb-1" for="inputEmailAddress">Tên tài khoản</label><input class="form-control py-4" id="inputEmailAddress" type="text" placeholder="Enter username" name="userName"/></div>
                                            <div class="form-group"><label class="small mb-1" for="inputPassword">Mật khẩu</label><input class="form-control py-4" id="inputPassword" type="password" placeholder="Enter password" name="password"/></div>
                            
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0"><a class="small" href="password.html">Quên mật khẩu?</a><button class="btn btn-primary" type="submit">Đăng nhập</button></div>
                                        </form>
                                    </div>
                               
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
         </div>
    </body>
</html>
