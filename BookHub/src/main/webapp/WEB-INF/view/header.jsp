<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Shopping Cart</title>


<link href="<spring:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">


<script type="text/javascript" src="<spring:url value="/resources/js/html5shiv.min.js" />" /></script>
<script type="text/javascript" src="<spring:url value="/resources/js/respond.min.js" />" /></script>
<script type="text/javascript" src="<spring:url value="/resources/jquery/jquery-2.2.4.min.js"/>" /></script>
<script type="text/javascript" src="<spring:url value="/resources/js/bootstrap.min.js" />" /></script>

 


<style type="text/css">
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 80%;
	margin: auto;
}

body {
	margin-left: 10%;
	margin-right: 10%;
}
h1
{
font-family : Comic Sans MS;
text-align:center;
font-size:400%;
color : Orange;
}
</style>
</head>


<body style="background-color: #FFFFE0">

	
	<div class="row">
	<div class="col-sm-3">
	<img class ="img-responsive" width="420" height="515" src="<spring:url value="/resources/images/logo.png"/>"/>
	</div>
	<div class="col-sm-9">
		<h1 style="text-align : center">
			<b> Welcome to Book Hub</b>
		</h1>
	</div>
	</div>
	<br>

<div class="container">
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>


		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="nav navbar-nav" >
			   <li class="active"><a href="${pageContext.request.contextPath}/"> <span class="glyphicon glyphicon-home"></span> Home</a></li>
			     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="allbooks"> Book Gallery <span class="caret"></span></a>
			       <ul class="dropdown-menu">
					 <c:forEach items="${categories}" var="category">
							<li><a href="#">${category.name}</a></li>
					 </c:forEach>
			       </ul>
			    </li>
			

				<li><a href="${pageContext.request.contextPath}/getContactUs">Contact Us</a></li>
				<li><a href="${pageContext.request.contextPath}/getAboutUs">About Us</a></li>
				<li><a href="${pageContext.request.contextPath}/allbooks">All Books</a></li>
			 </ul>
		
				<sec:authorize access="hasRole('ROLE_ADMIN')">
				<ul class="nav navbar-nav navbar-left">
					<li class="dropdown"><a class=" dropdown-toggle" data-toggle="dropdown" href="#"> Books Category <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/admin/addCategoryPage">Add</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/getCategories">View</a></li>
						</ul>
					</li>
					<li class="dropdown"><a class=" dropdown-toggle" data-toggle="dropdown" href="#"> Book Suppliers <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/admin/addSupplierPage">Add</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/getSuppliers">View</a></li>
						</ul>
				    </li>
					<li class="dropdown"><a class=" dropdown-toggle" data-toggle="dropdown" href="#"> Product <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath}/admin/addProduct">Add</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/getProducts">View</a></li>
						</ul>
					</li>
				</ul>
				<div align = "right">
						<ul  class="nav navbar-nav navbar-right">
							<li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
							<li><a href="<c:url value="/perform_logout" />"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
					<!--    <li><a href="javascript:formSubmit()">Logout</a></li>-->
							<li><a href="<c:url value="/admin" />">Admin</a></li>
						</ul>
				</div>
			   </sec:authorize>
			
		       <sec:authorize access="hasRole('ROLE_USER')">
			   <div align = "right">
			   		<ul class="nav navbar-nav navbar-right">
			   			<li><a> <span class="glyphicon glyphicon-user"></span> Welcome: ${pageContext.request.userPrincipal.name}</a></li>
			   			<li><a href="<c:url value="/perform_logout" />"> <span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
<%-- 			   			<li><a href="<c:url value="/user/viewcart?userName=${pageContext.request.userPrincipal.name}" />">Cart</a></li> --%>
			   				<li><a href="<c:url value="/user/viewcart" />">Cart <span class="glyphicon glyphicon-shopping-cart"></span></a></li>
			  		</ul>
			  </div>	
			   </sec:authorize>

			
			<c:if test="${pageContext.request.userPrincipal.name == null}">
				<ul class="nav navbar-nav navbar-right">
						<li><a href="getSignUp"><span class="glyphicon glyphicon-user"></span> Sign Up </a></li>
						<li><a href="${pageContext.request.contextPath}/getLogin">
						<span class="glyphicon glyphicon-log-in"></span> Login </a></li>
				</ul>
			</c:if>
		</div>
	</div>
</nav>
</div>
</body>