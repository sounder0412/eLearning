package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DAO.Branch_DAO;
import DTO.Branch_DTO;
import DAO.Subject_DAO;
import java.util.List;
import DTO.Subject_DTO;

public final class Notes_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Branch Details</title>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" >\n");
      out.write("        <style>\n");
      out.write("        body{\n");
      out.write("        margin:0;\n");
      out.write("        padding:0;\n");
      out.write("        background:url(open.jpeg) ;\n");
      out.write("        background-size: cover;\n");
      out.write("        background-position: center;\n");
      out.write("        font-family: sans-serif;\n");
      out.write("        }\n");
      out.write("        h1{\n");
      out.write("        text-align:center;\n");
      out.write("        padding:20px;\n");
      out.write("        \n");
      out.write("        }\n");
      out.write("       \n");
      out.write("        .ex{\n");
      out.write("       \n");
      out.write("        width:320px;\n");
      out.write("        height: 500px;\n");
      out.write("        background:url(ped.jpeg);\n");
      out.write("        color:#fff;\n");
      out.write("        top: 50%;\n");
      out.write("        left: 50%;\n");
      out.write("        position: absolute;\n");
      out.write("        transform: translate(-50% ,-50%);\n");
      out.write("        box-sizing: border-box;\n");
      out.write("        border-radius: 10px;\n");
      out.write("        padding: 70px 30px;\n");
      out.write("        }\n");
      out.write("        h1{\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0 0 20px;\n");
      out.write("            text-align: center;\n");
      out.write("            font-size: 40px;\n");
      out.write("            color: #000000;\n");
      out.write("        }\n");
      out.write("        .ex label{\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 10px;\n");
      out.write("            font-weight: bold;\n");
      out.write("            color: #ffffff;\n");
      out.write("        }\n");
      out.write("        .ex input{\n");
      out.write("            width: 100%;\n");
      out.write("            margin-bottom: 22px;\n");
      out.write("            padding: 5px;\n");
      out.write("        }  \n");
      out.write("\n");
      out.write("        .ex input[type=\"submit\"]\n");
      out.write("        {\n");
      out.write("          border:none; \n");
      out.write("          outline: none;\n");
      out.write("          height: 40px;\n");
      out.write("          background:  #1c8adb;\n");
      out.write("          color:#fff;\n");
      out.write("          font-size: 18px;\n");
      out.write("          border-radius: 4px;\n");
      out.write("        }\n");
      out.write("        .ex input[type=\"text\"]\n");
      out.write("        {\n");
      out.write("            color: #000000;\n");
      out.write("        }\n");
      out.write("        .ex input[type=\"submit\"]:hover\n");
      out.write("        {\n");
      out.write("            cursor: pointer;\n");
      out.write("            background: #39dc79;\n");
      out.write("            color: #000;\n");
      out.write("        }\n");
      out.write("         .ex input[type=\"file\"]\n");
      out.write("        {\n");
      out.write("            color: #000000;\n");
      out.write("            width: 100%;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("         .ex select{\n");
      out.write("            width: 100%;\n");
      out.write("            height: 10%;\n");
      out.write("            padding: 4px;\n");
      out.write("            margin-bottom: 20px;\n");
      out.write("            color:#000000; \n");
      out.write("        }\n");
      out.write("        .ex a{\n");
      out.write("            text-decoration: none;\n");
      out.write("            font-size: 15px;\n");
      out.write("            color:#000000;\n");
      out.write("            margin-left: 70px;\n");
      out.write("        }\n");
      out.write("        .ex a:hover{\n");
      out.write("            color: crimson;\n");
      out.write("        }\n");
      out.write("       \n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        \n");
      out.write("        <div class=\"ex\">\n");
      out.write("           \n");
      out.write("          <h1>Notes Details!</h1>\n");
      out.write("            <form action=\"saveNotes.jsp\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("               \n");
      out.write("                \n");
      out.write("               \n");
      out.write("                <select name=\"b_id\">\n");
      out.write("                                <option selected=\"\" disabled=\"\">Select Branch Id</option>\n");
      out.write("                                ");

                                    List<Branch_DTO> al = Branch_DAO.view();
                                    for (Branch_DTO b : al) {
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print(b.getB_id());
      out.write('"');
      out.write('>');
      out.print(b.getB_name());
      out.write("</option>\n");
      out.write("                                ");

                                    }
                                
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                \n");
      out.write("               \n");
      out.write("                 <select name=\"sb_id\">\n");
      out.write("                                <option selected=\"\" disabled=\"\">Select Subject Id</option>\n");
      out.write("                                ");

                                    List<Subject_DTO> sl = Subject_DAO.viewAll();
                                    for (Subject_DTO s : sl) {
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print(s.getSb_id());
      out.write('"');
      out.write('>');
      out.print(s.getS_name());
      out.write("</option>\n");
      out.write("                                ");

                                    }
                                
      out.write("\n");
      out.write("                            </select>\n");
      out.write("                <input type=\"text\" name=\"notes_by\" placeholder=\"Notes by\"/><br>\n");
      out.write("                <input type=\"file\" name=\"notes_file\" placeholder=\"Notes file\" />\n");
      out.write("                    \n");
      out.write("               <input type=\"submit\" value=\"Upload\" />\n");
      out.write("            </form>\n");
      out.write("            \n");
      out.write("             <a href=\"viewNotes.jsp\" >View Existing Notes</a>\n");
      out.write("            \n");
      out.write("       </div>        \n");
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
