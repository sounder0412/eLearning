<%@page import="DAO.Videos_Lectures_DAO"%>
<%@page import="DTO.Videos_Lectures_DTO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Videos View Page</title>
    </head>
    <body>
        
        <h2 align="center">List of Videos</h2>
        <table border='5' align='center'>
    <tr>
        <th>Videos Id</th>
        <th>Videos Branch Id</th>
        <th>Videos Subject</th>
        <th>Videos Topic</th>
        <th>Videos Description</th>
        <th>Teacher Name</th>
        <th>Videos File</th>
        <th>Edit Faculty</th>
        <th>Delete Faculty</th>
    </tr>
      <%
          List<Videos_Lectures_DTO> al = Videos_Lectures_DAO.view();
          for (Videos_Lectures_DTO ele : al) {
              %>
                  <tr>
                      <th><%=ele.getV_id()%></th>
                    <th><%=ele.getB_id()%></th>
                    <th><%=ele.getSb_id()%></th>
                    <th><%=ele.getL_topic()%></th>
                    <th><%=ele.getV_desc()%></th>
                    <th><%=ele.getT_name()%></th>
                    <th><%=ele.getV_file()%></th>
                    <th>Edit Video</th>
                    <th>Delete Video</th>
                </tr>
               <%
              }
      %>
        </table>
    </body>
</html>