<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<div>
	<main>
		<div class="container mt-5">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="text-center mt-4">
						<img style="height: 100px; width: 100px;" src="<c:url value='/static/images/complete.png' />" />
						<p class="lead">${message}</p>
						<a href="/"><i class="fas fa-arrow-left mr-1"></i>Trở về trang
							chủ</a>
					</div>
				</div>
			</div>
		</div>
	</main>
</div>