<%@page import="projectpackage.DbManager"%>
<%
    String answertext=request.getParameter("answertext");
    String patientname=request.getParameter("patientname");
    DbManager db=new DbManager();
    String posteddt=db.getDate();
    int qid=Integer.parseInt(request.getParameter("qid"));
    String query="insert into answer(answertext,answeredby,posteddt,qid) values('"+answertext+"','"+patientname+"','"+posteddt+"','"+qid+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Answer is posted');window.location.href='../a_postquestion.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Answer is not posted');window.location.href='../a_postquestion.jsp';</script>");
    }
%>