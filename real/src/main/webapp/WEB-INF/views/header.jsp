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
	h1, h2, h3, h4{
        margin-top: -5px;
        margin-bottom: 5px;
    }
    .modal {
            position: absolute;
            margin: 0;
            padding: 0;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 4;
	    }
        
        .modal_overlay {
            background-color: rgba(0, 0, 0, 0.6);
            width: 100%;
            height: 100%;
            position: fixed;
            margin: 0px;
        }
        .modal_content {
        	display: flex;
        	flex-flow: column;
            background-color: white;
            padding: 10px 10px;
            text-align: center;
            align-items: center;
            position: fixed;
            border-radius: 10px;
            width: 480px;
            padding: 0 24px;
        }
        .hidden {
            display: none;
        }
        
        .modal_content > div {
        	width: 80%;
        	justify-content: flex-start;
        	margin-left: 0px;
        }
        
        .putlogin {
        	display: flex;
        	flex-flow: column;
        }
	input[type="email"], input[type="tel"]{
    	width: 405px;
    	margin-bottom: 10px;
    	height: 45px; 
    	padding-left: 8px;
    	border-radius:5px; 
    }
    input[type="submit"], input[type="button"]{
        width: 420px;
        background-color: rgb(227, 28, 95);
        color: white;
        height: 45px;
        border-radius: 8px;
        font-size: 15px;
        font-weight: bold;
        justify-content: center;
        opacity: 20%;
        text-decoration-line: none;
        border: none;
        margin-bottom: 10px;
    }
    input[type="submit"]:hover, input[type="button"]:hover{
        cursor: pointer;
        opacity: 100%;
        transition-duration: 0.2s;
    }
    ul#none {
    	list-style: none;
    	padding-left: 0;
    }
    ul > li > a > span>img {
    	width: 420px;
    	height: 45px;
    }
</style>
</head>
<body>
	
	
   <header>
        <a href="${cpath }"><img class="logo" alt width="124" height="53" src="${cpath }/resources/img/logo.png"></a>
        <nav class="midtag">
            <div class="bnt">
                <div>부산에서</div>
                <div>언제든 일주일</div>
                <div style="color: grey; font-size: 13px;">게스트 추가</div>
                <div><img src="${cpath }/resources/img/빨간돋보기.png" style="border-radius: 25px;"></div>
            </div>
        </nav>
        <nav>
        <c:if test="${empty login }">
            <div class="login"><a href="${cpath}/member/loginH">호스트되기</a></div>
            <div id="open" class="login2">로그인 / 회원가입</div>
        </c:if>
        <c:if test="${not empty login }">
            <div class="login1"><a href="${cpath}/member/mypage">${login.normal_name}님 (${login.normal_email})</a></div>		<!-- dto.normal, dto객체 하나를 login이라는 이름으로 섹션에 저장후 이름 가져옴 -->
<%--             <div id="logout" class="login2"><a href="${cpath }/member/logout">로그아웃</a></div> --%>
            <div id="logout" class="login2">로그아웃</div>
        </c:if>
        </nav>
    </header>
    
    <div class="modal hidden">
        <div class="modal_overlay"></div>
        <div class="modal_content">
		    <div style="width: 100%; margin-top: 10px"><button id="closebtn" style="width: 25px; float:left;">X</button></div>
        	<form id="loginform">
	        	<div><div style="padding: 10px 30px; font-size: 15px; margin-left: 0;">로그인 또는 회원가입</div></div>
	        	<hr>
	        	<div style="font-size: 22px; text-align: left; padding: 20px 30px;">에어 비엔비에 오신것을 환영합니다.</div>
	        	<div class="putlogin">
		        	<input type="email" name="normal_email" placeholder="이메일을 입력하세요." />
		        	<input type="tel" name="normal_phoneNum" placeholder="전화 번호를 입력하세요" />
		        	<div style="margin-top: 2px; margin-bottom: 15px;">
		        		전화나 문자로 전화번호를 확인하겠습니다. <br>일반 문자 메시지 요금 및 데이
		        		터 요금이 부과됩니다.
		        	</div>
		        	<input type="submit" id="b1" value="로그인" />
		        	
					<input type="button" value="회원가입" style="background-color: black;" onclick="location.href='/real/member/join'">
					<input type="button" value="계정찾기" style="background-color: black;" onclick="location.href='/real/member/find'">
				</div>
        	</form>
        	
        	<form id="authForm" class="hidden">
				<input type="text" maxlength="6" id="rpw" name="authNumber"  placeholder="인증 번호를 입력하세요">
        		<input type="submit" id="b3">
        	</form>
        	
        	<ul id="none">
				<li onclick="kakaoLogin();">
					<a href="javascript:void(0)"><span><img src="${cpath}/resources/img/카톡로그인버튼.png" /></span></a>
				</li>
			</ul>
			<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
			<script>
			    Kakao.init('6eb9a1e9581891af69cac432910920a3');
			    console.log(Kakao.isInitialized()); // sdk초기화여부판단
			    //카카오로그인
			    function kakaoLogin() {
			        Kakao.Auth.login({
			          success: function (response) {
			            Kakao.API.request({
			              url: '/v2/user/me',
			              success: function (response) {
			              	console.log(response)
			              	
			                const ob = {
			                	'normal_name': response.kakao_account.profile.nickname ,
			                	'normal_email': response.kakao_account.email
			                }
			              	
						    kakaoconfirm(ob)							  
			              },
			              fail: function (error) {
			                console.log(error)
			              },
			            })
			          },
			          fail: function (error) {
			            console.log(error)
			          },
			        })
			      }
			    
			    function kakaoconfirm(ob) {
			    	const url = '${cpath}/member/kakaologin'
			    	const opt = {
			    			method: 'POST',
			    			body: JSON.stringify(ob),
							headers: {
								'Content-Type' : 'application/json; charset=utf-8'
							}
			    	}
			    	fetch(url,opt)
			    	.then(resp => resp.text())
			    	.then(text => {
			    		if(text == 1) {
			    			alert('로그인 성공')
			    			kakaoLogout()
			    			location.href = 'http://localhost:8080/real/'
			    		}else {
			    			alert('처음 로그인 하는 회원은 회원가입을 하셔야 합니다.')
			    			kakaoLogout()
			    			location.href = 'http://localhost:8080/real/member/kakao'
			    		}
			    	})
			    }
			    function kakaoLogout() {
			    	if (Kakao.Auth.getAccessToken()) {
			    	         Kakao.API.request({
			    	           url: '/v1/user/unlink',
			    	           success: function (response) {
			    	              console.log(response)
			    	           },
			    	           fail: function (error) {
			    	             console.log(error)
			    	           },
			    	         })
			    	         Kakao.Auth.setAccessToken(undefined)
			    	       }
			    	    }
			    </script>
				   
        	
        	
        </div>
	</div>
	

	
	
	
	
	
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
	// 		const normal_email = document.getElementById('normal_email')
	// 		const normal_phoneNum = document.getElementById('normal_phoneNum')
			
			const formData = new FormData(event.target)
			const ob = {}
			
			for(let key of formData.keys()) {
				ob[key] = formData.get(key)
			}
// 			console.log(ob)
			fetch('${cpath}/member', {
				method: 'POST',
				body: JSON.stringify(ob),
				headers: {
					'Content-Type' : 'application/json; charset=utf-8'
				}
			})
			.then(resp => resp.text())
			.then(text => {
				if(text == 'true') {
					const ob2 = {}
					for(let key of formData.keys()) {
						ob2[key] = formData.get(key)
					}
					fetch('${cpath}/member/inzung', {
						method: 'POST',
						body: JSON.stringify(ob2),
						headers: {
							'Content-Type' : 'application/json; charset=utf-8'
						}
					})
					.then(resp => resp.text())
					.then(text => {
						if(text == '성공') {
							loginform.classList.add('hidden')
							authForm.classList.remove('hidden')
						}
						else{
							alert('실패')
						}
					})
					
					alert('인증번호 발송')
				}
				if(text == 'false') {
					alert('이메일과 전화번호가 일치하지 않습니다')
				}
			})
		}
		
		
		
		
		authForm.addEventListener('submit', (event) => {
			event.preventDefault()
			const formData2 = new FormData(event.target)
			const ob = {}
			for(let key of formData2.keys()) {
				ob[key] = formData2.get(key)
			}
			console.log(ob)
			fetch('${cpath}/member/inzung3', {
				method: 'POST',
					body: JSON.stringify(ob),
					headers: {
						'Content-Type' : 'application/json; charset=utf-8'
					}
			})
			.then(resp => resp.text())
			.then(text => {
				alert(text)
				if(text == "인증 성공") {
					location.reload();
				}
			})
		})

	</script>
	
	
	
	<!-- 로그아웃 함수 -->
	<script>
		const logout = document.getElementById('logout')
		logout.addEventListener('click', logoutHandller)
		
		function logoutHandller(event) {
			
			var is = confirm('정말 로그아웃 하시겠습니까?')
			
			if(is) {
				location.href='${cpath}/member/logout'
				return ture
			}
			
			else {
				return false
			}
			
			
		}
		
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	