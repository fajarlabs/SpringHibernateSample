<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
           <a class="navbar-brand" href="#"><img src="<c:url value="/assets/img/Logo_SKCK.png" />" style="height: 33px; margin-top: -6px;" ></a>

            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->         
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Image Background Page Header -->
    <!-- Note: The background image is set within the business-casual.css file. -->
    <header class="business-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">            
                    <h1 class="tagline">Selamat Datang <br>di SKCK Online</h1>
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">

        <hr>

        <div class="row">
            <div class="col-sm-9">
            <div class="alert alert-info" role="alert" style="text-align: justify;">            
                SKCK adalah surat keterangan yang diterbitkan oleh Polri yang berisikan catatan kejahatan seseorang. Dahulu, sewaktu bernama SKKB, surat ini hanya dapat diberikan yang tidak/belum pernah tercatat melakukan tindakan kejahatan hingga tanggal dikeluarkannya SKKB tersebut. SKKB berlaku selama 6 (enam) bulan. 
            </div>
            
<hr>
            <div class="col-lg-4 col-md-5">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-file-text fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Tentang <br>SKCK</div>                           
                                </div>
                            </div>
                        </div>
                        <a href="<c:url value="/tentang-skck/" />">
                            <div class="panel-footer">
                                <span class="pull-left">Lihat</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            <div class="col-lg-4 col-md-5">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-user fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Syarat & <br>Ketentuan</div>                                  
                                </div>
                            </div>
                        </div>
                        <a href="<c:url value="/syarat-ketentuan/" />">
                            <div class="panel-footer">
                                <span class="pull-left">Lihat</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 col-md-5">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa  fa-sign-in fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Pendaftaran Online</div>                             
                                </div>
                            </div>
                        </div>
                        <% if(request.getSession().getAttribute("LoginStatus") != null) { %>
                        	<a href="<c:url value="/riwayat-permohonan/" />">
                        <% } else { %>
                        	<a href="<c:url value="/registrasi/" />">
                        <% } %>
                            <div class="panel-footer">
                                <span class="pull-left">Daftar</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
 


 
            </div>

            <div class="col-sm-3">
                <img src="<c:url value="/assets/img/cc.gif" />" height="409" width="200">
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
