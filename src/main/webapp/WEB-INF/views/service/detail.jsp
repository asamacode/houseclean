<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="intro-section site-blocks-cover innerpage" style="background-image: url('<c:url value="/static/images/services/${service.image}" />');">
      <div class="container">
        <div class="row align-items-center text-center border">
          <div class="col-lg-12 mt-5" data-aos="fade-up">
            <h1>${service.name}</h1>
            <p class="text-white text-center">
              <span class="mx-2">${service.introduce}</span>
            </p>
          </div>
        </div>
      </div>
    </div>

    

    <section class="site-section">
            <div class="container">
              <div class="row">
                <div class="col-sm-12 blog-content">
                  <p class="lead">${service.description}</p>
                  
                </div>
              </div>
            </div>
          </section>