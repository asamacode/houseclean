<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="site-section bg-light">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 mb-5 text-left">
				<h3 class="section-subtitle">Blog</h3>
				<h2 class="section-title text-black mb-4">News &amp; Updates</h2>
			</div>
		</div>
		<div class="row">
			<c:forEach var="n" items="${n_newest}">
			<div class="col-md-6 mb-4 mb-lg-0 col-lg-4">
				<div class="blog-entry">
					<a href="/news/detail/${n.id}" class="img-link"> <img
						src="static/images/news/${n.image}" alt="Image" class="img-fluid">
					</a>
					<div class="blog-entry-contents">
						<h3>
							<a href="/news/detail/${n.id}">${n.title}</a>
						</h3>
						<div class="meta">
							Posted by <a href="#">${n.account.name}</a> In <a href="#">${n.newsCategory.name}</a>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</div>