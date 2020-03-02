<%@page import="DAO.Student_Registration_DAO"%>
<%@page import="DTO.Student_Registration_DTO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Student View Page</title>
    </head>
    <body>
        
        <h2 align="center">List of Student</h2>
        <table border='5' align='center'>
    <tr>
        <th>Student Id</th>
        <th>Student User Name</th>
        <th>Student Full Name</th>
        <th>Student Email</th>
        <th>Student Phone</th>
        <th>Student Password</th>
        <th>Edit Faculty</th>
        <th>Delete Faculty</th>
    </tr>
      <%
          List<Student_Registration_DTO> al = Student_Registration_DAO.view();
          for (Student_Registration_DTO ele : al) {
              %>
                  <tr>
                      <th><%=ele.getS_id()%></th>
                    <th><%=ele.getUsername()%></th>
                    <th><%=ele.getFullname()%></th>
                    <th><%=ele.getEmail()%></th>
                    <th><%=ele.getPhone()%></th>
                    <th><%=ele.getPassword()%></th>
                    <th>Edit Branch</th>
                    <th>Delete Branch</th>
                </tr>
               <%
              }
      %>
        </table>
    </body>
</html>