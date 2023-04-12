<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalog-Z Login page</title>
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
            <a class="navbar-brand" href='<c:url value="/index.jsp"/>'>
                <i class="fas fa-film mr-2"></i>
                Catalog-Z
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link nav-link-1" href='<c:url value="/index.jsp"/>'>Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-2" href="videos.html">Videos</a>
                </li>
                <c:if test="${!isLogin }">
	                <li class="nav-item">
	                    <a class="nav-link nav-link-3" href='<c:url value="/view/register.jsp"/>'>Đăng Ký</a>
	                </li>
	                <li class="nav-item">
	                    <a class="nav-link nav-link-4 active" aria-current="page" href='<c:url value="/view/login.jsp"/>'>Đăng Nhập</a>
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
                <form action="LoginServ" class="mt-3 border border-2 rounded-3" style="width: 40rem;" method="post">
                    <jsp:include page="/view/common/AlertNotice.jsp"/>
                    <div class="text-center" style="font-size: 28px;"><b>Login Account</b></div>
                    <div class="mb-3 mt-3">
                      <label for="username" class="form-label">Tên Tài Khoản</label>
                      <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
                    </div>
                    <div class="mb-3">
                      <label for="password" class="form-label">Password</label>
                      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
                    </div>
                   
                    <div class="form-check mb-3">
                      <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" name="remember"> Remember me
                      </label>
                    </div>
                    <div class="mx-2 d-flex justify-content-around">
                        <button type="submit" class="btn btn-primary mb-3 mx-2 "><b>Login</b></button>
                        <a href="forget-password.html" class="btn btn-primary mb-3 mx-2 "><b>Quên Mật Khẩu</b></a>
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