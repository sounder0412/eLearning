<%@page import="DAO.Subject_DAO"%>
<%@page import="DTO.Subject_DTO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Subject View Page</title>
    </head>
    <body>
        
        <h2 align="center">List of Subject</h2>
        <table border='5' align='center'>
    <tr>
        <th>Subject Id</th>
        <th>Subject Branch</th>
        <th>Student Name</th>
        <th>Semester</th>
       <th>Edit Subject</th>
        <th>Delete Subject</th>
    </tr>
      <%
          List<Subject_DTO> al = Subject_DAO.viewAll();
          for (Subject_DTO ele : al) {
              %>
                  <tr>
                      <th><%=ele.getSb_id()%></th>
                    <th><%=ele.getB_id()%></th>
                    <th><%=ele.getS_name()%></th>
                    <th><%=ele.getSemester()%></th>
                    <th>Edit Branch</th>
                    <th>Delete Branch</th>
                </tr>
               <%
              }
      %>
        </table>
    </body>
</html>