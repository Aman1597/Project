<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<%
    String userid=request.getParameter("userid");
    String password=request.getParameter("password");
    String query="select * from login where userid='"+userid+"' and password='"+password+"'";
    DbManager db=new DbManager();
    ResultSet rs=db.selectQuery(query);
    if(rs.next())
    {
        String usertype=rs.getString(3);
        if(usertype.equals("user"))
        {
            session.setAttribute("userid", userid);
            response.sendRedirect("../userzone/userhome.jsp");
        }
        else if(usertype.equals("admin"))
        {
            session.setAttribute("adminid", userid);
            response.sendRedirect("../adminzone/adminhome.jsp");
        }
    }
    else
    {
        out.print("<script>alert('Invalid user');window.location.href='../index.jsp#login';</script>");
    }    
%>