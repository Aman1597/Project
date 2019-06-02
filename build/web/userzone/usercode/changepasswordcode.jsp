<%@page import="projectpackage.DbManager"%>
<%
    String oldpassword=request.getParameter("oldpassword");
    String newpassword=request.getParameter("newpassword");
    String confirmpassword=request.getParameter("confirmpassword");
    if(newpassword.equals(confirmpassword))
    {
        String userid=session.getAttribute("userid").toString();
        String query="update login set password='"+newpassword+"'where userid='"+userid+"' and password='"+oldpassword+"'";
        DbManager db=new DbManager();
        if(db.executeNonQuery(query))
        {
            out.print("<script>alert('Password is changed');window.location.href='../changepassword.jsp';</script>");
        }
        else
        {
            out.print("<script>alert('Password is not changed');window.location.href='../changepassword.jsp';</script>");
        }
    }
    else
    {
        out.print("<script>alert('New password and Confirm password didn't matched');window.location.href='../changepassword.jsp';</script>");
    }
%>