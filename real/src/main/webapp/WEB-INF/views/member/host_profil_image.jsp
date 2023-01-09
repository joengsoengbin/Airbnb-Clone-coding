<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 저장</title>
<style>
	form{
		border: 1px solid #dedede;
		display: inline-block;
	}
	img{
		width: 300px;
	}
</style>
</head>
<body>
	<form method="POST" enctype="multipart/form-data">
		<div>		
			<c:if test="${empty checkH.host_img }">
				<img class="photo_11" src="${cpath }/resources/img/마이페이지/profil.png">
			</c:if>
			<c:if test="${not empty checkH.host_img }">
				<img class="photo_11" src="${cpath }/project/${checkH.host_img }">
			</c:if>
		</div>
		<div>
			<input type="hidden" name="host_idx" value="${checkH.host_idx }">
			<input type="file" name="host_upload" accept="image/*"> 
			<input type="submit" value="수정">
		</div>
	</form>
</body>
</html>