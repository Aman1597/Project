<%-- 
    Document   : changeadminpassword
    Created on : 20 Nov, 2018, 1:04:20 AM
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
        <style>
            #a_container h1
            {
                color: #fff;
                text-align: center;
                font-size: 60px;
                font-style: italic;
                text-transform: uppercase;
                text-shadow: 0px 7px 10px rgba(0,0,0,1);//-9px 7px 10px rgba(0,0,0,1);
                //mix-blend-mode: overlay;
            }
            #a_container table
            {
                width: 50%;
                font-size: 27px;
                //padding-left: 15px;
                font-weight: bold;
                color: white;
                text-shadow: 0px 5px 10px rgba(0,0,0,1) , 1px -1px 0 black , 1px 1px 0 black , -1px -1px 0 black , -1px 1px 0 black;
            }
            #a_container table input[type="submit"]
            {
                font-size: 20px;
                background-color: white;
                color: white;//#1DA1F2;//white;
                cursor: pointer;
                letter-spacing: 2.5px;
                width:44%;
                //text-transform: uppercase;
                //font-weight: bold;
                font-family: serif;
                border-radius: 20px;
                //box-shadow: 0px 0px 0px gray , 0.1px 0.1px 0 white;
                text-shadow: 0px 5px 10px rgba(0,0,0,1) , 1px -1px 0 black , 1px 1px 0 black , -1px -1px 0 black , -1px 1px 0 black;
            }
            #a_container table input[type="submit"]:hover
            {
                box-shadow: -1px 1px 20px skyblue , 1px 1px 20px skyblue;
            }
        </style>
    </head>
    <body>
        <form action="admincode/changeadminpasswordcode.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp"%>
                <div id="a_container">
                    <h1>Change Password</h1>
                    <br/>
                    <table style="width: 50%;">
                        <tr>
                            <td style="text-align: center;">Enter Old Password</td>
                            <td>
                                <input type="password" name="oldpassword" style="margin: 5px;" required=""/>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">Enter New Password</td>
                            <td>
                                <input type="password" name="newpassword" style="margin: 5px;" required=""/>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">Confirm Password</td>
                            <td>
                                <input type="password" name="confirmpassword" style="margin: 5px;" required=""/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;padding-left: 25px;">
                                <input type="submit" value="Change Password" style="padding: 5px;margin-top: 19px;"/>
                            </td>
                        </tr>
                    </table>
                </div>
                <%@include file="adminfooter.jsp"%>
            </div>   
        </form>
    </body>
</html>
<%
}
%>