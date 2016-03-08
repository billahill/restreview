<%-- 
    Document   : newjs
    Created on : 17/mai/2015, 12:23:45
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
                    <h3>Profile.</h3>
                </div><!-- /row -->
            </div> <!-- /container -->
        </div><!-- /blue -->
        <!-- *****************************************************************************************************************
         CONTACT FORMS
         ***************************************************************************************************************** -->

        <div class="container mtb">
            <div class="row">
                <div class="col-lg-8">
                    <h4>My Profile</h4>
                    <div class="hline"></div> 
                     <div class="form-group">
                       <!--  <img src="${image}" height="100" width="100" > -->
                         <c:choose>
                             <c:when test="${userImage == null}">
                                 <a href="upload">Upload an image to your profile.</a>
                             </c:when>

                             <c:otherwise>
                                 <img alt="image" src="<c:url value="${image}"/>" height="200" width="200">
                             </c:otherwise>
                         </c:choose>
                         
                        </div>
                        <div class="form-group">
                            <label for="name">Name: </label>
                            <label id="name">${username}</label>
                        </div>
                        <div class="form-group">
                            <label for="email">Email: </label>
                            <label id="email">${email}</label>
                        </div>
                       
                </div><! --/col-lg-8 -->

                <div class="col-lg-4">
                    <h4>Our Address</h4>
                    <div class="hline"></div>
                    <p>
                        Some Ave, 987,<br/>
                        23890, New York,<br/>
                        United States.<br/>
                    </p>
                    <p>
                        Email: hello@solidtheme.com<br/>
                        Tel: +34 8493-4893
                    </p>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                </div>
            </div><!--/row -->
        </div><!--/container -->
    </tiles:putAttribute>
</tiles:insertDefinition>