<%-- 
    Document   : bloodinfo
    Created on : 20 Nov, 2018, 6:26:20 AM
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
                width: 100%;
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
                width:25%;
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
        <form>
            <div id="outer">
                <%@include file="userheader.jsp"%>
                <div id="user_container">
                    <h1>Blood Details</h1>
                    <br/>
                    <table style="width: 40%;">
                        <tr>
                            <td style="text-align: center;width:50%;">Blood Group</td>
                            <td style="padding-left: 30px;">
                                <select name="bloodgroup" onchange="" style="height:25px;">
                                    <option value="">Select Blood Group</option>
                                    <option value="A+">A+</option>
                                    <option value="O+">O+</option>
                                    <option value="B+">B+</option>
                                    <option value="AB+">AB+</option>
                                    <option value="A-">A-</option>
                                    <option value="O-">O-</option>
                                    <option value="B-">B-</option>
                                    <option value="AB-">AB-</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="padding-top: 15px; text-align: center;">
                                <input type="submit" value="Submit"/>
                            </td>
                        </tr>
                    </table>
                    <br/><br/>
                    <%
                        String bloodgroup=request.getParameter("bloodgroup");
                        query="select * from bloodavailability where bloodgroup='"+bloodgroup+"'";
                        rs=db.selectQuery(query);
                        int n=1;
                    %>
                    <table style="width: 97%; margin-left: 3%; font-size: 25px;">
                        <tr>
                            <td>Sno.</td>
                            <td>Blood Group</td>
                            <td>Available Units</td>
                            <td>Blood Bank Name</td>
                        </tr>
                        <%
                         while(rs.next())
                         {
                        %>
                          
                        <tr>
                            <td><%=n%>.</td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getInt(3)%></td>
                            <td><%=rs.getString(4)%></td>
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