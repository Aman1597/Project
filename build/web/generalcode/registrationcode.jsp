<%@page import="projectpackage.DbManager"%>
<%
    String password=request.getParameter("password");
    String confirmpassword=request.getParameter("confirmpassword");
    if(password.equals(confirmpassword))
    {
        String patientname=request.getParameter("patientname");
        String gender=request.getParameter("gender");
        String fathername=request.getParameter("fathername");
        String address1=request.getParameter("address1");
        String address2=request.getParameter("address2");
        String disease=request.getParameter("disease");
        String referedby=request.getParameter("referedby");
        String hospitalname=request.getParameter("hospitalname");
        String contactno=request.getParameter("contactno");
        String emailaddress=request.getParameter("emailaddress");
        String adharno=request.getParameter("adharno");
        DbManager db=new DbManager();
        String registrationdt=db.getDate();
        String query1="insert into patientinfo values('"+patientname+"','"+gender+"','"+fathername+"','"+address1+"','"+address2+"','"+disease+"','"+referedby+"','"+hospitalname+"','"+contactno+"','"+emailaddress+"','"+adharno+"','"+password+"','"+registrationdt+"')";
        String query2="insert into login values('"+contactno+"','"+password+"','user')";
        if(db.executeNonQuery(query1))
        {
            if(db.executeNonQuery(query2))
            {
                out.print("<script>alert('Registration is successful');window.location.href='../index.jsp';</script>");
            }
        }
        else
        {
                out.print("<script>alert('Registration is not successful');window.location.href='../index.jsp#registration';</script>");
        }
    }
    else
    {
        out.print("<script>alert('Password is not matched');window.location.href='../index.jsp#registration';</script>");    
    }
%> 