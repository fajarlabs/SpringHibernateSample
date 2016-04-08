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
                    <li class="active">
                        <a href="<c:url value="/tentang-skck/" />">Tentang SKCK</a>
                    </li>
                    <li>
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
                   
                    <h1 class="tagline">Tentang SKCK</h1>
              
                </div>
            </div>
        </div>
    </header>

    <!-- Page Content -->
    <div class="container">

        <hr>

        <div class="row">
            <div class="col-sm-9">
            <div class="alert alert-info" role="alert">            
                Surat Keterangan Catatan Kepolisian (disingkat SKCK), sebelumnya dikenal sebagai Surat Keterangan Kelakuan Baik (disingkat SKKB) adalah surat keterangan yang diterbitkan oleh Polri yang berisikan catatan kejahatan seseorang. Dahulu, sewaktu bernama SKKB, surat ini hanya dapat diberikan yang tidak/belum pernah tercatat melakukan tindakan kejahatan hingga tanggal dikeluarkannya SKKB tersebut. <br><br>

                Surat Keterangan Catatan Kepolisian atau SKCK adalah surat keterangan resmi yang diterbitkan oleh POLRI melalui fungsi Intelkam kepada seseorang pemohon/warga masyarakat untuk memenuhi permohonan dari yang bersangkutan atau suatu keperluan karena adanya ketentuan yang mempersyaratkan, berdasarkan hasil penelitian biodata dan catatan Kepolisian yang ada tentang orang tersebut. (Vide Peraturan Kapolri Nomor 18 Tahun 2014) <br><br>

                SKCK memiliki masa berlaku sampai dengan 6 (enam) bulan sejak tanggal diterbitkan. Jika telah melewati masa berlaku dan bila dirasa perlu, SKCK dapat diperpanjang oleh yang bersangkutan.
            </div>
            
            <hr> 

            <div class="panel panel-primary"> 
                <div class="panel-heading"> 
                        <h3 class="panel-title">Tata cara mendapatkan SKCK</h3> 
                </div> 
                <div class="panel-body"> 
                <dt>Membuat SKCK Baru</dt>
                <ul style="margin-left:-27px;">
                  <li>Membawa Surat Pengantar dari Kantor Kelurahan tempat domisili pemohon.</li>
                  <li>Membawa fotocopy KTP/SIM sesuai dengan domisili yang tertera di surat pengantar dari
                    Kantor Kelurahan.</li>
                    <li>Membawa fotocopy Kartu Keluarga.</li>
                    <li>Membawa fotocopy Akta Kelahiran/Kenal Lahir.</li>
                    <li>Membawa Pas Foto terbaru dan berwarna ukuran 4×6 sebanyak 6 lembar.</li>
                    <li>Mengisi Formulir Daftar Riwayat Hidup yang telah disediakan di kantor Polisi dengan jelas dan benar.</li>
                    <li>Pengambilan Sidik Jari oleh petugas.</li>           
                </ul> 

                <dt>Memperpanjang masa berlaku SKCK</dt>
                <ul style="margin-left:-27px;">
                  <li>Membawa lembar SKCK lama yang asli/legalisir (maksimal telah habis masanya selama 1 tahun)</li>
                  <li>Membawa fotocopy KTP/SIM.</li>
                    <li>Membawa fotocopy Kartu Keluarga.</li>
                    <li>Membawa fotocopy Akta Kelahiran/Kenal Lahir.</li>
                    <li>Membawa Pas Foto terbaru yang berwarna ukuran 4×6 sebanyak 3 lembar.</li>
                    <li>Mengisi formulir perpanjangan SKCK yang disediakan di kantor Polisi.</li>                 
                </ul> 
                </div> 
                </div>

                 <div class="panel panel-danger">
                 <div class="panel-heading"> 
                        <h3 class="panel-title">Catatan</h3> 
                </div> 
                <div class="panel-body"> 
                  <ul style="margin-left:-27px;">
                  <li>Polsek tidak menerbitkan SKCK untuk keperluan :
                        <ul style="margin-left:-27px;">
                            <li>Melamar / melengkapi administrasi PNS / CPNS.</li>
                            <li>Pembuatan visa / keperluan lain yang bersifat antar-negara.</li>
                        </ul>
                  </li>
                  <li>Polsek/Polres penerbit SKCK harus sesuai dengan alamat KTP/SIM pemohon.</li>                           
                </ul>
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
