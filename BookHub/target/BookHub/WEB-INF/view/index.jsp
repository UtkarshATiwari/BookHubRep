
<%@ include file="header.jsp" %>


<style type="text/css">

body {
	margin-left: 10%;
	margin-right: 10%;
}
h2
{
font-family : Comic Sans MS;
text-align:center;
font-size:400%;
color : Orange;
}

</style>




<body>
<div align="center">
<div class="container">

  	<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
    
      <div class="item active">
        <img src="<spring:url value="/resources/images/catchingfire.jpg" />" alt="catching fire" style="width:550px; height:400px" />
      </div>

      <div class="item">
        <img src="<spring:url value="/resources/images/lord of the ring.JPG" />" alt="lord of the ring" style="width:550px; height:400px" />
      </div>
    
      <div class="item">
        <img src="<spring:url value="/resources/images/secret-museum.jpg" />" alt="secret-museum" style= "width:550px ; height:400px"/>
      </div>
      
	 </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    
    
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    
  
  </div>
</div>

  <div class="container">
  <h2 align="center">Image Gallery</h2>
  
  <br><br>          
  <div class="row">
    <div class="col-md-4">
      <a href="<spring:url value="/resources/images/catchingfire.jpg" />" class="circle">
       <img src="<spring:url value="/resources/images/catchingfire.jpg" />" class="img-circle" alt="Catching Fire" width="304" height="236" >
       <p> 
       <b style="font-size:20px">Catching Fire :</b> No Matter what application is, the new inspiron laptops are packed with the latest technology.
       </p>
      </a>
    </div>
    <div class="col-md-4">
      <a href="<spring:url value="/resources/images/lord of the ring.JPG" />" class="circle">
       <img src="<spring:url value="/resources/images/lord of the ring.JPG" />" class="img-circle" alt="Lord Of THe Ring" width="304" height="236" />
       <p><b style="font-size:20px">Lord Of The Ring:</b> Meet the performance-packed entertainment center you can slip in backpack or briefcase.</p>
      </a>
    </div>
    <div class="col-md-4">
      <a href="<spring:url value="/resources/images/secret-museum.jpg" />" class="circle">
         <img src="<spring:url value="/resources/images/secret-museum.jpg" />" class="img-circle" alt="Secret Museum" width="304" height="236" />
         <p><b style="font-size:20px">Secret Museum:</b> Complete technical specification for MacBook Pro, Including processor speed and hard drive space</p>
      </a>
    </div>
  </div>
</div>
</div>
<%@ include file="footer.jsp" %>
</body>

<html>