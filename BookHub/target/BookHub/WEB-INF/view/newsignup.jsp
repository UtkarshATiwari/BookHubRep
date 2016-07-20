<%@ include file="header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	.error
	{
	color:red;
	}
</style>
</head>
<body>
<div class ="row">
<div class ="col-sm-3"></div>
<div class ="col-sm-6">
<div class="well well-lg">

<form:form method="post" action="addUser" commandName="user" >
<table>
<tr><td>Full Name:</td> <tr><td> <form:input path="fullname" required = "true" /></td></tr>
<tr><td>User Name:</td> <tr><td> <form:input path="username" /><form:errors path="username" cssClass="error" /></td></tr>
<tr><td>Password:</td> <tr><td> <form:password  path="password" /><form:errors path="password" cssClass="error" /></td></tr>
<tr><td>E-mail:</td> <tr><td> <form:input path="email" /><form:errors path="email" cssClass="error" /></td></tr>
<tr><td>Contact No:</td> <tr><td> <form:input path="contactno" required = "true" /></td></tr>
 

</table>
<input type="submit" value="SignUp"><br>
</form:form>
</div>
</div>
<div class ="col-sm-3"></div>
</div>

</body>
<%@ include file="footer.jsp" %>
</html>