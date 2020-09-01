<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Your todo-list:
<br/>

<table>
	<caption>Your todos are</caption>
	<thead>
		<tr>
			<th>Description</th>
			<th>Target Date</th>
			<th>Is Completed</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${todos}" var="todo">
			<tr>
				<td>${todo.desc}</td>
				<td>${todo.targetDate}</td>
				<td>${todo.done}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<br/>
<a class="button" href="/add-todo">Add</a>
</body>
</html>