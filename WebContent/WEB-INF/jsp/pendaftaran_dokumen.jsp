<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<% if(session.getAttribute("LoginStatus") != null) { %>
<div class="page-header">
	<h2>Pendaftaran Online</h2>
	<small> Isi form dibawah ini untuk melakukan pendaftaran online
		(tahap 2 dari 2) </small> <br> <br>
	<p>Upload Dokumen Pendukung</p>
	<div class="row">
		<div class="col-md-12">
			<div class="col-md-9">
				<form class="form-horizontal" enctype="multipart/form-data" method="post"
					action="<c:url value="/document_upload/doUpload/" />">
					<div class="form-group">
						<label for="pengantar"> 1. Surat Pengantar dari Kantor
							Kelurahaan tempat domisili pemohon </label> <input name="surat_pengantar" type="file"
							id="pengantar">
					</div>
					<div class="form-group">
						<label for="pengantar"> 2. KK </label> <input name="kk" type="file"
							id="pengantar">
					</div>
					<div class="form-group">
						<label for="pengantar"> 3. Akta Lahir </label> <input name="akta_lahir" type="file"
							id="pengantar">
					</div>

					<p>
						<b>Keterangan : Dokumen asli harus dibawa pada waktu
							pendaftaran untuk validasi.</b>
					</p>
			</div>
			<div class="col-md-3">
				<p>Tahap</p>
				<p>1. Identitas Pemohon</p>
				<p>2. Upload Dokumen</p>
			</div>
		</div>
	</div>
	<div class="text-center">
		<div class="btn-group" role="group">
			<button type="button" class="btn btn-default">
				<a href="pendaftaran_form.jsp" style="color:#333"><i class="glyphicon glyphicon-menu-left"> </i> Kembali</a>
			</button>
			<button type="button" class="btn btn-default">Batal</button>
			<button type="submit" class="btn btn-default">
				<a href="sukses_pendaftaran.jsp" style="color:#333">Selanjutnya <i class="glyphicon glyphicon-menu-right"> </i></a>
			</button>
		</div>
	</div>
	</form>
</div>
<% } %>
</div>
</div>
</div>
</div>

<%@ include file="footer.jsp" %>