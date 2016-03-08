<%-- 
    Document   : header
    Created on : 23/abr/2015, 15:06:49
    Author     : Carlos
--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
                <li class="active"><a href="welcome">HOME</a></li>
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
            <ul class="nav navbar-nav">
                <li>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <a href="${rootUrl}admin">Administration</a>
                </sec:authorize>
                </li>
                <li>
                    <a href="${rootUrl}logout">Logout</a>
                </li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>
