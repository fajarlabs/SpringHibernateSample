<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.skckonline.model.AppMessageError,java.util.ArrayList,java.util.List"%>
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
           <a class="navbar-brand" href="<c:url value="/home/" />"><img src="<c:url value="/assets/img/Logo_SKCK.png" />" style="height: 33px; margin-top: -6px;" ></a>

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
                        <a href="<c:url value="/registrasi/" />">Pendaftaran Online</a>
                    </li>
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
                   
                    <h1 class="tagline">Pendaftaran SKCK</h1>
              
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">

        <hr>

        <div class="row">  

             <div class="col-sm-8">  

              <p><strong>Anda belum memiliki account ? Silahkan daftar :</strong></p>
            <br>
            <form class="form-horizontal" method="post" action="<c:url value="/daftar-user/" />">
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-3 control-label">Nama Lengkap</label>
                    <div class="col-sm-8">
                        <input type="text" name="nama_lengkap" class="form-control" id="inputPassword3">
                        <p class="help-block">Sesuai dengan e-KTP</p>
							<%
								// Menampilkan Error Form lebih dari 1
													if (request.getAttribute("errorMessage") != null) {
														ArrayList<AppMessageError> list = (ArrayList<AppMessageError>) request
																.getAttribute("errorMessage");
														for (AppMessageError e : list) {
															if (e.getKey().equals("fullname"))
																out.println("<p style=\"color:red;\" class=\"help-block\">"
																		+ e.getVal() + "</p>");
														}
													}
							%>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-8">
                        <input type="text" name="email" class="form-control" id="inputPassword3">
							<%
								if (request.getAttribute("errorMessage") != null) {
														ArrayList<AppMessageError> list = (ArrayList<AppMessageError>) request
																.getAttribute("errorMessage");
														for (AppMessageError e : list) {
															if (e.getKey().equals("email"))
																out.println("<p style=\"color:red;\" class=\"help-block\">"
																		+ e.getVal() + "</p>");
														}
													}
							%>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-3 control-label">Identitas Pengenal</label>
                    <div class="col-sm-8">
                        <input name="identitas_pengenal" type="text" class="form-control" id="inputPassword3">
                        <p class="help-block">NIK e-KTP</p>
							<%
								if (request.getAttribute("errorMessage") != null) {
														ArrayList<AppMessageError> list = (ArrayList<AppMessageError>) request
																.getAttribute("errorMessage");
														for (AppMessageError e : list) {
															if (e.getKey().equals("ektp"))
																out.println("<p style=\"color:red;\" class=\"help-block\">"
																		+ e.getVal() + "</p>");
														}
													}
							%>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-3 control-label">Username</label>
                    <div class="col-sm-8">
                        <input name="username" type="text" class="form-control" id="inputPassword3">
							<%
								if (request.getAttribute("errorMessage") != null) {
														ArrayList<AppMessageError> list = (ArrayList<AppMessageError>) request
																.getAttribute("errorMessage");
														for (AppMessageError e : list) {
															if (e.getKey().equals("username"))
																out.println("<p style=\"color:red;\" class=\"help-block\">"
																		+ e.getVal() + "</p>");
														}
													}
							%>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputPassword3" name="password" class="col-sm-3 control-label">Password</label>
                    <div class="col-sm-8">

                        <input name="password" type="password" class="form-control" id="inputPassword3">
							<%
								if (request.getAttribute("errorMessage") != null) {
														ArrayList<AppMessageError> list = (ArrayList<AppMessageError>) request
																.getAttribute("errorMessage");
														for (AppMessageError e : list) {
															if (e.getKey().equals("password"))
																out.println("<p style=\"color:red;\" class=\"help-block\">"
																		+ e.getVal() + "</p>");
														}
													}
							%>
                        <div class="col-sm-8"><br></div>
                       <button class="btn btn-lg btn-success btn-block" type="submit">Daftar</button>
                    </div>               
                    
                </div>
              
            </form> 

            </div> 

            <div class="col-sm-4">   
        
               <form class="form-signin" method="post" action="<c:url value="/registrasi/masuk/" />">
               <h2 class="form-signin-heading">Login</h2>
                   <div class="input-group" style="margin-bottom: 17px;">
                     <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-user"></i></span> 
                     <input name="username" type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" required >
                    </div>
                    <div class="input-group" style="margin-bottom: 17px;">
                     <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-lock"></i></span> 
                     <input name="password" type="password" class="form-control" placeholder="Password" aria-describedby="basic-addon1" required >
                    </div>            
                <div class="checkbox">
                  <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
        </form>
  
            </div>   
                          
       
        </div>        
        <!-- /.row -->

        <hr>
        <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            
        </div>
        <div class="col-sm-3"></div>
        </div>

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