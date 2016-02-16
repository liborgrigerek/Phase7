<%@ include file="/WEB-INF/view/include/header.jsp"%>
<section>
	<div class="jumbotron">
		<div class="container">
			<h2>Book Management Screen</h2>
			<p>Here you can list, add, edit or remove books.</p>
		</div>
	</div>
</section>
<section>
	<h3>Selected User:</h3>
	<table class="table table-hover">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Telephone</th>
		</tr>
		<tr>
			<td>${user.lastname},${user.firstname}</td>
			<td>${user.email}</td>
			<td>${user.telephone}</td>
		</tr>
	</table>
</section>
<section class="container">
	<form:form method="post"
		action="/phase7/admin/detail/book/add/${user.id}" commandName="book"
		class="form-horizontal">
		<!-- <form:errors path="*" cssClass="alert alert-danger" element="div" /> -->
		<fieldset>
			<legend>Book properties</legend>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="userId">Title</label>
				<div class="col-lg-10">
					<form:hidden path="id" />
					<form:input id="title" path="title" type="text"
						class="form:input-large" />
					<form:errors path="title" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="userId">Description</label>
				<div class="col-lg-10">
					<form:input id="description" path="description" type="text"
						class="form:input-large" />
					<form:errors path="description" cssClass="text-danger" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-lg-offset-2 col-lg-10">
					<input type="submit" id="btnAdd" class="btn btn-primary"
						value="Add book" />
				</div>
			</div>
		</fieldset>
	</form:form>
	<a
		href="<spring:url value="/admin/detail/{id}"><spring:param name="id" value="${user.id}" /></spring:url>"
		class="btn btn-info btn-md"></span>Back</a>
</section>

<%@ include file="/WEB-INF/view/include/footer.jsp"%>
