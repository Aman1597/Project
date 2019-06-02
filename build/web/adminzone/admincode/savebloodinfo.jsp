<%@page import="projectpackage.DbManager"%>
<%
String bloodgroup=request.getParameter("bloodgroup");
int availableunits=Integer.parseInt(request.getParameter("availableunits"));
String bloodbankname=request.getParameter("bloodbankname");
if(bloodgroup.equals(""))
{
    out.print("<script>alert('Select blood group first');window.location.href='../adminhome.jsp';</script>");
}
else
{
DbManager db=new DbManager();
String query="insert into bloodavailability(bloodgroup,availableunits,bloodbankname) values('"+bloodgroup+"','"+availableunits+"','"+bloodbankname+"')";
if(db.executeNonQuery(query))
{
out.print("<script>alert('Blood detail are saved');window.location.href='../adminhome.jsp';</script>");
}
else
{
out.print("<script>alert('Blood detail are not saved');window.location.href='../adminhome.jsp';</script>");
}
}
%>