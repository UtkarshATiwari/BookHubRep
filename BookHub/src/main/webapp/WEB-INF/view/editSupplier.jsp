<%@ include file="header.jsp" %>   
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"   %> 
 <%@page isELIgnored="false"  %>   

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Supplier</title>
</head>
<body>
<div class ="row">
<div class ="col-sm-3"></div>
<div class ="col-sm-6">
<div class="well well-lg">
<form:form method="Post" action="${supplier.supplierId}" role="form" commandName="supplier">
 

<div class="form-group">
<label>Supplier Id:</label> <form:input path="supplierId" class="form-control"/>
</div>
<div class="form-group">
<label>Supplier Name:</label><form:input path="supplierName" class="form-control"/>
</div>
<div class="form-group">
<label>Contact Person:</label><form:input path="contactPerson" class="form-control"/>
</div>
<div class="form-group">
<label>Contact Number:</label><form:input path="contactNo" class="form-control"/>
</div>
<div class="form-group">
<label>Supplier Address:</label><form:input path="supplieradd" class="form-control"/>
</div>
<div class="form-group">
<label>Description:</label><form:input  path="description" class="form-control"/>
</div>


<br>
<input type="submit" value="Edit Category" class="btn btn-warning">

</form:form>
</div>
</div>
<div class ="col-sm-3"></div>
</div>

</body>
<%@ include file="footer.jsp" %>