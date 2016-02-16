<%@ include file="/WEB-INF/view/include/header.jsp"%>
<section>
	<div class="jumbotron">
		<div class="container">
			<h2>User Setting Screen</h2>
			<p>Here you can list, add, edit or remove properties of given
				user.</p>
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

<h3>List of his books:</h3>
<c:if test="${!empty bookList}">
	<section>
		<table class="table table-hover">
			<tr>
				<th>Title</th>
				<th>Description</th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach items="${bookList}" var="book">
				<tr>
					<td>${book.title}</td>
					<td>${book.description}</td>
					<td><a
						href="<spring:url value="/admin/detail/book/edit/{userid}/{bookid}"><spring:param name="userid" value="${user.id}" /><spring:param name="bookid" value="${book.id}" /></spring:url>"
						class="label label-info"><span
							class="glyphicon glyphicon-edit" /></span>Edit</a></td>
					<td><a
						href="<spring:url value="/admin/detail/book/delete/{userid}/{bookid}"><spring:param name="userid" value="${user.id}" /><spring:param name="bookid" value="${book.id}" /></spring:url>"
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
				<a
					href="<spring:url value="/admin/detail/book/add/{id}"><spring:param name="id" value="${user.id}" /></spring:url>"
					class="btn btn-info btn-md"><span
					class="glyphicon glyphicon-plus" /></span>Add new book</a>
			</div>
		</div>
	</div>
</section>






<h3>List of his accounts:</h3>
<c:if test="${!empty accountList}">
	<section>
		<table class="table table-hover">
			<tr>
				<th>Name</th>
				<th>Account Prefix</th>
				<th>Account Number</th>
				<th>Bank Code</th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach items="${accountList}" var="account">
				<tr>
					<td>${account.name}</td>
					<td>${account.accountPrefix}</td>
					<td>${account.accountNumber}</td>
					<td>${account.bankCode}</td>
					<td><a
						href="<spring:url value="/admin/detail/account/edit/{userid}/{accountid}"><spring:param name="userid" value="${user.id}" /><spring:param name="accountid" value="${account.id}" /></spring:url>"
						class="label label-info"><span
							class="glyphicon glyphicon-edit" /></span>Edit</a></td>
					<td><a
						href="<spring:url value="/admin/detail/account/delete/{userid}/{accountid}"><spring:param name="userid" value="${user.id}" /><spring:param name="accountid" value="${account.id}" /></spring:url>"
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
				<a
					href="<spring:url value="/admin/detail/account/add/{id}"><spring:param name="id" value="${user.id}" /></spring:url>"
					class="btn btn-info btn-md"><span
					class="glyphicon glyphicon-plus" /></span>Add new account</a>
			</div>
		</div>
	</div>
</section>


<h3>User prefferences:</h3>
<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
				<form:form method="POST"
					action="/phase7/admin/detail/prefferences/${user.id}"
					commandName="user">
					<fieldset>
						<div class="form-group">
							<label class="control-label" for="userId">Favourite book:</label>
							<div class="">
								<!-- Zde jako path se bere objekt formulare a jako id se pak vola getter tohoto objektu 
                                     pro ziskani aktualniho nastaveni-->
								<form:select id="id" path="favouriteBook">
									<form:option value="" label="--- Select ---" />
									<!-- U options items muze byt vlozen list objektu, pak pro jeden objekt tohoto listu 
                                         itemValue vola getter oznacene metody pro ziskani hodnot (zde getId())
                                         itemLabel vola getter oznacene metody pro ziskani popisku (zde getTitle())
                                         <form:options items="${bookList}" itemValue="id" itemLabel="title" />
                                         Ale zde vyuzivame convertor pro prevod na string, proto staci vlozit bookList
                                    -->
									<form:options items="${bookList}" />
								</form:select>
								<form:errors path="favouriteBook" cssClass="text-danger" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label" for="userId">Preffered
								Account:</label>
							<div class="">
								<form:select id="id" path="prefferedAccount">
									<form:option value="" label="--- Select ---" />
									<form:options items="${accountList}" />
								</form:select>
								<form:errors path="prefferedAccount" cssClass="text-danger" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-10">
								<input type="submit" id="btnSet" class="btn btn-primary"
									value="Set prefferences" />
							</div>
						</div>
					</fieldset>
				</form:form>
			</div>
		</div>
	</div>
</section>





<section>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
				<a href="<spring:url value="/admin/"></spring:url>"
					class="btn btn-info btn-lg">Back</a>
			</div>
		</div>
	</div>
</section>
<%@ include file="/WEB-INF/view/include/footer.jsp"%>
