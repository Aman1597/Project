<%@page import="projectpackage.DbManager"%>
<%
    String patientname=request.getParameter("patientname");
    String feedbacktext=request.getParameter("feedbacktext");
    DbManager db=new DbManager();
    String feedbackdt=db.getDate();
    String query="insert into feedback(name,feedbacktext,feedbackdt) values('"+patientname+"','"+feedbacktext+"','"+feedbackdt+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Feedback is submitted');window.location.href='../feedback.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Feedback is not submitted');window.location.href='../feedback.jsp';</script>");
    }
%>