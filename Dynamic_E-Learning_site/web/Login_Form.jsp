<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Login</title>
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
        <link rel="stylesheet" type="text/css" href="style.css" />

        <style>
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
                padding: 1px; 
                font-family: Paytone One;
                text-align: center; 
                background: linear-gradient(90deg, #1CB5E0 0%, #000851 100%);
                color: white;
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
            .header{
                padding-top: 200px;
                box-sizing: border-box;
                text-shadow: 0px 4px 3px rgba(0,0,0,0.4),
                    0px 4px 3px rgba(0,0,0,0.1),
                    0px 4px 3px rgba(0,0,0,0.1);

            }
            .header h2{
                font-size: 42px;
            }
            .header h1{
                font-size: 52px;
                font-weight: bold;
            }
            body{
                font-family: "Arial";
                background:url("https://www.agdelta.com/wp-content/uploads/2018/06/website-parallax-background-C.jpg");            
                background-size: cover;
                background-position: center;

            }

            /*************Form*************/
            .container1{
                display: grid;
                grid-template-columns: 1fr 2fr;
                background-color: royalblue;
                background: linear-gradient(90deg, #1CB5E0 0%, #000851 100%);
                width: 700px;
                height: 420px;
                margin-left: 25%;
                margin-top: 8%;
                border-radius: 5px;

            }
            .content-holder{
                text-align: center;
            }
            .content-holder img{
                width: 100px;
                height: 130px;
                padding-top: 30%;
                color: white;
            }
            .content-holder h1{
                color: white;
                font-size: 15px;
                padding: 50px;
                font-weight: lighter;
            }
            .button-1{
                border: none;
                font-size: 15px;
                padding: 10px;
                width: 160px;
                border-radius: 5px;
                color: black;
                background-color: white;
            }
            .button-2{
                border: none;
                font-size: 15px;
                padding: 10px;
                width: 160px;
                border-radius: 5px;
                color: black;
                background-color: white;
                display: none;
            }
            .box-2{
                background-color: white;
                margin: 5px;
            }
            .login-form-container{
                text-align: center;
                margin-top: 25px;

            }
            .login-form-container h1{
                color: black;
                font-size: 21px;
                font-weight: lighter;
                font-size: 2rem;
                font: 'Cookie', Helvetica, sans-serif;
            }
            .input-field{
                font-size: 16px;
                padding: 8px;
                border: 1px solid royalblue;
                border-radius: 5px;
                outline: none;
                width: 250px;
            }
            .login-button1{
                font-size: 16px;
                padding: 10px;
                border: none;
                border-radius: 5px;
                outline: none;
                width: 250px;
                background: linear-gradient(90deg, #1CB5E0 0%, #000851 100%);;
                color: white;
            }
        </style>
    </head>
    <body>

        <section>

            <div class="container1">
                <div class="box-1">
                    <div class="content-holder">
                        <img src="https://image.flaticon.com/icons/png/512/33/33308.png">               
                        <h1>This is Login Page Here you can log in into your account.</h1>
                    </div>

                </div>
                <div class="ex box-2">
                    <form action="Login_Validate.jsp" method="post">
                        <div class="login-form-container">
                            <h1>Login</h1><br>
                            <input type="text" placeholder="Username" class="input-field" name="username"/>
                            <br><br>
                            <input type="password" placeholder="Password" class="input-field" name="password"/>
                            <br><br>
                            <div>
                                <label id="a">Student</label>
                                <input for="a" type="radio" name="type" value="student">
                                <label id="b">Faculty</label>
                                <input for="b" type="radio" name="type" value="faculty">
                            </div>
                            <input type="submit" class="login-button1" value="Login"><br><br>
                            <a href="Forget_Password.jsp" >Forgot Password</a><br>
                            <a href="Registration_Form.jsp" >New User</a><br>
                            </form>
                        </div>
                </div>
            </div>
        </section>
    </body>
</html>