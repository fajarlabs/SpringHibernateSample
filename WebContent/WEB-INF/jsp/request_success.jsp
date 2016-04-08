<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<div class="page-header">
	<h2>Pendaftaran Online</h2>
	<div class="well">
		<p>Terimakasih,</p>
		<p>Permohonan SKCK berhasil. No antrian #123. Tempat Permohonan:
			Polres Jakarta Pusat, Tanggal Kedatangan: 13/12/2016 pukul 08.00 -
			16.00 W.I.B</p>
		<p>Silahkan Cetak Dokumen dan dibawa pada tanggal kedatangan</p>
		<div class="text-center">
			<a href='<c:url value="/form_register/cetak/" />' type="button" class="btn btn-default"> Cetak
				Antrian</a> <a href='<c:url value="/home/" />' type="submit" class="btn btn-default">Kembali
				Ke halaman awal</a>
		</div>
	</div>
</div>
</div>
</div>
</div>
</div>

<%@ include file="footer.jsp" %>