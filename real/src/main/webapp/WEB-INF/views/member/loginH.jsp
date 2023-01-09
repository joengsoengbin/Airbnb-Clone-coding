<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        h1, h2, h3, h4{
            margin-top: -5px;
            margin-bottom: 5px;
        }
        body{
            font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto, Helvetica Neue, sans-serif;
            width: 100%;
            display: flex;
            margin: 200px auto;
            text-align: center;
            flex-flow: column;
            justify-content: center;
            align-items: center;
            background-color: #333;
        }
        section{
            max-width: 1032px;
            height: 100%;
            text-align: center;
            padding-left: 24px;
            padding-right: 24px;
            border: 1px solid #717171;
            background-color: white;
            border-radius: 10px;
        }
        button{
            text-decoration: underline;
            font-weight: bold;
            cursor: pointer;
        }
        .account{
            font-size: 32px !important;
            font-weight: 600 !important;
            line-height: 36px !important;
        }
        .title{
            margin: 8px 0 16px;
        }
        .title > span{
            font-size: 18px;
        }
        .title > span > a{
            color: black;
            font-weight: bold;
        }
        .loginbox{
            padding: 10px 0;
        }
        input{
            border: 1px solid #717171;
        }
        input[type="email"], input[type="tel"]{
            width: 400px;
            margin-bottom: 10px;
            height: 45px; 
            padding-left: 8px;
            border-radius:5px; 
        }
        input[type="submit"], button{
            width: 420px;
            background-color: #460479;
            color: white;
            height: 45px;
            border-radius: 8px;
            font-size: 15px;
            font-weight: bold;
            justify-content: center;
            opacity: 20%;
            text-decoration-line: none;
        }
        input[type="submit"]:hover, button:hover{
            cursor: pointer;
            opacity: 100%;
            transition-duration: 0.2s;
        }
    </style>
</head>
<body>
    <section id="loginform">
        <div style="margin-top: 10px">
        	<a href="${cpath }" style="float: left; font-weight:bold; text-decoration-line: none;">←</a>
        </div>
        <div>
            <div style="margin: 20px 0px 40px 0;">
            	<div class="account">호스트 로그인</div>
            </div>
        </div>
        <form style="width: 460px">
            <div class="loginbox">
                <input type="email" name="host_email" placeholder="이메일을 입력하세요." />
        	    <input type="tel" name="host_phoneNum" placeholder="전화 번호를 입력하세요"  />
        	    <div style="margin-top: 10px; margin-bottom: 10px; font-size: 12px; font-weight: bold">
        	    	전화나 문자로 전화번호를 확인하겠습니다. <br>일반 문자 메시지 요금 및 데이터 요금이 부과됩니다.
        	    </div>
        	    <input type="submit" id="b1" value="로그인" />
            </div>
        </form>
        <button style="margin-bottom: 15px; background-color: black;" onclick="location.href='joinH'">회원가입</button>
    </section>
	    
	<!-- 모달 -->    
   <script>
   		const openButton = document.getElementById("open")
         
        const modal = document.querySelector(".modal")
        const overlay = modal.querySelector(".modal_overlay")
        const closebtn = document.getElementById("closebtn")
         
        const openModal = () => {
            modal.classList.remove("hidden")
        }
        const closeModal = () => {
		authForm.classList.add("hidden")
        	loginform.classList.remove("hidden")
        	authForm.reset()
        	loginform.reset()
        	 
            modal.classList.add("hidden")
        }
        
        openButton.addEventListener("click", openModal)
        closebtn.addEventListener("click", closeModal)
        overlay.addEventListener("click", closeModal)
    </script>
   
   <!-- 로그인 함수 -->
	<script>
		const b1 = document.getElementById('b1')
		const b3 = document.getElementById('b3')
		const authForm = document.getElementById('authForm')
	
		const loginform = document.getElementById('loginform')
		loginform.addEventListener('submit', submitHandller)
		
		function submitHandller(event) {
			event.preventDefault()
			
			const formData = new FormData(event.target)
			const ob = {}
			
			for(let key of formData.keys()) {
				ob[key] = formData.get(key)
			}
			console.log(ob)
			fetch('${cpath}/member/loginH', {
				method: 'POST',
				body: JSON.stringify(ob),
				headers: {
					'Content-Type' : 'application/json; charset=utf-8'
				}
			})
			.then(resp => resp.text())
			.then(text => {
				if(text == 'true') {
					location.href="${cpath }/member/mypageH"
				}
				if(text == 'false') {
					alert('이메일과 전화번호가 일치하지 않습니다')
				}
			})
		}
	</script>
</body>
</html>