
<%@include file="taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <link rel="shortcut icon" href="${rootURL}resources/solidtemplate/ico/favicon.ico">
        
<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
      <link href="${rootURL}resources/solidtemplate/css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${rootURL}resources/solidtemplate/css/style.css" rel="stylesheet">
        <link href="${rootURL}resources/solidtemplate/css/font-awesome.min.css" rel="stylesheet">
        <title>Login</title>
  </head>

  <body>

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="welcome">YOUR PROJECT NAME.</a>
        </div>
        <div class="navbar-collapse collapse navbar-right">
          <ul class="nav navbar-nav">
            <li><a href="welcome">HOME</a></li>
            <li><a href="about">ABOUT</a></li>
            <li><a href="contact">CONTACT</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">PAGES <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">BLOG</a></li>
                <li><a href="#">SINGLE POST</a></li>
                <li><a href="#">PORTFOLIO</a></li>
                <li><a href="#">SINGLE PROJECT</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

	<!-- *****************************************************************************************************************
	 BLUE WRAP
	 ***************************************************************************************************************** -->
	<div id="blue">
	    <div class="container">
			<div class="row">
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /blue -->
	<!-- *****************************************************************************************************************
	 LOGIN FORMS
	 ***************************************************************************************************************** -->
  
                     <c:if test="${param.error != null}">
                    <div class="alert alert-danger">
                        Invalid UserName and Password.
                    </div>
                </c:if>
                <c:if test="${param.logout != null}">
                    <div class="alert alert-success">
                        You have been logged out.
                    </div>
                </c:if>	
	 <div class="container mtb">
	 	<div class="row">
	 		<div class="col-lg-4">
	 			<h4>Sign into our portal</h4>
	 			<div class="hline"></div>
		 			
		 			<form:form id="loginForm" method="post" action="${rootURL}login" modelAttribute="user"
                                       accept-charset="UTF-8" role="form">
					  <div class="form-group">
					    <label for="username">Email address</label>
					    <input type="email" class="form-control" id="username" name ="username">
					  </div>
					  <div class="form-group">
					    <label for="password">Password</label>
					    <input type="password" class="form-control" id="password" name="password">
					  </div>
					  <button type="submit" class="btn btn-theme" value="Login">Submit</button>
					</form:form>
                                          <div class="pull-right">
                                              <a href="${rootURL}cadastrar" class="btn-link">
                                                  Register
                                              </a>
                                          </div>
			</div><! --/col-lg-8 -->
	 		
	 	</div><! --/row -->
	 </div><! --/container -->


	<!-- *****************************************************************************************************************
	 FOOTER
	 ***************************************************************************************************************** -->
	 <div id="footerwrap">
	 	<div class="container">
		 	<div class="row">
		 		<div class="col-lg-4">
		 			<h4>About</h4>
		 			<div class="hline-w"></div>
		 			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
		 		</div>
		 		<div class="col-lg-4">
		 			<h4>Social Links</h4>
		 			<div class="hline-w"></div>
		 			<p>
		 				<a href="#"><i class="fa fa-dribbble"></i></a>
		 				<a href="#"><i class="fa fa-facebook"></i></a>
		 				<a href="#"><i class="fa fa-twitter"></i></a>
		 				<a href="#"><i class="fa fa-instagram"></i></a>
		 				<a href="#"><i class="fa fa-tumblr"></i></a>
		 			</p>
		 		</div>
		 		<div class="col-lg-4">
		 			<h4>Our Bunker</h4>
		 			<div class="hline-w"></div>
		 			<p>
		 				Some Ave, 987,<br/>
		 				23890, New York,<br/>
		 				United States.<br/>
		 			</p>
		 		</div>
		 	
		 	</div><! --/row -->
	 	</div><! --/container -->
	 </div><! --/footerwrap -->
	 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="${rootURL}resources/solidtemplate/js/bootstrap.min.js"></script>
	<script src="${rootURL}resources/solidtemplate/js/retina-1.1.0.js"></script>
	<script src="${rootURL}resources/solidtemplate/js/jquery.hoverdir.js"></script>
	<script src="${rootURL}resources/solidtemplate/js/jquery.hoverex.min.js"></script>
	<script src="${rootURL}resources/solidtemplate/js/jquery.prettyPhoto.js"></script>
  	<script src="${rootURL}resources/solidtemplate/js/jquery.isotope.min.js"></script>
  	<script src="${rootURL}resources/solidtemplate/js/custom.js"></script>
        <script src="${rootURL}resources/solidtemplate/js/notify.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>

  </body>
</html>
