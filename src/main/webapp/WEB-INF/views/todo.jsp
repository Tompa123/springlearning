<%@ include file="common/header.jspf" %>
<body>
<div class="container">
	<h1><spring:message code="todo.add"/></h1>

	<form:form method="post" modelAttribute="todo">
		<form:hidden path="id"/>
		<fieldset class="form-group">
			<form:label path="desc"><spring:message code="list-todos.description"/></form:label>
			<form:input path="desc" type="text" class="form-control" required="required"/>
			<form:errors path="desc" cssClass="text-warning"/>
		</fieldset>
		
		<fieldset class="form-group">
			<form:label path="targetDate"><spring:message code="list-todos.targetDate"/></form:label>
			<form:input path="targetDate" type="text" class="form-control" required="required"/>
			<form:errors path="targetDate" cssClass="text-warning"/>
		</fieldset>
		
		<spring:message code="button.add" var="submitCaption"/>
		<input type="submit" class="btn btn-success" value="${submitCaption}"/>
	</form:form>
</div>

<%@ include file="common/footer.jspf" %>
</body>
</html>