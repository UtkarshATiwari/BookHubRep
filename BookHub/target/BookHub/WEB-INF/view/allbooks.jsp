<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
     <%@include file="header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
h3
{
font-family : Comic Sans MS;
text-align:center;
font-size:200%;
color : Orange;
}
</style>
</head>




<body>
<div class ="row">
<div class ="col-sm-3"></div>
<div class ="col-sm-6">
<div class="well well-lg">
<h3>List of Available Books</h3>

<table width="70%">
<!-- <tr> -->
<!-- <td>Book ID</td> -->
<!-- <td>Book Title</td> -->
<!-- <td>Book Author</td> -->
<!-- <td>Book Price</td> -->
<!-- </tr> -->
<c:forEach items="${booklist}" var="book"  >


<tr>
<%-- <td><c:out value="${book.productId}" /></td> --%>
<td><h3><a href="bookdetails/${book.productId}"><c:out value="${book.name}" /></a></h3></td>
</tr>
<tr>
<%-- <td><c:out value="${book.title}" /></td> --%>
<td>Rs.<c:out value="${book.price}" /></td>
</tr>
</c:forEach>
</table>
</div>
</div>
<div class ="col-sm-3"></div>
</div>
</body>
</body>
</html>
 <%@include file="footer.jsp" %>