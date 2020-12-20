<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="utf-8">
  <title>BIZTROX</title>

  
  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <!-- Bootstrap -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/bootstrap/bootstrap.min.css">
  <!-- magnific popup -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/magnific-popup/magnific-popup.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/slick/slick.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/slick/slick-theme.css">
  <!-- themify icon -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/themify-icons/themify-icons.css">
  <!-- animate -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/animate/animate.css">
  <!-- Aos -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/aos/aos.css">
  <!-- swiper -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/plugins/swiper/swiper.min.css">
  <!-- Stylesheets -->
  <link href="${pageContext.request.contextPath }/resources/css/style.css" rel="stylesheet">
  
  <!--Favicon-->
  <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/images/favicon.png" type="image/x-icon">
  <link rel="icon" href="${pageContext.request.contextPath }/resources/images/favicon.png" type="image/x-icon">
	
  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.min.js"></script>

  <script>
		$(function(){
			$("a[id]").on("click",function(){
				var ptype = $(this).attr("id");
				console.log("ptype="+ptype);
				location.href = "${pageContext.request.contextPath}/product/productList.do?ptype="+ptype;
			});									
		});
  </script>

</head>

<body>
  

<!-- preloader start -->
<div class="preloader">
    <img src="${pageContext.request.contextPath }/resources/images/preloader.gif" alt="preloader">
</div>
<!-- preloader end -->

<!-- navigation -->
<header>
    <!-- top header -->
    <div class="top-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline text-lg-right text-center">
                        <li class="list-inline-item">
                            <a href="mailto:info@companyname.com">info@companyname.com</a>
                        </li>
                        <li class="list-inline-item">
                            <a href="callto:1234565523">Call Us Now:
                                <span class="ml-2"> 123 456 5523</span>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <a href="#" id="searchOpen">
                                <i class="ti-search"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- nav bar -->
    <div class="navigation">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="index.html">
                    <img src="${pageContext.request.contextPath }/resources/images/logo.png" alt="logo">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">

                        <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                Home
                            </a>
                            <div class="dropdown-menu" >
                                <a class="dropdown-item" href="index.html">Home Page 1</a>
                                <a class="dropdown-item" href="homepage-2.html">Home Page 2</a>
                                <a class="dropdown-item" href="homepage-3.html">Home Page 3</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                About Us
                            </a>
                            <div class="dropdown-menu" >
                                <a class="dropdown-item" href="about.html">About page</a>
                                <a class="dropdown-item" href="about-2.html">About page-2</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                서비스
                            </a>
                            <div class="dropdown-menu" >
                                <a id="beauty" class="dropdown-item">뷰티</a>
                                <a id="food" class="dropdown-item">음식</a>
                                <a id="living" class="dropdown-item">리빙</a>
                            </div>
                                    
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                Pages
                            </a>
                            <div class="dropdown-menu" >
                                <a class="dropdown-item" href="team.html">Team Page</a>
                                <a class="dropdown-item" href="pricing.html">Pricing Page</a>
                                <a class="dropdown-item" href="project.html">project Page</a>
                                <a class="dropdown-item" href="faqs.html">FAQs Page</a>
                                <a class="dropdown-item" href="project-single.html">Project Single</a>
                                <a class="dropdown-item" href="team-single.html">Team Single</a>
                                <a class="dropdown-item" href="404.html">404 Page</a>
                                <a class="dropdown-item" href="signup.html">Sign Up Page</a>
                                <a class="dropdown-item" href="login.html">Login Page</a>
                                <a class="dropdown-item" href="comming-soon.html">Comming Soon Page</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                Blog
                            </a>
                            <div class="dropdown-menu" >
                                <a class="dropdown-item" href="blog.html">Blog Page</a>
                                <a class="dropdown-item" href="blog-sidebar.html">Blog with Sidebar</a>
                                <a class="dropdown-item" href="blog-single.html">Blog Single</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                Elements
                            </a>
                            <div class="dropdown-menu" >
                                <a class="dropdown-item" href="components/buttons.html">Buttons</a>
                                <a class="dropdown-item" href="components/icons.html">Icons</a>
                                <a class="dropdown-item" href="components/typography.html">Typography</a>
                                <a class="dropdown-item" href="components/accordions.html">Accordions</a>
                                <a class="dropdown-item" href="components/blog-contents.html">Blog Contents</a>
                                <a class="dropdown-item" href="components/service-contents.html">Service Contents</a>
                                <a class="dropdown-item" href="components/team-contents.html">Team Contents</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Contact</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>

</body>
</html>
