<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="layoutError">
	<div id="layoutError_content">
		<main>
			<div class="container mt-5">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="text-center mt-4">
							<img class="mb-4 img-error"
								src="<c:url value='/static/images/error-404-monochrome.svg' /> " />
							<p class="lead">This requested URL was not found on this
								server.</p>
							<a href="/"><i class="fas fa-arrow-left mr-1"></i>Return to
								Dashboard</a>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</div>
