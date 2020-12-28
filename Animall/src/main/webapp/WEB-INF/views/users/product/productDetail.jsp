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
	border:1px solid #e5e5e5;
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
	padding-top:80px;
	padding-left:25%;
	display:inline-block;
	}
	
	.btn_area > ol > li{
	display:inline-block;
	padding: 10px 10px;
	}
	
	
	.btn1{
	height:50px;
	width:200px;
	background: #e5e5e5;
	color: black;
	font-weight:bold;
	text-align:center;
	border:none;
	opacity:50%;
	border-radius:5px;
	}
	
	.btn2{
	height:50px;
	width:200px;
	background: #997296;
	color: snow;
	font-weight:bold;
	text-align:center;
	border:none;
	border-radius:5px;
	}
	
	.btn3{
	width:100px;
	height:30px;
	border-radius:5px;
	margin-left:90%;
	}
	
	.product_lower_area{
	margin:30px 0px;
	}
	.product_lower_area .nav_area > ol{
	width:100%;
	border: 2px solid black;
	text-align:center;
	border-radius : 10px;
	border : 1px solid grey;
	}
	
	.product_lower_area .nav_area > ol > li{
	display:inline-block;
	padding: 0px 10px;
	border : none;
	padding : 5px 50px;
	background : grey;
	border-radius : 10px;
	opacity:30%;
	}
	
	.product_lower_area .nav_area > ol > li > h3{
	color : black;
	font-weight:bold;
	}
	
	.reviewImage{
	width:220px;
	}
	
	
	#rimage{
	margin-top:10px;
	}
	
	#rcontent{
	border:none;
	resize:none;
	}
	
	.goinquiry{
		border-radius:5px;
		background:#fff;
		border: 1px solid #e5e5e5;
		border-left:none;
		border-right:none;
		padding:50px;
	}
	
	.pititle > h6{
	display:inline-block;
	
	}
	
	.pititle{
	padding-left: 50px;
	}
	
	.picontent{
	padding: 50px;
	}
	
	input[id='pititle']{
	width:300px;
	height:30px;
	border: 1px solid #e5e5e5;
	}
	
	h6[id='piproductname']{
	padding-left:10%
	}
	h6[id='piname']{
	padding-left:20%;
	}
	
	textarea[name='picontent']{
	border: 1px solid #e5e5e5;
	resize:none;
	}
	
	input{
	border:none;
	}
	
	.minus{
	width:30px;
	backgorund:#e5e5e5;
	border-radius:10px;
	}
	
	.plus{
	width:30px;
	background:#997296;
	border-radius:10px;
	}
	
	.product_lower_area img{
	border:1px solid #e5e5e5;
	}
	
	.image_big_area > .item{
	width:100%;
	height:100%;
	}
	
	.image_big_area > .item > img{
	width:100%;
	height:100%;
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

		    $(function(){
		        $('#reviewImageArea').click(function(){
		           $('#rimage').click();
		        });
		     });

			function imageLoad(img, num){
		        if(img.files && img.files[0]) {
		           
		           var reader = new FileReader();
		           
		           reader.onload = function(e){
		              
		              switch(num){
		              case 1 : $('#reviewImageArea').attr('src', e.target.result);
		                     break;
		           	  }
		           
		           
		           }
		              
		           reader.readAsDataURL(img.files[0]);
		           
		 	  }
		    }

		    function pdelete(){
				if($('#orderQuantity').val() > 1){
					var pprice = Number($('#pprice').val());
					var productQtn = Number($('#orderQuantity').val()) - 1;
					var totalPrice = pprice * productQtn;		

					$('#orderQuantity').val(productQtn);
					$('#total_price').val(totalPrice);
				}else{
					alert("1개가 최소 수량입니다.");
				}
			}

			function padd(){
				var pprice = Number($('#pprice').val());
				var productQtn = Number($('#orderQuantity').val()) + 1;
				var totalPrice = pprice * productQtn;

				$('#orderQuantity').val(productQtn);
				$('#total_price').val(totalPrice);
			}

			// ProductInquiry 유효성 검사
			function PIvalidate(){
				var pititle = $("[id=pititle]").val();
				if(pititle.trim().length==0){
					alert("문의 제목을 입력하세요.");
					return false;
				}

				var picontent = $("[name=picontent]").val();
				if(picontent.trim().length==0){
					alert("문의 내용을 입력하세요.");
					return false;	
				}
				return true;
			}
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
						<textarea name="pcontent" id="pcontent" placeholder="제품상세설명" style="border:none; resize:none;" readonly>${product.pcontent}</textarea>
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
						<textarea name="pguide" id="pguide" placeholder="구매안내" style="border:none; resize:none;" readonly>${product.pguide}</textarea>
					</div>
					<hr />
					<div class="product_order_price">
						<h5>수량</h5><br />
						<input type="button" class="minus" value="-" onclick="pdelete();" />
						<input type="number" id="orderQuantity" value="1"  style="text-align:center;"/>
						<input type="button" class="plus" value="+" onclick="padd();" /><br /><br />
						<h6 class="font-weight-light">가격 : 
							<input type="text" id="total_price" value="${product.pprice}" readonly />원
						</h6>
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
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" data-toggle="tab" href="#detailInfo" role="tab">
							<h3>상세정보</h3>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#review" role="tab">
							<h3>리뷰</h3>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#productInquiry" role="tab">
							<h3>상품문의</h3>						
						</a>
					</li>
				</ul>
			</div>
		
		<div class="tab-content" id="myTabContent">
			
			<div class="tab-pane fade show active product_description" id="detailInfo" role="tabpanel">
				123
				
			</div>
			
			<div class="tab-pane fade review_area" id="review" role="tabpanel" >
				<form name="productReviewForm" action="${pageContext.request.contextPath}/product/productReviewInsert.do" method="post" enctype="multipart/form-data">
					    <select name="reviewstar" class="reviewstar" id="reviewstar">
                              <option value="" >별점 선택하기</option>
                              <option value="5">★★★★★</option>
                              <option value="4">★★★★☆</option>
                              <option value="3">★★★☆☆</option>
                              <option value="2">★★☆☆☆</option>
                              <option value="1">★☆☆☆☆</option>
                        </select> <br> <br> 
				<div class="d-flex mb-4">
					<div class="mr-3 reviewImage">
						<img id="reviewImageArea" style="width:200px; height:200px" />
						<input type="file" name="rimage" id="rimage" onchange="imageLoad(this,1);"/>
					</div>
					<div class="border rounded py-3 px-4">
						<div class="border-bottom mb-10" style="width:750px; height:190px;">
							<h5><!-- {member.mname} -->123 </h5>
							<p>
								<textarea name="rcontent" id="rcontent" cols="90" rows="5">해당 상품에 대한 리뷰를 입력하세요!</textarea>
							</p>
						 </div>
					</div>
				</div>				
				</form>		
				
				<!-- 
				<c:if test="{리스트가 있다면}">
				</c:if>
				 -->
				<div class="d-flex mb-4">
					<div class="mr-3 reviewImage">
						<img src="${pageContext.request.contextPath}/resources/reviewUpFiles/" style="width:200px; height:200px"  />
					</div>
					<div class="border rounded py-3 px-4">
						<div class="border-bottom mb-10"  style="width:750px; height:190px;">
							<h5><!-- {member.mname} --></h5>
							<h6 class="font-weight-light"><!-- {member.mdate --></h4>
							<p><!-- {pcontent} --></p>
						</div>
					
						<div class="d-flex justify-content-between">
							<div>
								<ul class="list-inline d-inline-block">
						
								<!-- forEach문 -->
									<!-- c:if문 -->
									<li class="list-inline-item">
									   	<a href="#">
											<i class="ti-star golden"></i>
										</a>
									</li>
									<li class="list-inline-item">
                         		       <a href="#">
                              		      <i class="ti-star text-color"></i>
                          		      </a>
                        		   </li>
								</ul>
							</div>
						</div>	
					</div>
				</div>
				
				
			</div>
			
			<div class="tab-pane fade product_inquiry_area" id="productInquiry" role="tabpanel">
				<form action="${pageContext.request.contextPath}/product/productInquiry.do" method="post" onsubmit="return PIvalidate();" >
					<div class="goinquiry">
						<div class="pititle">
							<h6 class="font-weight-light">
								<label for="pititle">제목&nbsp;:&nbsp;</label><input type="text" id="pititle"/>
							</h6>
							<input type="hidden" value="${product.pno}" />
							<h6 class="font-weight-light" id="piproductname">문의 제품 : ${product.pname} </h6>
							<h6 class="font-weight-light" id="piname">문의자 : 김형록<!-- {mname} --></h6>
							<input type="hidden" value="" /> <!-- 여기 value에 mno 넣어주기 -->
						</div>
						<hr />
						<div class="picontent">
							<h6 class="font-weight-light">문의 내용 <!-- productInquirycontent --></h6><br />
							<textarea name="picontent" cols="110" rows="15">Q. 문의내용을 입력하세요.</textarea>
							<input type="submit" class="btn3" value="문의하기"/>	
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>


	<c:import url="../../common/footer.jsp" />
	
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.js"></script>
	
</body>
</html>