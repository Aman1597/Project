<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<div id="user_menu">
    <ul>
        <li><a href="userhome.jsp">Home</a></li>
        <li><a href="bloodinfo.jsp">Blood Details</a></li>
        <li><a href="postquestion.jsp">Discussion</a></li>
        <li><a href="complain.jsp">Complain</a></li>
        <li><a href="feedback.jsp">Feedback</a></li>
        <li><a href="changepassword.jsp">Change Password</a></li>
        <li><a href="logout.jsp">Logout</a></li>
    </ul>
</div>
<div id="info">
    <div id="date">
        <%
            DbManager db=new DbManager();
            String dt=db.getDate();
        %>
        Today's Date : <%=dt%>
    </div>
    <div id="name">
        <%
          String userid=session.getAttribute("userid").toString();
          String query="select patientname from patientinfo where contactno='"+userid+"'";
          ResultSet rs=db.selectQuery(query);
          String patientname="";
          if(rs.next())
          {
              patientname=rs.getString(1);
          }
        %>
        Hello! &nbsp;<%=patientname%>
    </div>
</div>