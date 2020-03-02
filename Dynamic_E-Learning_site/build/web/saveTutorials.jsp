<%@page import="DAO.Tutorials_DAO"%>
<%@page import="DTO.Tutorials_DTO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Tutorials Save</title>
    </head>
    <body>
        <%
            String path = getServletContext().getRealPath("Tutorials");
            MultipartRequest mr = new MultipartRequest(request, path, 15*1024*1024);
            int b_id = Integer.parseInt(mr.getParameter("b_id"));
            int sb_id = Integer.parseInt(mr.getParameter("sb_id"));
            String t_topic = mr.getParameter("t_topic");
            String t_by = mr.getParameter("t_by");
            String t_desc = mr.getParameter("t_desc");
            String t_file = mr.getOriginalFileName("t_file");
            Tutorials_DTO tt = new Tutorials_DTO(b_id, sb_id, t_topic, t_by, t_desc, t_file);
            int x = Tutorials_DAO.register(tt);
            if(x>0)
                out.println("saved !!");
        %>
    </body>
</html>