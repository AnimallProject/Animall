<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.min.js"></script>

	

	<style>
	
	.product_upper_area{
	padding:30px;
	}
	*{

	}
	
	.product_upper_area{
	
	}
	
	.product_image_area{
	width:500px;
	height:550px;
	
	display:inline-block;
	}
	
	.product_text_area{
	float:right;
	width:400px;
	height:500px;
	margin-right:100px;
	}
	
	.image_big_area{
	width:500px;
	height:450px;
	}
	
	.image_big_area>img{
	width:500px;
	height:450px;
	}
	
	.image_small_area{
	width:500px;
	height:100px;
	margin:0px 0px;
	}
	
	.image_small_area > ol{
	margin:0px 0px;
	}
	.image_small_area > ol > li ,
	.image_small_area > ol > li > img{
	width:100px;
	height:100px;
	display:inline-block;
	float: right;
	}
	
	.btn_area{
	width:1000px;
	padding-top:30px;
	padding-left:20%;
	display:inline-block;
	}
	
	.btn_area > ol > li{
	display:inline-block;
	padding: 10px 10px;
	}
	
	
	.btn1{
	height:50px;
	width:200px;
	background: grey;
	color: black;
	font-weight:bold;
	text-align:center;
	border:none;
	opacity:50%;
	}
	
	.btn2{
	height:50px;
	width:200px;
	background: #997296;
	color: snow;
	font-weight:bold;
	text-align:center;
	border:none;
	}
	
	.product_lower_area{
	margin:30px 0px;
	}
	.product_lower_area .nav_area > ol{
	width:100%;
	margin-left:25%;
	}
	
	.product_lower_area .nav_area > ol > li{
	display:inline-block;
	padding: 0px 10px;
	}
	</style>
	
		<script>
			$(document).ready(function(){
				  $('.owl-carousel').owlCarousel({
				       items:1,
			           loop:true,
				       center:false,
				       margin:10,
				       URLhashListener:true,
				       autoplay:true,
				       autoplayHoverPause:true,
				       startPosition: 'URLHash'
				  });
			});
		</script>
					
	

</head>
<body>
	<c:import url="../../common/header.jsp" />

	<div class="container">
		
			<div class="product_upper_area">
				
				<div class="product_image_area">
					
					<div class="owl-carousel owl-theme">
						
						<div class="image_big_area" >
					 		 <div class="item" data-hash="image1">
								<img id="pimage1area" src="${pageContext.request.contextPath}/resources/productUpFiles/${imageList.get(0).changename}" alt="" />
							 </div>
						</div>
						<div class="image_big_area" >
							 <div class="item" data-hash="image2">
								<img id="pimage2area" src="${pageContext.request.contextPath}/resources/productUpFiles/${imageList.get(1).changename}" alt="" />
							 </div>
						</div>
						<div class="image_big_area" >
							 <div class="item" data-hash="image3">
								<img id="pimage3area" src="${pageContext.request.contextPath}/resources/productUpFiles/${imageList.get(2).changename}" alt="" />
							 </div>
						</div>
						<div class="image_big_area" >
							 <div class="item" data-hash="image4">
								<img id="pimage4area" src="${pageContext.request.contextPath}/resources/productUpFiles/${imageList.get(3).changename}" alt="" />
							 </div>
						</div>
					
					</div>
					
					<div class="image_small_area">
						<ol>
							<li class="image_small_area">
								<img src="${pageContext.request.contextPath}/resources/productUpFiles/${imageList.get(0).changename}" onclick="location.href='#image1'" alt="" />
							</li>
							<li class="image_small_area">
								<img src="${pageContext.request.contextPath}/resources/productUpFiles/${imageList.get(1).changename}" onclick="location.href='#image2'" alt="" />
							</li>
							<li class="image_small_area">
								<img src="${pageContext.request.contextPath}/resources/productUpFiles/${imageList.get(2).changename}" onclick="location.href='#image3'" alt="" />
							</li>
							<li class="image_small_area">
								<img src="${pageContext.request.contextPath}/resources/productUpFiles/${imageList.get(3).changename}" onclick="location.href='#image4'" alt="" />
							</li>
						</ol>
					</div>
				</div>
				
				<div class="product_text_area">
					<div class="product_name">
						<h4>제품명</h4>
						<input type="hidden" id="pno" value="${product.pno}" />
						<input type="text" id="pname" name="pname" value="${product.pname}" readonly/>
					</div>
					<hr />
					<div class="product_content">
						<textarea name="pcontent" id="pcontent" placeholder="제품상세설명"	readonly>${product.pcontent}</textarea>
					</div>
				
					<hr />
					<div class="product_price">
						<h4>제품 가격</h4>
						<input type="number" id="pprice" name="pprice" value="${product.pprice}" readonly/>
					</div>
					<hr />
					<div class="ptype">
						<h4>제품 타입</h4>
						<input type="text" id="ptype" name="ptype" value="${product.ptype}" readonly/>
					</div>
					<hr />
					<div class="product_pguide">
						
						<textarea name="pguide" id="pguide" placeholder="구매안내"	readonly>${product.pguide}</textarea>
					</div>
				</div>
				
				<div class="btn_area">
					<ol>
						<li>
							<input type="button" value="상품 수정하기" id="" class="btn1" onclick="location.href='${pageContext.request.contextPath}/product/productGoUpdate.do?pno=${product.pno}'">
						</li>
						<li>
							<input type="button" value="바로 구매하기" id="" class="btn1" onclick=""/>
						</li>
						<li>
							<input type="button" value="장바구니담기" id="" class="btn2" onclick=""/>
						</li>
					
					</ol>
				</div>
			</div>

		<div class="product_lower_area">
			<div class="nav_area">
				<ol>
					<li>
						<h3>상세정보</h3>
					</li>
					<li>
						<h3>리뷰</h3>
					</li>
					<li>
						<h3>상품문의</h3>
					</li>
				</ol>
			</div>
		</div>

	</div>


	<c:import url="../../common/footer.jsp" />
	
	<script src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/owl.carousel.js"></script>
	
</body>
</html>