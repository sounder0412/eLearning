<%@page import="DAO.Branch_DAO"%>
<%@page import="DAO.Subject_DAO"%>
<%@page import="DTO.Subject_DTO"%>
<%@page import="DTO.Branch_DTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Question Paper Details</title>
    <link rel="stylesheet" type="text/css" >
    <style>
            body{
                margin:0;
                padding:0;
                background:url(mount.jpeg) ;
                background-size: cover;
                background-position: center;
                font-family: sans-serif;
                height: 100%;
            }
            h1{
                text-align:center;
                padding:20px;

            }

            .ex{

                width:320px;
                height: 480px;
                background: rgba(0, 0, 0, 0.5);
                color:#fff;
                top: 50%;
                left: 50%;
                position: absolute;
                transform: translate(-50% ,-50%);
                box-sizing: border-box;
                border-radius: 10px;
                padding: 70px 30px;
            }
            h1{
                margin: 0;
                padding: 0 0 20px;
                text-align: center;
                font-size: 22px;
            }
            .ex label{
                margin: 0;
                padding: 10px;
                font-weight: bold;
                color: #ffffff;
            }
            .ex input{
                width: 100%;
                margin-bottom: 22px;
            }  
            .ex input[type="text"],input[type="text"]
            {
                border: none;
                border-bottom: 1px solid #fff;
                background: transparent;
                outline: none;
                height: 40px;
                padding: 10px;
                color:#D4D8E2;
                font-size: 16px;
            }
            .ex input[type="submit"]
            {
                border:none; 
                outline: none;
                height: 40px;
                background: #1c8adb;
                color:#fff;
                font-size: 18px;
                border-radius: 20px;
            }
            .ex select{
                width: 100%;
            }
            .ex input[type="submit"]:hover
            {
                cursor: pointer;
                background: #39dc79;
                color: #000;
            }
            .ex a{
                text-decoration: none;
                font-size: 14px;
                color:#ffffff;
                margin-left: 60px;
            }
            .ex a:hover{
                color: crimson;
            }
            </style>
</head>
<body>
    <h1>Question Paper Details</h1>
    <div class="ex">
        <h1>Questions Paper Details</h1>
        <form action="saveNotes.jsp" method="post" enctype="multipart/form-data">
            <label> Branch:</label> <br>
            <select name="b_id">
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
            <label> Subject:</label><br>
            <select name="sb_id">
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
            <label> Year:</label>  <br>
            <input type="text" name="year" placeholder="Enter Year"><br>
            <label> Question paper file:</label><br> 
            <input type="file" name="qp_file"/>
            <input type="submit" value="Upload" />
        </form>
        <a href="viewBranch.jsp" >View Existing Question paper</a>
    </div>
</body>
</html>