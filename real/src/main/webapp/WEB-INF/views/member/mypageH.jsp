<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="headerH.jsp"%>

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
        .box_3{
            width: 50%;
            text-align: center;
        }
        .box_3 > span > a{
            font-weight: bold;
            color: black;
        }
        .question_box1{
            width: 28%;
            float: left;
            margin-left: 9.3%;
            padding-left: 8px;
            border: 1px solid #ddd;
            border-radius: 12px;
            padding: 24px;
        }
        .question{
            margin-top: 12px;
            font-size: 20px;
            font-weight: 800;
            letter-spacing: -0.62px;
            color: #484848;
        }
        .answer{
            margin-top: 16px;
            font-size: 16px;
            color: #717171;
            letter-spacing: -0.62px;
        }
        .question_boundary{
            border-bottom: 1px solid #ddd;
            margin: 32px 0;
        }
        .deleteButton{
        	text-decoration: underline;
        	font-weight: bold;
        }
        .deleteButton:hover{
        	cursor: pointer;
        }
    </style>
</head>
	
	<br>
    <section>
        <div style="margin: 20px 0px 40px 0;">
            <div class="account">계정</div>
            <div class="title">
                <span style="font-weight: bold;">${checkH.host_name }</span>
                <span>${checkH.host_email } ·</span>
                <span><a href="host_profil">프로필로 이동</a></span>
            </div>
        </div>
        <div style="display: flex">
            <form style="width: 59.4%">
                <div class="info">
                    <div class="category_box">
                        <div class="box_1">
                            <span>실명</span>   
                        </div>
                        <div class="box_2">
                            <span>${checkH.host_name }</span>
                        </div>
                    </div>
                </div>
                <div class="info">
                    <div class="category_box">
                        <div class="box_1">
                            <span>성별</span>     
                        </div>
                        <div class="box_2">
                            <span>${checkH.host_gender }</span>
                        </div>
                    </div>
                </div>
                <div class="info">
                    <div class="category_box">
                        <div class="box_1">
                            <span>생년월일</span>     
                        </div>
                        <div class="box_2">
                            <span>${checkH.host_birth }</span>
                        </div>
                    </div>
                </div>
                <div class="info">
                    <div class="category_box">
                        <div class="box_1">
                            <span>이메일 주소</span>     
                        </div>
                        <div class="box_2">
                            <span>${checkH.host_email }</span>
                        </div>
                    </div>
                </div>
                <div class="info" style="height: 100px">
                    <div class="category_box">
                        <div class="box_1">
                            <span>전화번호</span>    
                        </div>
                        <div class="box_2" style="padding: 8px 0; width: 545px;">
                            <span style="font-size: 15px; color:black">${checkH.host_phoneNum }</span><br>
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
                            <span>${checkH.host_addrs }</span>
                        </div>
                    </div>
                </div>
                <div class="info">
                    <div class="category_box">
                        <div class="box_1">
                            <span>회원유형</span>       
                        </div>
                        <div class="box_2">
                            <span>호스트</span>
                        </div>
                    </div>
                </div>
                <br>
                <div class="category_box" style="display: flex;">
                    <div class="box_3">
                        <div style="margin: 8px"><span>계정의 정보를 수정하고 싶으신가요?</span></div>
                        <span><a href="modifyH">지금 수정하기</a></span>
                    </div>
                    <div class="box_3">
                        <div style="margin: 8px"><span>계정을 비활성화하셔야 하나요?</span></div>
                        <div id="delete" class="deleteButton">계정 비활성화</div>
                    </div>
                </div>
            </form>
            <div class="question_box1">
                <div class="question_box2">
                    <img src="${cpath }/resources/img/마이페이지/mypage1.jpg">
                    <div class="question">여기에 내 개인정보가 표시되지 않는 이유가 무엇인가요?</div>
                    <div class="answer">신분이 노출되지 않도록 일부 계정<br> 정보가 숨김 처리되었습니다</div>
                </div>
                <div class="question_boundary"></div>
                <div class="question_box2">
                    <img src="${cpath }/resources/img/마이페이지/mypage2.jpg">
                    <div class="question">수정할 수 있는 세부정보는<br> 무엇인가요?</div>
                    <div class="answer">
                        에어비앤비에서 본인 인증시 사용하는<br> 세부정보는 변경할 수 없습니다. 연락처<br> 정보와 일부 개인정보는 수정할 수<br> 있지만,
                        다음 번 예약 또는 숙소를 등록할<br> 때 본인 인증 절차를 거쳐야 할 수도<br> 있습니다.
                    </div>
                </div>
                <div class="question_boundary"></div>
                <div class="question_box2">
                    <img src="${cpath }/resources/img/마이페이지/mypage3.jpg">
                    <div class="question">다른 사람에게 어떤 정보가<br> 공개되나요?</div>
                    <div class="answer">에어비앤비는 예약이 확정된 후에만<br> 호스트 및 게스트의 연락처 정보를<br> 공개합니다.</div>
                </div>
            </div>
        </div>
    </section>
    
    <br><br>
    
    <script>
		const deleted = document.getElementById('delete')
		deleted.addEventListener('click', deleteHandller)
		
		function deleteHandller(event) {
			
			var flag = confirm('해당 계정을 비활성화 하시겠습니까?')
			if(flag == false) {
				return
			}
			const url = cpath + '/member/mypageH'
			const opt = {
				method: 'DELETE'
			}
			fetch(url, opt)
			.then(resp => resp.text())
			.then(text => {
				if(text == 1) {
					alert('해당 계정이 비활성화 되었습니다.')
					location.reload(false)
				}
			})
		}
	</script>
</body>
</html>