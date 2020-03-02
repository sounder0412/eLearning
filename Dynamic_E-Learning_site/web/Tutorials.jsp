<%@page import="DTO.Subject_DTO"%>
<%@page import="DAO.Subject_DAO"%>
<%@page import="java.util.List"%>
<%@page import="DAO.Branch_DAO"%>
<%@page import="DTO.Branch_DTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tutorials Details</title>
    </head>
    <body>
        <h1>Tutorials Details</h1>
        <div class="ex">
            <form action="saveTutorials.jsp" method="post" enctype="multipart/form-data">
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
                        List<Subject_DTO> all = Subject_DAO.viewAll();
                        for (Subject_DTO b : all) {
                    %>
                    <option value="<%=b.getSb_id()%>"><%=b.getS_name()%></option>
                    <%
                        }
                    %>
                </select><br>
                Tutorial Topic <input type="text" name="t_topic" /><br>
                Tutorial by <input type="text" name="t_by" /><br>
                Tutorial Description<input type="text" name="t_desc" /><br>
                Tutorial File<input type="file" name="t_file" /><br>
                <input type="submit" value="Upload" />
            </form>
            <a href="viewTutorials.jsp" >View Existing Tutorials</a>
            <br>	
        </div>
    </body>
</html>
