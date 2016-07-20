<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
     <%@include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Books </title>
<style type="text/css">
h3
{
font-family : Comic Sans MS;
text-align:left;
font-size:200%;
color : Orange;
}
</style>
</head>




<body>

<h3 style="text-align:center">List of Available Books</h3>
<hr>
<!-- This is my creativity -->
<c:forEach items="${booklist}" var="book"  >
<div class="row">
<div class="col-sm-2">
<div class= "well">
<a href="bookdetails/${book.productId}"><img style="width:100px;height:100px" alt="no image" src="<c:url value="./resources/images/${book.productId}.jpg"/>"></img></a>
</div>
</div>
<div class="col-sm-8">
<div class="well">
<h4><a href="bookdetails/${book.productId}"  ><c:out value="${book.name}"  /></a></h4>
<c:out value="${book.description }" /><br>
<h5>Rs.<c:out value="${book.price}" />/-</h5>
</div>
</div>
</div>
</c:forEach>
</body>
</html>
 <%@include file="footer.jsp" %>
 