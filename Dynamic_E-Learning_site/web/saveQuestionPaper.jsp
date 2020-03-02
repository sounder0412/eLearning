<%@page import="DAO.Question_Paper_DAO"%>
<%@page import="DTO.Question_Paper_DTO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Question Paper Save</title>
    </head>
    <body>
        <%
            String path = getServletContext().getRealPath("Question Paper");
            MultipartRequest mr = new MultipartRequest(request, path, 15*1024*1024);
            int b_id = Integer.parseInt(mr.getParameter("b_id"));
            int sb_id = Integer.parseInt(mr.getParameter("sb_id"));
            String year = mr.getParameter("year");
            String qp_file = mr.getOriginalFileName("qp_file");
            Question_Paper_DTO qp = new Question_Paper_DTO(b_id, sb_id, qp_file, year);
            int x = Question_Paper_DAO.register(qp);
            if(x>0)
                out.println("saved !!");
        %>
    </body>
</html>