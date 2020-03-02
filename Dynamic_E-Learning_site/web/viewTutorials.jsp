<%@page import="DAO.Tutorials_DAO"%>
<%@page import="DTO.Tutorials_DTO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tutorials View Page</title>
    </head>
    <body>
        
        <h2 align="center">List of Tutorials</h2>
        <table border='5' align='center'>
    <tr>
        <th>Tutorial Id</th>
        <th>Tutorial Branch Id</th>
        <th>Tutorial Subject Id</th>
        <th>Teacher Name</th>
        <th>Tutorial Description</th>
        <th>Tutorial File</th>
        
        <th>Edit Faculty</th>
        <th>Delete Faculty</th>
    </tr>
      <%
          List<Tutorials_DTO> al = Tutorials_DAO.view();
          for (Tutorials_DTO ele : al) {
              %>
                  <tr>
                      <th><%=ele.getT_id()%></th>
                    <th><%=ele.getB_id()%></th>
                    <th><%=ele.getSb_id()%></th>
                    <th><%=ele.getT_by()%></th>
                    <th><%=ele.getT_desc()%></th>
                    <th><%=ele.getT_file()%></th>
                    <th>Edit Branch</th>
                    <th>Delete Branch</th>
                </tr>
               <%
              }
      %>
        </table>
    </body>
</html>