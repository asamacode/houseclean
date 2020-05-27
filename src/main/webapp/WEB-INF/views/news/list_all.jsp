<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="intro-section site-blocks-cover innerpage" style="background-image: url('static/images/hero_1.jpg');">
      <div class="container">
        <div class="row align-items-center text-center border">
          <div class="col-lg-12 mt-5" data-aos="fade-up">
            <h1>Bài viết theo danh mục ${cat.name}</h1>
            <p class="text-white text-center">
              <a href="/news/list">Trang chủ</a>
              <span class="mx-2">/</span>
              <span>Bài viết</span>
            </p>
          </div>
        </div>
      </div>
    </div>

    

    <div class="site-section">
        <div class="container">
            <div class="row">
            	<c:forEach var="n" items="${newss}">
                <div class="col-md-6 mb-5 mb-lg-5 col-lg-4">
                    <div class="blog-entry">
                    <a href="/news/detail/${n.id}" class="img-link">
                        <img src="<c:url value='/static/images/news/${n.image}' /> " alt="Image" class="img-fluid">
                    </a>
                    <div class="blog-entry-contents">
                        <h3><a href="/news/detail/${n.id}">${n.title}</a></h3>
                        <div class="meta">Posted by <a href="#">${n.account.name}</a> In <a href="#">${cat.name}</a></div>
                    </div>
                    </div>
                </div>  
                </c:forEach>        
            </div>

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
        </div>
    </div>