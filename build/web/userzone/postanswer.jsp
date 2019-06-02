<%-- 
    Document   : postanswer
    Created on : 15 Nov, 2018, 4:16:08 AM
    Author     : Aman Deep
--%>
<%
if(session.getAttribute("userid")==null)
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
        <title>User Zone</title>
        <link href="../css/userstyle.css" rel="stylesheet" type="text/css"/>
        <link href="../css/user_menu.css" rel="stylesheet" type="text/css"/>
        <style>
            #user_container h1
            {
                color: #fff;
                text-align: center;
                font-size: 60px;
                font-style: italic;
                text-transform: uppercase;
                text-shadow: 0px 7px 10px rgba(0,0,0,1);//-9px 7px 10px rgba(0,0,0,1);
                //mix-blend-mode: overlay;
            }
            #user_container table
            {
                width: 53%;
                font-size: 30px;
                //padding-left: 15px;
                font-weight: bold;
                color: white;
                text-shadow: 0px 5px 10px rgba(0,0,0,1) , 1px -1px 0 black , 1px 1px 0 black , -1px -1px 0 black , -1px 1px 0 black;
            }
            #user_container table input[type="submit"]
            {
                font-size: 20px;
                background-color: white;
                color: white;//#1DA1F2;//white;
                cursor: pointer;
                letter-spacing: 2.5px;
                width:34%;
                //text-transform: uppercase;
                //font-weight: bold;
                font-family: serif;
                //border-radius: 2px;
                //box-shadow: 0px 0px 0px gray , 0.1px 0.1px 0 white;
                text-shadow: 0px 5px 10px rgba(0,0,0,1) , 1px -1px 0 black , 1px 1px 0 black , -1px -1px 0 black , -1px 1px 0 black;
            }
            #user_container table input[type="submit"]:hover
            {
                box-shadow: -1px 1px 20px skyblue , 1px 1px 20px skyblue;
            }
        </style>
    </head>
    <body>
        <form action="usercode/postanswercode.jsp" method="post">
            <div id="outer">
                <%@include file="userheader.jsp"%>
                <div id="user_container">
                    <h1>Discussion Forum</h1>
                    <br>
                    <table>
                        <tr>
                            <td style="padding-bottom:12.5px;">Enter Your Answer :</td>
                        </tr>
                        <tr>
                            <td>
                                <textarea style="width:98.5%;height: 200px;" name="answertext" required=""></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td style="padding:0px;"><input type="hidden" name="patientname" value="<%=patientname%>"/>
                                <%
                                int qid=Integer.parseInt(request.getParameter("qid"));
                                %>
                                <input type="hidden" name="qid" value="<%=qid%>"
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right;"><input type="submit" value="Post Answer"/></td>
                        </tr>
                    </table>
                </div>
                <%@include file="userfooter.jsp"%>
            </div>   
        </form>
    </body>
</html>
<%
}
%>