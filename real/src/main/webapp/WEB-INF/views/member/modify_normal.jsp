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
    <title>회원 정보 수정하기</title>
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
                <div class="account">회원 정보 수정</div>
            </div>
        </div>
        
        <form method="POST" id="modifyForm" style="width: 590px">
        
        	<input type="text" style="display: none" name="normal_idx" value="${login.normal_idx }">
        
            <div class="info">
                <div class="category_box">
                    <div class="box_1">
                        <span>실명</span>   
                    </div>
                    <div class="box_2">
                        <input type="text" name="normal_name" value="${login.normal_name }" placeholder="이름을 입력하세요">
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
<!--                             <option disabled selected>지정되지 않음</option> -->
                            <option selected value="${login.normal_gender }">지정되지 않음</option>
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
                        <input type="date" name="normal_birth" value="${login.normal_birth }">
                    </div>
                </div>
            </div>
            
            <div class="info">
                <div class="category_box">
                    <div class="box_1">
                        <span>이메일 주소</span>
                    </div>
                    <div class="box_2">
                        <input type="text" name="normal_email" value="${login.normal_email }" readonly="readonly">
                    </div>
                </div>
            </div>
            
            <div class="info" style="height: 100px;">
                <div class="category_box">
                    <div class="box_1">
                        <span>전화번호</span>
                    </div>
                    <div class="box_2" style="padding: 8px 0; width: 545px;">
                        <input type="text" name="normal_phoneNum" style="font-size: 15px; color:black" placeholder="전화번호를 입력하세요" value="${login.normal_phoneNum }"><br><br>
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
                        <input type="text" name="normal_addrs" placeholder="제공되지 않음" value="${login.normal_addrs }" style="width: 300px;">
                    </div>
                </div>
            </div>
            
            <div class="info">
                <div class="category_box">
                    <div class="box_1">
                        <span>회원유형</span>       
                    </div>
                    <div class="box_2">
                        <span>일반 회원(변경 불가)</span>
                    </div>
                </div>
            </div>
            <br><br>
            
            <input type="submit" value="수정">
            
        </form>
        <br>
        <button onclick="goBack()">돌아가기</button>
    </section>
    
    
    <script>
        function goBack(){
        	window.history.back()
        }
    </script>
	
    
    
    
</body>
</html>














