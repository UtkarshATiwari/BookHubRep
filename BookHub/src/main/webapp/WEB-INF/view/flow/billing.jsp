<%@ include file="/WEB-INF/view/header.jsp"%>
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
				<form:form role="form" method="post" commandName="cart">
					<div class="form-group">
						<label>Billing Address</label>
						<form:textarea class="form-control" path="address" required="true" />
					</div>
					
					<div class="form-group">
						<label>Phone No</label>
						<form:input class="form-control" path="phoneNo" />
					 
					</div>
					 
					<div class="form-group">
						<input type="submit" name="_eventId_submit" class="btn btn-info" value="Proceed" />
							 
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
<%@ include file="/WEB-INF/view/footer.jsp"%>