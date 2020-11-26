<%-- 
    Document   : a_postquestion
    Created on : 20 Nov, 2018, 3:22:28 AM
    Author     : Aman Deep
--%>
<%@page import="projectpackage.DbManager"%>
<%@page import="java.sql.ResultSet"%>
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
            .t1
            {
                width: 53%;
                font-size: 30px;
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
                width:76%;
                //text-transform: uppercase;
                //font-weight: bold;
                font-family: serif;
                //border-radius: 2px;
                //box-shadow: 0px 0px 0px gray , 0.1px 0.1px 0 white;
                text-shadow: 0px 5px 10px rgba(0,0,0,1) , 1px -1px 0 black , 1px 1px 0 black , -1px -1px 0 black , -1px 1px 0 black;
            }
            #a_container table input[type="submit"]:hover
            {
                box-shadow: -1px 1px 20px skyblue , 1px 1px 20px skyblue;
            }
            #t2
            {
                width: 100%;
                font-size: 20px;
                font-weight: normal;
                text-align: center;
            }
            #t2 td
            {
                height: 25px;
            }
            #t2 th
            {
                padding-bottom: 15px;
            }
            #t2 td a
            {
                text-decoration: none;
                color: white;
            }
            #t2 td a:hover
            {
                text-shadow: 0px 10px 15px rgba(0,0,0,1);
            }
        </style>
    </head>
    <body>
        <form action="admincode/postquescode.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp"%>
                <div id="a_container">
                    <h1>Discussion Forum</h1>
                    <br/>
                    <table class="t1">
                        <tr>
                            <td style="vertical-align: top;width:54%;">Enter the Question</td>
                            <td>
                                <textarea style="width: 97.2%;height:35px;" name="questiontext" required=""></textarea>
                            </td>
                        </tr>
                        <tr><td style="padding: 0.3px;height:0px;"></td></tr>
                        <tr>
                            <td>
                                <%
                                  String adminid=session.getAttribute("adminid").toString();
                                %>
                                <input type="hidden" name="patientname" value="<%=adminid%>"/>
                            </td>
                            <td style="text-align: right;">
                                <input type="submit" value="Post Question"/>
                            </td>
                        </tr>
                    </table>
                    <br/><br/><br/><br/>
                    <table border="0" bordercolor="white" cellspacing="0" id="t2" class="t1">
                        <tr>
                            <th>Q.Id</th>
                            <th>Question</th>
                            <th>Posted By</th>
                            <th>Posted Date</th>
                            <th>Post Answer</th>
                            <th>View Answer</th>
                            <th>Delete</th>
                        </tr>
                        <%
                        String query="select * from question";
                        ResultSet rs=db.selectQuery(query);
                        while(rs.next())
                        {
                        %>
                        <tr>
                            <td style="width:5%;"><%=rs.getInt(1)%></td>
                            <td style="width:370px;display: inline-block;overflow: auto;"><%=rs.getString(2)%></td>
                            <td style="width:17%;"><%=rs.getString(3)%></td>
                            <td style="width:12%;"><%=rs.getString(4)%></td>
                            <td style="width:12%;"><a href="a_postanswer.jsp?qid=<%=rs.getInt(1)%>">Post</a></td>
                            <td style="width:12%;"><a href="a_viewanswer.jsp?qid=<%=rs.getInt(1)%>">View</a></td>
                            <td style="width:7%;"><a href="admincode/deleteques.jsp?qid=<%=rs.getInt(1)%>">Delete</a></td>
                        </tr>
                        <% } %>
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