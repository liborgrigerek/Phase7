<%@ include file="/WEB-INF/view/include/header.jsp"%>

<section>
	<div class="jumbotron">
		<div class="container">
			<h2>User Management Screen</h2>
			<p>Here you can list, add, edit or remove users.</p>
		</div>
	</div>
</section>
<section>
	<div class="center-block">
		<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
			<p>You have to login first.</p>
			<c:url var="loginUrl" value="/login" />
			<form action="${loginUrl}" method="post" class="form-horizontal">
				<c:if test="${param.error != null}">
					<div class="alert alert-danger">
						<p>Invalid username and password.</p>
					</div>
				</c:if>
				<c:if test="${param.logout != null}">
					<div class="alert alert-success">
						<p>You have been logged out successfully.</p>
					</div>
				</c:if>
				<div class="input-group input-sm">
					<label class="input-group-addon" for="username"><i
						class="fa fa-user">User Name:</i></label> <input type="text"
						class="form-control" id="username" name="ssoId"
						placeholder="Enter Username" required>
				</div>
				<div class="input-group input-sm">
					<label class="input-group-addon" for="password"><i
						class="fa fa-lock"><span>Password:</span> </i></label> <input
						type="password" class="form-control" id="password" name="password"
						placeholder="Enter Password" required>
				</div>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />

				<div class="form-actions">
					<input type="submit" class="btn btn-block btn-primary btn-default"
						value="Log in">
				</div>
			</form>
		</div>
	</div>
</section>

<%@ include file="/WEB-INF/view/include/footer.jsp"%>
