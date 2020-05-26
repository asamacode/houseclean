<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="site-mobile-menu site-navbar-target">
    <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
        </div>
    </div>
    <div class="site-mobile-menu-body"></div>
</div>

<div class="header-top bg-light">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-6 col-lg-3">
                <a href="/">
                    <img src="<c:url value='/static/images/logo.png' /> " alt="Image" class="img-fluid">
                </a>
            </div>
            <div class="col-lg-3 d-none d-lg-block">

                <div class="quick-contact-icons d-flex">
                    <div class="icon align-self-start">
                        <span class="flaticon-placeholder text-primary"></span>
                    </div>
                    <div class="text">
                        <span class="h4 d-block"> 139 - Cách mạng tháng 8</span>
                        <span class="caption-text">Pleiku, Gia Lai</span>
                    </div>
                </div>

            </div>
            <div class="col-lg-3 d-none d-lg-block">
                <div class="quick-contact-icons d-flex">
                    <div class="icon align-self-start">
                        <span class="flaticon-call text-primary"></span>
                    </div>
                    <div class="text">
                        <span class="h4 d-block">0378397678</span>
                        <span class="caption-text">Liên hệ ngay</span>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 d-none d-lg-block">
                <div class="quick-contact-icons d-flex">
                    <div class="icon align-self-start">
                        <span class="flaticon-email text-primary"></span>
                    </div>
                    <div class="text">
                        <span class="h4 d-block">trhuuluong@gmail.com</span>
                        <span class="caption-text">Nhà sạch Pleiku</span>
                    </div>
                </div>
            </div>

            <div class="col-6 d-block d-lg-none text-right">
                <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black"><span
                        class="icon-menu h3"></span></a>
            </div>
        </div>
    </div>




    <div class="site-navbar py-2 js-sticky-header site-navbar-target d-none pl-0 d-lg-block" role="banner">

        <div class="container">
            <div class="d-flex align-items-center">

                <div class="mr-auto">
                    <nav class="site-navigation position-relative text-right" role="navigation">
                        <ul class="site-menu main-menu js-clone-nav mr-auto d-none pl-0 d-lg-block">
                            <li>
                                <a href="/" class="nav-link text-left">Trang chủ</a>
                            </li>
                            <li>
                                <a href="/about" class="nav-link text-left">Giới thiệu</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Dịch Vụ
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Vệ sinh nhà sau xây dựng</a>
                                    <a class="dropdown-item" href="#">Vệ sinh văn phòng</a>
                                    <a class="dropdown-item" href="#">Vệ sinh sofa</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Giặt nệm tại nhà</a>
                                    <a class="dropdown-item" href="#">Lau kính tại nhà</a>
                                    <a class="dropdown-item" href="#">Giặt thảm tại nhà</a>
                                </div>
                            </li>
                            <li>
                                <a href="testimonials.html" class="nav-link text-left">Vệ Sinh Nhà Ở</a>
                            </li>
                            <li>
                                <a href="contact.html" class="nav-link text-left">Vệ Sinh Công Nghiệp</a>
                            </li>
                            <li>
                                <a href="contact.html" class="nav-link text-left">Liên hệ</a>
                            </li>
                        </ul>
                       
                    </nav>

                </div>

            </div>
        </div>

    </div>

</div>