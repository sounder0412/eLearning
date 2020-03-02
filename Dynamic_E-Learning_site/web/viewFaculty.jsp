<%@page import="DAO.Faculty_Registration_DAO"%>
<%@page import="DTO.Faculty_Registration_DTO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Faculty View Page</title>
    </head>
    <body>
        
        <h2 align="center">List of Faculty</h2>
        <table border='10' align='center'>
    <tr>
        <th>Faculty Id</th>
        <th>Faculty User Name</th>
        <th>Faculty Full Name</th>
        <th>Faculty Email</th>
        <th>Faculty Phone</th>
        <th>Faculty Password</th>
        <th>Edit Faculty</th>
        <th>Delete Faculty</th>
    </tr>
      <%
          List<Faculty_Registration_DTO> al = Faculty_Registration_DAO.view();
          for (Faculty_Registration_DTO ele : al) {
              %>
                  <tr>
                      <th><%=ele.getF_id()%></th>
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