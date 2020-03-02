<%@page import="DAO.Branch_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Branch Save</title>
    </head>
    <body>
        <jsp:useBean id="st" class="DTO.Branch_DTO" />
        <jsp:setProperty name="st" property="*" />
        <%
            int x = Branch_DAO.register(st);
            if(x>0)
                out.println("saved !!");
        %>
    </body>
</html>