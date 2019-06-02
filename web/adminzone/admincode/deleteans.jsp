<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<%
    int qid=Integer.parseInt(request.getParameter("qid"));
    int aid=Integer.parseInt(request.getParameter("aid"));
    DbManager db=new DbManager();
    String query="delete from answer where aid='"+aid+"'";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Answer is deleted.');window.location.href='../a_viewanswer.jsp?qid='+'"+qid+"';</script>");
    }
    else
    {
        out.print("<script>alert('Answer is not deleted.');window.location.href='../a_viewanswer.jsp?qid='+'"+qid+"';</script>");
    }
%>