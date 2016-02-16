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
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
				<a href="<spring:url value="/admin/add"></spring:url>"
					class="btn btn-info btn-md"><span
					class="glyphicon glyphicon-plus" /></span>Add new user</a>
			</div>
		</div>
	</div>
</section>
<c:if test="${!empty userList}">
	<section>
		<table class="table table-hover">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Telephone</th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach items="${userList}" var="user">
				<tr>
					<td>${user.lastname},${user.firstname}</td>
					<td>${user.email}</td>
					<td>${user.telephone}</td>
					<td><a
						href="<spring:url value="/admin/detail/{id}"><spring:param name="id" value="${user.id}" /></spring:url>"
						class="label label-info"><span
							class="glyphicon glyphicon-search" /></span>Detail</a></td>
					<td><a
						href="<spring:url value="/admin/edit/{id}"><spring:param name="id" value="${user.id}" /></spring:url>"
						class="label label-info"><span
							class="glyphicon glyphicon-edit" /></span>Edit</a></td>
					<td><a
						href="<spring:url value="/admin/delete/{id}"><spring:param name="id" value="${user.id}" /></spring:url>"
						class="label label-danger"><span
							class="glyphicon glyphicon-remove" /></span>Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</section>
</c:if>
<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
				<a href="<spring:url value="/logout"></spring:url>"
					class="btn btn-info btn-md">Logout</a>
			</div>
		</div>
	</div>
</section>
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
