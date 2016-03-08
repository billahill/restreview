<%@include file="taglib.jsp"%>

<tiles:insertDefinition name="layout">
    <tiles:putAttribute name="body">
        <!-- Headerwrap -->
        <div id="headerwrap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <h2>This is the admin zone! </h2>				
                    </div>
                    <div class="col-lg-8 col-lg-offset-2 himg">
                        <!--<img src="assets/img/browser.png" class="img-responsive">-->
                    </div>
                </div><!-- /row -->
            </div> <!-- /container -->
        </div>
        <!-- end of headerwraper -->

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