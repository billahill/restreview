<%-- 
    Document   : notfound
    Created on : 22/abr/2015, 14:30:23
    Author     : Carlos
--%>

<%@include file="taglib.jsp"%>

<tiles:insertDefinition name="layout">
    <tiles:putAttribute name="body">
         <!-- *****************************************************************************************************************
         BLUE WRAP
         ***************************************************************************************************************** -->
        <div id="blue">
            <div class="container">
                <div class="row">
                    <h1>
                        ${message}
                    </h1>
                </div><!-- /row -->
            </div> <!-- /container -->
        </div><!-- /blue -->
        <!-- logos -->
        <div id="service">
            <div class="container">
                <div class="row centered">
                    <div class="col-md-4">
                        <i class="fa fa-heart-o"></i>
                        <h4>Handsomely Crafted</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                        <p><br/><a href="#" class="btn btn-theme">More Info</a></p>
                    </div>
                    <div class="col-md-4">
                        <i class="fa fa-flask"></i>
                        <h4>Retina Ready</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                        <p><br/><a href="#" class="btn btn-theme">More Info</a></p>
                    </div>
                    <div class="col-md-4">
                        <i class="fa fa-trophy"></i>
                        <h4>Quality Theme</h4>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                        <p><br/><a href="#" class="btn btn-theme">More Info</a></p>
                    </div>		 				
                </div>
            </div><!--/container -->
        </div><!--/service -->
        <!-- end of logos -->
    </tiles:putAttribute>
</tiles:insertDefinition>