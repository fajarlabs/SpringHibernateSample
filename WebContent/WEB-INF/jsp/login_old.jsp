<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.skckonline.model.AppMessageError,java.util.ArrayList,java.util.List"%>
<%@ include file="header.jsp"%>

<div class="page-header">
	<h2>Registrasi Online</h2>

	<div class="row">
		<div class="col-md-12">
			<div class="col-md-9">
				<form class="form-horizontal" method="post"
					action="<c:url value="/login/doLogin" />">
					<label>Log-in</label>
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-3 control-label">Username</label>
						<div class="col-sm-8">
							<input type="text" name="username" class="form-control"
								id="inputPassword3">
						</div>
					</div>

					<div class="form-group">
						<label for="inputPassword3" class="col-sm-3 control-label">Password</label>
						<div class="col-sm-8">
							<input type="password" name="password" class="form-control"
								id="inputPassword3">
						</div>

					</div>
					<div class="form-group" style="margin-left: 211px;">
						<div class="col-sm-3">
							<button class="btn btn-default">Login</button>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-9">
				<p>Anda belum memiliki account ? Silahkan daftar :</p>
				<form class="form-horizontal" method="post" action="<c:url value="/doRegister/" />">
					<div class="form-group">
						<label for="inputPassword3" class="col-sm-3 control-label">Nama
							Lengkap</label>
						<div class="col-sm-8">
							<input name="fullName" type="text" class="form-control"
								id="inputPassword3">
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
							<input name="email" type="text" class="form-control"
								id="inputPassword3">
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
						<label for="inputPassword3" class="col-sm-3 control-label">Identitas
							Pengenal</label>
						<div class="col-sm-8">
							<input name="ektp" type="text" class="form-control"
								id="inputPassword3">
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
							<input name="username" type="text" class="form-control"
								id="inputPassword3">
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
						<label for="inputPassword3" class="col-sm-3 control-label">Password</label>
						<div class="col-sm-8">
							<input name="password" type="password" class="form-control"
								id="inputPassword3">
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
						</div>

					</div>
					<div class="form-group" style="margin-left: 211px;">
						<div class="col-sm-3">
							<button class="btn btn-default">Register</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</form>
</div>
</div>
</div>
</div>
</div>

<%@ include file="footer.jsp"%>