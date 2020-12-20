<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="utf-8">
  <title>상품</title>
  
	<script>
		function productInsertForm(){
			location.href = "${pageContext.request.contextPath}/product/productInsertForm.do";
		}		
	</script>

</head>

<body>

  	<c:import url="../../common/header.jsp"/>


<!-- Search Form -->
<div class="search-form">
    <a href="#" class="close" id="searchClose">
        <i class="ti-close"></i>
    </a>
    <div class="container">
        <form action="#" class="row">
            <div class="col-lg-10 mx-auto">
                <h3>Search Here</h3>
                <div class="input-wrapper">
                    <input type="text" class="form-control" name="search" id="search" placeholder="Enter Keywords..." required>
                    <button>
                        <i class="ti-search"></i>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- /navigation --> 

<!-- 상품 조회 헤더 -->
<section class="page-title overlay" style="background-image: url(${pageContext.request.contextPath }/resources/images/background/page-title.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="text-white font-weight-bold">Our Service</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li>Our Service</li>
                </ol>
            </div>
        </div>
    </div>
</section>

<section class="section">
    <div class="container">
        <div class="row">
            <!-- 제품들 for문 시작 -->
            <c:forEach items="${plist}" var="plist">
            <div class="col-lg-4 col-sm-6 mb-5">
                <div class="card text-center">
                    <h4 class="card-title pt-3">${plist.pname}</h4>
                    <div class="card-img-wrapper">
                        <img class="card-img-top rounded-0" src="${pageContext.request.contextPath }/resources/images/service/service-1.jpg" alt="service-image">
                    </div>
                    <div class="card-body p-0">
                        <i class="square-icon translateY-33 rounded rounded ti-bar-chart"></i>
                        <p class="card-text mx-2 mb-0">${plist.pcontent}</p>
                        <a href="service-single.html" class="btn btn-secondary translateY-25">장바구니</a>
                    </div>
                </div>
            </div>  
            </c:forEach>
  		    <!-- 제품들 for문 끝 -->
</section>

	<input type="button" value="상품등록" id="" class="" onclick="productInsertForm();"/>
	<!-- <c:if test="${!empty member and member.mtype eq 'admin'}">  -->
	<!-- </c:if> -->
	
	<c:import url="../../common/footer.jsp"/>

</body>
</html>