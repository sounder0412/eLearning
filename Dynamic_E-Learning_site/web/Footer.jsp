<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">     

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <!-- Popper JS --> 
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" type="text/css" href="css/MinorProj(FrontPage)Styling.css">

    </head>
    <style type="text/css">

        /**********************************DROPDOWN******************************* */   
        hr{
            width:400px;
            border-top: 1px solid #f8f8f8;
            border-bottom: 1px solid rgb(0,0,0,0.8); 
        }
        
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f1f1f1;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.8);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
            font-weight: bold;
        }

        .dropdown-content a:hover {background-color: #ddd;}

        .dropdown:hover .dropdown-content {display: block;}

        .dropdown:hover .dropbtn {background-color: #3e8e41;}

        .logo{
            float: left;
        }
        .logo img{
            height: 80px;
            transition: .5s;
            margin-left: 50px;
            margin-top: 15px;
        }

        .bg {
            padding: 1px; /* some padding */
            font-family: Paytone One;
            text-align: center; /* center the text */
            background: linear-gradient(90deg, #1CB5E0 0%, #000851 100%);
            color: white; /* white text color */
        }

        .bg h1 {
            font-size: 40px;
            text-align: center;
        }


        .bgimg{
            background-image:url("https://www.agdelta.com/wp-content/uploads/2018/06/website-parallax-background-C.jpg");
            background-size: 100px 100px;
            background-attachment: fixed;
            width: 100%;
            height: 660px;
            background-size: cover;
            background-position: center;

        }
        .headerset{
            padding-top: 200px;
            box-sizing: border-box;
            text-shadow: 0px 4px 3px rgba(0,0,0,0.4),
                0px 4px 3px rgba(0,0,0,0.1),
                0px 4px 3px rgba(0,0,0,0.1);

        }
        .headerset h2{
            font-size: 42px;
        }
        .headerset h1{
            font-size: 52px;
            font-weight: bold;
        }
        /*.navbar-collapse ul li a:hover{
          color: #pink;
        }*/


        .myclass{
            padding: 100px 0px 60px;
            height: 700px;
        }
        .myclass h1{
            font-size: 50px;
            font-weight: bold;
        }
        .rowsetting{
            margin: 80px 0px;
        }
        .imgsetting{
            border-radius:50%;
            width: 100px;
            height: 100px;
        }
        .fa-comments{
            margin-top: 20px;
        }
        .rowsetting h2{
            margin-top: 20px;
            font-weight: bold;
            font-size: 30px;
        }
        .rowsetting p{
            padding:10px;
            color: #6c7575;
        }

    </style>
</head>
<body>
    <section class="container myclass text-center">
        <h1>EVENTS</h1>
        <p>UpComming Events in GGSIPU Main Campus</p>
        <div class="row rowsetting">
            <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
                <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-comments fa-3x text-white"></i></div>
                <h2>Anugoonj</h2>
                <p>jumbotron-style component for calling extra attention to featured content or information. Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
                <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-comments fa-3x text-white"></i></div>
                <h2>Sports</h2>
                <p>jumbotron-style component for calling extra attention to featured content or information. Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
                <div class="imgsetting d-block m-auto bg-primary"><i class="fa fa-comments fa-3x text-white"></i></div>
                <h2>EMERGE 2020</h2>
                <p>jumbotron-style component for calling extra attention to featured content or information. Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
            </div>
        </div>
    </section>
    <footer>
        <div class="footer">
            <h6 class="navbar-dark bg-dark">&copy; 2019 GURU GOBIND SINGH INDRAPRASTHA UNIVERSITY | All rights reserved | </h6>
        </div> 
    </footer>
</body>
</html>