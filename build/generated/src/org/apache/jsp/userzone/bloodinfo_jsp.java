package org.apache.jsp.userzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import projectpackage.DbManager;

public final class bloodinfo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/userzone/userheader.jsp");
    _jspx_dependants.add("/userzone/userfooter.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

if(session.getAttribute("userid")==null)
{
    response.sendRedirect("../index.jsp#login");
}
else
{

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>User Zone</title>\n");
      out.write("        <link href=\"../css/userstyle.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"../css/user_menu.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <style>\n");
      out.write("            #user_container h1\n");
      out.write("            {\n");
      out.write("                color: #fff;\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 60px;\n");
      out.write("                font-style: italic;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                text-shadow: 0px 7px 10px rgba(0,0,0,1);//-9px 7px 10px rgba(0,0,0,1);\n");
      out.write("                //mix-blend-mode: overlay;\n");
      out.write("            }\n");
      out.write("            #user_container table\n");
      out.write("            {\n");
      out.write("                width: 100%;\n");
      out.write("                font-size: 30px;\n");
      out.write("                //padding-left: 15px;\n");
      out.write("                font-weight: bold;\n");
      out.write("                color: white;\n");
      out.write("                text-shadow: 0px 5px 10px rgba(0,0,0,1) , 1px -1px 0 black , 1px 1px 0 black , -1px -1px 0 black , -1px 1px 0 black;\n");
      out.write("            }\n");
      out.write("            #user_container table input[type=\"submit\"]\n");
      out.write("            {\n");
      out.write("                font-size: 20px;\n");
      out.write("                background-color: white;\n");
      out.write("                color: white;//#1DA1F2;//white;\n");
      out.write("                cursor: pointer;\n");
      out.write("                letter-spacing: 2.5px;\n");
      out.write("                width:25%;\n");
      out.write("                //text-transform: uppercase;\n");
      out.write("                //font-weight: bold;\n");
      out.write("                font-family: serif;\n");
      out.write("                //border-radius: 2px;\n");
      out.write("                //box-shadow: 0px 0px 0px gray , 0.1px 0.1px 0 white;\n");
      out.write("                text-shadow: 0px 5px 10px rgba(0,0,0,1) , 1px -1px 0 black , 1px 1px 0 black , -1px -1px 0 black , -1px 1px 0 black;\n");
      out.write("            }\n");
      out.write("            #user_container table input[type=\"submit\"]:hover\n");
      out.write("            {\n");
      out.write("                box-shadow: -1px 1px 20px skyblue , 1px 1px 20px skyblue;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form>\n");
      out.write("            <div id=\"outer\">\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"user_menu\">\n");
      out.write("    <ul>\n");
      out.write("        <li><a href=\"userhome.jsp\">Home</a></li>\n");
      out.write("        <li><a href=\"bloodinfo.jsp\">Blood Details</a></li>\n");
      out.write("        <li><a href=\"postquestion.jsp\">Discussion</a></li>\n");
      out.write("        <li><a href=\"complain.jsp\">Complain</a></li>\n");
      out.write("        <li><a href=\"feedback.jsp\">Feedback</a></li>\n");
      out.write("        <li><a href=\"changepassword.jsp\">Change Password</a></li>\n");
      out.write("        <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("    </ul>\n");
      out.write("</div>\n");
      out.write("<div id=\"info\">\n");
      out.write("    <div id=\"date\">\n");
      out.write("        ");

            DbManager db=new DbManager();
            String dt=db.getDate();
        
      out.write("\n");
      out.write("        Today's Date : ");
      out.print(dt);
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <div id=\"name\">\n");
      out.write("        ");

          String userid=session.getAttribute("userid").toString();
          String query="select patientname from patientinfo where contactno='"+userid+"'";
          ResultSet rs=db.selectQuery(query);
          String patientname="";
          if(rs.next())
          {
              patientname=rs.getString(1);
          }
        
      out.write("\n");
      out.write("        Hello! &nbsp;");
      out.print(patientname);
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("                <div id=\"user_container\">\n");
      out.write("                    <h1>Blood Details</h1>\n");
      out.write("                    <br/>\n");
      out.write("                    <table style=\"width: 40%;\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"text-align: center;width:50%;\">Blood Group</td>\n");
      out.write("                            <td style=\"padding-left: 30px;\">\n");
      out.write("                                <select name=\"bloodgroup\" onchange=\"\" style=\"height:25px;;\">\n");
      out.write("                                    <option value=\"\">Select Blood Group</option>\n");
      out.write("                                    <option value=\"A+\">A+</option>\n");
      out.write("                                    <option value=\"O+\">O+</option>\n");
      out.write("                                    <option value=\"B+\">B+</option>\n");
      out.write("                                    <option value=\"AB+\">AB+</option>\n");
      out.write("                                    <option value=\"A-\">A-</option>\n");
      out.write("                                    <option value=\"O-\">O-</option>\n");
      out.write("                                    <option value=\"B-\">B-</option>\n");
      out.write("                                    <option value=\"AB-\">AB-</option>\n");
      out.write("                                </select>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"2\" style=\"padding-top: 15px; text-align: center;\">\n");
      out.write("                                <input type=\"submit\" value=\"Submit\"/>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                    <br/><br/>\n");
      out.write("                    ");

                        String bloodgroup=request.getParameter("bloodgroup");
                        query="select * from bloodavailability where bloodgroup='"+bloodgroup+"'";
                        rs=db.selectQuery(query);
                        int n=1;
                    
      out.write("\n");
      out.write("                    <table style=\"width: 97%; margin-left: 3%; font-size: 25px;\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td>Sno.</td>\n");
      out.write("                            <td>Blood Group</td>\n");
      out.write("                            <td>Available Units</td>\n");
      out.write("                            <td>Blood Bank Name</td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                         while(rs.next())
                         {
                        
      out.write("\n");
      out.write("                          \n");
      out.write("                        <tr>\n");
      out.write("                            <td>");
      out.print(n);
      out.write(".</td>\n");
      out.write("                            <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getInt(3));
      out.write("</td>\n");
      out.write("                            <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");
 n++;
                         }
                        
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                        \n");
      out.write("                </div>\n");
      out.write("                ");
      out.write("<div id=\"user_footer\">\n");
      out.write("    <div id=\"copyright\">\n");
      out.write("        Copyright &nbsp; &copy; &nbsp; to <br/>KNIT &nbsp; Sultanpur\n");
      out.write("    </div>\n");
      out.write("    <div id=\"developedby\">\n");
      out.write("        Developed By : &nbsp;Aman Deep ,<br/> Arpit Sharma &nbsp;,&nbsp; Ayush Pandey\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("            </div>   \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");

}

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
