<%-- 
    Document   : sample
    Created on : 20 Nov, 2018, 1:44:49 AM
    Author     : Aman Deep
--%>
<%
if(session.getAttribute("adminid")==null)
{
    response.sendRedirect("../index.jsp#login");
}
else
{
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Zone</title>
        <link href="../css/adminstyle.css" rel="stylesheet" type="text/css"/>
        <link href="../css/admin_menu.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form>
            <div id="a_outer">
                <%@include file="adminheader.jsp"%>
                <div id="a_container">
                    
                </div>
                <%@include file="adminfooter.jsp"%>
            </div>   
        </form>
    </body>
</html>
<%
}
%>