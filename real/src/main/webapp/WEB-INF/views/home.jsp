<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="java.util.Date" %> --%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
<%-- <c:set var="cpath" value="${pageContext.request.contextPath }" /> --%>
<%@ include file="header.jsp" %>


<style>

	body {
		margin: 0px;
	}

	#overlay {
		width: 1200px;
		height: 1200px;
		z-index: 4;
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
        height: 80px;
        background: white;
        color: black;
        padding-left: 20px;
        padding-right: 20px;
        padding-top: 5px;
        padding-bottom: 0px;
        display: flex;
        justify-content: space-around;
        align-items: center;
        border-bottom: 1px solid rgb(218, 209, 209);
        padding: 0px;
        margin: 0px;
        z-index: 2;
    }
    .logo:hover {
        cursor: pointer;
    }
    .bnt {
        font-family: 'Nanum Gothic';
        border-radius: 25px;
        width: 350px;
        height: 43px;
        text-align: center;
        justify-content: space-around;
        display: flex;
        border: 1.3px solid rgb(235, 232, 232);
    }
    .bnt > div:hover {
        cursor: pointer;
    }
    .bnt > div {
        font-size: 13px;
    }
    .login {
        color: rgb(135, 128, 128);
        font-size: small;
    }
    .login:hover {
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
    .midtag > div {
        border: 1.5px solid rgb(218, 209, 209);
        align-items: center;
        margin: 0px;
    }
    .midtag > div > div > div {
        border: 1px solid rgb(118, 108, 108);
    }
    div {
        display: inline-block;
        margin-left: 3px;
        font-size: 12px;
        font-weight: bold;
    }
    nav {
        display: flex;
        align-items: center;
    }






    .category {
        position: sticky;
        top: 60px;
        background: white;
        color: black;
        padding-left: 20px;
        padding-right: 20px;
        display: flex;
        justify-content: space-evenly;
        align-items: center;
        padding: 0px;
        margin: 0px;
        margin-top: -7px;
        z-index: 1;
        margin-left: 0px;
        margin-right: 0px;
        border-bottom: 1px solid rgb(218, 209, 209);
        max-height: 80px;
    }
    .category > div {
        cursor: pointer;
        padding-top: 20px;
    }
    .ca:hover {
        cursor: pointer;
        border-bottom: 2.5px solid grey;
    }
    .selected {
    	cursor: pointer;
        border-bottom: 2.5px solid black;
    }
    .pillter {
        padding-top: 15px ;
    }
    .pillter:hover {
        cursor: pointer;
    }
    
    #root {
        max-width: 1700px;
        margin: auto;
        display: flex;
        flex-flow: wrap;
        justify-content: space-around;
    }

    .menu {
        display: flex;
        flex-flow: column;
        margin: 0px;
        border-radius: 25px;
        position: relative;
    }
    #a > img {
        padding-bottom: 10px;
        transition: all 0.2s linear;
    }
    #a > .menu:hover {
        cursor: pointer;
        transform: scale(1.05);
    }
    .menu >  div > div:hover {
        cursor: pointer;
    }
    main {
        display: flex;
        justify-content: center;
        justify-items: center;
    }
    .wrap {
        max-width: 1700px;
        margin: auto;
        display: flex;
        flex-flow: wrap;
        justify-content: space-around;
    }
    .itemName {
        display: flex;
        margin-left: 0px;
        justify-content: space-between;
        padding-bottom: 8px;
    }
    .itemName > div {
        font-size: medium;
    }
    .sub {
        font-size: 15px;
        color: grey;
        font-weight: lighter;
    }
    .p1 {
        padding-top: 15px;
        font-size: medium;
        text-align: right;
    }
    .hart {
        font-size: 25px;
        position: absolute;
        right: 15px;
        top: 5px;
        color: rgb(236, 109, 130);
        opacity: 55%;
    }
    .hart:hover {
    	opacity: 100%;
    	transition-duration: 0.2s;
    }


    footer {
        display: flex;
        justify-content: space-around;
        background-color: white;
        border-top: 1px solid rgb(218, 209, 209);
        height: 70px;
        padding-top: 5px;
        padding-bottom: 20px;
        padding-left: 100px;
        position: fixed;
        top: 92%;
        width: 100%;
    }

    .downst > div{
        font-size: smaller;
        color: rgb(163, 162, 162);
    }
    .downner {
        width: 1650px;
        display: flex;
        justify-content: space-between;
        padding-right: 10px;
        border-bottom: 1px solid rgb(218, 217, 217);
        padding-top: 5px;
        padding-bottom: 10px;
    }

	button {
            all:unset;
            background-color: none;
            cursor: pointer;
        }
    button:hover {
    	background-color: rgb(218, 209, 209);
    	border: none;
    	cursor: pointer;
    	width: 25px;
    }

</style>

<script>
	const cpath = '${cpath}'
</script>

<script src="${cpath }/resources/js/function.js" ></script>


</head>

<body>


<jsp:useBean id="tody" class="java.util.Date" />
<fmt:formatDate var="MM" value="${today }" pattern="MM" />
<fmt:formatDate var="dd" value="${today }" pattern="dd" />
	
    

    <div class="category">
        
        <img id="멋진 수영장" 	class="ca selected" src="${cpath }/resources/img/멋진수영장.png" 	alt width="80" height="80">
        <img id="해변 근처" 	class="ca" src="${cpath }/resources/img/해변근처.png" 			alt width="80" height="80">
        <img id="북극" 		class="ca" src="${cpath }/resources/img/북극.png" 				alt width="80" height="80">
        <img id="료칸" 		class="ca" src="${cpath }/resources/img/료칸.png" 				alt width="80" height="80">
        <img id="섬" 		class="ca" src="${cpath }/resources/img/섬.png" 					alt width="80" height="80">
        
    </div>
        <img class="pillter" style="margin-left: 10px; position: fixed;" src="${cpath }/resources/img/필터.png" 							alt width="84" height="48">
		<!-- 해운대, 광안리, 다대포 -->
    <br><br>

    <main class="wrap">
    	   

   		<div id="root" offset="0"></div>
   		
    </main>
    <footer>
    	
    	
        <div>
            
            <div class="downner">
                <div>
                    <div>@ 2022 Airbnb, lnc.</div>
                    
                    <div>개인정보 처리방침</div>
                    <div>이용약관</div>
                    <div>사이트맵</div>
                    <div>한국의 변경된 환불 정책</div>
                    <div>회사 세부정보</div>
                    
                </div>
                
                <div>
                    <div>@ 한국어(KR)</div>
                    <div>\ KRW</div>
                    <div>지원 및 참고 자료</div>
                </div>
            </div>

            <div class="downst">
                <div>웹사이트 제공자: Airbnb Ireland UC, private unlimited company, 8 Hanover Quay Dublin 2, D02 DP23 Ireland | 이사: Dermot Clarke, Killian Pattwell, Andrea Finnegan | VAT 번호: IE9827384L | 사업자 등록 번호: IE 511825 | 연락처: terms@airbnb.com, 웹사이트, 080-822-0230 | 호스팅 서비스 제공업체: 아마존 웹서비스 | 에어비앤비는 통신판매</div>
                <div>중개자로 에어비앤비 플랫폼을 통하여 게스트와 호스트 사이에 이루어지는 통신판매의 당사자가 아닙니다. 에어비앤비 플랫폼을 통하여 예약된 숙소, 체험, 호스트 서비스에 관한 의무와 책임은 해당 서비스를 제공하는 호스트에게 있습니다.</div>
            </div>

        </div>
    </footer>


<script>
	window.addEventListener('load', loadHandler)
	window.addEventListener('scroll' , scrollHandler)
</script>


<!-- 로그인 모달 -->
<script>
         const openButton = document.getElementById("open");
         const modal = document.querySelector(".modal");
         const overlay = modal.querySelector(".modal_overlay");
         const closeBtn = modal.querySelector("button");
         const openMoadal = () => {
             modal.classList.remove("hidden");
         }
         const closeModal = () => {
             modal.classList.add("hidden")
         }
        
         openButton.addEventListener("click", openMoadal);

         closeBtn.addEventListener("click", closeModal)
         overlay.addEventListener("click", closeModal)

// 	const heartButton = document.querySelector(".hart")			// 나중에 login이 엠프티면 실행하도록
// 	console.log(heartButton)
// 	heartButton.addEventListener("click", openModal)
    
        
</script>



<script>
	const cateArray = Array.from(document.querySelectorAll('.category > img'))
	console.log(cateArray)
	
	const firstcate = cateArray[0].getAttribute('id')
	console.log(firstcate)
	
	
	cateArray.forEach(img => img.addEventListener('click', cateHandler))
	
	
	
</script>




</body>
</html>





















