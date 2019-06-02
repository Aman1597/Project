<%-- 
    Document   : feedbackmgmt
    Created on : 20 Nov, 2018, 2:29:35 AM
    Author     : Aman Deep
--%>
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
            #a_container table
            {
                width: 100%;
                font-size: 21px;
                text-align: center;
                //padding-left: 15px;
                //font-weight: bold;
                color: white;
                text-shadow: 0px 5px 10px rgba(0,0,0,1) , 1px -1px 0 black , 1px 1px 0 black , -1px -1px 0 black , -1px 1px 0 black;
            }
            th
            {
                font-size: 25px;
                padding-bottom: 10px; 
            }
            #a_container tr td a
            {
                text-decoration: none;
                color: white;
            }
            #a_container tr td a:hover
            {
                text-shadow: 0px 10px 15px rgba(0,0,0,1);
            }
        </style>
    </head>
    <body>
        <form>
            <div id="a_outer">
                <%@include file="adminheader.jsp"%>
                <div id="a_container">
                    <h1>Feedback Management</h1>
                    <table>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Feedback Text</th>
                            <th>Feedback Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                        String query="select * from feedback";
                        ResultSet rs=db.selectQuery(query);
                        while(rs.next())
                        {
                        %>
                        <tr>
                            <td><%=rs.getInt(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><a href="admincode/deletefeedback.jsp?id=<%=rs.getInt(1)%>">Delete</a></td>
                        </tr>
                        <%
                        }
                        %>
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