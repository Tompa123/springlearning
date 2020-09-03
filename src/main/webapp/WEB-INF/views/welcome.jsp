<%@ include file="common/header.jspf" %>
<head>
<meta charset="ISO-8859-1">
<title>WOOOO</title>
</head>
<body>
<%@ include file="common/navigation.jspf" %>
<spring:message code="welcome.caption"/> ${name}! <br/>
<spring:message code="welcome.prompt"/><a href="/list-todos">todos.</a>
</body>
</html>