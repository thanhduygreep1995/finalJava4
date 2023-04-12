<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<!-- Theme style -->
 <link rel="stylesheet" href='<c:url value="/dist/css/adminlte.min.css"/>'>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="starter.html" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Video</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">User</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Report</a></li>
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>


				<!-- Notifications Dropdown Menu -->

				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>

			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="starter.html" class="brand-link"> <img
				src='<c:url value="/dist/img/AdminLTELogo.png"/>' alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">AdminLTE 3</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src='<c:url value="/dist/img/user2-160x160.jpg"/>'
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">Pham Thanh Duy</a>
					</div>
				</div>

				<!-- SidebarSearch Form -->
				<div class="form-inline">
					<div class="input-group" data-widget="sidebar-search">
						<input class="form-control form-control-sidebar" type="search"
							placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-sidebar">
								<i class="fas fa-search fa-fw"></i>
							</button>
						</div>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Dashboard <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="starter.html"
									class="nav-link active"> <i class="far fa-circle nav-icon"></i>
										<p>Home</p>
								</a></li>
								<li class="nav-item"><a href="#" class="nav-link"> <i
										class="nav-icon fas fa-chart-pie"></i>
										<p>
											Video <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="video-edition.html"
											class="nav-link"> <i class="far fa-circle nav-icon"></i>
												<p>Video Edition</p>
										</a></li>
										<li class="nav-item"><a href="video-list.html"
											class="nav-link"> <i class="far fa-circle nav-icon"></i>
												<p>Video List</p>
										</a></li>

									</ul></li>
								<li class="nav-item"><a href="#" class="nav-link"> <!-- <i class="nav-icon fas fa-chart-pie"></i> -->
										<i class="fa-solid fa-user nav-icon"></i>
										<p>
											User <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="user-edition.html"
											class="nav-link"> <i class="far fa-circle nav-icon"></i>
												<p>User Edition</p>
										</a></li>
										<li class="nav-item"><a href="user-list.html"
											class="nav-link"> <i class="far fa-circle nav-icon"></i>
												<p>User List</p>
										</a></li>

									</ul></li>
								<li class="nav-item"><a href="#" class="nav-link"> <i
										class="fa-solid fa-filter nav-icon"></i>
										<p>
											Filter <i class="right fas fa-angle-left"></i>
										</p>
								</a>
									<ul class="nav nav-treeview">
										<li class="nav-item"><a href="favorites.html"
											class="nav-link"> <i class="far fa-circle nav-icon"></i>
												<p>Favorites</p>
										</a></li>
										<li class="nav-item"><a href="favorites-user.html"
											class="nav-link"> <i class="far fa-circle nav-icon"></i>
												<p>Favorite Users</p>
										</a></li>
										<li class="nav-item"><a href="share-friend.html"
											class="nav-link"> <i class="far fa-circle nav-icon"></i>
												<p>Share Friends</p>
										</a></li>
									</ul></li>
							</ul></li>

					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<jsp:include page="/admin/maincontent/mcStarter.jsp"></jsp:include>
		<!-- /.content-wrapper -->

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
			<div class="p-3">
				<h5>Title</h5>
				<p>Sidebar content</p>
			</div>
		</aside>
		<!-- /.control-sidebar -->

		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="float-right d-none d-sm-inline">Anything you want</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2014-2021 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
		</footer>
	</div>
	<!-- ./wrapper -->

	<!-- REQUIRED SCRIPTS -->
	<c:if test="${not empty page.scriptUrl}">
		<jsp:include page="${page.scriptUrl}"></jsp:include>
	</c:if>
	<!-- jQuery -->
	<script src='<c:url value="/plugins/jquery/jquery.min.js"/>'></script>
	<!-- Bootstrap 4 -->
	<script src='<c:url value="/plugins/bootstrap/js/bootstrap.bundle.min.js"/>'></script>
	<!-- AdminLTE App -->
	<script src='<c:url value="/dist/js/adminlte.min.js"/>'></script>
</body>
</html>
