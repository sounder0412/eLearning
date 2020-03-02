<%@page import="DAO.Branch_DAO"%>
<%@page import="DTO.Branch_DTO"%>
<%@page import="DAO.Subject_DAO"%>
<%@page import="java.util.List"%>
<%@page import="DTO.Subject_DTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Branch Details</title>

        <link rel="stylesheet" type="text/css" >
        <style>
        body{
        margin:0;
        padding:0;
        background:url(open.jpeg) ;
        background-size: cover;
        background-position: center;
        font-family: sans-serif;
        }
        h1{
        text-align:center;
        padding:20px;
        
        }
       
        .ex{
       
        width:320px;
        height: 500px;
        background:url(ped.jpeg);
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
            font-size: 40px;
            color: #000000;
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
            padding: 5px;
        }  

        .ex input[type="submit"]
        {
          border:none; 
          outline: none;
          height: 40px;
          background:  #1c8adb;
          color:#fff;
          font-size: 18px;
          border-radius: 4px;
        }
        .ex input[type="text"]
        {
            color: #000000;
        }
        .ex input[type="submit"]:hover
        {
            cursor: pointer;
            background: #39dc79;
            color: #000;
        }
         .ex input[type="file"]
        {
            color: #000000;
            width: 100%;
        }

         .ex select{
            width: 100%;
            height: 10%;
            padding: 4px;
            margin-bottom: 20px;
            color:#000000; 
        }
        .ex a{
            text-decoration: none;
            font-size: 15px;
            color:#000000;
            margin-left: 70px;
        }
        .ex a:hover{
            color: crimson;
        }
       
    </style>
    </head>
    <body>
       
        
        <div class="ex">
           
          <h1>Notes Details!</h1>
            <form action="saveNotes.jsp" method="post" enctype="multipart/form-data">
               
                
               
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
                            </select>           
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
                            </select>
                <input type="text" name="notes_by" placeholder="Notes by"/><br>
                <input type="file" name="notes_file" placeholder="Notes file" />
               <input type="submit" value="Upload" />
            </form>
             <a href="viewNotes.jsp" >View Existing Notes</a>       
       </div>        
    </body>
</html>