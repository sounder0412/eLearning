<%@page import="DAO.Branch_DAO"%>
<%@page import="DTO.Branch_DTO"%>
<%@page import="DAO.Subject_DAO"%>
<%@page import="java.util.List"%>
<%@page import="DTO.Subject_DTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Details</title>
    </head>
    <body>
        <h1>Subject Details</h1>
        <div class="ex">
            <form action="saveSubject.jsp" method="post">
                Branch <select name="b_id">
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
                Subject Name <input type="text" name="s_name" /><br>
                Semester<select name="semester"> 
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                </select>
                <input type="submit" value="Register" />
            </form>
            <a href="viewSubjects.jsp" >View Existing Subjects</a>
            <br>	
        </div>
    </body>
</html>