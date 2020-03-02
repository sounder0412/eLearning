<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">     
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    </head>

    <style type="text/css">
    body{
        background-image:url("https://www.agdelta.com/wp-content/uploads/2018/06/website-parallax-background-C.jpg");
        background-size: 100px 100px;
        background-attachment: fixed;
        width: 100%;
        height: 660px;
        background-size: cover;
        background-position: center;

    }
    h1{
        text-transform: uppercase;
        margin-top: 10px;
    }
    a{
        color: white;
        text-transform: none;
        font-size: 30px;
    }
    a:hover{
        text-decoration: none;
        color: royalblue;
    }
        
    .myclass{
        padding: 0px 0px 60px;
        height: 700px;
    }
    .myclass h1{
        font-size: 50px;
        font-weight: bold;
    }
    .rowsetting{
        margin-top: 20px;
        margin-bottom: 50px;
    }
    .imgsetting{
        border-radius:50%;
        width: 100px;
        height: 100px;
    }
    .fa{
        margin-top: 20px;
        margin-bottom: 30px;
    }
    .rowsetting h2{
        margin-top: 20px;
        font-weight: bold;
        font-size: 30px;
    }
    /*.rowsetting p{
        padding:10px;
        color: #6c7575;
    }*/

    </style>
    <body>
        <h1 class="text-white" style="text-align: center; padding-top: 10px; padding-bottom: 10px;">Add / Update  Files</h1>
      
      <section class="container myclass text-center text-white">
       
      <div class="row rowsetting">
        <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
            <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-home fa-3x text-white"></i></div>
            <a href="Home.jsp">Home Page</a>
           
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
            <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-user-plus fa-3x text-white"></i></div>
            <a href="Registration_Form.jsp">Registration Form</a>
            
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
            <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-sign-in fa-3x text-white"></i></div>
            <a href="Login_Form.jsp">Login Form</a>
            
        </div>
      </div>
      
      <div class="row rowsetting">
        <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
            <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-database fa-3x text-white"></i></div>
            <a href="Branch.jsp">Add Branch</a>

        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
            <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-book fa-3x text-white"></i></div>
            <a href="Notes.jsp">Add Notes</a>
            
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
            <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-paper-plane fa-3x text-white"></i></div>
            <a href="Question Paper.jsp">Add Question Paper</a>
            
        </div>
      </div>
      
      <div class="row rowsetting">
        <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
            <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-file fa-3x text-white"></i></div>
            <a href="Subject.jsp">Add Subject</a>
            
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
            <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-video-camera fa-3x text-white"></i></div>
            <a href="Video_Lectures.jsp">Add Videos</a>
            
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
            <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-window-restore fa-3x text-white"></i></div>
            <a href="Tutorials.jsp">Add Tutorials</a>
            
        </div>
      </div>
</section>
    </body>
</html>
