<%@page import="projectpackage.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager db=new DbManager();
    String query="delete from feedback where id='"+id+"'";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Feedback is deleted.');window.location.href='../feedbackmgmt.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Feedback is not deleted.');window.location.href='../feedbackmgmt.jsp';</script>");
    }
%>