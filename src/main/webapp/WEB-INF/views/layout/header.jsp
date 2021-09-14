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

	<body class="vertical light">
		<div class="wrapper">
			<nav class="topnav navbar navbar-light">
				<button type="button" class="navbar-toggler text-muted mt-2 p-0 mr-3 collapseSidebar">
					<i class="fe fe-menu navbar-toggler-icon"></i>
				</button>
			</nav>
	
			<aside class="sidebar-left border-right bg-white shadow" id="leftSidebar" data-simplebar>
				<a href="#" class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3" data-toggle="toggle">
					<i class="fe fe-x"><span class="sr-only"></span></i>
				</a>
				<nav class="vertnav navbar navbar-light">
					<!-- nav bar -->
					<div class="w-100 mb-4 d-flex">
						<a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="/">
	              			<span class="ml-1 item-text">거제시</span>
						</a>
					</div>
	
					<ul class="navbar-nav flex-fill w-100 mb-2">
						<li class="nav-item w-100"><a class="nav-link" href="/campaign">
							<i class="fe fe-home fe-16"></i><span class="ml-3 item-text">100대 공약사항 이행 현황	</span>
						</a></li>
						<li class="nav-item w-100"><a class="nav-link" href="/population">
							<i class="fe fe-layers fe-16"></i><span class="ml-3 item-text">인구 유출/입 분석 현황</span>
						</a></li>
					</ul>
				</nav>
			</aside>
			