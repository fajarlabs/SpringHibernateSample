<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page
	import="com.skckonline.model.AppMessageError,java.util.ArrayList,java.util.List"%>
<%@ include file="header.jsp"%>
<div class="page-header">
	<h2>Pendaftaran Online</h2>
	<small> Isi form dibawah ini untuk melakukan pendaftaran online
		(tahap 1 dari 2) </small> <br> <br>
	<form class="form-horizontal" method="post" action="<c:url value="/form_register/doRequest/" />">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-9">
					<div class="form-group">
						<label for="tgl_kdtgn" class="col-sm-3 control-label">Tanggal
							Kedatangan</label>
						<div class="col-sm-3">
							<div class="input-group">
								<input type="text" class="form-control" id="tgl_kdtgn"
									name="tgl_kedatangan" aria-describedby="basic-addon2">
								<span class="input-group-addon" id="basic-addon2"><i
									class="glyphicon glyphicon-calendar"></i></span>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-3 control-label">Nama
							Lengkap</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="inputPassword3"
								name="nama_lengkap">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-3 control-label">Jenis
							Permohonan</label>
						<div class="col-sm-2">
							<select class="form-control" name="jenis_permohonan">
								<option value="baru">Baru</option>
								<option value="perpanjangan">Perpanjang</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-3 control-label">Warga
							Negara</label>
						<div class="col-sm-2">
							<select class="form-control" name="warganegara">
								<option value="wni">WNI</option>
								<option value="wna">WNA</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-3 control-label">Identitas
							Pemohon</label>
						<div class="col-sm-8">
							<div class="radio">
								<label> <input type="radio" name="jenis_ktp">
									e-KTP
								</label> <label> <input type="radio" name="jenis_ktp">
									non - EKTP
								</label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-3 control-label">Identitas
							Pengenal</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="inputPassword3"
								name="identitas_pengenal">
						</div>
					</div>
				</div>
				<!-- div class="col-md-3">
				<p>Tahap</p>
				<p>1. Identitas Pemohon</p>
				<p>2. Upload Dokumen</p>
			</div -->
			</div>
			<!-- Identitas Pemohon -->
			<div class="col-md-12"
				style="border: solid 1px #ccc; background-color: orange; padding: 5px; color: white">
				IDENTITAS PEMOHON</div>

			<div class="col-md-9 form-horizontal" style="margin-top: 10px;">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">NIK</label>
					<div class="col-sm-6">
						<input type="text" class="form-control" id="inputEmail3"
							name="nik">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">Nama</label>
					<div class="col-sm-6">
						<input name="name" type="text" class="form-control"
							id="inputPassword3">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">Tempat
						Lahir / Tanggal Lahir</label>
					<div class="col-sm-3">
						<input name="placeBirth" type="text" class="form-control"
							id="inputPassword3">
					</div>
					<div class="col-sm-3">
						<div class="input-group">
							<input name="dateBirth" type="text" class="form-control"
								id="tgl_lhr" aria-describedby="basic-addon2"> <span
								class="input-group-addon" id="basic-addon2"><i
								class="glyphicon glyphicon-calendar"></i></span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">Jenis
						Kelamin</label>
					<div class="col-sm-2">
						<select name="gender" class="form-control" name="gender">
							<option>--Pilih--</option>
							<option value="man">Pria</option>
							<option value="woman">Wanita</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">Alamat</label>
					<div class="col-sm-8">
						<textarea name="address" class="form-control" id="inputPassword3"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">RT
						/ RW</label>
					<div class="col-sm-2">
						<input name="rt" type="text" class="form-control"
							id="inputPassword3" placeholder="RT">
					</div>
					<div class="col-sm-2">
						<input name="rw" type="text" class="form-control"
							id="inputPassword3" placeholder="RW">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">Kel/Desa
						/ Kecamatan</label>
					<div class="col-sm-3">
						<input name="village" type="text" class="form-control"
							id="inputPassword3">
					</div>
					<div class="col-sm-2">
						<input name="districts" type="text" class="form-control"
							id="inputPassword3">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">Agama</label>
					<div class="col-sm-2">
						<select name="religion" class="form-control">
							<option>--Pilih--</option>
							<option value="islam">Islam</option>
							<option value="kristen">Kristen</option>
							<option value="budha">Budha</option>
							<option value="hindu">Hindu</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">Pekerjaan</label>
					<div class="col-sm-2">
						<select name="jobTitle" class="form-control">
							<option>--Pilih--</option>
							<option value="karyawan">Karyawan</option>
							<option value="pelajar">Pelajar</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">No
						Passpor/KITAS/KITAB</label>
					<div class="col-sm-5">
						<input name="passportData" type="text" class="form-control"
							id="inputPassword3">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-3 control-label">Tanggal
						di Indonesia</label>
					<div class="col-sm-3">
						<div class="input-group">
							<input name="liveDateStart" type="text" class="form-control"
								id="tgl_awal" aria-describedby="basic-addon2" placeholder="Awal">
							<span class="input-group-addon" id="basic-addon2"><i
								class="glyphicon glyphicon-calendar"></i></span>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="input-group">
							<input name="liveDateEnd" type="text" class="form-control"
								id="tgl_akhir" aria-describedby="basic-addon2"
								placeholder="Akhir"> <span class="input-group-addon"
								id="basic-addon2"><i class="glyphicon glyphicon-calendar"></i></span>
						</div>
					</div>
				</div>
			</div>

			<!-- Keperluan Pemohon -->
			<div class="col-md-12"
				style="border: solid 1px #ccc; background-color: orange; padding: 5px; color: white">
				KEPERLUAN PEMOHON</div>

			<div class="col-md-9 form-horizontal"
				style="margin-left: -13px; margin-top: 10px;">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-3 control-label">Keperluan</label>
					<div class="col-md-8">
						<div class="col-sm-3">
							<select name="need" class="form-control">
								<option value="baru">Baru</option>
								<option value="perpanjang">Perpanjang</option>
							</select>
						</div>

						<div class="col-sm-12" style="margin-top: 5px">
							Lainnya :
							<textarea name="otherNecessary" class="form-control" rows="8"
								cols="8"></textarea>
						</div>
					</div>

				</div>
			</div>

		</div>
		<div class="text-center">
			<div class="btn-group" role="group">
				<button type="button" class="btn btn-default">
					<a href="pendaftaran.jsp" style="color: #333"><i
						class="glyphicon glyphicon-menu-left"> </i> Kembali</a>
				</button>
				<button type="button" class="btn btn-default">Batal</button>
				<button type="submit" class="btn btn-default">
					<a href="pendaftaran_dokumen.jsp" style="color: #333">Selanjutnya
						<i class="glyphicon glyphicon-menu-right"> </i>
					</a>
				</button>
			</div>
		</div>
	</form>
</div>
</div>
</div>
</div>
</div>

<%@ include file="footer.jsp"%>