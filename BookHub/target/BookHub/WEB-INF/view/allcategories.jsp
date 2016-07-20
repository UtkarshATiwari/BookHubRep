<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>

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
<div class="well well-lg">
	<h3>List of Existing Categories</h3>
	<!-- <div class="table"/> -->
	<div class= well>
	<div class="table table-responsive">
	<table class="table table-bordered" >
	<thead>
		<tr>
			<th>ID</th>
			<th>Category Name</th>
			<th>Description</th>
			<th></th>
			<th></th>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${categories}" var="category">
			<tr>
				<td>${category.categoryId}</td>
				<td>${category.name}</td>
				<td>${category.description}</td>
				<td><a
					href="<spring:url value='/category/edit/${category.categoryId}'/>" class="btn btn-default">Edit</a></td>
				<td><a
					href="<spring:url value='/category/delete/${category.categoryId}'/>" class="btn btn-default">Delete</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
		</div>
</div>
<p>
		<a href="addCategoryPage" class="btn btn-warning">Add New Category</a>
	</p>

<!-- <div class ="col-sm-3"></div> -->
</div>
</div>
<!-- </div> -->

</body>

<%@include file="footer.jsp"%>