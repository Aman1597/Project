<%@page import="projectpackage.DbManager"%>
<div id="a_menu">
    <ul>
        <li><a href="adminhome.jsp">Blood Details</a></li>
        <li><a href="a_postquestion.jsp">Discussion</a></li>
        <li><a href="complainmgmt.jsp">Complain Mgmt</a></li>
        <li><a href="feedbackmgmt.jsp">Feedback Mgmt</a></li>
        <li><a href="changeadminpassword.jsp">Change Password</a></li>
        <li><a href="logout.jsp">Logout</a></li>
    </ul>
</div>
<div id="a_info">
    <div id="a_date">
        <%
            DbManager db=new DbManager();
            String dt=db.getDate();
        %>
        Today's Date : <%=dt%>
    </div>
    <div id="a_name">
        Hello! &nbsp; Doctor
    </div>
    
</div>