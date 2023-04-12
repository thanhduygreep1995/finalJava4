<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
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
           <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
               <li class="nav-item">
                   <a class="nav-link nav-link-1 active" href="index.html">Home</a>
               </li>
               <li class="nav-item">
                   <a class="nav-link nav-link-2 " aria-current="page" href="videos.html">Video Yêu Thích</a>
               </li>
                <c:if test="${! isLogin }">
	                <li class="nav-item">
	                    <a class="nav-link nav-link-3" href='<c:url value="/view/register.jsp"/>'>Đăng Ký</a>
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
