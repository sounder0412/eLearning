<%@page import="DAO.Subject_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Subject Save</title>
    </head>
    <body>
        <jsp:useBean id="st" class="DTO.Subject_DTO" />
        <jsp:setProperty name="st" property="*" />
        <%
            int x = Subject_DAO.register(st);
            if(x>0)
                out.println("saved !!");
        %>
    </body>
</html>