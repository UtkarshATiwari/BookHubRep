<%@ include file="header.jsp" %>   
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"   %> 
 <%@page isELIgnored="false"  %>   

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Product</title>
</head>
<body>

<div class ="row">
<div class ="col-sm-3"></div>
<div class ="col-sm-6">
<div class="well well-lg">

<form:form method="Post" action="${product.productId}" role="form" commandName="product">
 
<div class="form-group">
<label>Product Id:</label><form:input path="productId" class="form-control"/>
</div>
<div class="form-group">
<label>Category Name:</label><form:input path="name" class="form-control"/>
</div>
<div class="form-group">
<label>Description:</label><form:input  path="description" class="form-control"/>
</div>
<div class="form-group">
<label>Product Price:</label><form:input  path="price" class="form-control"/>
</div>


<br>
<input type="submit" value="Edit Product" class="btn btn-warning">

</form:form>
</div>
</div>
<div class ="col-sm-3"></div>
</div>

<%@ include file="footer.jsp" %>
</body>
