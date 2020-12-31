<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="utf-8">
  <title>ANIMALL</title>

  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/carousel.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/rayer.css" />
  
  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <!-- Bootstrap -->
  <link rel="stylesheet" href="resources/plugins/bootstrap/bootstrap.min.css">
  <!-- magnific popup -->
  <link rel="stylesheet" href="resources/plugins/magnific-popup/magnific-popup.css">
  <!-- Slick Carousel -->
  <link rel="stylesheet" href="resources/plugins/slick/slick.css">
  <link rel="stylesheet" href="resources/plugins/slick/slick-theme.css">
  <!-- themify icon -->
  <link rel="stylesheet" href="resources/plugins/themify-icons/themify-icons.css">
  <!-- animate -->
  <link rel="stylesheet" href="resources/plugins/animate/animate.css">
  <!-- Aos -->
  <link rel="stylesheet" href="resources/plugins/aos/aos.css">
  <!-- swiper -->
  <link rel="stylesheet" href="resources/plugins/swiper/swiper.min.css">
  <!-- Stylesheets -->
  <link href="resources/css/style.css" rel="stylesheet">
  
  <!--Favicon-->
  <link rel="shortcut icon" href="resources/images/favicon.png" type="image/x-icon">
  <link rel="icon" href="resources/images/favicon.png" type="image/x-icon">
	
  <script src="resources/js/jquery-3.5.1.min.js"></script>

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

<header>
	<%@ include file="common/header.jsp"%>
</header>
  
<!-- 캐러셀 -->
<section style="display : flex; justify-content : center;">
  <div class="carousel-container">
  <i class="fas fa-arrow-right" id="nextBtn"></i>
  <i class="fas fa-arrow-left" id="prevBtn"></i>
  	<div class="carousel-slide">
  	<img src="${pageContext.request.contextPath}/resources/images/banner/pet_food_banner3.png" id="lastClone" alt="" />
  		<img src="${pageContext.request.contextPath}/resources/images/banner/cat_dog_banner3.png" alt="" />
  		<img src="${pageContext.request.contextPath}/resources/images/banner/christmas_banner3.png" alt="" />
  		<img src="${pageContext.request.contextPath}/resources/images/banner/pet_food_banner3.png" alt="" />
  	<img src="${pageContext.request.contextPath}/resources/images/banner/cat_dog_banner3.png" id="firstClone" alt="" />
  	</div>
  </div>
  

</section>

<!-- 상품추천 -->
<section>
<div class="primeContainer_ForIndexProduct">
	<div class="bigContainer_ForIndexProduct1">
	        <h3 class="">이 상품 어때요?</h3>
	</div>
	
	<div class="bigContainer_ForIndexProduct2">
	
	<c:forEach var="indexProduct" items="${productList}">
		<div>
			<div class="imgContainer_ForIndexProduct">
				<a href="">
				<img src="${pageContext.request.contextPath}${indexProduct.imgpath}" alt="" />
				</a>
			</div>
			<div class="productContainer_ForIndexProduct">
				<p style ="height : 10px">${indexProduct.pname}</p>
				<p style ="height : 10px">${indexProduct.pprice}</p>
			</div>
		</div>
	</c:forEach>
	

	</div>
</div>
</section>


<div class="primeContainer_forRayer">
<div class="bigContainer_forRayer" id="write__form__bg"></div>

		<form id='write__form' role='form' method='post'
			enctype='multipart/form-data'>
			<div id="write__form__box"
				style="display: flex; justify-content: center; align-items: center; position: fixed; top: 0; left: 0; widtH: 100%; height: 100%; z-index: 9999;">
				<div
					style="background-color: #ffffff; width: 550px; height: 700px; position: relative; display: flex; justify-content: center;">

					<div style="margin: 60px 0 0 0;">
						<div>
							<input id="btitle" placeholder="제목" type="text" name="btitle"
								style="height: 40px; width: 350px; margin: 0 0 30px 0; padding: 0; border: none; border-bottom: 1px solid #191621; font-size: 20pt; background-color: transparent; border-radius: 0;">
						</div>
						<div style="width: 350px; height: 350px; margin: 0 0 30px 0;">
							<textarea id="bcontent" placeholder="내용" name="bcontent"
								style="padding: 0; border: solid 1px black; font-size: 11pt; width: 100%; height: 100%; padding: 10px;"></textarea>
						</div>

						<div>
							<div>
								<input id="file1" type="file" name="file">
							</div>
							<div>
								<input id="file2" type="file" name="file">
							</div>
							<div>
								<input id="file3" type="file" name="file">
							</div>
						</div>

						<div
							style="margin: 20px 0 0 0; display: flex; justify-content: center;">
							<div id="write__button"
								style="background-color: #997296; width: 350px; border-radius: 14px; display: flex; justify-content: center; align-items: center; cursor: pointer; height: 25px;">
								<div style="font-size: 10pt; color: white;">글등록</div>
							</div>
						</div>

					</div>
					<div id="write__close__button"
						style="cursor: pointer; position: absolute; top: 10px; right: 10px;">
						<img src="/animall/resources/images/cancel.png"
							style="width: 25px;">
					</div>
				</div>

			</div>
		</form>
	</div>
</div>



<section class="about section-sm overlay" style="background-image: url(resources/images/background/about-bg.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 ml-auto">
                <div class="rounded p-sm-5 px-3 py-5 bg-secondary">
                    <h3 class="section-title section-title-border-half text-white">Who We Are?</h3>
                    <p class="text-white mb-40">Excepteur sint occaecat cupidatat non proident sunt culpa qui officia deserunt mollit anim id est laborum.</p>
                    <div>
                        <ul class="d-inline-block pl-0">
                            <li class="font-secondary mb-10 text-white float-sm-left mr-sm-5">
                                <i class="text-primary mr-2 ti-arrow-circle-right"></i>Business Services</li>
                            <li class="font-secondary mb-10 text-white">
                                <i class="text-primary mr-2 ti-arrow-circle-right"></i>Audit &amp; Assurance</li>
                            <li class="font-secondary mb-10 text-white">
                                <i class="text-primary mr-2 ti-arrow-circle-right"></i>IT Control Solutions</li>
                        </ul>
                        <ul class="d-inline-block pl-0">
                            <li class="font-secondary mb-10 text-white">
                                <i class="text-primary mr-2 ti-arrow-circle-right"></i>Business Services</li>
                            <li class="font-secondary mb-10 text-white">
                                <i class="text-primary mr-2 ti-arrow-circle-right"></i>Audit &amp; Assurance</li>
                            <li class="font-secondary mb-10 text-white">
                                <i class="text-primary mr-2 ti-arrow-circle-right"></i>IT Control Solutions</li>
                        </ul>
                    </div>
                    <a href="service.html" class="btn btn-primary mt-4">Explore More</a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- skill -->
<section class="section">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h5 class="section-title-sm">Best Service</h5>
        <h2 class="section-title section-title-border-half">Why Choose Us</h2>
      </div>
      <div class="col-lg-7">
        <div class="mb-40">
          <p class="text-dark">Lorem ipsum dolor sit amet, consectetur adipisicing elit,
            sed eiusmod tempor incididunt laboris nisi
            ut aliquip ex ea commodo consequat. </p>
          <p class="text-dark mb-30">Duis aute irure dolor in reprehenderit voluptate
            velit esse cillum dolore fugiat nulla pariatur.Excepteur
            sint ocaecat cupidatat non proident sunt culpa qui officia deserunt mollit
            anim id est laborum. sed
            perspiciatis unde omnisiste natus error sit voluptatem
            accusantium.doloremque ladantium totam rem
            aperieaque ipsa quae ab illo inventore.veritatis. et quasi architecto beatae
            vitae dicta sunt explicabo.</p>
        </div>
        <!-- fun-fact -->
        <div class="mb-md-50">
          <div class="row">
            <div class="col-4">
              <div class="d-flex flex-column flex-sm-row align-items-center">
                <i class="round-icon mr-sm-3 ti-server"></i>
                <div class="text-center text-sm-left">
                  <h2 class="count mb-0" data-count="230">0</h2>
                  <p class="mb-0">Projects Done</p>
                </div>
              </div>
            </div>
            <div class="col-4">
              <div class="d-flex flex-column flex-sm-row align-items-center">
                <i class="round-icon mr-sm-3 ti-face-smile"></i>
                <div class="text-center text-sm-left">
                  <h2 class="count mb-0" data-count="789">0</h2>
                  <p class="mb-0">Satisfied Clients</p>
                </div>
              </div>
            </div>
            <div class="col-4">
              <div class="d-flex flex-column flex-sm-row align-items-center">
                <i class="round-icon mr-sm-3 ti-thumb-up"></i>
                <div class="text-center text-sm-left">
                  <h2 class="count mb-0" data-count="580">0</h2>
                  <p class="mb-0">Cup Of Coffee</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- progressbar -->
      <div class="col-lg-4 offset-lg-1">
        <div class="progressbar">
          <h5 class="progressbar-title">Branding</h5>
          <div class="progress" data-percent="85%">
            <div class="progress-bar progress-bar-striped" style="width: 85%;">
              <div class="progress-bar-value">85%</div>
            </div>
          </div>
        </div>
        <div class="progressbar">
          <h5 class="progressbar-title">Consulting</h5>
          <div class="progress" data-percent="90%">
            <div class="progress-bar progress-bar-striped" style="width: 90%;">
              <div class="progress-bar-value">90%</div>
            </div>
          </div>
        </div>
        <div class="progressbar">
          <h5 class="progressbar-title">Business</h5>
          <div class="progress" data-percent="75%">
            <div class="progress-bar progress-bar-striped" style="width: 75%;">
              <div class="progress-bar-value">75%</div>
            </div>
          </div>
        </div>
        <div class="progressbar">
          <h5 class="progressbar-title">Promotion</h5>
          <div class="progress" data-percent="90%">
            <div class="progress-bar progress-bar-striped" style="width: 90%;">
              <div class="progress-bar-value">90%</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /skill -->

<!-- work -->
<section class="section bg-gray">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-12 text-center">
        <h5 class="section-title-sm">Our Works</h5>
        <h2 class="section-title section-title-border-gray">Latest Projects</h2>
      </div>
    </div>
    <!-- work slider -->
    <div class="row work-slider">
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-1.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-1.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-2.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-2.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-3.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-3.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-4.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-4.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-1.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-1.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-2.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-2.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-3.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-3.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-4.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-4.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-1.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-1.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-2.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-2.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-3.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-3.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 px-0">
        <div class="work-slider-image">
          <img class="img-fluid w-100" src="resources/images/works/work-4.jpg" alt="work-image">
          <div class="image-overlay">
            <a class="popup-image" data-effect="mfp-zoom-in" href="resources/images/works/work-4.jpg">
              <i class="ti-search"></i>
            </a>
            <a class="h4" href="project-single.html">Cras Sed Elit Sit Amet.</a>
            <p>by Admin</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /work -->

<!-- mission -->
<section class="mission section">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h5 class="section-title-sm">Our Goal</h5>
        <h2 class="section-title section-title-border-half">Company Mission</h2>
        <div class="row">
          <div class="col-lg-6">
            <p class="mb-40">Lorem ipsum dolor sit amet consectetur adipisicing elit sed
              eiusmod tempor didunt laboris nisi ut aliquip ex ea commodo consequat.
            </p>
          </div>
        </div>
      </div>
      <div class="col-lg-6">
        <!-- accordion -->
        <div id="accordion" class="mb-md-50">
          <div class="card border-0 mb-4">
            <div class="card-header bg-gray border p-0">
              <a class="card-link h5 d-block tex-dark mb-0 py-10 px-4" data-toggle="collapse" href="#collapseOne">
                <i class="ti-minus text-primary mr-2"></i> Our Company Mission
              </a>
            </div>
            <div id="collapseOne" class="collapse show" data-parent="#accordion">
              <div class="card-body font-secondary text-color pl-0 pb-0">
                Duis aute irure dolor in reprehenderit voluptate velit esse cillum
                dolore fugiat nulla pariatur.Excepteur sint ocaecat cupidatat
                non proident sunt culpa qui officia deserunt mollit anim id est
                laborum.
              </div>
            </div>
          </div>
          <div class="card border-0 mb-4">
            <div class="card-header bg-gray border p-0">
              <a class="collapsed card-link h5 d-block tex-dark mb-0 py-10 px-4" data-toggle="collapse"
                href="#collapseTwo">
                <i class="ti-plus text-primary mr-2"></i> Our Company Mission
              </a>
            </div>
            <div id="collapseTwo" class="collapse" data-parent="#accordion">
              <div class="card-body font-secondary text-color pl-0 pb-0">
                Duis aute irure dolor in reprehenderit voluptate velit esse cillum
                dolore fugiat nulla pariatur.Excepteur sint ocaecat cupidatat
                non proident sunt culpa qui officia deserunt mollit anim id est
                laborum.
              </div>
            </div>
          </div>
          <div class="card border-0 mb-4">
            <div class="card-header bg-gray border p-0">
              <a class="collapsed card-link h5 d-block tex-dark mb-0 py-10 px-4" data-toggle="collapse"
                href="#collapseThree">
                <i class="ti-plus text-primary mr-2"></i> Our Company Mission
              </a>
            </div>
            <div id="collapseThree" class="collapse" data-parent="#accordion">
              <div class="card-body font-secondary text-color pl-0 pb-0">
                Duis aute irure dolor in reprehenderit voluptate velit esse cillum
                dolore fugiat nulla pariatur.Excepteur sint ocaecat cupidatat
                non proident sunt culpa qui officia deserunt mollit anim id est
                laborum.
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- chart -->
      <div class="col-lg-6">
        <img src="resources/images/chart.png" alt="chart" class="img-fluid w-100">
      </div>
    </div>
  </div>
</section>
<!-- /mission -->

<!-- promo-video -->
<section class="promo-video overlay section" style="background-image: url(resources/images/background/promo-video.jpg);">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h1 class="text-white mb-20 font-weight-normal">We Are Alawys <br> Comited</h1>
        <div class="d-flex">
          <a class="popup-youtube play-icon mr-4" href="https://www.youtube.com/watch?v=6ZfuNTqbHE8">
            <i class="ti-control-play"></i>
          </a>
          <p class="text-white align-self-center h4">Lorem ipsum dolor <br> sit amet con.
          </p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /promo-video -->

<!-- testimonial -->
<section class="section pb-0">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h5 class="section-title-sm">Clients</h5>
                <h2 class="section-title section-title-border"> What client Say </h2>
            </div>
            <div class="col-lg-5 col-md-5 pr-0 align-self-center">
                <img class="img-fluid w-100" src="resources/images/client.png" alt="clients-image">
            </div>
            <div class="col-lg-7 col-md-7 align-self-center pl-0">
                <div class="testimonial-slider p-5">
                    <!-- slider item -->
                    <div class="outline-0">
                        <i class="testimonial-icon ti-quote-left"></i>
                        <p class="text-dark">Lorem ipsum dolor sit amet constur adipisicing elit sed eiusmtempor incid sed dolore magna aliqu enim minim veniam quis nostrud exercittion ullamco labo ris nisi aliquip excepteur.</p>
                        <h4 class="font-weight-normal">Julia Robertson</h4>
                        <h6 class="font-secondary text-color">Happy Clients</h6>
                    </div>
                    <!-- slider item -->
                    <div class="outline-0">
                        <i class="testimonial-icon ti-quote-left"></i>
                        <p class="text-dark">Lorem ipsum dolor sit amet constur adipisicing elit sed eiusmtempor incid sed dolore magna aliqu enim minim veniam quis nostrud exercittion ullamco labo ris nisi aliquip excepteur.</p>
                        <h4 class="font-weight-normal">Julia Robertson</h4>
                        <h6 class="font-secondary text-color">Happy Clients</h6>
                    </div>
                    <!-- slider item -->
                    <div class="outline-0">
                        <i class="testimonial-icon ti-quote-left"></i>
                        <p class="text-dark">Lorem ipsum dolor sit amet constur adipisicing elit sed eiusmtempor incid sed dolore magna aliqu enim minim veniam quis nostrud exercittion ullamco labo ris nisi aliquip excepteur.</p>
                        <h4 class="font-weight-normal">Julia Robertson</h4>
                        <h6 class="font-secondary text-color">Happy Clients</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /testimonial -->

<section class="cta overlay-primary py-50 text-center text-lg-left" style="background-image: url(resources/images/background/cta.jpg);">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-6">
                    <h3 class="text-white">Biztrox give the smart solution for your business</h3>
                </div>
                <div class="col-lg-6 text-lg-right align-self-center">
                    <a href="contact.html" class="btn btn-light">GET AN QUOTE</a>
                </div>
            </div>
        </div>
</section>

<!-- blog -->
<section class="section bg-gray">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-12 text-center">
        <h5 class="section-title-sm">Latest News</h5>
        <h2 class="section-title section-title-border-gray">Company News</h2>
      </div>
      <!-- blog-item -->
      <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
        <div class="card">
          <div class="card-img-wrapper overlay-rounded-top">
            <img class="card-img-top" src="resources/images/blog/blog-1.jpg" alt="blog-thumbnail">
          </div>
          <div class="card-body p-0">
            <div class="d-flex">
              <div class="py-3 px-4 border-right text-center">
                <h3 class="text-primary mb-0">25</h3>
                <p class="mb-0">Nov</p>
              </div>
              <div class="p-3">
                <a href="blog-single.html" class="h4 font-primary text-dark">Cras
                  sed elit sit amet.</a>
                <p>by Admin</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- blog-item -->
      <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
        <div class="card">
          <div class="card-img-wrapper overlay-rounded-top">
            <img class="card-img-top" src="resources/images/blog/blog-2.jpg" alt="blog-thumbnail">
          </div>
          <div class="card-body p-0">
            <div class="d-flex">
              <div class="py-3 px-4 border-right text-center">
                <h3 class="text-primary mb-0">25</h3>
                <p class="mb-0">Nov</p>
              </div>
              <div class="p-3">
                <a href="blog-single.html" class="h4 font-primary text-dark">Cras
                  sed elit sit amet.</a>
                <p>by Admin</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- blog-list -->
      <div class="col-lg-4 col-12">
        <ul class="bg-white border rounded pl-0">
          <li class="d-flex border-bottom">
            <div class="py-3 px-4 border-right text-center">
              <h3 class="text-primary mb-0">25</h3>
              <p class="mb-2">Nov</p>
            </div>
            <div class="p-3">
              <a href="blog-single.html" class="h4 font-primary text-dark">Cras sed
                elit sit amet.</a>
              <p>by Admin</p>
            </div>
          </li>
          <li class="d-flex border-bottom">
            <div class="py-3 px-4 border-right text-center">
              <h3 class="text-primary mb-0">25</h3>
              <p class="mb-2">Nov</p>
            </div>
            <div class="p-3">
              <a href="blog-single.html" class="h4 font-primary text-dark">Cras sed
                elit sit amet.</a>
              <p>by Admin</p>
            </div>
          </li>
          <li class="d-flex">
            <div class="py-3 px-4 border-right text-center">
              <h3 class="text-primary mb-0">25</h3>
              <p class="mb-2">Nov</p>
            </div>
            <div class="p-3">
              <a href="blog-single.html" class="h4 font-primary text-dark">Cras sed
                elit sit amet.</a>
              <p>by Admin</p>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- /blog -->

<section class="bg-white py-4">
  <div class="container">
    <div class="client-logo-slider align-self-center">
      <a href="#" class="text-center d-block outline-0 py-3 px-2"><img class="d-unset"
          src="resources/images/client-logo/client-logo-1.png" alt="client-logo"></a>
      <a href="#" class="text-center d-block outline-0 py-3 px-2"><img class="d-unset"
          src="resources/images/client-logo/client-logo-2.png" alt="client-logo"></a>
      <a href="#" class="text-center d-block outline-0 py-3 px-2"><img class="d-unset"
          src="resources/images/client-logo/client-logo-3.png" alt="client-logo"></a>
      <a href="#" class="text-center d-block outline-0 py-3 px-2"><img class="d-unset"
          src="resources/images/client-logo/client-logo-4.png" alt="client-logo"></a>
      <a href="#" class="text-center d-block outline-0 py-3 px-2"><img class="d-unset"
          src="resources/images/client-logo/client-logo-5.png" alt="client-logo"></a>
      <a href="#" class="text-center d-block outline-0 py-3 px-2"><img class="d-unset"
          src="resources/images/client-logo/client-logo-1.png" alt="client-logo"></a>
      <a href="#" class="text-center d-block outline-0 py-3 px-2"><img class="d-unset"
          src="resources/images/client-logo/client-logo-2.png" alt="client-logo"></a>
      <a href="#" class="text-center d-block outline-0 py-3 px-2"><img class="d-unset"
          src="resources/images/client-logo/client-logo-3.png" alt="client-logo"></a>
      <a href="#" class="text-center d-block outline-0 py-3 px-2"><img class="d-unset"
          src="resources/images/client-logo/client-logo-4.png" alt="client-logo"></a>
      <a href="#" class="text-center d-block outline-0 py-3 px-2"><img class="d-unset"
          src="resources/images/client-logo/client-logo-5.png" alt="client-logo"></a>
    </div>
  </div>
</section>
<!-- /client logo slider -->

<footer>
	<%@ include file="common/footer.jsp" %>
</footer>
<!-- /footer -->

<!-- jQuery -->
<script src="resources/plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="resources/plugins/bootstrap/bootstrap.min.js"></script>
<!-- magnific popup -->
<script src="resources/plugins/magnific-popup/jquery.magnific.popup.min.js"></script>
<!-- slick slider -->
<script src="resources/plugins/slick/slick.min.js"></script>
<!-- filter -->
<script src="resources/plugins/filterizr/jquery.filterizr.min.js"></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu5nZKbeK-WHQ70oqOWo-_4VmwOwKP9YQ"></script>
<script src="resources/plugins/google-map/gmap.js"></script>
<!-- Syo Timer -->
<script src="resources/plugins/syotimer/jquery.syotimer.js"></script>
<!-- aos -->
<script src="resources/plugins/aos/aos.js"></script>
<!-- swiper -->
<script src="resources/plugins/swiper/swiper.min.js"></script>
<!-- Main Script -->
<script src="resources/js/script.js"></script>

</body>
</html>