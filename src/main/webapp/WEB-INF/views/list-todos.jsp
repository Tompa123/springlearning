<%@ include file="common/header.jspf" %>

<body>
	<%@ include file="common/navigation.jspf" %>
	<div class="container">
		<table class="table">
			<caption><spring:message code="todo.caption"/></caption>
			<thead>
				<tr>
					<th><spring:message code="list-todos.description"/></th>
					<th><spring:message code="list-todos.targetDate"/></th>
					<th><spring:message code="list-todos.completed"/></th>
					<th/>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${todos}" var="todo">
					<tr>
						<td>${todo.desc}</td>
						<td><fmt:formatDate pattern="dd/MM/yyyy" value="${todo.targetDate}"/></td>
						<td>${todo.done}</td>
						<td>
							<a href="/update-todo?id=${todo.id}" class="btn btn-success">Update</a>
							<a href="/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<div>
			<a class="btn btn-success" href="/add-todo"><spring:message code="button.add"/></a>
		</div>
	</div>

<%@ include file="common/footer.jspf" %>
</body>
</html>