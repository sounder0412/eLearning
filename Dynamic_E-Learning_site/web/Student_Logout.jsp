<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("student", null);
            session.invalidate();
            response.sendRedirect("Home.jsp");
        %>
    </body>
</html>