
<%@ page isELIgnored="false" %> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>

<head>
<style type="text/css">

body {
	margin-left: 10%;
	margin-right: 10%;
}
h3
{
font-family : Comic Sans MS;
text-align:center;
font-size:200%;
color : Orange;
}
table, th, td {
    border: 1px solid black;
    padding: 3px;
    
   
    
}

</style>
</head>





<body>
<!-- <div class ="row"> -->
<!-- <div class ="col-sm-2"></div> -->
<!-- <div class ="col-sm-8"> -->
<!-- <div class="well well-lg"> -->
<h3>List of Existing Suppliers</h3>
<!-- <div class="table"/> -->
<!-- <table width="100%" border="1" style="padding: 2px;cell-spacing:10pt"> -->


<div class= well>
	<div class="table table-responsive">
	<table class="table table-bordered" >
	
<thead>
<tr>
 <th>
 Supplier ID
 </th>
 <th>
 Supplier Name
 </th>
  <th>
 Contact Person
 </th>
  <th>
 Contact Name
 </th>
  <th>
 Supplier Address
 </th>
 <th>
 Description
 </th>
 <th> </th>
 <th> </th>
 </tr>
</thead>
</tbody>
<c:forEach items="${suppliers}" var="supplier">
<tr>
<td>${supplier.supplierId}</td>
<td>${supplier.supplierName}</td>
<td>${supplier.contactPerson}</td>
<td>${supplier.contactNo}</td>
<td>${supplier.supplieradd}</td>
<td>${supplier.description}</td>
<td><a href="<spring:url value='/supplier/edit/${supplier.supplierId}'/>" class="btn btn-default">Edit</a></td>
<td><a href="<spring:url value='/supplier/delete/${supplier.supplierId}'/>" class="btn btn-default">Delete</a></td>
</tr>
</c:forEach>
<!-- </table> -->
</tbody>
	</table>
		</div>
</div>
<p>
	<a href="addSupplierPage" class="btn btn-warning">Add New Supplier</a>
</p>
<!-- 	</div> -->
<!-- </div> -->
<!-- <div class ="col-sm-2"></div> -->
<!-- </div> -->
</body>

 <%@include file="footer.jsp" %>