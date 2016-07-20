<%@ include file="header.jsp" %>   
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"   %> 
 <%@page isELIgnored="false"  %>   

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All book categories</title>
<style type="text/css">

body {
	margin-left: 10%;
	margin-right: 10%;
}
h2
{
font-family : Comic Sans MS;
text-align:center;
font-size:200%;
color : Orange;
}

</style>
</head>
<h2> Add Category Here </h2>
<body>
<div class ="row">
<div class ="col-sm-3"></div>
<div class ="col-sm-6">
<div class="well well-lg">
<form:form method="Post" role="form" action="addCategory" commandName="category">
<div class="form-group">
<label>CategoryName:</label>
<form:input path="name" class="form-control" required = "true"/>
</div>
<div class="form-group">
<label>Description:</label>
<form:input  path="description" class="form-control" required = "true" />
</div>
<br>
<input type="submit" class="btn btn-default" value="Add Category">

</form:form>
</div>
</div>
<div class ="col-sm-3"></div>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>