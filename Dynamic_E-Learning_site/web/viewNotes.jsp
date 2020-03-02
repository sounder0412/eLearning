<%@page import="DTO.Branch_DTO"%>
<%@page import="DAO.Notes_DAO"%>
<%@page import="DTO.Notes_DTO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Notes View Page</title>
    </head>
    <body>
        <h2 align="center">List of Notes</h2>
        <table border='10' align='center'>
            <tr>
                <th>Notes Id</th>
                <th>Branch Id</th>
                <th>Subject Id</th>
                <th>Notes Description</th>
                <th>Notes By</th>
                <th>Notes File</th>
                <th>Edit Branch</th>
                <th>Delete Branch</th>
            </tr>
            <%
                List<Notes_DTO> al = Notes_DAO.view();
                for (Notes_DTO ele : al) {
            %>
            <tr>
                <th><%=ele.getN_id()%></th>
                <th><%=ele.getB_id()%></th>
                <th><%=ele.getSb_id()%></th>
                <th><%=ele.getNotes_desc()%></th>
                <th><%=ele.getNotes_by()%></th>
                <th><%=ele.getNotes_file()%></th>
                <th>Edit Branch</th>
                <th>Delete Branch</th>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>