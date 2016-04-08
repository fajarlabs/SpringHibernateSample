<%@page import="com.skckonline.hibernate.model.Request"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.skckonline.model.AppMessageError,java.util.ArrayList,java.util.List"%>
<%@ include file="header.jsp"%>
<div class="page-header">
	<h2>Registrasi Online</h2>
	<p>Riwayat Permohonan</p>
	<div class="row">
		<div class="col-md-12">
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th>No</th>
						<th>Tanggal Pembuatan</th>
						<th>No Antrian</th>
						<th>Jenis Permohonan</th>
						<th>Status Permohonan</th>
					</tr>
				</thead>
				<tbody>
				<%
					if (request.getAttribute("list") != null) {
						
						List<Request> list = (List<Request>) request
								.getAttribute("list");
						System.out.println(list);
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
				<a class="btn btn-default" href="<c:url value="/form_register/" />">Ajukan
					Permohonan SKCK</a>
			</div>
		</div>
	</div>
</div>
</div>
</div>

<%@ include file="footer.jsp" %>