<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalog-Z Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href='<c:url value="/css/bootstrap.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/fontawesome/css/all.min.css"/>'>
    <link rel="stylesheet" href='<c:url value="/css/templatemo-style.css"/>'>
<!--
    
TemplateMo 556 Catalog-Z

https://templatemo.com/tm-556-catalog-z

-->
</head>
<body>
    
	    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.html">
                <i class="fas fa-film mr-2"></i>
                Catalog-Z
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link nav-link-1" href="index.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-2" href="videos.html">Video yêu Thích</a>
                </li>
                <c:if test="${!isLogin }">
	                <li class="nav-item">
	                    <a class="nav-link nav-link-3 active" href='<c:url value="/view/register.jsp"/>'>Đăng Ký</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link nav-link-4" aria-current="page" href='<c:url value="/view/login.jsp"/>'>Đăng Nhập</a>
	                </li>
                </c:if>
                <c:if test="${isLogin}">
                	<li class="nav-item">
	                    <a class="nav-link nav-link-3" href='<c:url value="/view/edit-profile.jsp"/>'>Edit Profile</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link nav-link-4" aria-current="page" href='<c:url value="/view/change-password.jsp"/>'>Change Password</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link nav-link-5" href='<c:url value="LogOffServ"/>'>Log Off</a>
	                </li>
                </c:if>
            </ul>
            </div>
        </div>
    </nav>
    <article class="mb-3">
        <div class="tm-hero d-flex justify-content-center align-items-center" data-parallax="scroll" data-image-src='<c:url value="/img/hero.jpg"/>'></div>
        <div class="container">
            <div class="row d-flex justify-content-center">
            
                <form action="SignUpServ" class="mt-3 border border-2 rounded-3" style="width: 40rem;" method="post">
                    <jsp:include page="/view/common/AlertNotice.jsp"/>
                    <div class="text-center" style="font-size: 28px;"><b>Register Form</b></div>
                    <div class="mb-3 mt-3">
                        <label for="name" class="form-label">Họ và Tên</label>
                        <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
                    </div>
                    <div class="mb-3 mt-3">
                      <label for="username" class="form-label">Tên Tài Khoản</label>
                      <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
                    </div>
                    <div class="mb-3">
                      <label for="password" class="form-label">Password</label>
                      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
                    </div>
                    <div class="mb-3 mt-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
                    </div>
                    <div class="mb-3 mt-3">
                        <label for="phone" class="form-label">Số Điện Thoại</label>
                        <input type="text" class="form-control" id="phone" placeholder="Enter phone" name="phone">
                    </div>
					<input type="hidden" class="form-check-input" id="isAdmin" name="isAdmin" value="false" />
                    <div class="mx-2 d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary mb-3 mx-2 "><b>Register Up</b></button>
                    </div>
                    
                </form>
            </div>
        </div>

    </article>
    



<jsp:include page="../view/layout/footer.jsp"/>
    
    <script src='<c:url value="/js/plugins.js"/>'></script>
    <script>
        $(window).on("load", function() {
            $('body').addClass('loaded');
        });
        
    </script>
</body>
</html>