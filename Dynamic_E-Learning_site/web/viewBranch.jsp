<%@page import="DAO.Branch_DAO"%>
<%@page import="DTO.Branch_DTO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Branch View Page</title>
    </head>
    <body>
        
        <h2 align="center">List of Branch</h2>
        <table border='10' align='center'>
    <tr>
        <th>Branch Id</th>
        <th>Branch Name</th>
        <th>Branch Description</th>
        <th>Edit Branch</th>
        <th>Delete Branch</th>
    </tr>
      <%
          List<Branch_DTO> al = Branch_DAO.view();
          for (Branch_DTO ele : al) {
              %>
                  <tr>
                      <th><%=ele.getB_id()%></th>
                    <th><%=ele.getB_name()%></th>
                    <th><%=ele.getB_desc()%></th>
                    <th>Edit Branch</th>
                    <th>Delete Branch</th>
                </tr>
               <%
              }
      %>
        </table>
    </body>
</html>