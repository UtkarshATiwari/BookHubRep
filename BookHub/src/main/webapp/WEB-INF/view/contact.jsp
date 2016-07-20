
    <%@ include file="header.jsp" %>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
 <head>
 <title> Contact Us</title>
 </head>



<div class="container">
<div class="row">
 
  <form role="form" action="" method="post" >
    <div class="col-lg-6">
      
      <div class="form-group">
        <label for="InputName">Your Name</label>
        <div class="input-group">
          <input type="text" class="form-control" name="InputName" id="InputName" placeholder="Enter Name" required>
          <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span></div>
      </div>
      <div class="form-group">
        <label for="InputEmail">Your Email</label>
        <div class="input-group">
          <input type="email" class="form-control" id="InputEmail" name="InputEmail" placeholder="Enter Email" required  >
          <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span></div>
      </div>
      <div class="form-group">
        <label for="InputMessage">Message</label>
        <div class="input-group"
>
          <textarea name="InputMessage" id="InputMessage" class="form-control" rows="5" required></textarea>
          <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span></div>
      </div>
      <div class="form-group">
        <label for="InputReal">What is 4+3? (Simple Spam Checker)</label>
        <div class="input-group">
          <input type="text" class="form-control" name="InputReal" id="InputReal" required>
          <span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span></div>
      </div>
      <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right">
    </div>
  </form>
  <hr class="featurette-divider hidden-lg">
  <div class="col-lg-5 col-md-push-1">
    <address>
    <h2>Regional Office</h2>
    <h3>Mumbai</h3>
    <p>C/308 Sai Smriti Bldg.  <br>
					Vardhman Park Tulinj Rd.NSP(E)<br>
					Mumbai-401209<br>
					<span class="glyphicon glyphicon-phone-alt"></span>
      				Cell No.: 7276295021<br>
     				<span class="glyphicon glyphicon-envelope"></span>
     				E-mail: tiwari.utkarsh786@gmail.com
     </p>
     <h3>Bangalore</h3>
     <p>C/308 Sai Smriti Bldg.  <br>
					Vardhman Park Tulinj Rd.NSP(E)<br>
					<span class="glyphicon glyphicon-phone-alt"></span>
      				Cell No.: 7276295021<br>
     				<span class="glyphicon glyphicon-envelope"></span>
     				E-mail: tiwari.utkarsh786@gmail.com
     </p>
    </address>
  </div>
</div>

</div>
<%@ include file="footer.jsp" %>
</body>
<html>