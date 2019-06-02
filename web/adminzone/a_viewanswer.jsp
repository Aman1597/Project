<%-- 
    Document   : a_viewanswer
    Created on : 20 Nov, 2018, 4:15:52 AM
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
            #a_container h2
            {
                color: #fff;
                margin-top: 21px;
                margin-bottom: 5px;
                text-align: center;
                //font-size: 60px;
                //font-style: italic;
                text-transform: uppercase;
                text-shadow: 0px 7px 10px rgba(0,0,0,1) , 1px -1px 0 black , 1px 1px 0 black , -1px -1px 0 black , -1px 1px 0 black;//;//-9px 7px 10px rgba(0,0,0,1);
                //mix-blend-mode: overlay;
            }
            #a_container table
            {
                width: 100%;
                font-size: 20.1px;
                text-align: center;
                color: white;
                text-shadow: 0px 5px 10px rgba(0,0,0,1) , 1px -1px 0 black , 1px 1px 0 black , -1px -1px 0 black , -1px 1px 0 black;
            }
            #a_container table th
            {
                padding-bottom: 15px;
            }
            #a_container table td
            {
                padding-bottom: 8px;
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
                    <%
                      int qid=Integer.parseInt(request.getParameter("qid"));
                      String query="select questiontext from question where qid='"+qid+"'";
                      ResultSet rs=db.selectQuery(query);
                      rs.next();
                    %>
                    <h2><%=rs.getString(1)%></h2>
                    <br/>
                    <table>
                        <tr>
                            <th>S.No.</th>
                            <th>Answer</th>
                            <th>Answered By</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                        int n=1;
                        query="select aid,answertext,answeredby,posteddt from answer where qid='"+qid+"'";
                        rs=db.selectQuery(query);
                        while(rs.next())
                        { 
                        %>
                        <tr>
                            <td style="vertical-align:top;"><%=n%></td>
                            <td style="text-align:left;padding-left: 10px;"><%=rs.getString(2)%></td>
                            <td style="vertical-align:top;width: 15%;"><%=rs.getString(3)%></td>
                            <td style="width: 12%;vertical-align:top;"><%=rs.getString(4)%></td>
                            <td style="vertical-align:top;"><a href="admincode/deleteans.jsp?aid=<%=rs.getInt(1)%>&qid=<%=qid%>">Delete</a></td>
                        </tr>
                        <% n++;
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