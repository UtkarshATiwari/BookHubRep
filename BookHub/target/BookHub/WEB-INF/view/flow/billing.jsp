<%@ include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing</title>
</head>
<body>
	<div class="row">
		<div class="col-sm-6">
			<div class="well">
				<form:form role="form" method="post" commandName="user"
					action="addUser">
					<div class="form-group">
						<label>Name</label>
						<form:input class="form-control" path="fullname" required="true" />
					</div>
					<div class="form-group">
						<label>Shipping address</label>
						<textarea class="form-control" rows="5" id="comment"></textarea>
					</div>
					<div class="form-group">
						<label>Email ID</label>
						<form:input class="form-control" path="email" />
						<form:errors path="email" cssClass="error" />
					</div>
					<div class="form-group">
						<label>Contact number</label>
						<%-- 						<form:input class="form-control" required="true" /> --%>
					</div>
					<div class="form-group">
						<button type="button" class="btn btn-info" value="OK"
							onclick="return Validate()">OK</button>
						<button type="reset" class="btn btn-info" value="reset">Reset</button>
					</div>
					</form:form>
			</div>
		</div>
		<div class="verticalLine">
		<div class="col-sm-6"></div></div>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>