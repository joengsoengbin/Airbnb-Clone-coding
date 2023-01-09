<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 계정 찾기</title>
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
            height: 45px;
            padding: 23px 0;
            border-bottom: 1px solid #eee;
        }
        .box_1{
            flex-direction: column;
            justify-content: flex-start;
            align-items: center;
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
        }
        input{
            border: 0;
        }
        input[type="text"]{
            width: 180px;
        }
        input[type="submit"], button{
            background-color: black;
            color: white;
            width: 100%;
            height: 30px;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            opacity: 20%;
            justify-content: center;
            text-decoration-line: none;
        }
        button{
            width: 590px;
        }
        input[type="submit"]:hover, button:hover{
            cursor: pointer;
            opacity: 100%;
            transition-duration: 0.2s;
        }
    </style>
</head>
<body>
    <section>
        <div>
            <div style="margin: 20px 0px 40px 0;">
                <div class="account">회원 계정 찾기</div>
            </div>
        </div>
        
        <form id="findForm" style="width: 590px">
    
            <div class="info">
                <div class="category_box">
                    <div class="box_1">
                        <span>이름</span>   
                    </div>
                    <div class="box_2">
                        <input id="name" type="text" name="normal_name" placeholder="이름을 입력하세요">
                    </div>
                </div>
            </div>

            
            <div class="info" style="height: 100px;">
                <div class="category_box">
                    <div class="box_1">
                        <span>전화번호</span>
                    </div>
                    <div class="box_2" style="padding: 8px 0; width: 545px;">
                        <input id="num" type="text" name="normal_phoneNum" style="font-size: 15px; color:black" placeholder="전화번호를 입력하세요"><br><br>
                    </div>
                </div>
            </div>
            
<!--             <div class="info" style="height: 100px;"> -->
<!--                 <div class="category_box"> -->
<!--                     <div class="box_1"> -->
<!--                         <span>등록된 계정</span> -->
<!--                     </div> -->
<!--                     <div class="box_2" style="padding: 8px 0; width: 545px;"> -->

<%--                         <c:if test="${empty find }"> --%>
<!--                         	<div>==========</div> -->
<%--                         </c:if> --%>

<%--                         <c:if test="${not empty find}"> --%>
<%--                         	<div>${find.normal_email }</div> --%>
<%--                         </c:if> --%>

<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
            
            
            <input type="submit" value="찾기">
            
        </form>
        <br>
        <button onclick="goBack()">돌아가기</button>
    </section>
    
    <script>
    	const findForm = document.getElementById('findForm')
//     	const normal_name = document.getElementById('name')
//     	const normal_name = document.getElementById('num')
    	
    	function findHandller(event) {
    		event.preventDefault()
    		const formData = new FormData(event.target)
    		const ob = {}
    		
    		for(let key of formData.keys()) {	// {이름 : 이름, 나이 : 나이}
    			ob[key] = formData.get(key)
    		}
    		console.log(ob)
    		fetch('${cpath}/member/find', {
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
    		
    		
    		
    	}	
    	
    	findForm.addEventListener('submit', findHandller)
    	
    </script>
    
    
    
    <script>
        function goBack(){
            window.history.back()
        }
    </script>
	
    
    
    
</body>
</html>














