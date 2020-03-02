<%@page import="DAO.Faculty_Registration_DAO"%>
<%@page import="DTO.Faculty_Registration_DTO"%>
<%@page import="DTO.Student_Registration_DTO"%>
<%@page import="java.util.List"%>
<%@page import="DAO.Student_Registration_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String uname = request.getParameter("username");
            String pwd = request.getParameter("password");
            String type = request.getParameter("type");
            if(type.equals("student")) {
                //student login
                    Student_Registration_DTO s = new Student_Registration_DTO();
                    s.setUsername(uname);
                    s.setPassword(pwd);
                    List<Student_Registration_DTO> al = Student_Registration_DAO.validate(s);
                    if(al.isEmpty())
                    {
                        out.println("Invalid Login");
                        request.getRequestDispatcher("Login_Form.jsp").include(request, response);
                    }
                    else
                    {
                        out.println("Valid Login");
                        Student_Registration_DTO st = al.get(0);
                        session.setAttribute("student", st);
                        response.sendRedirect("Home.jsp");
                    }
            } else if(type.equals("faculty")) {
                //faculty login
                Faculty_Registration_DTO s = new Faculty_Registration_DTO();
                    s.setUsername(uname);
                    s.setPassword(pwd);
                    List<Faculty_Registration_DTO> al = Faculty_Registration_DAO.validate(s);
                    if(al.isEmpty())
                    {
                        out.println("Invalid Login");
                        request.getRequestDispatcher("Login_Form.jsp").include(request, response);
                    }
                    else
                    {
                        out.println("Valid Login");
                        Faculty_Registration_DTO st = al.get(0);
                        session.setAttribute("faculty", st);
                        response.sendRedirect("Home.jsp");
                    }
            }
        %>
    </body>
</html>