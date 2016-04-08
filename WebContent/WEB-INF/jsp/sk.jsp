<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.skckonline.hibernate.model.User" %>

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
                    <li>
                        <a href="<c:url value="/tentang-skck/" />">Tentang SKCK</a>
                    </li>
                    <li class="active">
                        <a href="<c:url value="/syarat-ketentuan/" />">Syarat & Ketentuan</a>
                    </li>
                    <li>
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
                   
                    <h1 class="tagline">Syarat & Ketentuan</h1>
              
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">

        <hr>

        <div class="row">
            <div class="col-sm-9">    

            <dt>Dokumen yang dipersyaratkan untuk permohonan SKCK secara online adalah sebagai berikut :</dt> 
            <br>        

              <div class="panel panel-primary">
                 <div class="panel-heading"> 
                        <h3 class="panel-title">1. Pemohon Warga Negara Indonesia (WNI)</h3> 
                </div> 
                <div class="panel-body"> 
                  <ul style="margin-left:-10px; text-align: justify;">
                        <li>Salinan scan KTP asli;</li>
                          <li>Salinan scan kartu keluarga (KK) asli;</li>
                            <li>Scan akta kelahiran asli;</li>
                              <li>Scan identitas lain bagi pemohon yang belum memenuhi syarat memperoleh KTP;</li>
                                <li>scan foto diri ukuran 4X6 berwarna latar belakang merah, berpakaian sopan, tampak muka. Bagi pemohon yang mengenakan jilbab harus tampak muka;</li>
                                <li>Salinan scan paspor bagi WNI yang akan keluar negeri dalam rangka sekolah/kunjungan/penerbitan Visa;</li>
                    </ul>
                    <p style="text-align: justify;"><strong>Pada saat pengambilan SKCK di loket pelayanan, pemohon wajib menunjukkan dokumen asli yang dipersyaratkan kepada petugas loket guna untuk diverifikasi.</strong></p>
                </div>
                 </div>
                 <div class="panel panel-success">
                 <div class="panel-heading"> 
                        <h3 class="panel-title">2. Pemohon Warga Negara Asing (WNA)</h3> 
                </div> 
                <div class="panel-body"> 
                  <ul style="margin-left:-10px; text-align: justify;">
                        <li>Salinan scan surat permohonan (asli) sponsor, perusahaan, lembaga yang mempekerjakan, menggunakan atau yang bertanggung jawab terhadap WNA;</li>
                          <li>Salinan scan paspor asli;</li>
                            <li>Salinan scan kartu izin tinggal terbatas (KITAS) asli atau kartu izin tinggal tetap (KITAP) asli;</li>
                              <li>Salinan scan foto diri ukuran 4X6 berwarna latar belakang kuning, berpakaian sopan, tampak muka. Bagi pemohon yang      mengenakan jilbab harus tampak muka;</li>
                                <li>scan foto diri ukuran 4X6 berwarna latar belakang merah, berpakaian sopan, tampak muka. Bagi pemohon yang mengenakan jilbab harus tampak muka;</li>
                                <li>Salinan scan surat nikah asli dan KTP asli suami/istri bagi WNA yang mendapat sponsor dari WNI.</li>
                    </ul>
                    <p style="text-align: justify;"><strong>Pada saat pengambilan SKCK di loket pelayanan, pemohon wajib menunjukkan dokumen asli yang dipersyaratkan kepada petugas loket guna untuk diverifikasi.
                </strong></p>
                </div>
                 </div>

                 <hr>
                   <div class="alert alert-info" role="alert" style="text-align: justify;"> 
                  <strong>Ketentuan pengambilan SKCK : </strong>  <br>         
                Pemohon SKCK yang melakukan registrasi online sebelum pukul 08.00 WIB dapat mengambil SKCK di loket pelayanan sampai dengan pukul 14.00 pada hari yang sama dengan membawa dan menunjukkan kode registrasi serta dokumen yang dipersyaratkan kepada petugas loket pelayanan; <br><br>

                Pemohon SKCK yang telah melakukan registrasi online diberikan kesempatan untuk mengambil SKCK paling lama tiga hari kerja. Bila melebihi waktu tersebut, sistem akan otomatis menghapus data pemohon dan pemohon harus melakukan registrasi ulang.
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
