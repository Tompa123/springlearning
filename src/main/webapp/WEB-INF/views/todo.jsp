<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="container">
	<h1>Add a Todo</h1>

	<form:form method="post" modelAttribute="todo">
		<form:hidden path="id"/>
		<fieldset class="form-group">
			<form:label path="desc">Description</form:label>
			<form:input path="desc" type="text" class="form-control" required="required"/>
			<form:errors path="desc" cssClass="text-warning"/>
		</fieldset>
		
		<input type="submit" class="btn btn-success" value="Add"/>	
	</form:form>
</div>

<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>