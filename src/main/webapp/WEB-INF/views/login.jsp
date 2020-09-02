<%@ include file="common/header.jspf" %>
<body>
<%@ include file="common/navigation.jspf" %>
<div class="container">
	<form action="/login" method="post">
		<p><font color="red">${errorMessage}</font></p>
		Enter your name <input type="text" name="name" class="form-control"/><br/>
		Enter ur password <input type="password" name="password" class="form-control"> 
		<br/>
		<input type="submit" value="Login" class="btn btn-success"/>
	</form>
</div>

<%@ include file="common/footer.jspf" %>
</body>
</html>