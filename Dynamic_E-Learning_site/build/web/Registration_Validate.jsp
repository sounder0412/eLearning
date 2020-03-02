<%@page import="DTO.Student_Registration_DTO"%>
<%@page import="DAO.Faculty_Registration_DAO"%>
<%@page import="DTO.Faculty_Registration_DTO"%>
<%@page import="java.util.List"%>
<%@page import="DAO.Student_Registration_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Validate</title>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String fullname = request.getParameter("fullname");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            String type = request.getParameter("type");
            if(type.equals("student")) {
                //student register
                    Student_Registration_DTO s = new Student_Registration_DTO();
                    s.setUsername(username);
                    s.setFullname(fullname);
                    s.setEmail(email);
                    s.setPhone(Long.parseLong(phone));
                    s.setPassword(password);
                    int x = Student_Registration_DAO.register(s);
                    if(x>0)
                    {
                        out.println("Student Registered !!");
                        request.getRequestDispatcher("Login_Form.jsp").include(request, response);
                    }
            } else if(type.equals("faculty")) {
                //faculty register
                
                Faculty_Registration_DTO s = new Faculty_Registration_DTO();
                    s.setUsername(username);
                    s.setFullname(fullname);
                    s.setEmail(email);
                    s.setPhone(Long.parseLong(phone));
                    s.setPassword(password);
                    int x = Faculty_Registration_DAO.register(s);
                    if(x>0)
                    {
                        out.println("Faculty Registered !!");
                        request.getRequestDispatcher("Login_Form.jsp").include(request, response);
                    }
            }
        %>
    </body>
</html>
