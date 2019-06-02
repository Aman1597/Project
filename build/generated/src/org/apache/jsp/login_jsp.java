package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<style>\n");
      out.write("    /*#saver\n");
      out.write("    {\n");
      out.write("        width:320px;\n");
      out.write("        height: 400px;\n");
      out.write("        background: black;\n");
      out.write("        margin: auto;//position: \n");
      out.write("        //top: 50%;\n");
      out.write("        //left: 50%;\n");
      out.write("        border: 1px solid black;\n");
      out.write("        color: white;\n");
      out.write("        padding-top: 0px;\n");
      out.write("    }*/\n");
      out.write("    #ttt\n");
      out.write("    {\n");
      out.write("        width: 320px;\n");
      out.write("        height: 400px;\n");
      out.write("        margin: 0 auto;\n");
      out.write("        background: white;//black;\n");
      out.write("        color: black;//white;\n");
      out.write("        font-family: sans-serif;\n");
      out.write("        //border-radius: 0px;\n");
      out.write("        box-shadow: /*-3px 5px 10px rgba(192,192,192,1) , 3px 5px 10px rgba(192,192,192,1);*/2px 4px 7px gray , -2px 4px 7px gray;\n");
      out.write("    }\n");
      out.write("    #ttt:hover\n");
      out.write("    {\n");
      out.write("        box-shadow: /*-7px 13px 20px rgba(128,128,128,1) , 7px 13px 20px rgba(128,128,128,1); */ 4.5px 5px 20px rgba(128,128,128,0.5) , -4.5px 5px 20px rgba(128,128,128,0.5) , 3px 4px 25px gray , -3px 4px 25px gray;\n");
      out.write("    }\n");
      out.write("    #ttt td\n");
      out.write("    {\n");
      out.write("        padding-top: 0px;\n");
      out.write("        padding-bottom: 5px;\n");
      out.write("        padding-left: 30px;\n");
      out.write("        padding-right: 30px;\n");
      out.write("        font-weight: bold;\n");
      out.write("        font-size: 17.5px;\n");
      out.write("    }\n");
      out.write("    #ttt input\n");
      out.write("    {\n");
      out.write("        height: 40px;\n");
      out.write("        font-size: 16px;\n");
      out.write("        width: 100%;\n");
      out.write("        outline: none;\n");
      out.write("        margin-bottom: 20px;\n");
      out.write("    }\n");
      out.write("    .logini\n");
      out.write("    {\n");
      out.write("        background: transparent;\n");
      out.write("        border-left: none;\n");
      out.write("        border-top: none;\n");
      out.write("        border-right: none;\n");
      out.write("        border-bottom: 2px solid black;//white;\n");
      out.write("        color: #1DA1F2;\n");
      out.write("    }\n");
      out.write("    .logini:focus\n");
      out.write("    {\n");
      out.write("        border-left: none;\n");
      out.write("        border-top: none;\n");
      out.write("        border-right: none;\n");
      out.write("        //border-bottom: 2px solid white;\n");
      out.write("        border-bottom-color: red;\n");
      out.write("        transition: border-bottom-color 2s;\n");
      out.write("        //transition-timing-function: ease-in-out;\n");
      out.write("    }\n");
      out.write("    .avatar\n");
      out.write("    {   \n");
      out.write("        width: 100px;\n");
      out.write("        height: 100px;\n");
      out.write("        border-radius: 50%;\n");
      out.write("        margin: auto; //position: absolute;\n");
      out.write("        margin-top: -55px;//top: -40px;//-50px;\n");
      out.write("        margin-left: 73px;//left:100px;\n");
      out.write("        //left:calc(50%,-50px);\n");
      out.write("    }\n");
      out.write("    /*h1\n");
      out.write("    {\n");
      out.write("        margin: 0;\n");
      out.write("        padding: 0;\n");
      out.write("        text-align: center;\n");
      out.write("        font-size: 22px;\n");
      out.write("    }*/\n");
      out.write("    #ttt input[type=\"submit\"]\n");
      out.write("    {\n");
      out.write("        border: none;\n");
      out.write("        color:white;//black;\n");
      out.write("        background: red;\n");
      out.write("        border-radius: 20px;\n");
      out.write("        font-size: 18px;\n");
      out.write("    }\n");
      out.write("    #ttt input[type=\"submit\"]:hover\n");
      out.write("    {\n");
      out.write("        cursor: pointer;\n");
      out.write("        color: red;\n");
      out.write("        background: lightblue;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("<form action=\"generalcode/logincode.jsp\" method=\"post\">    \n");
      out.write("    <!--<div id=\"saver\" style=\"margin-top: 10%;\">\n");
      out.write("        <img src=\"images/avatar.png\" class=\"avatar\"/>\n");
      out.write("            <h1>LOGIN HERE</h1>-->\n");
      out.write("\n");
      out.write("    <table border=\"0\" id=\"ttt\" style=\"border: 1px solid silver;margin-top: 10%;margin-left: 350px;\">\n");
      out.write("        <tr><td><img src=\"images/avatar.png\" class=\"avatar\"/></td></tr>\n");
      out.write("        <tr>\n");
      out.write("            <td style=\"text-align: center;font-size: 22px;padding-top: 20px;padding-bottom: 10px;\">LOGIN HERE</td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td>User ID</td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td><input class=\"logini\" type=\"text\" name=\"userid\" required=\"\" placeholder=\"Enter Contact Number\"/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td>Password</td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td><input class=\"logini\" type=\"password\" name=\"password\" required=\"\" placeholder=\"Enter Your Password\"/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td style=\"padding-bottom: 30px;padding-top: 20px;\"><input type=\"submit\" value=\"Login\"/></td>\n");
      out.write("        </tr>\n");
      out.write("    </table> \n");
      out.write("    <!--</div>-->\n");
      out.write("</form>");
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
