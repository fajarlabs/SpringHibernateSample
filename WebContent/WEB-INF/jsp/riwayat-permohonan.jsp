<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.skckonline.hibernate.model.Request,com.skckonline.hibernate.model.User,com.skckonline.model.AppMessageError,java.util.ArrayList,java.util.List" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SKCK Online</title>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/assets/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<c:url value="/assets/css/business-frontpage.css" />" rel="stylesheet">
    <link href="<c:url value="/assets/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet" type="text/css">



    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    
                </button>
           <a class="navbar-brand" href=""><img src="<c:url value="/assets/img/Logo_SKCK.png" />" style="height: 33px; margin-top: -6px;" ></a>

            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="<c:url value="/home/" />">Home</a>
                    </li>
                    <li >
                        <a href="<c:url value="/tentang-skck/" />">Tentang SKCK</a>
                    </li>
                    <li>
                        <a href="<c:url value="/syarat-ketentuan/" />">Syarat & Ketentuan</a>
                    </li>
                    <li class="active">
                        <% if(request.getSession().getAttribute("LoginStatus") != null) { %>
                        	<a href="<c:url value="/riwayat-permohonan/" />">Pendaftaran Online</a>
                        <% } else { %>
                        	<a href="<c:url value="/registrasi/" />">Pendaftaran Online</a>
                        <% } %>
                    </li>
					<% if (request.getSession().getAttribute("LoginStatus") != null) {
							String username = "";
							User o = (User) request.getSession().getAttribute("LoginStatus"); %>
					<li><a href="<c:url value="/keluar/" />"><small>Selamat datang,</small><strong> <% out.print(o.getUsername()); %></strong> | <span class="label label-danger"> Keluar</span>
					</a></li>
					<%
						}
					%>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Image Background Page Header -->
    <!-- Note: The background image is set within the business-casual.css file. -->
    <header class="business-header-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">            
                   
                    <h1 class="tagline">Riwayat Permohonan</h1>
              
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">

        <hr>

        <div class="row">
            <div class="col-sm-12">  
          
      
                <table class="table table-hover table-bordered">
                                <thead>
                                    <tr class="blue" style="color: #fff;">
                                        <th>
                                            No
                                        </th>
                                        <th>
                                            Tanggal Pembuatan
                                        </th>
                                        <th>
                                            No Antrian
                                        </th>
                                        <th>
                                            Jenis Permohonan
                                        </th>
                                        <th>
                                            Status Permohonan
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
				<%
					if (request.getAttribute("list") != null) {
						
						List<Request> list = (List<Request>) request.getAttribute("list");
						for (Request e : list) {
				%>
					<tr>
						<td><% out.println(e.getId()); %></td>
						<td><% out.println(e.getCtime()); %></td>
						<td><% out.println(e.getQueue()); %></td>
						<td><% out.println(e.getRequest_type()); %></td>
						<td><% out.println(e.getStatus()); %></td>
					</tr>
				<%		}
					}
				%>
                                </tbody>
                            </table>
                            <div class="text-center">
                                <a class="btn btn-success btn-lg" href="<c:url value="/formulir-registrasi/" />">Ajukan Permohonan SKCK</a>
                            </div>
            </div>            
       
        </div>        
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; 2016 SKCK Online - Kepolisian Republik Indonesia</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="<c:url value="/assets/js/jquery.js" />"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/assets/js/bootstrap.min.js" />"></script>

</body>

</html>
