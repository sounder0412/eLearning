<%@page import="DAO.Subject_DAO"%>
<%@page import="DTO.Subject_DTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>JSP Page</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <style>    
            @import "https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";
            body{font-family: 'Poppins', sans-serif;
                 background: #fafafa}
            p{font-family: 'Poppins', sans-serif;
              font-size: 1.1em;
              font-weight: 300;
              line-height: 1.7em;
              color: #000000;
            }
            a,
            a:hover,
            a:focus{
                color: inherit;
                text-decoration: none;
                transition: all 0.3s;
            }
            .navbar{
                padding: 15px 10px;
                background: #0A62E6;
                border: 100%;
                border-radius: 0;
                margin-bottom: 0px;
                box-shadow: 1px 1px 3px rgba(0,0,0,0.1);
            }

            .navbar-btn{
                box-shadow: none;
                outline: none!important;
                border: none;
            }

            .line{
                width: 100%;
                height: 1px;
                border-bottom: 1px dashed #ddd;
            }

            .wrapper {
                display: flex;
                width: 100%;
                align-items: stretch;
            }
            #sidebar {
                min-width: 300px;
                max-width: 300px;
                background: #7386D5;
                color: #fff;
                transition: all 0.3s;
            }
            #sidebar.active{
                margin-left: -250px;
                margin-top: 15px;
            }

            #sidebar .sidebar-header{
                padding: 20px;
                background: #6d7fcc;
            }
            #sidebar ul.components{
                padding: 20px 0px;
                border-bottom: 1px solid #000000;
            }

            #sidebar ul p{
                padding: 10px;
                font-size: 1.1em;
                display: block;
            }

            #sidebar ul li a{
                padding: 10px;
                font-size: 1.1em;
                display: block;
                color:#fff;
            }
            #sidebar ul li a:hover {
                color: #7386D5;
                background: #ddd;
            }

            #sidebar ul li.active>a,
            a[aria-expanded="true"] {
                color: #fff;
                background: #6d7fcc;
            }
            a[data-toggle="collapse"] {
                position: relative;
            }
            .dropdown-toggle::after {
                display: block;
                position: absolute;
                top: 50%;
                right: 20px;
                transform: translateY(-50%);
            }

            ul ul a {
                font-size: 0.9em !important;
                padding-left: 30px !important;
                background: #6d7fcc;
            }

            ul.CTAs {
                padding: 20px;
            }

            ul.CTAs a {
                text-align: center;
                font-size: 0.9em !important;
                display: block;
                border-radius: 5px;
                margin-bottom: 5px;
            }
            a.download{
                background: #fff;
                color: #7386D5;
            }
            a.article,
            a.article:hover {
                background: #6d7fcc !important;
                color: #fff !important;
            }
            #content {
                width: 100%;
                padding: 20px;
                min-height: 100vh;
                transition: all 0.3s;
            }

            @media(max-width:768px){
                #sidebar{margin-left: -250px;}
                #sidebar.active{
                    margin-left: 0px;
                }
                #sidebarCollapse span{
                    display: none;
                }}
            </style>
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
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
        </head>
        <body>
            <%@include file="Header.jsp" %>
            <%@include file="Menu.jsp" %>
            <%          String branch = request.getParameter("branch");
                String sem = request.getParameter("sem");
            %>
            <div class="wrapper">
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>BRANCH : <%=branch%>
                        <br>SEMESTER - <%=sem%></h3>
                </div>
                <%
                    List<Subject_DTO> all = Subject_DAO.viewSemWise(sem, branch);
                    for (Subject_DTO st : all) {
                %>
                <ul class="list-unstyled components">

                    <li class="active">
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><%=st.getS_name()%></a>
                        <ul class="collapse list-unstyled" id="homeSubmenu">
                            <li class="lis">
                                <a class="dis" href="ViewQnsTutorialNotesVideo.jsp?branch=<%=branch%>&sem=<%=sem%>&id=notes&subId=<%=st.getSb_id()%>&bId=<%=branch%>">Notes</a>
                            </li> 
                            <li>
                                <a href="ViewQnsTutorialNotesVideo.jsp?branch=<%=branch%>&sem=<%=sem%>&id=tuto&subId=<%=st.getSb_id()%>&bId=<%=branch%>">Tutorials</a>
                            </li> 
                            <li>
                                <a href="ViewQnsTutorialNotesVideo.jsp?branch=<%=branch%>&sem=<%=sem%>&id=video&subId=<%=st.getSb_id()%>&bId=<%=branch%>">Videos</a>
                            </li>
                            <li>
                                <a href="ViewQnsTutorialNotesVideo.jsp?branch=<%=branch%>&sem=<%=sem%>&id=qns&subId=<%=st.getSb_id()%>&bId=<%=branch%>">Question Papers</a>
                            </li>

                        </ul>
                </ul>
                <% }%>
            </nav>

            <div class="content">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fa fa-align-justify"></i> <span>Maximize</span>
                    </button>
                </nav>
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $('#sidebarCollapse').on('click', function () {
                    $('#sidebar').toggleClass('active');
                });
            });
        </script>
        <%@include file="Footer.jsp" %>
    </body>
</html>