package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_005fPanel_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Panel</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">     \n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <style type=\"text/css\">\n");
      out.write("    body{\n");
      out.write("        background-image:url(\"https://www.agdelta.com/wp-content/uploads/2018/06/website-parallax-background-C.jpg\");\n");
      out.write("        background-size: 100px 100px;\n");
      out.write("        background-attachment: fixed;\n");
      out.write("        width: 100%;\n");
      out.write("        height: 660px;\n");
      out.write("        background-size: cover;\n");
      out.write("        background-position: center;\n");
      out.write("\n");
      out.write("    }\n");
      out.write("    h1{\n");
      out.write("        text-transform: uppercase;\n");
      out.write("        margin-top: 10px;\n");
      out.write("    }\n");
      out.write("    a{\n");
      out.write("        color: white;\n");
      out.write("        text-transform: none;\n");
      out.write("        font-size: 30px;\n");
      out.write("    }\n");
      out.write("    a:hover{\n");
      out.write("        text-decoration: none;\n");
      out.write("        color: royalblue;\n");
      out.write("    }\n");
      out.write("        \n");
      out.write("    .myclass{\n");
      out.write("        padding: 0px 0px 60px;\n");
      out.write("        height: 700px;\n");
      out.write("    }\n");
      out.write("    .myclass h1{\n");
      out.write("        font-size: 50px;\n");
      out.write("        font-weight: bold;\n");
      out.write("    }\n");
      out.write("    .rowsetting{\n");
      out.write("        margin-top: 20px;\n");
      out.write("        margin-bottom: 50px;\n");
      out.write("    }\n");
      out.write("    .imgsetting{\n");
      out.write("        border-radius:50%;\n");
      out.write("        width: 100px;\n");
      out.write("        height: 100px;\n");
      out.write("    }\n");
      out.write("    .fa{\n");
      out.write("        margin-top: 20px;\n");
      out.write("        margin-bottom: 30px;\n");
      out.write("    }\n");
      out.write("    .rowsetting h2{\n");
      out.write("        margin-top: 20px;\n");
      out.write("        font-weight: bold;\n");
      out.write("        font-size: 30px;\n");
      out.write("    }\n");
      out.write("    /*.rowsetting p{\n");
      out.write("        padding:10px;\n");
      out.write("        color: #6c7575;\n");
      out.write("    }*/\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        <h1 class=\"text-white\" style=\"text-align: center; padding-top: 10px; padding-bottom: 10px;\">Add / Update  Files</h1>\n");
      out.write("      \n");
      out.write("      <section class=\"container myclass text-center text-white\">\n");
      out.write("       \n");
      out.write("      <div class=\"row rowsetting\">\n");
      out.write("        <div class=\"col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto\">\n");
      out.write("            <div class=\"imgsetting d-block m-auto bg-primary\"><i class=\"fa fa-home fa-3x text-white\"></i></div>\n");
      out.write("            <a href=\"Home.jsp\">Home Page</a>\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto\">\n");
      out.write("            <div class=\"imgsetting d-block m-auto bg-primary\"><i class=\"fa fa-user-plus fa-3x text-white\"></i></div>\n");
      out.write("            <a href=\"Registration_Form.jsp\">Registration Form</a>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto\">\n");
      out.write("            <div class=\"imgsetting d-block m-auto bg-primary\"><i class=\"fa fa-sign-in fa-3x text-white\"></i></div>\n");
      out.write("            <a href=\"Login_Form.jsp\">Login Form</a>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      <div class=\"row rowsetting\">\n");
      out.write("        <div class=\"col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto\">\n");
      out.write("            <div class=\"imgsetting d-block m-auto bg-primary\"><i class=\"fa fa-database fa-3x text-white\"></i></div>\n");
      out.write("            <a href=\"Branch.jsp\">Add Branch</a>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto\">\n");
      out.write("            <div class=\"imgsetting d-block m-auto bg-primary\"><i class=\"fa fa-book fa-3x text-white\"></i></div>\n");
      out.write("            <a href=\"Notes.jsp\">Add Notes</a>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto\">\n");
      out.write("            <div class=\"imgsetting d-block m-auto bg-primary\"><i class=\"fa fa-paper-plane fa-3x text-white\"></i></div>\n");
      out.write("            <a href=\"Question Paper.jsp\">Add Question Paper</a>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      \n");
      out.write("      <div class=\"row rowsetting\">\n");
      out.write("        <div class=\"col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto\">\n");
      out.write("            <div class=\"imgsetting d-block m-auto bg-primary\"><i class=\"fa fa-file fa-3x text-white\"></i></div>\n");
      out.write("            <a href=\"Subject.jsp\">Add Subject</a>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto\">\n");
      out.write("            <div class=\"imgsetting d-block m-auto bg-primary\"><i class=\"fa fa-video-camera fa-3x text-white\"></i></div>\n");
      out.write("            <a href=\"Video_Lectures.jsp\">Add Videos</a>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        <div class=\"col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto\">\n");
      out.write("            <div class=\"imgsetting d-block m-auto bg-primary\"><i class=\"fa fa-window-restore fa-3x text-white\"></i></div>\n");
      out.write("            <a href=\"Tutorials.jsp\">Add Tutorials</a>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("</section>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
