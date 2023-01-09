<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<style>
        h1, h2, h3, h4{
            margin-top: -5px;
            margin-bottom: 5px;
        }
        body{
            font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto, Helvetica Neue, sans-serif;
            width: 100%;
            display: flex;
            margin: 100px auto;
            text-align: center;
            flex-flow: column;
            justify-content: center;
            align-items: center;
            background-color: white;
        }
        section{
            width: 100%;
            max-width: 1032px;
            height: 100%;
            text-align: left;
            padding-left: 24px;
            padding-right: 24px;
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
        .info{
            width: 590px;
            height: 45px;
            padding: 23px 0;
            border-bottom: 1px solid #eee;
        }
        .box_1{
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
            width: 595.33px;
        }
        .box_1 > button{
            float: right;
            color: #222;
            background-color: white;
            border: 0;
            padding: 1px;
        }
        .box_1 > button:hover{
            color: black;
        }
        .box_2{
            margin-top: 4px;
            color: #717171;
            font-size: 14px;
            display: flex;
        }
        input{
            border: 0;
        }
        input[type="text"]{
            width: 180px;
        }
        input[type="submit"]{
            background-color: black;
            color: white;
            width: 80px;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            opacity: 20%;
        }
        input[type="submit"]:hover{
            cursor: pointer;
            opacity: 100%;
            transition-duration: 0.2s;
        }
        .hidden {
        	display: none;
        }
    </style>
    <section>
    
    	<form id="inzungForm">
    		<div>
                <div style="margin: 20px 0px 40px 0;">
                    <div class="account">회원가입</div>
                </div>
            </div>
    	
    		<div class="info">
                <div class="category_box">
                    <div class="box_1">
                        <span>이메일 중복 확인</span>
                    </div>
                    <div class="box_2">
                        <input type="text" id="first" name="normal_email" placeholder="이메일을 입력하세요" autofocus required>
                        <input type="submit" id="b1">
                        <div id="dupCheckMessage"></div>
                    </div>
                </div>
            </div>
    	</form>
    
    
    
    
    
        <form id="sendMailForm" class="hidden">
             <div class="info">
                <div class="category_box">
                    <div class="box_1">
                        <span>이메일 인증하기</span>
                    </div>
                    <div class="box_2">
                        <input type="text" id="second" name="normal_email" placeholder="이메일을 입력하세요" autofocus required>
                        <input type="submit" id="b2">
                    </div>
                </div>
            </div>
       </form>     
            
            
        <form id="authForm" class="hidden">
			<input type="text" maxlength="6" id="rpw" name="authNumber"  placeholder="인증 번호를 입력하세요" required>
        	<input type="submit" id="b3">
        </form>
            
            
  		<form id="authForm2" class="hidden" method="POST">
  		
            <div class="info">
                <div class="category_box">
                    <div class="box_1">
                        <span>실명</span>   
                    </div>
                    <div class="box_2">
                        <input type="text" name="normal_name" placeholder="이름을 입력하세요" required>
                    </div>
                </div>
            </div>
            
            <div class="info">
                <div class="category_box">
                    <div class="box_1">
                        <span>메일주소</span>   
                    </div>
                    <div class="box_2 lastttt">
                        <input type="text" name="normal_email" placeholder="메일을 입력하세요" required>
                    </div>
                </div>
            </div>
            
            
            
            <div class="info">
                <div class="category_box">
                    <div class="box_1">
                        <span>성별</span>       
                    </div>
                    <div class="box_2">
                        <select name="normal_gender">
                            <option disabled selected>지정되지 않음</option>
                            <option value="남">남</option>
                            <option value="여">여</option>
                        </select>
                    </div>
                </div>
            </div>
            
            <div class="info">
                <div class="category_box">
                    <div class="box_1">
                        <span>생년월일</span>
                    </div>
                    <div class="box_2">
                        <input type="date" name="normal_birth" value="1996-01-01" min="1960-01-01" max="2010-01-01" required>
                    </div>
                </div>
            </div>
            
           
            
            <div class="info" style="height: 100px;">
                <div class="category_box">
                    <div class="box_1">
                        <span>전화번호</span>
                    </div>
                    <div class="box_2" style="padding: 8px 0; width: 545px;">
                        <input type="text" id="telx"  name="normal_phoneNum" style="font-size: 15px; color:black" placeholder="전화번호를 입력하세요" required><br><br>
                        <div id="telCheckMessage"></div>
                        <span>연락처 번호(예약이 확정된 게스트와 에어비앤비가 연락할 번호) 다른 전화번호를 추가하고 번호별 사용 목적을 정하실 수 있습니다.</span>
                    </div>
                </div>
            </div>
            
            <div class="info">
                <div class="category_box">
                    <div class="box_1">
                        <span>주소</span>
                    </div>
                    <div class="box_2">
                        <input type="text" name="normal_addrs" placeholder="제공되지 않음" style="width: 300px;" required>
                    </div>
                </div>
            </div>



            <br><br>
            <div>
 	           <input type="submit" value="등록">
            </div>
        </form>
        
        
    </section>


    <script>
    	
 // 1) 아이디 요소에 이벤트 걸기위해 지정
	const inzungForm = document.getElementById('inzungForm')
	const sendMailForm = document.getElementById('sendMailForm')
	const dupCheckMessage = document.getElementById('dupCheckMessage')
	const first = document.getElementById('first')
	const b1 = document.getElementById('b1')
	const b2 = document.getElementById('b2')
	const b3 = document.getElementById('b3')
	
	// 2) 실행할 함수
	inzungForm.addEventListener('submit', (event) => {
		console.log(event)
// 		console.log(first.value)
		
		event.preventDefault()
		const formData = new FormData(event.target)
		const ob = {}
		for(let key of formData.keys()) {
			ob[key] = formData.get(key)
		}
		console.log(ob)
		fetch('${cpath}/member/dupCheck', {
			method: 'POST',
			body: JSON.stringify(ob),
			headers: {
				'Content-Type' : 'application/json; charset=utf-8'
			}
		})
		.then((resp) => { 	return resp.json()	})
		.then(flag => {
			dupCheckMessage.innerText = flag ? '사용 가능한 Email입니다' : '이미 등록된 Email입니다'
			dupCheckMessage.style.color = flag ? 'blue' : 'red'
			dupCheckMessage.style.fontWeight = 'bold'
			if(flag == false) {
				event.target.select()
			}
			if(flag == true) {
				sendMailForm.classList.remove('hidden')
				first.setAttribute('readonly', 'readonly')
				second.setAttribute('value', first.value)
				second.setAttribute('readonly', 'readonly')
				b1.setAttribute('disabled', 'disabled')
			}
		})
		
	})
    
    
    
    
    
    
//     	const sendMailForm = document.getElementById('sendMailForm')
   		const authForm = document.getElementById('authForm')
   		const authForm2 = document.getElementById('authForm2')
   		const rpw = document.getElementById('rpw')	// 유저가 입력한 값
		
   				
   			sendMailForm.addEventListener('submit', (event) => {
   				event.preventDefault()
   				const formData = new FormData(event.target)
   				const ob = {}

   				for(let key of formData.keys()) {
   					ob[key] = formData.get(key)
   				}
   				fetch('${cpath}/member/inzung', {
   					method: 'POST',
   					body: JSON.stringify(ob),
   					headers: {
   						'Content-Type' : 'application/json; charset=utf-8'
   					}
   				})
   				.then(resp => resp.text())
   				.then(text => {
   					alert(text)
   				})
   				
   				
   				alert('인증번호를 보냈습니다')
   				authForm.classList.remove('hidden')
   				authForm.querySelector('input').focus()
   				sendMailForm.querySelector('input').setAttribute('disabled', 'disabled')
   				b2.setAttribute('disabled', 'disabled')
   			})
   			
   			
   			
   			authForm.addEventListener('submit', (event) => {
				console.log('밑에꺼')
   				event.preventDefault()
				const formData2 = new FormData(event.target)
				const ob = {}
				for(let key of formData2.keys()) {
					ob[key] = formData2.get(key)
				}
				console.log(ob)
				fetch('${cpath}/member/inzung2', {
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
						authForm2.classList.remove('hidden')
						authForm2.querySelector('input').focus()
						authForm2.querySelector('.lastttt > input').setAttribute('value', first.value)
						authForm2.querySelector('.lastttt > input').setAttribute('readonly', 'readonly')
						
						authForm.querySelector('input').setAttribute('disabled', 'disabled')
						authForm.querySelector('input').setAttribute('readonly', 'readonly')
						b3.setAttribute('disabled', 'disabled')
					}
				})
   			})
   			
   			const telx = document.getElementById('telx')
   			const telCheckMessage = document.getElementById('telCheckMessage')
   			
   			
   			telx.addEventListener('blur' , (event) => {
            
               console.log(event.target.value)
               console.log(typeof(event.target.value))
               const pN = event.target.value
               
               fetch('${cpath}/member/telCheck' ,{
                  method : 'POST',
                  body: pN,
                  headers: {
                     'Content-Type' : 'application/text; charset=utf-8'
                  }
               })
               .then(resp => resp.text())
               .then(text => {
                  
                  if(text == '1'){
                     telCheckMessage.innerText = '전화번호 사용 가능 합니다'
                     telCheckMessage.style.color = 'blue'
                     telCheckMessage.style.fontWeight = 'bold'
                  }
                  if(text == '0') {
                     telCheckMessage.innerText = '이미 등록된 전화번호 입니다'
                     telCheckMessage.style.color = 'red'
                     telCheckMessage.style.fontWeight = 'bold'
                     event.target.select()
                     
                     
                  }
                  
               })
               
            })
	  </script>

    
</body>
</html>












