<%@page import="projectpackage.DbManager"%>
<%
    int qid=Integer.parseInt(request.getParameter("qid"));
    DbManager db=new DbManager();
    String query="delete from question where qid='"+qid+"'";
    if(db.executeNonQuery(query))
    {
        query="delete from answer where qid='"+qid+"'";
        if(db.executeNonQuery(query))
        { out.print("<script>alert('Question is deleted.');window.location.href='../a_postquestion.jsp';</script>"); }
        else
        { out.print("<script>alert('The Question is deleted , please delete the answers of deleted question too');window.location.href='../a_viewanswer.jsp';</script>"); }
    }
    else
    {
        out.print("<script>alert('Feedback is not deleted.');window.location.href='../a_postquestion.jsp';</script>");
    }
%>