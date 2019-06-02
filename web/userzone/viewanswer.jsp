<%-- 
    Document   : viewanswer
    Created on : 18 Nov, 2018, 12:48:25 PM
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
            #user_container h2
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
            #user_container table
            {
                width: 100%;
                font-size: 20.1px;
                text-align: center;
                color: white;
                text-shadow: 0px 5px 10px rgba(0,0,0,1) , 1px -1px 0 black , 1px 1px 0 black , -1px -1px 0 black , -1px 1px 0 black;
            }
            #user_container table th
            {
                padding-bottom: 15px;
            }
            #user_container table td
            {
                padding-bottom: 8px;
            }
        </style>
    </head>
    <body>
        <form>
            <div id="outer">
                <%@include file="userheader.jsp"%>
                <div id="user_container">
                    <%
                      int qid=Integer.parseInt(request.getParameter("qid"));
                      query="select questiontext from question where qid='"+qid+"'";
                      rs=db.selectQuery(query);
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
                        </tr>
                        <%
                        int n=1;
                        query="select answertext,answeredby,posteddt from answer where qid='"+qid+"'";
                        rs=db.selectQuery(query);
                        while(rs.next())
                        { 
                        %>
                        <tr>
                            <td style="vertical-align:top;"><%=n%></td>
                            <td style="text-align:left;padding-left: 10px;"><%=rs.getString(1)%></td>
                            <td style="vertical-align:top;width: 15%;"><%=rs.getString(2)%></td>
                            <td style="width: 12%;vertical-align:top;"><%=rs.getString(3)%></td>
                        </tr>
                        <% n++;
                        }
                        %>
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