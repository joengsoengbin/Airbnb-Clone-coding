<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="headerH.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />

    <style>
        h1, h2, h3, h4{
            margin-top: -5px;
            margin-bottom: 5px;
        }
        body{
            font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto, Helvetica Neue, sans-serif;
            width: 100%;
            display: flex;
            text-align: center;
            flex-flow: column;
            justify-content: center;
            align-items: center;
            background-color: white;
        }
        .body2{
            width: 100%;
            display: flex;
            margin: 30px auto;
            text-align: center;
            flex-flow: column;
            justify-content: center;
            align-items: center;
            max-width: 1064px;
            background-color: white;
            padding-left: 16px;
            padding-right: 16px;
            box-sizing: border-box;
        }
        main{
            display: flex;
            width: 100%;
            height: 100%;
        }
        .photo{
            width: 258px;
            height: 220px;
            border: 1px solid #dadada;
            border-radius: 12px;
            margin-left: 8px;
            margin-right: 28px;
            padding: 24px;
        }
        .photo_1{
            display: inline-block;
            width: 128px;
            height: 128px;
            vertical-align: bottom;
            margin-top: 3px;
            margin-bottom: 10px;
        }
        .photo_11{
            width: 100%;
            height: 100%;
            border-radius: 50%;
        }
        .update{
            width: 60%;
            margin: auto;
            font-size: 0.85em;
            color: black;
        }
        summary{
            font-weight: bold;
            text-decoration: underline;
            list-style: none;
        }
        summary:hover{
            cursor: pointer;
        }
        .profil{
            text-align: left;
            margin-left: 40px;
            padding: 0px 8px;
        }
        .modify{
            margin-top: 12px;
            font-size: 0.85em;
        }
        form{
            flex-flow: column;
            width: 624px;
            height: 300px;
        }
        textarea{
            display: block;
            height: 96px;
            min-width: 100%;
            border: 0px;
            border-radius: 8px;
            max-width: 100%;
            max-height: 100%;
            box-sizing: border-box;
            box-shadow: rgb(176 176 176) 0px 0px 0px 1px;
            padding: 8px;
            margin-top: 8px;
            font-size: 18px;
        }
        #input1{
            display: block;
            width: 100%;
            height: 42px;
            min-width: 100%;
            border: 0px;
            border-radius: 8px;
            max-width: 100%;
            max-height: 100%;
            box-sizing: border-box;
            box-shadow: rgb(176 176 176) 0px 0px 0px 1px;
            padding: 8px;
            margin-top: 8px;
            font-size: 18px;
        }
        #save{
            background-color: black;
            color: white;
            width: 80px;
            height: 48px;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            opacity: 20%;
        }
        #save:hover{
            cursor: pointer;
            opacity: 100%;
            transition-duration: 0.2s;
        }
        .filebox label {
            display: inline-block;
            padding: .5em .75em;
            color: #999;
            font-size: inherit;
            line-height: normal;
            vertical-align: middle;
            background-color: #fdfdfd;
            cursor: pointer;
            border: 1px solid #ebebeb;
            border-bottom-color: #e2e2e2;
            border-radius: .25em;
        }
        .intro{
            font-size: 16px;
            line-height: 20px;
            margin-bottom: 32px;
        }
        .intro > span{
            box-sizing: border-box;
        }
        .addrs{
            display: flex;
            align-items: center;
            margin-bottom: 16px;
        }
        .boundary{
            margin-bottom: 32px;
            margin-top: 32px;
            border-bottom: 1px solid #dedede;
        }
        .product{
            margin-bottom: 8px;
        }
        .product > a{
            color: black;
            text-decoration-line: none;
        }
        .product > a:hover{
            font-weight: bold;
        }
        .product > button{
        	float: right;
        }
    </style>

<script>
	const cpath = '${cpath}'
	const host_idx = '${checkH.host_idx}'
	const product_idx = '${dto.product_idx}'
</script>

<script src="${cpath }/resources/js/profilH.js" ></script>

</head>
	<div class="body2">
    <main>
        <div class="photo">
            <div class="photo_1">
				<c:if test="${empty checkH.host_img }">
					<img class="photo_11" src="${cpath }/resources/img/마이페이지/profil.png">
				</c:if>
				<c:if test="${not empty checkH.host_img }">
					<img class="photo_11" src="${cpath }/project/${checkH.host_img }">
				</c:if>
            </div>
            <div class="update">
                <a href="${cpath }/member/host_profil_image">사진 업데이트하기</a>
                <br>
            </div>
        </div>
        <div class="profil">
            <h1>안녕하세요. 저는 ${checkH.host_name }입니다.</h1>
            <br>
            <div>
                <details class="modify">
                    <summary>호스트 프로필 수정하기</summary>
                    <br><br><br>
                    <form method="POST">
                    	<input type="hidden" name="host_idx" value="${checkH.host_idx }">
                        <div style="font-size: 16px;">소개</div>
                        <textarea name="host_intro">${checkH.host_intro }</textarea>
                        <br><br><br>
                        <div style="font-size: 16px">위치</div>
                        <input id="input1" name="host_addrs" type="text" value="${checkH.host_addrs }">
                        <br><br>
                        <div style="display: flex; float: right">
							<input type="submit" class="save" value="수정">
                        </div>
                    </form>
                    <br><br><br>
                    <div style="border-bottom: 1px solid #dedede"></div>
                </details>
            </div>
            <br>
            <div>
                <section>
                    <div style="margin-bottom: 24px">
                        <span style="font-size: 22px; line-height: 26px; font-weight: bold;">
                            	소개
                        </span>
                    </div>
                    <div class="intro">
                        <span>${checkH.host_intro }</span>
                    </div>
                    <div class="addrs">
                        <span style="margin-right: 8px; height: 18px;"><img src="${cpath }/resources/img/마이페이지/addrs.jpg"></span>
                        <span style="width: 90%; font-size: 16px; line-height: 20px;">${checkH.host_addrs }</span>
                    </div>
                </section>
                <div class="boundary"></div>
            </div>
            <div>
                <section>
                    <div style="margin-bottom: 24px">
                        <span style="font-size: 22px; line-height: 26px; font-weight: bold;">${checkH.host_name }님의 숙소</span>
                    </div>
                    <div id="root" style="margin-bottom: 24px;">
<!--                         <div class="product"></div> -->
                    </div>
                </section>
                <div style="border-bottom: 1px solid #dedede"></div>
            </div>
        </div>
    </main>
    </div>
    
    <script>
    	
    	window.addEventListener('load', loadHandler)
    </script>
    
</body>
</html>
















