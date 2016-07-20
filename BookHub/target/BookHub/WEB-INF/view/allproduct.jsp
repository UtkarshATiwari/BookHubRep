
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
<div class ="row">
<!-- <div class ="col-sm-3"></div> -->
<!-- <div class ="col-sm-6"> -->
<!-- <div class="well well-lg"> -->
<h3>List of Existing Product</h3>
<!-- <div class="table"/> -->

<div class= well>
	<div class="table table-responsive">
	<table class="table table-bordered" >
	<thead>

<!-- <table width="100%" border="1" style="padding: 2px;cell-spacing:10pt"> -->
<tr>
 <th>
 Product ID
 </th>
 <th>
 Product Name
 </th>
 <th>
 Description
 </th>
 <th>
 Price
 </th>
 <th> </th>
 <th> </th>
 </tr>
</thead>
<tbody>
<c:forEach items="${products}" var="product">
<tr>
<td>${product.productId}</td>
<td>${product.name}</td>
<td>${product.description}</td>
<td>${product.price}</td>
<td><a href="<spring:url value='/product/edit/${product.productId}'/>" class="btn btn-default">Edit</a></td>
<td><a href="<spring:url value='/product/delete/${product.productId}'/>" class="btn btn-default">Delete</a></td>
</tr>
</c:forEach>
</tbody>
	</table>
		</div>
</div>
<!-- </table> -->
<p>
		<a href="addProduct" class="btn btn-warning">Add New Product</a>
	</p>
	</div>
<!-- </div> -->
<!-- <div class ="col-sm-3"></div> -->
<!-- </div> -->
</body>

 <%@include file="footer.jsp" %>