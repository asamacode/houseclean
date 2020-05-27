<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="site-section block-3">
      <div class="container">
        
        <div class="mb-5">
          <h3 class="section-subtitle">Danh sách</h3>
          <h2 class="section-title mb-4">DỊCH VỤ <strong>NỔI BẬT</strong></h2>
        </div>

        <div class="projects-carousel-wrap">
          <div class="owl-carousel owl-slide-3">
          	<c:forEach var="s" items="${s_special}">
            <div class="project-item">
              <div class="project-item-contents">
                <a href="/services/detail/${s.id}">
                  <span class="project-item-category">${s.name}</span>
                  <h2 class="project-item-title">
                    ${s.introduce} 
                  </h2>
                </a>
              </div>
              <img src="static/images/services/${s.image}" alt="Image" class="img-fluid">
            </div>
            </c:forEach>
          </div>
        </div>

      </div>
    </div>