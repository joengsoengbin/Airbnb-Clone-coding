<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>여행은 살아보는 거야 - 에어비앤비</title>
<style>
    body {
		margin: 0px;
	}
	
    body {
        margin-top: 0px;
        margin-bottom: 0px;
        margin-left: 0px;
        margin-right: 0px;
    
    }
    header {
        position: sticky;
        top: 0px;
        width: 100%;
        height: 80px;
        background: white;
        color: black;
        padding-top: 5px;
        padding-bottom: 0px;
        display: flex;
        justify-content: space-around;
        align-items: center;
        border-bottom: 1px solid rgb(218, 209, 209);
        z-index: 2;
    }
    .logo:hover {
        cursor: pointer;
    }
    .headerH{
    	width: 100%;
    	margin: 0 10.5%;
    }
 	.headerH-left{
 		float: left;
 	}
 	.headerH-right{
 		float: right;
 		display: flex;
 		padding-top: 13px;
 	}
 	.register > a {
        color: rgb(135, 128, 128);
        font-size: small;
        text-decoration: none;
        margin-right: 25px;
        text-align: center;
        font-weight: bold;
    }
    .register:hover {
        cursor: pointer;
    }
    .login1 > a {
        color: rgb(135, 128, 128);
        font-size: small;
        text-decoration: none;
    }
    .login1:hover {
        cursor: pointer;
    }
    .login2 {
        color: rgb(135, 128, 128);
        font-size: small;
        border-radius: 25px;
        border: 1px solid rgb(135, 128, 128);
        width: 155px;
        height: 25px;
        line-height: 25px;
        text-align: center;
        margin-left: 25px;
    }
    .login2:hover {
        cursor: pointer;
    }
    
</style>
</head>
<body>
	
   <header>
   		<div class="headerH">
	   		<div class="headerH-left">
		        <a href="${cpath}/member/mypageH">
		        	<img class="logo" width="124" height="53" src="${cpath }/resources/img/hostLogo.png">
		        </a>
	        </div>
	        <div class="headerH-right">
		        <c:if test="${not empty checkH }">
		        	<div class="register"><a href="${cpath }/member/register">새로운 상품 등록하기</a></div>
		            <div class="login1"><a href="${cpath}/member/host_profil">${checkH.host_name}님 (${checkH.host_email})</a></div>		
		            <!-- dto.normal, dto객체 하나를 login이라는 이름으로 섹션에 저장후 이름 가져옴 -->
		            <div id="logout" class="login2">로그아웃</div>
		        </c:if>
	        </div>
        </div>
    </header>
    
    
	
	<!-- 로그아웃 함수 -->
	<script>
		const logout = document.getElementById('logout')
		logout.addEventListener('click', logoutHandller)
		
		function logoutHandller(event) {
			
			var is = confirm('정말 로그아웃 하시겠습니까?')
			
			if(is) {
				location.href='${cpath}/member/loginH'
				return true
			}
			
			else {
				return false
			}
			
			
		}
		
	</script>
	