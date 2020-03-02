<%@page import="DAO.Question_Paper_DAO"%>
<%@page import="DTO.Question_Paper_DTO"%>
<%@page import="DAO.Videos_Lectures_DAO"%>
<%@page import="DTO.Videos_Lectures_DTO"%>
<%@page import="DAO.Tutorials_DAO"%>
<%@page import="DTO.Tutorials_DTO"%>
<%@page import="DTO.Notes_DTO"%>
<%@page import="DAO.Notes_DAO"%>
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
                background: #fff;
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

            @media(maz-width:768px){
                #sidebar{margin-left: -250px;}
                #sidebar.active{
                    margin-left: 0px;
                }
                #sidebarCollapse span{}
                display: none
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <%@include file="Menu.jsp" %>
        <%          String branch = request.getParameter("branch");
            String sem = request.getParameter("sem");
            Branch_DTO bd = Branch_DAO.search(Integer.parseInt(branch));
        %>
        <div class="wrapper">
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h3>BRANCH : <%=bd.getB_name()%>
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
                                <a class="dis" href="ViewQnsTutorialNotesVideo.jsp?id=notes&subId=<%=st.getSb_id()%>&bId=<%=branch%>">Notes</a></li> 
                            <li > <a href="ViewQnsTutorialNotesVideo.jsp?id=tuto&subId=<%=st.getSb_id()%>&bId=<%=branch%>">Tutorials</a></li> 
                            <li > <a href="ViewQnsTutorialNotesVideo.jsp?id=video&subId=<%=st.getSb_id()%>&bId=<%=branch%>">Videos</a> </li>
                            <li > <a href="ViewQnsTutorialNotesVideo.jsp?id=qns&subId=<%=st.getSb_id()%>&bId=<%=branch%>">Question Papers</a></li>
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

                <%          int branch_id = Integer.parseInt(request.getParameter("bId"));
                    int subjId = Integer.parseInt(request.getParameter("subId"));
                    String id = request.getParameter("id");
                    if (id.equalsIgnoreCase("notes")) {
                %>
                <h2 align="center">List of Notes</h2>

                <%
                    List<Notes_DTO> aln = Notes_DAO.viewBranch_Subject_Wise(branch_id, subjId);
                    for (Notes_DTO ele : aln) {
                %>
                <table border="5" width="600" align="center" rules="none">
                    <tr>
                        <th>
                            <%
                                if (session.getAttribute("student") != null) {
                                    //logged in
%><a href="Notes/<%=ele.getNotes_file()%>" target="_blank" ><%=ele.getNotes_file()%></a><%
                            } else {
                                //not logged in
                            %><a href="Login_Form.jsp"><%=ele.getNotes_file()%></a><%
    }
                                %>
                        </th>
                        <th width="50"></th>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                        <th width="50"></th>
                        <th align="right">By : <%=ele.getNotes_by()%></th>
                    </tr>
                </table>
                <%
                    }
                } else if (id.equalsIgnoreCase("tuto")) {
                %>
                <h2 align="center">List of Tutorials</h2>
                <%
                    List<Tutorials_DTO> alt = Tutorials_DAO.viewBranch_Subject_Wise(branch_id, subjId);
                    for (Tutorials_DTO ele : alt) {
                %>
                <table border="5" width="600" align="center" rules="none">
                    <tr>
                        <th>
                            <%
                                if (session.getAttribute("student") != null) {
                                    //logged in
%><a href="Tutorials/<%=ele.getT_file()%>" target="_blank" ><%=ele.getT_file()%></a><%
                            } else {
                                //not logged in
                            %><a href="Login_Form.jsp"><%=ele.getT_file()%></a><%
    }
                                %>
                        </th>
                        <th width="50"></th>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                        <th width="50"></th>
                        <th align="right">By : <%=ele.getT_by()%></th>
                    </tr>
                </table>
                <%
                    }
                } else if (id.equalsIgnoreCase("video")) {
                %>
                <h2 align="center">List of Videos</h2>
                <%
                    List<Videos_Lectures_DTO> alv = Videos_Lectures_DAO.viewBranch_Subject_Wise(branch_id, subjId);
                    for (Videos_Lectures_DTO ele : alv) {
                %>
                <table border="5" width="600" align="center" rules="none">
                    <tr>
                        <th>
                            <%
                                if (session.getAttribute("student") != null) {
                                    //logged in
%><a href="Videos/<%=ele.getV_file()%>" target="_blank" ><%=ele.getV_file()%></a><%
                            } else {
                                //not logged in
                            %><a href="Login_Form.jsp"><%=ele.getV_file()%></a><%
    }
                                %>
                        </th>
                        <th width="50"></th>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                        <th width="50"></th>
                        <th align="right">By : <%=ele.getV_file()%></th>
                    </tr>
                </table>
                <%
                    }
                } else if (id.equalsIgnoreCase("qns")) {
                %>
                <h2 align="center">List of Question Paper</h2>
                <%
                    List<Question_Paper_DTO> alqns = Question_Paper_DAO.viewBranch_Subject_Wise(branch_id, subjId);
                    for (Question_Paper_DTO ele : alqns) {
                %>
                <table border="5" width="600" align="center" rules="none">
                    <tr>
                        <th>
                            <%
                                if (session.getAttribute("student") != null) {
                                    //logged in
%><a href="Question Paper/<%=ele.getQp_file()%>" ><%=ele.getQp_file()%></a><%
                            } else {
                                //not logged in
                            %><a href="Login_Form.jsp"><%=ele.getQp_file()%></a><%
    }
                                %>
                        </th>
                        <th width="50"></th>
                        <th></th>
                    </tr>
                    <tr>
                        <th></th>
                        <th width="50"></th>
                        <th align="right">Year : <%=ele.getYear()%></th>
                    </tr>
                </table>
                <%
                        }
                    }
                %>
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