<%@ include file="header.jsp" %>  
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"   %> 
    <%@page isELIgnored="false"  %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<div class ="row">
<div class ="col-sm-3"></div>
<div class ="col-sm-6">
<div class="well well-lg">
<form:form method="POST" action="perform_login" commandName="user" >
 <div class="error">${error}</div>
<table>
<tr>
<td>UserName:</td> <tr><td><input  required="required" name="username" /><form:errors path="username" cssClass="error" /></td></tr>
<td>Password:</td> <tr><td><input required="required" type="password" name="password" /><form:errors path="password" cssClass="error" /></td></tr>

</tr>
</table>
<br>
<input type="submit" value="SignIn">

</form:form>
</div>
</div>
<div class ="col-sm-3"></div>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>