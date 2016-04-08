<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.skckonline.hibernate.model.User"%>
<%
	String tab1 = (String)request.getAttribute("tab1");
	String tab2 = (String)request.getAttribute("tab2");
%>
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
<link href="<c:url value="/assets/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value="/assets/css/business-frontpage.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/assets/css/font-awesome/css/font-awesome.min.css" />"
	rel="stylesheet" type="text/css">

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
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>

				</button>
				<a class="navbar-brand" href=""><img
					src="<c:url value="/assets/img/Logo_SKCK.png" />"
					style="height: 33px; margin-top: -6px;"></a>

			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="<c:url value="/home/" />">Home</a></li>
					<li><a href="<c:url value="/tentang-skck/" />">Tentang
							SKCK</a></li>
					<li><a href="<c:url value="/syarat-ketentuan/" />">Syarat
							& Ketentuan</a></li>
					<li class="active">
						<%
							if (request.getSession().getAttribute("LoginStatus") != null) {
						%> <a href="<c:url value="/riwayat-permohonan/" />">Pendaftaran
							Online</a> 
						<%
 	                    } else {
 							%> <a href="<c:url value="/registrasi/" />">Pendaftaran Online</a> <%
 						} %>
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

					<h1 class="tagline">Pendaftaran SKCK</h1>

				</div>
			</div>
		</div>
	</header>

	<!-- Page Content -->
	<div class='container'>
		<div class="row">
			<div class="col-sm-12">
				<hr>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Isi form dibawah ini untuk melakukan
							pendaftaran online</h3>
					</div>
					<div class="panel-body">
						<section id="wizard">
							<!--  form class="form-horizontal" enctype="multipart/form-data" method="post" action="<c:url value="/formulir-registrasi/tambah-skck/" />" -->
								<div id="rootwizard">
									<div class="navbar">
										<div class="navbar-inner">
											<div class="container">
												<ul>
													<li style="margin-right: 33%; width: 15%;"><a
														href="#tab1" data-toggle="tab"
														style="border-radius: 100%; float: left; margin-right: 12px; width: 40px;">1
													</a>
														<p style="margin-top: 10px;">Identitas Pemohon</p></li>

													<li class="<% out.println(tab1); %>" style="width: 25%;"><a href="#tab2"
														data-toggle="tab"
														style="border-radius: 100%; float: left; margin-right: 12px; width: 40px;">2
													</a>
														<p style="margin-top: 10px;">Upload Dokumen</p></li>

												</ul>
											</div>
										</div>
									</div>
									<div id="bar" class="progress progress-striped active">
										<div class="progress-bar" role="progressbar" aria-valuenow="0"
											aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>
									</div>
									<div class="tab-content">
									
										<div class="tab-pane" id="tab1">
										<form id="form-0" class="form-horizontal" method="post" action="<c:url value="/formulir-registrasi/langkah-1/" />">
										    
											<div class="row">
											
												<hr>
												<div class="col-md-12">
													<div class="col-md-9">
														<div class="form-group">
															<label for="tgl_kdtgn" class="col-sm-3 control-label">Tanggal
																Kedatangan</label>
															<div class="col-sm-3">
																<div class="input-group">
																	<input name="tgl_kedatangan" type="text" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}"
																		class="form-control datepicker" id="tgl_kdtgn"
																		aria-describedby="basic-addon2" /> <span
																		class="input-group-addon" id="basic-addon2"><i
																		class="glyphicon glyphicon-calendar"></i></span>
																</div>
																<div class="input-group">
																<small><span style="color:#ff0000;"></span></small>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label for="nama_lengkap"
																class="col-sm-3 control-label">Nama Lengkap</label>
															<div class="col-sm-8">
																<input name="nama_lengkap" type="text"
																	class="form-control" id="nama_lengkap" >
															</div>
														</div>
														<div class="form-group">
															<label for="jenis_permohonan"
																class="col-sm-3 control-label">Jenis Permohonan</label>
															<div class="col-sm-2">
																<select id="jenis_permohonan" name="jenis_permohonan" class="form-control">
																	<option>Baru</option>
																	<option>Perpanjang</option>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label for="warganegara"
																class="col-sm-3 control-label">Warga Negara</label>
															<div class="col-sm-2">
																<select id="warganegara" name="warganegara" class="form-control">
																	<option>WNI</option>
																	<option>WNA</option>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label for="jenis_ktp_1"
																class="col-sm-3 control-label">Identitas Pemohon</label>
															<div class="col-sm-8">
																<div class="radio">
																	<label> <input id="jenis_ktp_1" type="radio" name="jenis_ktp">
																		e-KTP
																	</label> <label> <input id="jenis_ktp_2" type="radio" name="jenis_ktp" />
																		non - EKTP
																	</label>
																</div>
															</div>
														</div>
														<div class="form-group">
															<label for="identitas_pengenal"
																class="col-sm-3 control-label">Identitas
																Pengenal</label>
															<div class="col-sm-8">
																<input type="text" class="form-control"
																	id="identitas_pengenal" name="identitas_pengenal" />
															</div>
														</div>
													</div>

												</div>
												<!-- Identitas Pemohon -->
												<div class="col-md-12"
													style="background-color: #5cb85c; padding: 5px; color: white">
													IDENTITAS PEMOHON</div>

												<div class="col-md-9 form-horizontal"
													style="margin-top: 10px;">
													<div class="form-group">
														<label for="nik" class="col-sm-3 control-label">NIK</label>
														<div class="col-sm-6">
															<input type="text" name="nik" class="form-control"
																id="nik" />
														</div>
													</div>
													<div class="form-group">
														<label for="nama" class="col-sm-3 control-label">Nama</label>
														<div class="col-sm-6">
															<input name="name" type="text" class="form-control"
																id="nama" />
														</div>
													</div>
													<div class="form-group">
														<label for="tempat_lahir" class="col-sm-3 control-label">Tempat
															Lahir / Tanggal Lahir</label>
														<div class="col-sm-3">
															<input name="placeBirth" type="text" class="form-control"
																id="tempat_lahir" />
														</div>
														<div class="col-sm-3">
															<div class="input-group">
																<input pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}" name="dateBirth" type="text" class="form-control datepicker"
																	id="tgl_lhr" aria-describedby="basic-addon2" /> <span
																	class="input-group-addon" id="basic-addon2"><i
																	class="glyphicon glyphicon-calendar"></i></span>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label for="gender" class="col-sm-3 control-label">Jenis
															Kelamin</label>
														<div class="col-sm-2">
															<select id="gender" name="gender" class="form-control" >
																<option>--Pilih--</option>
																<option>Pria</option>
																<option>Wanita</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<label for="address" class="col-sm-3 control-label">Alamat</label>
														<div class="col-sm-8">
															<textarea name="address" class="form-control"
																id="address" ></textarea>
														</div>
													</div>
													<div class="form-group">
														<label for="rt" class="col-sm-3 control-label">RT
															/ RW</label>
														<div class="col-sm-2">
															<input id="rt" name="rt" type="text" class="form-control"
																placeholder="RT" />
														</div>
														<div class="col-sm-2">
															<input name="rw" type="text" class="form-control"
																placeholder="RW" />
														</div>
													</div>
													<div class="form-group">
														<label for="village" class="col-sm-3 control-label">Kel/Desa
															/ Kecamatan</label>
														<div class="col-sm-3">
															<input name="village" type="text" class="form-control"
																id="village">
														</div>
														<div class="col-sm-2">
															<input name="districts" type="text" class="form-control"
																id="">
														</div>
													</div>
													<div class="form-group">
														<label for="religion" class="col-sm-3 control-label">Agama</label>
														<div class="col-sm-2">
															<select id="religion" name="religion" class="form-control" >
																<option>--Pilih--</option>
																<option>Islam</option>
																<option>Kristen</option>
																<option>Budha</option>
																<option>Hindu</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<label for="job_title" class="col-sm-3 control-label">Pekerjaan</label>
														<div class="col-sm-2">
															<select id="job_title" name="jobTitle" class="form-control" >
																<option>--Pilih--</option>
																<option>Karyawan</option>
																<option>Pelajar</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<label for="no_passport" class="col-sm-3 control-label">No
															Passpor/KITAS/KITAB</label>
														<div class="col-sm-5">
															<input name="passportData" type="text"
																class="form-control" id="no_passport" />
														</div>
													</div>
													<div class="form-group">
														<label for="tgl_awal" class="col-sm-3 control-label">Tanggal
															di Indonesia</label>
														<div class="col-sm-3">
															<div class="input-group">
																<input name="liveDateStart" type="text" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}"
																	class="form-control datepicker" id="tgl_awal"
																	aria-describedby="basic-addon2" placeholder="Awal" />
																<span class="input-group-addon" id="basic-addon2"><i
																	class="glyphicon glyphicon-calendar"></i></span>
															</div>
														</div>
														<div class="col-sm-3">
															<div class="input-group">
																<input name="liveDateEnd" type="text" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01])/(0[1-9]|1[012])/[0-9]{4}"
																	class="form-control datepicker" id="tgl_akhir"
																	aria-describedby="basic-addon2" placeholder="Akhir" />
																<span class="input-group-addon" id="basic-addon2"><i
																	class="glyphicon glyphicon-calendar"></i></span>
															</div>
														</div>
													</div>
												</div>

												<!-- Keperluan Pemohon -->
												<div class="col-md-12"
													style="background-color: orange; padding: 5px; color: white">
													KEPERLUAN PEMOHON</div>

												<div class="col-md-9 form-horizontal"

													style="margin-left: -13px; margin-top: 10px;">
													<div class="form-group">
														<label for="need" class="col-sm-3 control-label">Keperluan</label>
														<div class="col-md-8">
															<div class="col-sm-3">
																<select id="need" name="need" class="form-control">
																	<option>Baru</option>
																	<option>Perpanjang</option>
																</select>
															</div>

															<div class="col-sm-12" style="margin-top: 5px">
																Lainnya :
																<textarea name="otherNecessary" class="form-control"></textarea>
															</div>
														</div>

													</div>
												</div>

											</div>	
											<button id="btn-form-0" type="submit" style="display:none;visibility:none;" class="form-control btn-primary">Submit</button>	
											</form>
										</div>

					<div class="tab-pane <% out.println(tab1); %>" id="tab2">
					<form id="form-1">
						<div class="row">
							<hr>
							<div class="col-md-12">
								<div class="col-md-1"></div>
								<div class="col-md-9">
										<div class="form-group">
											<label for="pengantar"> 1. Surat Pengantar dari
												Kantor Kelurahaan tempat domisili pemohon </label> <input
												name="surat_pengantar" type="file" id="pengantar">
										</div>
										<hr>
										<div class="form-group">
											<label for="pengantar"> 2. KK </label> <input type="file"
												name="kk" id="pengantar">
										</div>
										<hr>
										<div class="form-group">
											<label for="pengantar"> 3. Akta Lahir </label> <input
												name="akta_lahir" type="file" id="pengantar">
										</div>
										<hr>
										<div class="form-group">
											<label for="pengantar"> Polres yang dituju </label> 
											<select style="width:30%;" class="form-control" name="polres">
												<option value="">Jakarta Selatan</option>
												<option value="">Jakarta Barat</option>
												<option value="">Jakarta Timur</option>
												<option value="">Jakarta Utara</option>
											</select>
										</div>
										<hr>
										<div class="form-group">
											<div class="alert alert-info" role="alert"
												style="text-align: justify;">
												<p>
													<b>Keterangan : Dokumen asli harus dibawa pada waktu
														pendaftaran untuk validasi.</b>
												</p>
											</div>
											<button type="submit" class="btn btn-success">Selesai</button>
											<hr>
										</div>

								</div>
							</div>
						</div>
						<div class="col-md-1"></div>
						<button id="btn-form-1" type="submit" style="display:none;visibility:none;" class="form-control btn-primary">Submit</button>
						</form>
					</div>

					<ul class="pager wizard">

						<li class="previous"><a href="#">Previous</a></li>
						<li>
							<button type="button" style="border-radius: 30px;"
								class="btn btn-danger">Batal</button>
						</li>
						<li class="next"><a  href="#">Next</a></li>
					</ul>
				</div>
			</div>
			<!--  /form -->
			</section>
		</div>
	</div>
	</div>
	</div>
	</div>
	<!-- /.container -->

	<!-- jQuery -->


	<script src="<c:url value="/assets/js/jquery.js" />"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value="/assets/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/assets/js/jquery.bootstrap.wizard.js" />"></script>
	<script src="<c:url value="/assets/js/prettify.js" />"></script>
	<script>
		$(document).ready(function() {
			//$("#btn-form-1").trigger('click');
			$('#rootwizard').bootstrapWizard({
				onNext: function (tab, navigation, index) {
					$("#btn-form-"+(index-1)).click();
					return false; // Backend filter
				},
				onPrevious	: function (tab, navigation, index) {
					// alert("OK");
				},
				onTabShow : function(tab, navigation, index) {
 					var $total = navigation.find('li').length;
					var $current = index + 1;
					var $percent = ($current / $total) * 100;
					$('#rootwizard .progress-bar').css({
						width : $percent + '%'
					}); 
				}
			});
			window.prettyPrint && prettyPrint()
		});
	</script>
	<script src="<c:url value="/assets/plugins/datepicker/js/bootstrap-datepicker.js" />"></script>
	<script type="text/javascript">
		$('.datepicker').datepicker({
			format: 'dd/mm/yyyy'
		});
	</script>
	
	

</body>

</html>
