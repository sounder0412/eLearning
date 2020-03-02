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
                background:url(sun.jpeg) ;
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
        <div class="ex">
            <h1>Branch Details</h1>
            <form action="saveBranch.jsp" method="post">
                <label> Branch Name:</label> <br>
                <input type="text" name="b_name" placeholder="Enter Branch" /><br>
                <label> Branch Description:</label><br>
                <input type="text" name="b_desc" placeholder="Enter Description"/><br>
                <input type="submit" value="Register" />
            </form>
            <a href="viewBranch.jsp" >View Existing Branch</a>
        </div>
    </body>
</html>