<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- <link rel="icon" href="이미지링크삽입"> -->
		<title>DASHBOARD</title>
		<!-- Fonts CSS -->
		<link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
		<!-- Icons CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/feather.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.steps.css">
		<!-- App CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/app-light.css" id="lightTheme">
		<!-- JQuery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	</head>

	<body class="horizontal light">
		<div class="wrapper">
					
			<nav class="navbar navbar-expand-lg navbar-light bg-white flex-row border-bottom shadow">
				<div class="container-fluid">
					<a class="navbar-brand mx-lg-1 mr-0" href="/">
						<span class="ml-1 item-text">거제시</span>
					</a>
					<button class="navbar-toggler mt-2 mr-auto toggle-sidebar text-muted">
						<i class="fe fe-menu navbar-toggler-icon"></i>
					</button>
					<div class="navbar-slide bg-white ml-lg-4" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item">
							  <a class="nav-link" href="/campaign">
							    <span class="ml-lg-2">100대 공약사항 이행 현황&nbsp;</span>
							  </a>
							</li>
							<li class="nav-item">
							  <a class="nav-link" href="/goCampaign">
							    <span class="ml-lg-2">(go)100대 공약사항 이행 현황&nbsp;</span>
							  </a>
							</li>
							<li class="nav-item">
							  <a class="nav-link" href="/population">
							    <span class="ml-lg-2">인구 현황&nbsp;</span>
							  </a>
							</li>
							<li class="nav-item">
							  <a class="nav-link" href="/goPopulation">
							    <span class="ml-lg-2">(go)인구 현황&nbsp;</span>
							  </a>
							</li>
						</ul>
					</div>
				</div>
			</nav>
			