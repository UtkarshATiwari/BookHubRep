<%@ include file="header.jsp" %>   
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"   %> 
 <%@page isELIgnored="false"  %>   

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Category</title>
</head>
<body>
<div class ="row">
<div class ="col-sm-3"></div>
<div class ="col-sm-6">
<div class="well well-lg">
<form:form method="Post" action="${category.categoryId}" role="form" commandName="category">
 
<div class="form-group">
<label>CategoryId:</label><form:input path="categoryId" class="form-control"/>
</div>
<div class="form-group">
<label>CategoryName:</label><form:input path="name" class="form-control"/>
</div>
<div class="form-group">
<label>Description:</label> <form:input  path="description" class="form-control"/>
</div>

<br>
<input type="submit" value="Edit Category" class="btn btn-warning">
</form:form>
</div>
</div>
<div class ="col-sm-3"></div>
</div>


<%@ include file="footer.jsp" %>
</body>
