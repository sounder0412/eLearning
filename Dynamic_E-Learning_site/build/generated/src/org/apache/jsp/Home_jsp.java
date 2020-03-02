package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DTO.Faculty_Registration_DTO;
import DAO.Branch_DAO;
import DTO.Branch_DTO;
import java.util.List;
import DTO.Student_Registration_DTO;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Header.jsp");
    _jspx_dependants.add("/Menu.jsp");
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

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>All in One Study</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">     \n");
      out.write("\n");
      out.write("        <!-- jQuery library -->\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Popper JS -->\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Latest compiled JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            hr{\n");
      out.write("                width:400px;\n");
      out.write("                border-top: 1px solid #f8f8f8;\n");
      out.write("                border-bottom: 1px solid rgb(0,0,0,0.8); \n");
      out.write("            }\n");
      out.write("            .dropdown {\n");
      out.write("                position: relative;\n");
      out.write("                display: inline-block;\n");
      out.write("            }\n");
      out.write("            .dropdown-content {\n");
      out.write("                display: none;\n");
      out.write("                position: absolute;\n");
      out.write("                background-color: #f1f1f1;\n");
      out.write("                min-width: 160px;\n");
      out.write("                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.8);\n");
      out.write("                z-index: 1;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .dropdown-content a {\n");
      out.write("                color: black;\n");
      out.write("                padding: 12px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: block;\n");
      out.write("                text-align: left;\n");
      out.write("                font-weight: bold;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .dropdown-content a:hover {background-color: #ddd;}\n");
      out.write("\n");
      out.write("            .dropdown:hover .dropdown-content {display: block;}\n");
      out.write("\n");
      out.write("            .dropdown:hover .dropbtn {background-color: #3e8e41;}\n");
      out.write("\n");
      out.write("            .logo{\n");
      out.write("                float: left;\n");
      out.write("            }\n");
      out.write("            .logo img{\n");
      out.write("                height: 80px;\n");
      out.write("                transition: .5s;\n");
      out.write("                margin-left: 50px;\n");
      out.write("                margin-top: 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .bg {\n");
      out.write("                padding: 1px; \n");
      out.write("                font-family: Paytone One;\n");
      out.write("                text-align: center; \n");
      out.write("                background: linear-gradient(90deg, #1CB5E0 0%, #000851 100%);\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .bg h1 {\n");
      out.write("                font-size: 40px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .bgimg{\n");
      out.write("                background-image:url(\"https://www.agdelta.com/wp-content/uploads/2018/06/website-parallax-background-C.jpg\");\n");
      out.write("                background-size: 100px 100px;\n");
      out.write("                background-attachment: fixed;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 660px;\n");
      out.write("                background-size: cover;\n");
      out.write("                background-position: center;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .header{\n");
      out.write("                padding-top: 200px;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                text-shadow: 0px 4px 3px rgba(0,0,0,0.4),\n");
      out.write("                    0px 4px 3px rgba(0,0,0,0.1),\n");
      out.write("                    0px 4px 3px rgba(0,0,0,0.1);\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .header h2{\n");
      out.write("                font-size: 42px;\n");
      out.write("            }\n");
      out.write("            .header h1{\n");
      out.write("                font-size: 52px;\n");
      out.write("                font-weight: bold;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("<div class=\"bg\"> \n");
      out.write("    <section>\n");
      out.write("        <div class=\"logo\">\n");
      out.write("            <img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTzMepO78UcIHwfgmGtFN7M02RDV_ulBHnJ_SdUhGiExrO0uNMzw\">\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("    <section>\n");
      out.write("        <div class=\"container\" >\n");
      out.write("            <h1 class=\"text-white\" style=\"margin-top: 2px;\"> All In One Study Site For IPU Students </h1>          \n");
      out.write("            <form class=\"form-inline my-2 my-lg-0 ml-auto justify-content-end\">\n");
      out.write("                <input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("                <button class=\"btn btn-outline-light my-2\" type=\"submit\">Search</button>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("</div>");
      out.write("\n");
      out.write("        <section class=\"bgimg\">\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\">     \n");
      out.write("\n");
      out.write("        <!-- jQuery library -->\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Popper JS -->\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Latest compiled JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/MinorProj(FrontPage)Styling.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            hr{\n");
      out.write("                width:400px;\n");
      out.write("                border-top: 1px solid #f8f8f8;\n");
      out.write("                border-bottom: 1px solid rgb(0,0,0,0.8); \n");
      out.write("            }\n");
      out.write("            .dropdown {\n");
      out.write("                position: relative;\n");
      out.write("                display: inline-block;\n");
      out.write("            }\n");
      out.write("            .dropdown-content {\n");
      out.write("                display: none;\n");
      out.write("                position: absolute;\n");
      out.write("                background-color: #f1f1f1;\n");
      out.write("                min-width: 160px;\n");
      out.write("                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.8);\n");
      out.write("                z-index: 1;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .dropdown-content a {\n");
      out.write("                color: black;\n");
      out.write("                padding: 12px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: block;\n");
      out.write("                text-align: left;\n");
      out.write("                font-weight: bold;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .dropdown-content a:hover {background-color: #ddd;}\n");
      out.write("\n");
      out.write("            .dropdown:hover .dropdown-content {display: block;}\n");
      out.write("\n");
      out.write("            .dropdown:hover .dropbtn {background-color: #3e8e41;}\n");
      out.write("\n");
      out.write("            .logo{\n");
      out.write("                float: left;\n");
      out.write("            }\n");
      out.write("            .logo img{\n");
      out.write("                height: 80px;\n");
      out.write("                transition: .5s;\n");
      out.write("                margin-left: 50px;\n");
      out.write("                margin-top: 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .bg {\n");
      out.write("                padding: 1px; \n");
      out.write("                font-family: Paytone One;\n");
      out.write("                text-align: center; \n");
      out.write("                background: linear-gradient(90deg, #1CB5E0 0%, #000851 100%);\n");
      out.write("                color: white;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .bg h1 {\n");
      out.write("                font-size: 40px;\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .bgimg{\n");
      out.write("                background-image:url(\"https://www.agdelta.com/wp-content/uploads/2018/06/website-parallax-background-C.jpg\");\n");
      out.write("                background-size: 100px 100px;\n");
      out.write("                background-attachment: fixed;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 660px;\n");
      out.write("                background-size: cover;\n");
      out.write("                background-position: center;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .header{\n");
      out.write("                padding-top: 200px;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                text-shadow: 0px 4px 3px rgba(0,0,0,0.4),\n");
      out.write("                    0px 4px 3px rgba(0,0,0,0.1),\n");
      out.write("                    0px 4px 3px rgba(0,0,0,0.1);\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .header h2{\n");
      out.write("                font-size: 42px;\n");
      out.write("            }\n");
      out.write("            .header h1{\n");
      out.write("                font-size: 52px;\n");
      out.write("                font-weight: bold;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("</head>\n");
      out.write("<nav class=\"navbar navbar-inverse navbar-expand-md navbar-dark bg-dark sticky-top\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"Home.jsp\"><i class=\"fa fa-home\"></i></span>  HOME</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse text-center\" id=\"navbarSupportedContent\">\n");
      out.write("            <ul class=\"navbar-nav mr-auto\">\n");
      out.write("                ");

                    List<Branch_DTO> al = Branch_DAO.view();
                    for (Branch_DTO b : al) {
                          
      out.write("\n");
      out.write("                          <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link text-white\" href=\"#\">");
      out.print(b.getB_name());
      out.write("</a>\n");
      out.write("                            <div class=\"dropdown-content\">\n");
      out.write("                                <a href=\"ViewSubjects.jsp?branch=");
      out.print(b.getB_id());
      out.write("&sem=1\">Sem 1</a>\n");
      out.write("                                <a href=\"ViewSubjects.jsp?branch=");
      out.print(b.getB_id());
      out.write("&sem=2\">Sem 2</a>\n");
      out.write("                                <a href=\"ViewSubjects.jsp?branch=");
      out.print(b.getB_id());
      out.write("&sem=3\">Sem 3</a>\n");
      out.write("                                <a href=\"ViewSubjects.jsp?branch=");
      out.print(b.getB_id());
      out.write("&sem=4\">Sem 4</a>\n");
      out.write("                                <a href=\"ViewSubjects.jsp?branch=");
      out.print(b.getB_id());
      out.write("&sem=5\">Sem 5</a>\n");
      out.write("                                <a href=\"ViewSubjects.jsp?branch=");
      out.print(b.getB_id());
      out.write("&sem=6\">Sem 6</a>\n");
      out.write("                                <a href=\"ViewSubjects.jsp?branch=");
      out.print(b.getB_id());
      out.write("&sem=7\">Sem 7</a>\n");
      out.write("                                <a href=\"ViewSubjects.jsp?branch=");
      out.print(b.getB_id());
      out.write("&sem=8\">Sem 8</a>\n");
      out.write("                            </div>\n");
      out.write("                        </li>\n");
      out.write("                          ");

                        }
                
      out.write("\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link text-white\" href=\"#\">CONTACT <!-- <span class=\"sr-only\">(current)</span> --></a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                    <a class=\"nav-link text-white\" href=\"#\">ABOUT US <!-- <span class=\"sr-only\">(current)</span> --></a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("            <ul class=\"navbar-nav\">\n");
      out.write("                ");

                    if(session.getAttribute("student")!=null) {
                        //student is logged in
                        Student_Registration_DTO st = (Student_Registration_DTO)session.getAttribute("student");
                        
      out.write("\n");
      out.write("                        <li class=\"nav-right\">\n");
      out.write("                            <a class=\"nav-link text-white\" href=\"#\"> Welcome ");
      out.print(st.getFullname());
      out.write("</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-right\">\n");
      out.write("                            <a class=\"nav-link text-white\" href=\"Student_Logout.jsp\"><i class=\"fa fa-sign-out\"></i> Logout</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");

                    }else if(session.getAttribute("faculty")!=null) {
                        //student is logged in
                        Faculty_Registration_DTO st = (Faculty_Registration_DTO)session.getAttribute("faculty");
                        
      out.write("\n");
      out.write("                        <li class=\"nav-right\">\n");
      out.write("                            <a class=\"nav-link text-white\" href=\"#\"> Welcome ");
      out.print(st.getFullname());
      out.write("</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-right\">\n");
      out.write("                            <a class=\"nav-link text-white\" href=\"Student_Logout.jsp\"><i class=\"fa fa-sign-out\"></i> Logout</a>\n");
      out.write("                        </li>\n");
      out.write("                        ");

                    }else {
                        //student is not logged in
                            
      out.write("\n");
      out.write("                            <li class=\"nav-right\">\n");
      out.write("                                <a class=\"nav-link text-white\" href=\"Login_Form.jsp\"><i class=\"fa fa-sign-in\"></i></i> Login</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"nav-right\">\n");
      out.write("                                <a class=\"nav-link text-white\" href=\"Registration_Form.jsp\"><i class=\"fa fa-sign-out\"></i> Register</a>\n");
      out.write("                            </li>\n");
      out.write("                            ");

                    }
                
      out.write("\n");
      out.write("                \n");
      out.write("            </ul>\n");
      out.write("            <!-- <form class=\"form-inline my-2 my-lg-0 ml-auto\">\n");
      out.write("              <input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("              <button class=\"btn btn-primary my-2\" type=\"submit\">Search</button>\n");
      out.write("            </form> -->\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</nav>");
      out.write("\n");
      out.write("            <div class=\"container text-center text-white header\">\n");
      out.write("                <h2>Welcome to Our Channel</h2>\n");
      out.write("                <h1>The Only All In One Study Site For IPU Students</h1>\n");
      out.write("                <button class=\"btn btn-primary btn-lg text-white\" style=\"margin-top: 20px\"><i class=\"fa fa-paw\"></i> Get Started!</button>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
