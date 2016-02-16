<%@ include file="/WEB-INF/view/include/header.jsp"%>
<section>
	<div class="jumbotron">
		<div class="container">
			<h2>User Management Screen</h2>
			<p>Here you can list, add, edit or remove bank accounts.</p>
		</div>
	</div>
</section>
<section class="container">
	<form:form method="post"
		action="/phase7/admin/detail/account/add/${user.id}"
		commandName="account" class="form-horizontal">
		<!-- <form:errors path="*" cssClass="alert alert-danger" element="div" /> -->
		<fieldset>
			<legend>Account properties</legend>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="userId">BankName</label>
				<div class="col-lg-10">
					<form:hidden path="id" />
					<form:input id="name" path="name" type="text"
						class="form:input-large" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="userId">Account
					Prefix</label>
				<div class="col-lg-10">
					<form:input id="accountPrefix" path="accountPrefix" type="text"
						class="form:input-large" />
					<form:errors path="accountPrefix" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="email">Account
					Number</label>
				<div class="col-lg-10">
					<form:input id="accountNumber" path="accountNumber" type="text"
						class="form:input-large" />
					<form:errors path="accountNumber" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="telephone">Bank
					Code</label>
				<div class="col-lg-10">
					<form:input id="bankCode" path="bankCode" type="text"
						class="form:input-large" />
					<form:errors path="bankCode" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-10">
					<input type="submit" id="btnAdd" class="btn btn-primary"
						value="Add account" />
				</div>
			</div>
		</fieldset>
	</form:form>
	<a
		href="<spring:url value="/admin/detail/{id}"><spring:param name="id" value="${user.id}" /></spring:url>"
		class="btn btn-info btn-md"></span>Back</a>
</section>

<%@ include file="/WEB-INF/view/include/footer.jsp"%>
