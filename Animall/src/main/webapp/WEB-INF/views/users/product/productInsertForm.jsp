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
		var content = $("[name=boardContent]").val();
		if(content.trim().length==0){
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
		<form name="productInsertForm"	action="${pageContext.request.contextPath}/product/productFormEnd.do" method="post" onsubmit="return validate();" enctype="multipart/form-data">

			<div class="product_upper_area">

				<div class="product_image_area">
					<input type="file" name="" id="" />
					<div class="image_big_area">
						<ol>
							<li><input type="file" name="" id="" /></li>
							<li><input type="file" name="" id="" /></li>
							<li><input type="file" name="" id="" /></li>
						</ol>
					</div>

				</div>
				<div class="product_text_area">
					<div class="product_name">
						<input type="text" id="pname" /><label for="pname">상품명</label>
					</div>
					<div class="product_content">
						<textarea name="pcontent" id="pcontent" placeholder="상품설명"	required></textarea>
					</div>
					<div class="product_type">
						<select name="" id="">
							<option value=""></option>
						</select>
					</div>
					<hr />
					<div class="product_price">
						<input type="number" id="pprice" /><label for="pprice">상품가격</label>
					</div>
				</div>
			</div>

		</form>

		<div class="product_lower_area"></div>

	</div>




	<c:import url="../../common/footer.jsp" />
</body>
</html>