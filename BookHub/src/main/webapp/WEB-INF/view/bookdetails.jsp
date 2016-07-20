<%@ include file="header.jsp" %>   
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"   %> 
 <%@page isELIgnored="false"  %>   

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details Of Book</title>
</head>


<body>
<img style="width:100px;height:100px" alt="no image" src="${pageContext.request.contextPath}/resources/images/${product.productId}.jpg"></img>
<%-- <form:form method="GET" action="${product.productId}" commandName="product"> --%>
<table>
<tr>
<td>Product Id:</td>  <td>${product.productId}</td></tr>
<tr><td>Category Name:</td>  <td>${product.name}</td></tr>
<tr><td>Description:</td>  <td>${product.description}</td></tr>
<tr><td>Product Price:</td>  <td>Rs. ${product.price}</td></tr>
<tr><td>Author:</td>  <td>${product.author}</td></tr>
</table>

			<form:form method="POST" action="${pageContext.request.contextPath}/user/addtocart?productId=${product.productId}" modelAttribute="cart" >
			
			
<%-- 			<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/> --%>
			
			<input type="hidden" value="${product.productId}"/>
			 
			<span class="h5"> Quantity : <form:input path="quantity" type="number" style="width:15%" /> </span>
			<br/>
		
			<input type="submit"   value="Add" />
			</form:form>
<%-- </form:form> --%>

</body>
</html>
<%@ include file="footer.jsp" %>