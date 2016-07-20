<%@ include file="header.jsp" %>   
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"   %> 
 <%@page isELIgnored="false"  %>   

<html>
<head>

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


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Book  </title>
</head>
<body>
<h2>Add Books here</h2>

<div class ="col-sm-3"></div>
<div class ="col-sm-6">
<div class="well well-lg">
<form:form method="POST" action="${pageContext.request.contextPath}/admin/addProduct" modelAttribute="product" role="form" enctype="multipart/form-data" >
 
<div class="form-group">
	<label>Book Name:</label>
	<form:input path="name" class="form-control"/>
</div>	
<div class="form-group">
	<label>Book Description:</label>
	<form:input  path="description" class="form-control"/>
</div>
<div class="form-group">
	<label>Book Price:</label>
	<form:input  path="price" class="form-control"/>
</div>
<div class="form-group">	
	<label>Book Author:</label>
	<form:input  path="author" class="form-control"/>
</div>
<div class="form-group">	
	<label>Book Publisher:</label>
	<form:input  path="publisher"  class="form-control"/>
</div>
<div class="form-group">	
<label>Supplier:</label> 
 <form:select path="supplier" class="form-control" >
 <form:options items="${suppliers}"   itemLabel="supplierName" itemValue="supplierId" class="form-control" />

</form:select>
</div> 
<%-- 		<form:input path="category" /> --%>
<div class="form-group">
	<label>Category:</label>  
	 <form:select path="category" id="category"  class="form-control"  >
	<form:options items="${categories}" itemLabel="name" itemValue="categoryId" class="form-control"/>
	</form:select>
</div>	
<%-- 	<form:input path="supplier" /> --%>
<div class="form-group">
<label></>Select Book Image:</label>
<input type="file" name="img" id="img"  path="img" />
</div>


<br>
<input type="submit" value="Save" class="btn btn-warning">

</form:form>
</div>
</div>
<div class ="col-sm-3"></div>
</div>

</body>
</html>
<%@ include file="footer.jsp" %>