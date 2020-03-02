<%@page import="DAO.Subject_DAO"%>
<%@page import="DTO.Subject_DTO"%>
<%@page import="DAO.Branch_DAO"%>
<%@page import="DTO.Branch_DTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Video Lecture Details</title>
    </head>
    <body>
        <h1>Video Lecture Details</h1>
        <div class="ex">
            <form action="saveVideos.jsp" method="post" enctype="multipart/form-data">
                Branch<select name="b_id">
                    <option selected="" disabled="">Select Branch Id</option>
                    <%
                        List<Branch_DTO> al = Branch_DAO.view();
                        for (Branch_DTO b : al) {
                    %>
                    <option value="<%=b.getB_id()%>"><%=b.getB_name()%></option>
                    <%
                        }
                    %>
                </select><br>
                Subject<select name="sb_id">
                    <option selected="" disabled="">Select Subject Id</option>
                    <%
                        List<Subject_DTO> sl = Subject_DAO.viewAll();
                        for (Subject_DTO s : sl) {
                    %>
                    <option value="<%=s.getSb_id()%>"><%=s.getS_name()%></option>
                    <%
                        }
                    %>
                </select><br>
                Lecture Topic<input type="text" name="l_topic" /><br>
                Video Description<input type="text" name="v_desc" /><br>
                Teacher Name<input type="text" name="t_name" /><br>
                Video File<input type="file" name="v_file" /><br>
                <input type="submit" value="Upload" />
            </form>
            <a href="viewVideos.jsp" >View Existing Videos</a>
            <br>	
        </div>
    </body>
</html>
