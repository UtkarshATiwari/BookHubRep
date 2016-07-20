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
<title>Add Book Supplier</title>
<style>
.error{
	color:red; font-weight:bold;
}
</style>
</head>
<body>
<h2> Add Suppliers of Book Here</h2>
<div class ="row">
<div class ="col-sm-3"></div>
<div class ="col-sm-6">
<div class="well well-lg">
<form:form method="POST" action="addSupplier" role="form" modelAttribute="supplier">
 
<div class="form-group">
	Supplier Name: 
	<form:input path="supplierName" class="form-control"/>
	<form:errors path="supplierName" cssClass="error" />
</div>
<div class="form-group">	
	Contact Person:
	<form:input  path="contactPerson" class="form-control"/><form:errors path="contactPerson" cssClass="error" />
</div>
<div class="form-group">
	Contact No.:
	<form:input  path="contactNo" class="form-control"/>
	<form:errors path="contactNo" cssClass="error" />
</div>
<div class="form-group">	
	Supplier Address: 
	<form:input  path="supplieradd" class="form-control"/>
</div>
<div class="form-group">	
	Description: 
	<form:input  path="description" class="form-control"/>
</div>	
<br>
<input type="submit" value="Add Supplier" class="btn btn-warning">

</form:form>
</div>
</div>
<div class ="col-sm-3"></div>
</div>
</body>
</html>
<%@ include file="footer.jsp" %>