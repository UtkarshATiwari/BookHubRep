<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"   %> 
 
 <%@ page isELIgnored="false" %> 
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@include file="/WEB-INF/view/header.jsp" %>
 
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
<h3>Shopping Cart</h3>
<!-- <div class="table"/> -->

<div class= well>
	<div class="table table-responsive">
	<table class="table table-bordered" >
	<thead>

<!-- <table width="100%" border="1" style="padding: 2px;cell-spacing:10pt"> -->
<tr>
<th>
Book Preview
</th>
  <th>
 Product Name
 </th>
  <th>
 Price
 </th>
 <th>
 Quantity
<!--  <th> -->
<!--  Subtotal -->
<!--  </th> -->
 
 <th> </th>
 <th> </th>
 </tr>
</thead>
<tbody>
<c:forEach items="${cartList}" var="cart">
<tr>
<%-- <td>${cart.cartId}</td> --%>
<td>
<img style="width:50px;height:50px" alt="no image" src="${pageContext.request.contextPath}/resources/images/${cart.productId}.jpg"></img>
</td>
<td>${cart.productName}</td>
<td>${cart.price}</td>
<td>${cart.quantity}
<td><a href="<spring:url value='/cart/edit/${cart.cartId}'/>" class="btn btn-default">Edit</a></td>
<td><a href="<spring:url value='/cart/delete/${cart.cartId}'/>" class="btn btn-default">Delete</a></td>
</tr>
</c:forEach>
</tbody>
	</table>
		</div>
</div>
<!-- </table> -->
<p>
		<a href="${pageContext.request.contextPath}/allbooks" class="btn btn-warning">Continue Shopping</a> 
		<form:form action="collectbillinginfo?cartId=35" >
	 
	 
<!-- 		<input type="hidden" id="cart" name="cart" value=${cart} /> -->
	
			<input type="submit" value="Check Out" />
		</form:form>
		
	</p>
	</div>
<!-- </div> -->
<!-- <div class ="col-sm-3"></div> -->
<!-- </div> -->
</body>

 <%@include file="/WEB-INF/view/footer.jsp" %>