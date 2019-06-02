<%-- 
    Document   : index
    Created on : 6 Sep, 2018, 3:55:59 PM
    Author     : Aman Deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>KNIT Telimedicine</title>
        <link href="css/generalstyle.css" type="text/css" rel="stylesheet"/>
        <link href="css/menu.css" type="text/css" rel="stylesheet"/>
        <script src="js/slider.js" rel="javascript" type="text/javascript"></script>
    </head>
    <body onload="moveSlider()">
        
            <div id="wrapper">
                <%@include file="head.jsp"%>
                <div id="registration">
                    <%@include file="registration.jsp"%>
                </div>
                <div id="login">
                    <%@include file="login.jsp"%>
                </div>
                <%@include file="foot.jsp"%>
            </div>
        
    </body>
</html>
