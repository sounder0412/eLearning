<%@page import="DAO.Question_Paper_DAO"%>
<%@page import="DTO.Question_Paper_DTO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Question Paper View Page</title>
    </head>
    <body>
        
        <h2 align="center">List of Question Paper</h2>
        <table border='10' align='center'>
    <tr>
        <th>Question Id</th>
        <th>Question Paper Branch</th>
        <th>Question Paper Subject</th>
        <th>Question Paper File</th>
        <th>Edit Branch</th>
        <th>Delete Branch</th>
    </tr>
      <%
          List<Question_Paper_DTO> al = Question_Paper_DAO.view();
          for (Question_Paper_DTO ele : al) {
              %>
                  <tr>
                      <th><%=ele.getQp_id()%></th>
                    <th><%=ele.getB_id()%></th>
                    <th><%=ele.getSb_id()%></th>
                    <th><%=ele.getQp_file()%></th>
                    <th>Edit Branch</th>
                    <th>Delete Branch</th>
                </tr>
               <%
              }
      %>
        </table>
    </body>
</html>