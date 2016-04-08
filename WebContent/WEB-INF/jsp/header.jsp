<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SKCK ONLINE</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="<c:url value="/assets/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="/assets/css/style.css" />" rel="stylesheet">

  </head>
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-11" style="float:none;margin-left: auto;margin-right: auto">
			<h3>
				SKCK ONLINE
			</h3>
			<div class="btn-group btn-group-lg">
				 
				<a href="<c:url value="/home/" />" class="btn btn-default" type="button">
					Home
				</a> 
				<a href="<c:url value="/about/" />" class="btn btn-default" type="button">
					Tentang SKCK
				</a> 
				<a href="<c:url value="/sk/" />" class="btn btn-default" type="button">
					Syarat & Ketentuan
				</a> 
				<a href="<c:url value="/request_list/" />" class="btn btn-default" type="button">
					Pendaftaran Online
				</a>
				
				<% if(session.getAttribute("LoginStatus") != null) { %>
					<a href="<c:url value="/logout/" />" class="btn btn-default" type="button">
						Logout
					</a>
				<% } %>
				
				
			</div>