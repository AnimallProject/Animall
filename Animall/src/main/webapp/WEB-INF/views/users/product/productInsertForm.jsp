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
	<script>

	function validate(){
		var pcontent = $("[name=pcontent]").val();
		if(pcontent.trim().length==0){
			alert("내용을 입력하세요");
			return false;
		}
		return true;
	}
	</script>
	
</head>
<body>
	<c:import url="../../common/header.jsp" />

	<div class="container">
		<form name="productInsertForm" action="${pageContext.request.contextPath}/product/productFormEnd.do" method="post" enctype="multipart/form-data">

			<div class="product_upper_area">

				<div class="product_image_area">
					<input type="file" name="pimage" id="" />
					<div class="image_big_area">
						<ol>
							<li><input type="file" name="pimage" id="" /></li>
							<li><input type="file" name="pimage" id="" /></li>
							<li><input type="file" name="pimage" id="" /></li>
						</ol>
					</div>
				</div>
				
				<div class="product_text_area">
					<div class="product_name">
						<input type="text" id="pname" name="pname" /><label for="pname">상품명</label>
					</div>
					<div class="product_content">
						<textarea name="pcontent" id="pcontent" placeholder="상품설명"	required></textarea>
					</div>
				
					<hr />
					<div class="product_price">
						<input type="number" id="pprice" name="pprice" /><label for="pprice" required>상품가격</label>
					</div>
					<div class="ptype">
						<input type="text" id="ptype" name="ptype" value="${ptype}" readonly/><label for="ptype">상품타입</label>
					</div>
					<div class="product_pguide">
						<textarea name="pguide" id="pguide" placeholder="구매안내"	required></textarea>
					</div>
				</div>
				
			</div>
			
			<button type="submit" onsubmit="return validate();">상품등록</button>
	
		</form>

		<div class="product_lower_area"></div>

	</div>


	<c:import url="../../common/footer.jsp" />
	
	
</body>
</html>