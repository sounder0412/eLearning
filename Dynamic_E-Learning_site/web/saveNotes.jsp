<%@page import="DAO.Notes_DAO"%>
<%@page import="DTO.Notes_DTO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Notes Save</title>
    </head>
    <body>
        <%
            String path = getServletContext().getRealPath("Notes");
            MultipartRequest mr = new MultipartRequest(request, path, 15*1024*1024);
            int b_id = Integer.parseInt(mr.getParameter("b_id"));
            int sb_id = Integer.parseInt(mr.getParameter("sb_id"));
            String notes_desc = mr.getParameter("notes_desc");
            String notes_by = mr.getParameter("notes_by");
            String notes_file = mr.getOriginalFileName("notes_file");
            Notes_DTO nt = new Notes_DTO(b_id, sb_id,  notes_desc, notes_by, notes_file);
            int x = Notes_DAO.register(nt);
            if(x>0)
                out.println("saved !!");
        %>
    </body>
</html>