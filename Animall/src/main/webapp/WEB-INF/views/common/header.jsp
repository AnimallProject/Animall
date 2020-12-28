<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="kr">
<head>
	<meta charset="UTF-8" />
	<title>ANIMALL</title>
	
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
  
  <!-- 드랍다운 메뉴  -->
  <link rel="stylesheet" href="resources/css/header.css" />
  
  <!-- fontawesome 사용 -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
	
</head>



<body>
<!-- 로딩 중 표시 -->
<div class="preloader">
    <img src="resources/images/preloader.gif" alt="preloader">
</div>


    
    <!-- 글꼴 적용 -->
<div style="font-family: Nanum Gothic">


<!-- nav bar -->

<div class="primeContainer">
	<div class="bigContainer">
   		<div class="logoContainer">
	       <a href="index.jsp">
	          <img src="resources/images/cat_dog_logo.png" alt="logo">
	       </a>
	       <div class="logoMargin">
	       </div>
   		</div>
   		<div class="logoBlank">
   		</div>
   		<div class="rightMenuContainer">
   			<div>
			    <div class="rightMenu">
			      	<a href='#'>Login</a>
			    </div>
		    </div>
		    <div>
			    <div class="rightMenu">
			      	<a href='#'>Join</a>
			    </div>
		    </div>
		    <div>
			    <div class="rightMenu">
			      	<a href='#'>Mypage</a>
			    </div>
		    </div>
		    <div>
			    <div class="rightMenu" style="border : none;">
			      	<a href='#'>Cart</a>
			    </div>
		    </div>
   		</div>
   	</div>      
    
    <div class="bigContainer">  
    	<div class="leftMenuContainer">
		    <div class="totalCategory">
		    
		      <button class="dropbtn"><i class="fas fa-bars"></i> Menu</button>
			      <div class="dropdown-content">
			      		<a href="#">Beauty</a>
				        <a href="#">Living</a>
				        <a href="#">Food</a>
				        <a href="#">AniPic</a>
				        <a href="#">AniSalon</a>
				        <a href="#">공지사항</a>
				        <a href="#">마이페이지</a>
				        <a href="#">장바구니</a>
				        <a href="#">FAQ</a>
				        
			      </div>
		    </div>
		    <div>
			    <div class="leftMenu">
			      	<a href='#'>Beauty</a>
			    </div>
		    </div>
		    <div>
			    <div class="leftMenu">
			      	<a href='#'>Living</a>
			    </div>
		    </div>
		    <div>
			    <div class="leftMenu">
			      	<a href='#'>Food</a>
			    </div>
		    </div>
		    <div>
			    <div class="leftMenu">
			      	<a href='#'>AniPic</a>
			    </div>
		    </div>
		    <div>
			    <div class="leftMenu">
			      	<a href='#'>AniSalon</a>
			    </div>
		    </div>
    		<div class="leftMenuBlank">
    		</div>
   		</div>
   		<div class="searchContainer">
	   		<div class="searchMargin">
	   		</div>
	   		<input id="search" name="search">
	 	  	</input>
	 	  	<div class="searchIcon">
	 	  	<i class="fas fa-search"></i>
	   		</div>
   		</div>
   </div> 
</div> 

<!-- /navigation 여기까지 fixed 적용 -->
<!-- 글꼴 적용 -->
</div> 

<!-- position:fixed로 인한 화면 겹침 현상 방지를 위해 -->
<div class="topMargin" style="height : 175px">
</div>
	


<div class="back-to-top" >
<i class="fas fa-arrow-circle-up" id="topButton"></i>       
</div>
	
	
	
</body>
</html>