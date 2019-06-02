<%@page import="projectpackage.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager db=new DbManager();
    String query="delete from complain where id='"+id+"'";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Complain is deleted.');window.location.href='../complainmgmt.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Complain is not deleted.');window.location.href='../complainmgmt.jsp';</script>");
    }
%>