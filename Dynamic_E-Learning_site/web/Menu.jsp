<%@page import="DTO.Faculty_Registration_DTO"%>
<%@page import="DAO.Branch_DAO"%>
<%@page import="DTO.Branch_DTO"%>
<%@page import="java.util.List"%>
<%@page import="DTO.Student_Registration_DTO"%>

<head>
    
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
<nav class="navbar navbar-inverse navbar-expand-md navbar-dark bg-dark sticky-top">
    <div class="container">
        <a class="navbar-brand" href="Home.jsp"><i class="fa fa-home"></i></span>  HOME</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse text-center" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <%
                    List<Branch_DTO> al = Branch_DAO.view();
                    for (Branch_DTO b : al) {
                          %>
                          <li class="nav-item dropdown">
                            <a class="nav-link text-white" href="#"><%=b.getB_name()%></a>
                            <div class="dropdown-content">
                                <a href="ViewSubjects.jsp?branch=<%=b.getB_id()%>&sem=1">Sem 1</a>
                                <a href="ViewSubjects.jsp?branch=<%=b.getB_id()%>&sem=2">Sem 2</a>
                                <a href="ViewSubjects.jsp?branch=<%=b.getB_id()%>&sem=3">Sem 3</a>
                                <a href="ViewSubjects.jsp?branch=<%=b.getB_id()%>&sem=4">Sem 4</a>
                                <a href="ViewSubjects.jsp?branch=<%=b.getB_id()%>&sem=5">Sem 5</a>
                                <a href="ViewSubjects.jsp?branch=<%=b.getB_id()%>&sem=6">Sem 6</a>
                                <a href="ViewSubjects.jsp?branch=<%=b.getB_id()%>&sem=7">Sem 7</a>
                                <a href="ViewSubjects.jsp?branch=<%=b.getB_id()%>&sem=8">Sem 8</a>
                            </div>
                        </li>
                          <%
                        }
                %>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">CONTACT <!-- <span class="sr-only">(current)</span> --></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white" href="#">ABOUT US <!-- <span class="sr-only">(current)</span> --></a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <%
                    if(session.getAttribute("student")!=null) {
                        //student is logged in
                        Student_Registration_DTO st = (Student_Registration_DTO)session.getAttribute("student");
                        %>
                        <li class="nav-right">
                            <a class="nav-link text-white" href="#"> Welcome <%=st.getFullname()%></a>
                        </li>
                        <li class="nav-right">
                            <a class="nav-link text-white" href="Student_Logout.jsp"><i class="fa fa-sign-out"></i> Logout</a>
                        </li>
                        <%
                    }else if(session.getAttribute("faculty")!=null) {
                        //student is logged in
                        Faculty_Registration_DTO st = (Faculty_Registration_DTO)session.getAttribute("faculty");
                        %>
                        <li class="nav-right">
                            <a class="nav-link text-white" href="#"> Welcome <%=st.getFullname()%></a>
                        </li>
                        <li class="nav-right">
                            <a class="nav-link text-white" href="Student_Logout.jsp"><i class="fa fa-sign-out"></i> Logout</a>
                        </li>
                        <%
                    }else {
                        //student is not logged in
                            %>
                            <li class="nav-right">
                                <a class="nav-link text-white" href="Login_Form.jsp"><i class="fa fa-sign-in"></i></i> Login</a>
                            </li>
                            <li class="nav-right">
                                <a class="nav-link text-white" href="Registration_Form.jsp"><i class="fa fa-sign-out"></i> Register</a>
                            </li>
                            <%
                    }
                %>
                
            </ul>
            <!-- <form class="form-inline my-2 my-lg-0 ml-auto">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-primary my-2" type="submit">Search</button>
            </form> -->
        </div>
    </div>
</nav>