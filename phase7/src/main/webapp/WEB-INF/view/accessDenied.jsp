<%@ include file="/WEB-INF/view/include/header.jsp"%>
<section>
	<div class="jumbotron">
		<div class="container">
			<h2>User Management Screen</h2>
			<p>Access page denied.</p>
		</div>
	</div>
</section>
<section>
	<div class="container">
		<p>You are not authorized to access this page.</p>
		<a href="<spring:url value="/login?error"></spring:url>"
			class="btn btn-info btn-md">Back</a>
	</div>
</section>
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
