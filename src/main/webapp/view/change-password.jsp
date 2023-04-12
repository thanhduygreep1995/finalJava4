<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalog-Z About page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../css/templatemo-style.css">
<!--
    
TemplateMo 556 Catalog-Z

https://templatemo.com/tm-556-catalog-z

-->
</head>
<body>
    <!-- Page Loader -->
    <div id="loader-wrapper">
        <div id="loader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>
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
                <li class="nav-item">
                    <a class="nav-link nav-link-3" aria-current="page" href="register.html">Đăng Ký</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-4" href="register.html">Đăng Nhập</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>
    <article class="mb-3">
        <div class="tm-hero d-flex justify-content-center align-items-center" data-parallax="scroll" data-image-src="../img/hero.jpg"></div>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <form action="" class="mt-3 border border-2 rounded-3" style="width: 40rem;">
                    <div class="text-center" style="font-size: 28px;"><b>Đổi Mật Khẩu</b></div>
                    
                    <div class="mb-3 mt-3">
                      <label for="username" class="form-label">Tên Tài Khoản</label>
                      <input type="username" class="form-control" id="username" placeholder="Enter username" name="username">
                    </div>
                    <div class="mb-3">
                      <label for="pwd" class="form-label">Password Hiện Tại</label>
                      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
                    </div>
                    <div class="mb-3">
                        <label for="pwdn" class="form-label">Password Mới</label>
                        <input type="password" class="form-control" id="pwdn" placeholder="Enter new password" name="pswdn">
                      </div>
                      <div class="mb-3">
                        <label for="pwdc" class="form-label">Xác Nhận Password Mới</label>
                        <input type="password" class="form-control" id="pwdc" placeholder="Enter new password" name="pswdc">
                      </div>
                    <div class="mx-2 d-flex justify-content-center">
                        <button type="submit" class="btn btn-primary mb-3 mx-2 "><b>Xác Nhận</b></button>
                    </div>
                    
                </form>
            </div>
        </div>

    </article>
    



    <jsp:include page="layout/footer.jsp"/>
    
    <script src="../js/plugins.js"></script>
    <script>
        $(window).on("load", function() {
            $('body').addClass('loaded');
        });
    </script>
</body>
</html>