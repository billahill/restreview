<%-- 
    Document   : _layout
    Created on : 23/abr/2015, 13:28:47
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
    <head>
        <title><tiles:getAsString name="title" /></title>
        <link rel="shortcut icon" href="${rootURL}resources/solidtemplate/ico/favicon.ico">
        <link href="${rootURL}resources/solidtemplate/css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${rootURL}resources/solidtemplate/css/style.css" rel="stylesheet">
        <link href="${rootURL}resources/solidtemplate/css/font-awesome.min.css" rel="stylesheet">
        <script src="${rootURL}resources/solidtemplate/js/modernizr.js"></script>


    </head>
    <body>
        <tiles:insertAttribute name="header" />
        <tiles:insertAttribute name="body" />
        <tiles:insertAttribute name="footer" />
    </body>
</html>