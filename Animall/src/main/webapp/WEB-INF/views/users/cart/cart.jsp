<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
  <c:import url="../../common/header.jsp"/>
  <table border="1px" align="center">
		<tr>
			<th>제품번호</th>
			<th>제품명</th>
			<th>수량</th>
			<th>가격</th>
			<th></th>
		</tr>
		<c:forEach var="list" items="${cList}" varStatus="status">
			<form action="deleteshoppingbasket" method="get">
				<tr>
					<td>${list.pno }<input type="hidden"
						value="${list.pno }" name="pno"></td>
					<td>${list.pname }<input type="hidden"
						value="${list.pname }" name="pname"></td>
					<td>${list.amount }<input type="hidden"
						value="${list.amount }" name="amount"></td>
					<td>${list.pprice }<input type="hidden" value="${list.pprice }"
						name="pprice"></td>
					<input type="hidden" value="${list.nname }" name="nname">
					<td><input type="submit" class="btn btn-primary" value="삭제"></td>
				</tr>
			</form>
		</c:forEach>
	</table>
  <c:import url="../../common/footer.jsp"/>
</body>
</html>