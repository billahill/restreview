<%-- 
    Document   : about
    Created on : 22/abr/2015, 16:48:11
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
                    <h3>About.</h3>
                </div><!-- /row -->
            </div> <!-- /container -->
        </div><!-- /blue -->


        <!-- *****************************************************************************************************************
         AGENCY ABOUT
         ***************************************************************************************************************** -->

        <div class="container mtb">
            <div class="row">
                <div class="col-lg-6">
                    <img class="img-responsive" src="assets/img/agency.jpg" alt="">
                </div>

                <div class="col-lg-6">
                    <h4>More About Our Agency.</h4>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p>
                    <p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                    <p>Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>
                    <p><br/><a href="contact" class="btn btn-theme">Contact Us</a></p>
                </div>
            </div><!--/row -->
        </div><!--/container -->

        <!-- *****************************************************************************************************************
         TESTIMONIALS
         ***************************************************************************************************************** -->
        <div id="twrap">
            <div class="container centered">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <i class="fa fa-comment-o"></i>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                        <h4><br/>Marcel Newman</h4>
                        <p>WEB DESIGNER - BLACKTIE.CO</p>
                    </div>
                </div><!--/row -->
            </div><!--/container -->
        </div><!--/twrap -->

        <!-- *****************************************************************************************************************
         OUR CLIENTS
         ***************************************************************************************************************** -->
        <div id="cwrap">
            <div class="container">
                <div class="row centered">
                    <h3>OUR CLIENTS</h3>
                    <div class="col-lg-3 col-md-3 col-sm-3">
                        <img src="assets/img/clients/client01.png" class="img-responsive">
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3">
                        <img src="assets/img/clients/client02.png" class="img-responsive">
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3">
                        <img src="assets/img/clients/client03.png" class="img-responsive">
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-3">
                        <img src="assets/img/clients/client04.png" class="img-responsive">
                    </div>
                </div><!--/row -->
            </div><!--/container -->
        </div><!--/cwrap -->

    </tiles:putAttribute>
</tiles:insertDefinition>