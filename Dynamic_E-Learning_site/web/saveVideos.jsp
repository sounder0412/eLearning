<%@page import="DTO.Videos_Lectures_DTO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="DAO.Videos_Lectures_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Videos Save</title>
    </head>
    <body>
        <%
            String path = getServletContext().getRealPath("Videos");
            MultipartRequest mr = new MultipartRequest(request, path, 15*1024*1024);
            int b_id = Integer.parseInt(mr.getParameter("b_id"));
            int sb_id = Integer.parseInt(mr.getParameter("sb_id"));
            String l_topic = mr.getParameter("l_topic");
            String v_desc = mr.getParameter("v_desc");
            String t_name = mr.getParameter("t_name");
            String v_file = mr.getOriginalFileName("v_file");
            Videos_Lectures_DTO st = new Videos_Lectures_DTO(b_id, sb_id, l_topic, v_desc, t_name, v_file);
            int x = Videos_Lectures_DAO.register(st);
            if(x>0)
                out.println("saved !!");
        %>
    </body>
</html>