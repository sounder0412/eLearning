package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class newjsp_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("        <!-- Bootstrap CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">\n");
      out.write("        <style>    \n");
      out.write("            @import \"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700\";\n");
      out.write("            body{font-family: 'Poppins', sans-serif;\n");
      out.write("                 background: #fafafa}\n");
      out.write("            p{font-family: 'Poppins', sans-serif;\n");
      out.write("              font-size: 1.1em;\n");
      out.write("              font-weight: 300;\n");
      out.write("              line-height: 1.7em;\n");
      out.write("              color: #000000;\n");
      out.write("            }\n");
      out.write("            a,\n");
      out.write("            a:hover,\n");
      out.write("            a:focus{\n");
      out.write("                color: inherit;\n");
      out.write("                text-decoration: none;\n");
      out.write("                transition: all 0.3s;\n");
      out.write("            }\n");
      out.write("            .navbar{\n");
      out.write("                padding: 15px 10px;\n");
      out.write("                background: #0A62E6;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 0;\n");
      out.write("                margin-bottom: 40px;\n");
      out.write("                box-shadow: 1px 1px 3px rgba(0,0,0,0.1);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navbar-btn{\n");
      out.write("                box-shadow: none;\n");
      out.write("                outline: none!important;\n");
      out.write("                border: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .line{\n");
      out.write("                width: 100%;\n");
      out.write("                height: 1px;\n");
      out.write("                border-bottom: 1px dashed #ddd;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .wrapper {\n");
      out.write("                display: flex;\n");
      out.write("                width: 100%;\n");
      out.write("                align-items: stretch;\n");
      out.write("            }\n");
      out.write("            #sidebar {\n");
      out.write("                min-width: 250px;\n");
      out.write("                max-width: 250px;\n");
      out.write("                background: #7386D5;\n");
      out.write("                color: #fff;\n");
      out.write("                transition: all 0.3s;\n");
      out.write("            }\n");
      out.write("            #sidebar.active{\n");
      out.write("                margin-left: -250px;\n");
      out.write("                margin-top: 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #sidebar .sidebar-header{\n");
      out.write("                padding: 20px;\n");
      out.write("                background: #6d7fcc;\n");
      out.write("            }\n");
      out.write("            #sidebar ul.components{\n");
      out.write("                padding: 20px 0px;\n");
      out.write("                border-bottom: 1px solid #000000;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #sidebar ul p{\n");
      out.write("                padding: 10px;\n");
      out.write("                font-size: 1.1em;\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #sidebar ul li a{\n");
      out.write("                padding: 10px;\n");
      out.write("                font-size: 1.1em;\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("            #sidebar ul li a:hover {\n");
      out.write("                color: #7386D5;\n");
      out.write("                background: #fff;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #sidebar ul li.active>a,\n");
      out.write("            a[aria-expanded=\"true\"] {\n");
      out.write("                color: #fff;\n");
      out.write("                background: #6d7fcc;\n");
      out.write("            }\n");
      out.write("            a[data-toggle=\"collapse\"] {\n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("            .dropdown-toggle::after {\n");
      out.write("                display: block;\n");
      out.write("                position: absolute;\n");
      out.write("                top: 50%;\n");
      out.write("                right: 20px;\n");
      out.write("                transform: translateY(-50%);\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            ul ul a {\n");
      out.write("                font-size: 0.9em !important;\n");
      out.write("                padding-left: 30px !important;\n");
      out.write("                background: #6d7fcc;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            ul.CTAs {\n");
      out.write("                padding: 20px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            ul.CTAs a {\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 0.9em !important;\n");
      out.write("                display: block;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                margin-bottom: 5px;\n");
      out.write("            }\n");
      out.write("            a.download{\n");
      out.write("                background: #fff;\n");
      out.write("                color: #7386D5;\n");
      out.write("            }\n");
      out.write("            a.article,\n");
      out.write("            a.article:hover {\n");
      out.write("                background: #6d7fcc !important;\n");
      out.write("                color: #fff !important;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #content {\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 20px;\n");
      out.write("                min-height: 100vh;\n");
      out.write("                transition: all 0.3s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @media(maz-width:768px){\n");
      out.write("                #sidebar{margin-left: -250px;}\n");
      out.write("                #sidebar.active{\n");
      out.write("                    margin-left: 0px;\n");
      out.write("                }\n");
      out.write("                #sidebarCollapse span{\n");
      out.write("                    display: none;\n");
      out.write("                </style>\n");
      out.write("\n");
      out.write("                <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css\">\n");
      out.write("\n");
      out.write("                <title>I-fly App</title>\n");
      out.write("\n");
      out.write("            </head>\n");
      out.write("            <body>\n");
      out.write("\n");
      out.write("                <div class=\"wrapper\">\n");
      out.write("                    <nav id=\"sidebar\">\n");
      out.write("                        <div class=\"sidebar-header\">\n");
      out.write("                            <h3>SEMESTER - I</h3>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <ul class=\"list-unstyled components\">\n");
      out.write("                            <p>CHEMISTRY</p>\n");
      out.write("                            <li class=\"active\">\n");
      out.write("                                <a href=\"#homeSubmenu\" data-toggle=\"collapse\" aria-expanded=\"false\" class=\"dropdown-toggle\">UNIT-1</a>\n");
      out.write("                                <ul class=\"collapse list-unstyled\" id=\"homeSubmenu\">\n");
      out.write("                                    <li class=\"lis\"><a class=\"dis\" href=\"\">Definations</a></li> \n");
      out.write("                                    <li > <a href=\"\">classification and calorific values</a></li> \n");
      out.write("                                    <li > <a href=\"\">Dulong's Formula</a> </li>\n");
      out.write("                                    <li > <a href=\"\">Determination of calorific value of fuels(bomb's calorimeter)</a></li>\n");
      out.write("                                    <li > <a href=\"\">Determination of calorific value of fuels (Boy's Gas calorimeter)</a></li>\n");
      out.write("                                    <li > <a href=\"\">Cracking</a></li>\n");
      out.write("                                    <li > <a href=\"\">Octane and Cetane numbers</a></li> \n");
      out.write("                                    <li > <a href=\"\">High&Low temperature carbonization</a> </li>\n");
      out.write("                                    <li > <a href=\"\">Manufacture of coke(otto-Hoffman)</a> </li>\n");
      out.write("                                    <li > <a href=\"\">Proximate and ultimate analysis of coke</a></li>\n");
      out.write("                                    <li > <a href=\"\">combustion of fuels</a></li>\n");
      out.write("\n");
      out.write("                                </ul> \n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#pageSubmenu\" data-toggle=\"collapse\" aria-expanded=\"false\" class=\"dropdown-toggle\">UNIT- 2</a>\n");
      out.write("                                <ul class=\"collapse list-unstyled\" id=\"pageSubmenu\">\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">page1</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">page2</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">page3</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul> \n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#pageSubmenu\" data-toggle=\"collapse\" aria-expanded=\"false\" class=\"dropdown-toggle\">UNIT- 3</a>\n");
      out.write("                                <ul class=\"collapse list-unstyled\" id=\"pageSubmenu\">\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">page1</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">page2</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">page3</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul> \n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#pageSubmenu\" data-toggle=\"collapse\" aria-expanded=\"false\" class=\"dropdown-toggle\">UNIT- 4</a>\n");
      out.write("                                <ul class=\"collapse list-unstyled\" id=\"pageSubmenu\">\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">page1</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">page2</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li>\n");
      out.write("                                        <a href=\"#\">page3</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul> \n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </nav>\n");
      out.write("\n");
      out.write("                    <div class=\"content\">\n");
      out.write("                        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("\n");
      out.write("                            <button type=\"button\" id=\"sidebarCollapse\" class=\"btn btn-info\">\n");
      out.write("                                <i class=\"fa fa-align-justify\"></i> <span>Maximize</span>\n");
      out.write("                            </button>\n");
      out.write("\n");
      out.write("                            <!--<a class=\"navbar-brand\" href=\"#\">Navbar</a> -->\n");
      out.write("                            <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                            </button>\n");
      out.write("                            <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n");
      out.write("                                <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                                    <li class=\"nav-item active\">\n");
      out.write("                                        <a class=\"nav-link\" href=\"#\">Home <span class=\"sr-only\">(current)</span></a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"nav-item\">\n");
      out.write("                                        <a class=\"nav-link\" href=\"#\">Features</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"nav-item\">\n");
      out.write("                                        <a class=\"nav-link\" href=\"#\">uploaded notes</a>\n");
      out.write("                                    </li>\n");
      out.write("                                    <li class=\"nav-item\">\n");
      out.write("                                        <a class=\"nav-link disabled\" href=\"#\">Profile</a>\n");
      out.write("                                    </li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <h2>Collapsible Sidebar Using Bootstrap 4</h2>\n");
      out.write("\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n");
      out.write("\n");
      out.write("                        <div class=\"line\"></div>\n");
      out.write("\n");
      out.write("                        <h2>Collapsible Sidebar Using Bootstrap 4</h2>\n");
      out.write("\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n");
      out.write("\n");
      out.write("                        <div class=\"line\"></div>\n");
      out.write("                        <h2>Collapsible Sidebar Using Bootstrap 4</h2>\n");
      out.write("\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n");
      out.write("                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n");
      out.write("\n");
      out.write("                        <div class=\"line\"></div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <!-- Optional JavaScript -->\n");
      out.write("                <!-- jQuery first, then Popper.js, then Bootstrap JS -->\n");
      out.write("                <script src=\"https://code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>\n");
      out.write("                <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>\n");
      out.write("                <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("                <script>\n");
      out.write("                    $(document).ready(function () {\n");
      out.write("                        $('#sidebarCollapse').on('click', function () {\n");
      out.write("                            $('#sidebar').toggleClass('active');\n");
      out.write("                        });\n");
      out.write("                    });\n");
      out.write("                </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </body>\n");
      out.write("        </html>");
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
