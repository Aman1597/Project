<%@page import="projectpackage.DbManager"%>
<%@page import="java.sql.ResultSet"%>
<%
    String adminid=session.getAttribute("adminid").toString();
    String oldpassword=request.getParameter("oldpassword");
    String newpassword=request.getParameter("newpassword");
    String confirmpassword=request.getParameter("confirmpassword");
    if(newpassword.equals(confirmpassword))
    {
        String query="select password from login where userid='"+adminid+"'";
        DbManager db=new DbManager();
        ResultSet rs=db.selectQuery(query);
        if(rs.next())
        {
            String rspwd=rs.getString(1);
            if(rspwd.equals(oldpassword))
            {
                query="Update login set password='"+newpassword+"' where userid='"+adminid+"'";
                if(db.executeNonQuery(query))
                {
                    out.print("<script>alert('Password is changed');window.location.href='../changeadminpassword.jsp';</script>");
                }
                else
                {
                    out.print("<script>alert('Password is not changed');window.location.href='../changeadminpassword.jsp';</script>");
                }
            }
            else
            {
                out.print("<script>alert('Old Password doesn't match');window.location.href='../changeadminpassword.jsp';</script>");
            }
        }
    }
    else
    {
        out.print("<script>alert('New password and Confirm password didn't matched');window.location.href='../changeadminpassword.jsp';</script>");
    }
%>