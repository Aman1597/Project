<%@page import="projectpackage.DbManager"%>
<%
    String questiontext=request.getParameter("questiontext");
    String patientname=request.getParameter("patientname");
    DbManager db=new DbManager();
    String posteddt=db.getDate();
    String query="insert into question(questiontext,postedby,posteddt) values('"+questiontext+"','"+patientname+"','"+posteddt+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Question is Posted');window.location.href='../a_postquestion.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Question is not Posted');window.location.href='../a_postquestion.jsp';</script>");
    }
%>