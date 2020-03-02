<%@page import="java.util.Random"%>
<%@page import="P.Email_DTO_DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Reset Password</title>
              <title>Registration Form</title>
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
        </style>

    </head>
    <body>
        <%@include file="Header.jsp" %>
        <section>
            <%@include file="Menu.jsp" %>
            <div class="container text-center text-white header">
                <h1>Forget Password</h1>
                <div class="ex">
        
        <%
            String email = request.getParameter("email");
            String uname = request.getParameter("username");
            boolean b = Email_DTO_DAO.searchEmail(uname, email);
            if(b) {
                //valid uname and email
                Random r = new Random();
                int x = r.nextInt(10000);
                System.out.println(x);
                String randumNum = String.valueOf(x);
                session.setAttribute("otp", x);
                Email_DTO_DAO.sendEmail(uname, email, randumNum);
                %>
                <!--otp form-->
                <form action="Search_Email.jsp" method="post">
                        <table style="with: 50%">
                            <tr>
                                <td>Username </td>
                                <td width="50"><input type="text" name="username" value="<%=uname%>" readonly=""/></td>
                            </tr>
                            <tr>
                                <td>Email Id </td>
                                <td><input type="text" name="email" value="<%=email%>" readonly="" /></td>
                            </tr>
                            <tr>
                                <td>OTP </td>
                                <td><input type="text" name="otp" /></td>
                            </tr>
                            <tr>
                                <td width="150" align="center"><input type="submit" value="Check OTP" /></td>
                            </tr>
                        </table>
                    </form>
                <%
            } else {
                //invalid uname or email
                out.println("Invalid Username or Email Id");
                request.getRequestDispatcher("Search_Email.jsp").include(request, response);
            }
        %>
                </div>
            </div>
        </section>
    </body>
</html>
