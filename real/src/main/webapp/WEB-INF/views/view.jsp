<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!-- <!DOCTYPE html> -->
<!--     <meta charset="UTF-8"> -->
<!--     <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<!--     <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!--     <product_title>Document</product_title> -->
<link type="text/css" rel="stylesheet"
	href="${cpath }/resources/css/style_영규상세2.css">



<script>
	const cpath = '${cpath}'
</script>
<script>
	const product_idx = '${dto.product_idx}'
</script>
<style>
header {
	width: 1200px;
	margin: auto;
	/*          position: sticky;  */
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
	/*          border-bottom: 1px solid rgb(218, 209, 209);  */
	padding: 0px;
	z-index: 2;
}

.logo:hover {
	cursor: pointer;
}

.bnt { */
	font-family: 'Nanum Gothic';
	border-radius: 25px;
	width: 350px;
	height: 43px;
	text-align: center;
	justify-content: space-around;
	display: flex;
	border: 1.3px solid rgb(235, 232, 232);
}

.bnt>div:hover {
	cursor: pointer;
}

.bnt>div {
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

.midtag>div {
	border: 1.5px solid rgb(218, 209, 209);
	align-items: center;
	margin: 0px;
}

.midtag>div>div>div {
	border: 1px solid rgb(118, 108, 108);
}

nav>div {
	display: inline-block;
	margin-left: 3px;
	font-size: 12px;
	font-weight: bold;
}

button {
	all: unset;
	background-color: none;
	cursor: pointer;
}

button:hover {
	background-color: rgb(218, 209, 209);
	border: none;
	cursor: pointer;
	width: 25px;
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
	position: fixed;
	border-radius: 10px;
	width: 560px;
	height: 670px;
}

.hidden {
	display: none;
}

.modal_content>div {
	width: 80%;
	justify-content: flex-start;
	margin-left: 0px;
}

.putlogin {
	display: flex;
	flex-flow: column;
}

/* 리모컨 */
.remocon {
	border: 1px dashed black;
	border-radius: 12px;
	padding: 24px;
	position: sticky;
	width: 373px;
	height: 459px;
	top: 200px;
	margin-top: 15px;
	background-color: white;
	box-sizing: border-box;
}

.reservation {
	padding: 13px;
	text-align: center;
	font-size: 18px;
	font-weight: bold;
	color: white;
	border-radius: 12px;
	background-color: #b32505;
}

.check {
	border: 1px solid black;
	border-radius: 12px;
}

.price {
	font-size: 22px;
	font-weight: bold;
	margin-bottom: 24px;
}

.check>.checkin, .check>.checkout {
	border: 1px solid black;
	border-radius: 12px;
	width: 140.67px;
	height: 46px;
	margin: 0;
	padding: 25px 12px 10px;
	display: flex;
	align-items: center;
}

.체크인렙 {
	display: flex;
	justify-content: space-around;
}

.체크인렙>.checkin, .체크인렙>.checkout {
	border: 1px solid black;
	padding: 15px 10px 12px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex: auto;
}

.guest {
	padding: 10px;
	border: 1px solid black;
	position: relative;
}

.guest>.guest_dropdown {
	background: rgb(255, 255, 255);
	border-radius: 4px;
	box-shadow: rgb(0 0 0/ 15%) 0px 2px 6px, rgb(0 0 0/ 7%) 0px 0px 0px 1px;
	box-sizing: border-box;
	margin-bottom: 16px;
	min-width: 280px;
	padding: 16px;
	position: absolute;
	text-align: left;
	width: 100% !important;
	z-index: 999 !important;
	right: 0px !important;
	width: 322.33px;
	height: 397px;
	flex-flow: column;
}

.guest>.guest_dropdown>div {
	height: 296px;
}

.guest>.guest_dropdown>div>.adult {
	margin-top: 8px;
	margin-bottom: 24px;
	height: 42px;
}

.guest>.guest_dropdown>div>.adult>div {
	height: 100%;
}

.guest>.guest_dropdown>div>.adult>div, .guest>.guest_dropdown>div>.childbabypet>div
	{
	display: flex;
}

.guest>.guest_dropdown>div>.childbabypet {
	height: 42px;
	margin-top: 24px;
	margin-bottom: 24px;
}

.guest>.guest_dropdown>div>.childbabypet>div {
	height: 100%;
}

.guest>.guest_dropdown>div>.adult>div>.left, .guest>.guest_dropdown>div>.childbabypet>div>.left
	{
	width: 186.328px;
	height: 100%;
}

.guest>.guest_dropdown>div>.adult>div>.left>div:nth-child(1), .guest>.guest_dropdown>div>.childbabypet>div>.left>div:nth-child(1)
	{
	font-weight: bold;
}

.guest>.guest_dropdown>div>.adult>div>.left>div:nth-child(2), .guest>.guest_dropdown>div>.childbabypet>div>.left>div:nth-child(2)
	{
	font-size: 14px;
}

.guest>.guest_dropdown>div>.info {
	font-size: 12px;
	padding-bottom: 16px;
}

.guest>.guest_dropdown>div>.close {
	float: right;
	text-decoration: underline;
	cursor: pointer;
}

.guest>.guest_dropdown>div>.adult>div>.right, .guest>.guest_dropdown>div>.childbabypet>div>.right
	{
	width: 110px;
	height: 32px;
}

.right {
	justify-content: space-between;
}

.right>div {
	width: 100%;
	height: 100%;
	display: flex;
}

.right>div>div {
	width: 30px;
	padding: 6px;
}

.right>div>div>span {
	display: flex;
	justify-content: space-around;
}

.right>div>button>span {
	display: flex;
	justify-content: center;
	align-items: center;
}

.right>div>div>button>span {
	width: 22px;
	height: 22px;
}

.right>div>button {
	width: 32px;
	height: 32px;
	border: 1px solid grey;
	border-radius: 50%;
}
/* 리모컨 끝 */
.hidden {
	display: none;
}
</style>

<%-- <script src="${cpath }/resources/js/function.js"></script> --%>
<script src="${cpath }/resources/js/view.js"></script>
</head>
<body>

	<!-- <header> -->
	<!--     <div> -->
	<!--         <div class="head"> ㅋㅋ-->
	<!--             <div></div> -->
	<!--             <div></div> -->
	<!--             <div></div> -->
	<!--         </div> -->
	<!--     </div> -->
	<!-- </header> -->

	<main>
	<div>
		<div class="main1">
			<div class="main1_1">
				<div class="main1_head">
					<section class="section1">
						<div class="top">
							<span><img src="${cpath}/resources/svg/translation.svg"></span>
							<h1>${dto.product_title }</h1>
						</div>
						<div class="bottom">
							<div class="left">
								<span><img src="${cpath}/resources/svg/star.svg"></span> <span>
									<c:set var="star"
										value="${dto.product_score / dto.product_reviewcnt}" /> <fmt:formatNumber
										var="starnum" type="number" pattern="0.0"
										value="${((star*10) - ((star*10)%1)) * (1/10)} " /> <!--                                    														(46.666 -   0.666666666	)  * 0.1
																								${star} (반올림 한 결과값) --> ${starnum} ★
								</span> <span class="jum">·</span> <span>
									<div>후기 ${dto.product_reviewcnt}개</div>
								</span> <span class="jum">·</span> <span>호스트</span> <span class="jum">·</span>
								<span>
									<div>${dto.product_addrs},부산,한국</div>
								</span>
							</div>
							<div class="right">
								<div class="share">
									<div>
										<span><img src="${cpath}/resources/svg/share.svg"></span><span>공유하기</span>
									</div>
								</div>
								<div class="save">
									<div>
										<span><img src="${cpath}/resources/svg/save.svg"></span><span>저장</span>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		<div class="main2">
			<div class="main2_1">
				<div class="main2_2">
					<div class="main2_photo">
						<div class="photo1">
							<div class="photo1_1">
								<img src="${cpath}/resources/img/${dto.product_img}/1.jpg">
							</div>
						</div>
						<div class="photo2">
							<div class="photo2_1">
								<img src="${cpath}/resources/img/${dto.product_img}/2.jpg">
							</div>
							<div class="photo2_1">
								<img src="${cpath}/resources/img/${dto.product_img}/3.jpg">
							</div>
						</div>
						<div class="photo2">
							<div class="photo2_2">
								<img src="${cpath}/resources/img/${dto.product_img}/4.jpg">
							</div>
							<div class="photo2_2">
								<img src="${cpath}/resources/img/${dto.product_img}/5.jpg">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main3">
		<!-- 왼쪽-->
		<div class="main3_1">
			<div class="main_left">
				<div class="left1">
					<div>
						<section class="third">
							<div>
								<h2>${dto.product_hostname}님이호스팅하는돔하우스</h2>
								<ol>
									<li>최대 인원 ${dto.product_maxpeople}명</li>
									<!-- 상품 디비 추가 -->
									<li>· 침실 ${dto.product_bedroom}개</li>
									<!-- 상품 디비 추가 -->
									<li>· 침대 ${dto.product_bed}개</li>
									<!-- 상품 디비 추가 -->
									<li>· 욕실 ${dto.product_bathroom}개</li>
									<!-- 상품 디비 추가 -->
								</ol>
							</div>
							<div class="thirdImg">
								<div>
									<img
										src="https://a0.muscache.com/im/pictures/user/0ea3cd74-7ce9-4f59-bf57-334651d552c6.jpg?im_w=240">
								</div>
							</div>
						</section>
					</div>
				</div>
				<div class="left2">
					<div class="left2_1">
						<div class="first">
							<div>
								<img src="${cpath}/resources/svg/swim.svg">
							</div>
							<div class="first1">
								<div class="top">${dto.product_mtitle}</div>
								<div class="bottom">${dto.product_mstory}</div>
							</div>
						</div>
						<div class="first">
							<div>
								<img src="${cpath}/resources/svg/details.svg">
							</div>
							<div class="first1">
								<div class="top">호스트 평가 수</div>
								<div class="bottom">${dto.product_hostname }님이숙소에대해
									${dto.product_reviewcnt}개의 후기가 있습니다</div>
							</div>
						</div>
					</div>
				</div>
				<div class="left3">
					<div class="left3_1">
						<section>
							<div class="a1">
								<h2>
									<img class="img"
										src="https://a0.muscache.com/im/pictures/51a7f002-b223-4e05-a2af-0d4838411d92.jpg"
										alt="에어커버">
								</h2>
							</div>
							<div class="a2">모든 예약에는 호스트가 예약을 취소하거나 숙소 정보가 정확하지 않은 경우 또는
								체크인에 문제가 있는 상황에 대비한 무료 보호 프로그램이 포함됩니다.</div>
						</section>
					</div>
				</div>
				<div class="left4">
					<div class="a1">
						<div>
							<img src="${cpath}/resources/svg/translation.svg"
								style="width: 16px; height: 16px;">
						</div>
					</div>
					<div></div>
				</div>
				<div class="left5">
					<div>${dto.product_story }</div>
					<!-- 소개 -->
					<!-- 추가하기 (상품소개) -->
				</div>
				<div class="left6">
					<div class="left6_1">
						<h2>숙박 장소</h2>
						<div class="nemo">
							<div>
								<img src="${cpath}/resources/svg/bed.svg"
									style="width: 22px; height: 22px;">
							</div>
							<div>침실</div>
							<div>더블 침대 ${dto.product_bed }개</div>
						</div>
					</div>
				</div>
				<div class="left7">
					<div>
						<section>
							<div>
								<h2>숙소 편의시설</h2>
							</div>
							<div class="a1">
								<div class="a1_1">
									<div>
										<img src="${cpath}/resources/svg/wifi.svg">
									</div>
									<div>무선 인터넷</div>
								</div>
								<div class="a1_1">
									<div>
										<img src="${cpath}/resources/svg/tv.svg">
									</div>
									<div>TV</div>
								</div>
								<div class="a1_1">
									<div>
										<img src="${cpath}/resources/svg/hair.svg">
									</div>
									<div>헤어드라이어</div>
								</div>
								<div class="a1_1">
									<div>
										<img src="${cpath}/resources/svg/long.svg">
									</div>
									<div>장기 숙박 가능</div>
								</div>
								<div class="a1_1">
									<div>
										<img src="${cpath}/resources/svg/swim.svg">
									</div>
									<div>수영장</div>
								</div>
								<div class="a1_1">
									<div>
										<img src="${cpath}/resources/svg/air.svg">
									</div>
									<div>에어컨</div>
								</div>
								<div class="a1_1">
									<div>
										<img src="${cpath}/resources/svg/break.svg">
									</div>
									<div>아침식사</div>
								</div>
							</div>
							<div class="button">
								<div>편의시설 14개 모두 보기</div>
								<!-- 디비 추가하기 -->
							</div>
						</section>
					</div>
				</div>
				<div class="left8">
					<!--달력-->


					<div class="a1">
						<div class="a1_1">
							<div class="a1_1_h2">
								<h2>체크인 날짜를 선택해주세요.</h2>
								<div>여행 날짜를 입력하여 정확한 요금을 확인하세요.</div>
							</div>
							<div class="cal">
								<div class="cal1">
									<div class="cal1_1"></div>
									<div></div>
								</div>
								<div class="cal2">
									<div class="cal1_1"></div>
									<div></div>
								</div>
							</div>
							<div class="cal_del">
								<div>
									<img src="${cpath}/resources/svg/keyboard.svg"
										style="width: 24px; height: 24px;">
								</div>
								<div>
									<div>날짜 지우기</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="main_right">
				<div class="remocon">
					<div class="remocon_main">
						<div class="설정값들어가는부분">
							<div class="price">￦가격적는 부분 /박</div>
							<div class="check">
								<div class="체크인렙">
									<div class="checkin">
										체크인<br />2022.09.24
									</div>
									<div class="checkout">
										체크아웃<br />2022.09.29
									</div>
								</div>
								<div class="guest">
									게스트 1명(드랍다운)
									<div class="guest_dropdown hidden">
										<div>
											<div class="adult">
												<div>
													<div class="left">
														<div>성인</div>
														<div>만 13세 이상</div>
													</div>
													<div class="right">
														<div>
															<button>
																<span><img
																	src="${cpath }/resources/svg/minus.svg"
																	style="width: 12px"></span>
															</button>
															<div>
																<span>0</span>
															</div>
															<button>
																<span><img src="${cpath }/resources/svg/plus.svg"
																	style="width: 12px"></span>
															</button>
														</div>
													</div>
												</div>
											</div>
											<div class="childbabypet">
												<div>
													<div class="left">
														<div>어린이</div>
														<div>만 2세~12세</div>
													</div>
													<div class="right">
														<div>
															<button>
																<span><img
																	src="${cpath }/resources/svg/minus.svg"
																	style="width: 12px"></span>
															</button>
															<div>
																<span>0</span>
															</div>
															<button>
																<span><img src="${cpath }/resources/svg/plus.svg"
																	style="width: 12px"></span>
															</button>
														</div>
													</div>
												</div>
											</div>
											<div class="childbabypet">
												<div>
													<div class="left">
														<div>유아</div>
														<div>만 2세 미만</div>
													</div>
													<div class="right">
														<div>
															<button>
																<span><img
																	src="${cpath }/resources/svg/minus.svg"
																	style="width: 12px"></span>
															</button>
															<div>
																<span>0</span>
															</div>
															<button>
																<span><img src="${cpath }/resources/svg/plus.svg"
																	style="width: 12px"></span>
															</button>
														</div>
													</div>
												</div>
											</div>
											<div class="childbabypet">
												<div>
													<div class="left">
														<div>반려동물</div>
														<div>보조동물을 동반하시나요?</div>
													</div>
													<div class="right">
														<div>
															<button>
																<span><img
																	src="${cpath }/resources/svg/minus.svg"
																	style="width: 12px"></span>
															</button>
															<div>
																<span>0</span>
															</div>
															<button>
																<span><img src="${cpath }/resources/svg/plus.svg"
																	style="width: 12px"></span>
															</button>
														</div>
													</div>
												</div>
											</div>
											<div class="info">이 숙소의 최대 숙박 인원은 6명(유아 포함)입니다. 반려동물
												동반은 허용되지 않습니다.</div>
											<div class="close">닫기</div>
										</div>
										<div></div>
									</div>
								</div>
								<div class="reservation">예약하기</div>
							</div>
						</div>
					</div>
					<div class="중간 설명부분">
						<ul>
							<li>예약 확정 전에는 요금이 청구되지 않습니다.</li>
						</ul>
					</div>
					<div class="설정값에 따라서 봐뀌는 부분">인원 수에 따라서 봐뀜</div>
				</div>
			</div>
		</div>
	</div>


	<div class="main4">
		<div class="a1">
			<div class="a1_1">
				<div class="hugi_div">
					<section>
						<div class="hugi_div1">
							<span><img src="${cpath}/resources/svg/hugi1.svg"
								style="width: 16px; height: 16px;"></span> <span>
								<h2>
									<div>${starnum}---- 후기 ${dto.product_reviewcnt }개</div>
								</h2>
							</span>
						</div>
						<div class="hugi_div2">
							<div class="hugi_div2_1">
								<div class="hugi_div2_1_1">
									<div class="same">
										<div class="samein">
											<div class="samein_1">
												<div>청결도</div>
												<div class="samein_1_1">
													<div>ㅡㅡㅡㅡ</div>
													<div>5.0</div>
												</div>
											</div>
										</div>
									</div>
									<div class="same">
										<div class="samein">
											<div class="samein_1">
												<div>정확성</div>
												<div class="samein_1_1">
													<div>ㅡㅡㅡㅡ</div>
													<div>5.0</div>
												</div>
											</div>
										</div>
									</div>
									<div class="same">
										<div class="samein">
											<div class="samein_1">
												<div>의사소통</div>
												<div class="samein_1_1">
													<div>ㅡㅡㅡㅡ</div>
													<div>5.0</div>
												</div>
											</div>
										</div>
									</div>
									<div class="same">
										<div class="samein">
											<div class="samein_1">
												<div>위치</div>
												<div class="samein_1_1">
													<div>ㅡㅡㅡㅡ</div>
													<div>5.0</div>
												</div>
											</div>
										</div>
									</div>
									<div class="same">
										<div class="samein">
											<div class="samein_1">
												<div>체크인</div>
												<div class="samein_1_1">
													<div>ㅡㅡㅡㅡ</div>
													<div>5.0</div>
												</div>
											</div>
										</div>
									</div>
									<div class="same">
										<div class="samein">
											<div class="samein_1">
												<div>가격 대비 만족도</div>
												<div class="samein_1_1">
													<div>ㅡㅡㅡㅡ</div>
													<div>5.0</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="hugi_div3">

							<!-- 회원 테이블이 완성 되야지 더미값 가능 -->
							<div class="hugi_div3_1">
								<div id="root2" offset="0" class="rootwrap"></div>
							</div>
						</div>
						<div class="hugi_div4">
							<div id="leftp" class="hidden">◀ 이전</div>
							<div style="display: flex;">
								<div id="pagef">1</div>
								<div>/</div>
								<div id="page"></div>
							</div>
							<div id="rightp">다음 ▶</div>
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div class="main5">
		<div class="main5_1">
			<div class="main5_1_1">
				<div>
					<div>
						<section>
							<div class="m5">
								<div class="m5_1">
									<h2>호스팅 지역</h2>
								</div>
							</div>
							<div class="map">
								<div class="map1">
									<div id="map" style="width: 1120px; height: 480px;"></div>

									<script type="text/javascript"
										src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7f579c6a262baa3450aaf4283efcdd83"></script>
									<script>
										var mapContainer = document
												.getElementById('map'), // 지도를 표시할 div 
										mapOption = {
											center : new kakao.maps.LatLng(
													${dto.product_latitude}, ${dto.product_longitude}), // 지도의 중심좌표
											level : 3
										// 지도의 확대 레벨
										};

										var map = new kakao.maps.Map(
												mapContainer, mapOption); // 지도를 생성합니다

										// 마커가 표시될 위치입니다 
										var markerPosition = new kakao.maps.LatLng(
												${dto.product_latitude}, ${dto.product_longitude});

										// 마커를 생성합니다
										var marker = new kakao.maps.Marker({
											position : markerPosition
										});

										// 마커가 지도 위에 표시되도록 설정합니다
										marker.setMap(map);

										// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
										// marker.setMap(null);    

										var iwContent = '<div style="padding:5px;">${dto.product_title}  <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
										iwPosition = new kakao.maps.LatLng(
												${dto.product_latitude}, ${dto.product_longitude}); //인포윈도우 표시 위치입니다

										// 인포윈도우를 생성합니다
										var infowindow = new kakao.maps.InfoWindow(
												{
													position : iwPosition,
													content : iwContent
												});

										// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
										infowindow.open(map, marker);

										// 지도 레벨을 표시합니다
										displayLevel();

										// 지도 레벨은 지도의 확대 수준을 의미합니다
										// 지도 레벨은 1부터 14레벨이 있으며 숫자가 작을수록 지도 확대 수준이 높습니다
										function zoomIn() {
											// 현재 지도의 레벨을 얻어옵니다
											var level = map.getLevel();

											// 지도를 1레벨 내립니다 (지도가 확대됩니다)
											map.setLevel(level - 1);

											// 지도 레벨을 표시합니다
											displayLevel();
										}

										function zoomOut() {
											// 현재 지도의 레벨을 얻어옵니다
											var level = map.getLevel();

											// 지도를 1레벨 올립니다 (지도가 축소됩니다)
											map.setLevel(level + 1);

											// 지도 레벨을 표시합니다
											displayLevel();
										}

										function displayLevel() {
											var levelEl = document
													.getElementById('maplevel');
											levelEl.innerHTML = '현재 지도 레벨은 '
													+ map.getLevel()
													+ ' 레벨 입니다.';
										}
									</script>
								</div>
							</div>
							<div class="explain">
								<div class="explain1">
									<div class="explain1_1">
										<h3>${dto.product_addrs },부산,대한민국 --
											(${dto.product_latitude} / ${dto.product_longitude})</h3>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main6">
		<div class="main6_1">
			<div class="main6_1_1">
				<div class="a">
					<div>
						<section>
							<div class="b">
								<!-- <div class="b1">
                                        <img src="https://a0.muscache.com/im/users/26650346/profile_pic/1422151004/original.jpg?im_w=240" >
                                        <span><img src="${cpath}/resources/grade.svg"></span>
                                    </div> -->

								<!-- 호스트 회원 테이블(DB)완성 후 기입 가능 -->
								<div class="b2">
									<div class="b2_1">
										<div class="b2_1_1">
											<div>
												<c:if test="${empty checkH.host_img }">
													<img class="photo_11"
														src="${cpath }/resources/img/마이페이지/profil.png">
												</c:if>
												<c:if test="${not empty checkH.host_img }">
													<img class="photo_11"
														src="${cpath }/project/${checkH.host_img }">
												</c:if>
												<div class="b2_2">
													<h2>호스트: ${dto.product_hostname }님</h2>
													<div>회원 가입일: 1751년 1월</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div>호스트 소개 :</div>
							<br>
							<br>

							<div class="c">
								<div class="c1">
									<div class="c1_1">
										<ul>
											<li class="li"><img
												src="${cpath}/resources/svg/star.svg"> <span>후기
													${dto.product_reviewcnt }개</span></li>
											<li class="li"><img
												src="${cpath}/resources/svg/shield.svg"> <span>본인
													인증 완료</span></li>
										</ul>
									</div>
								</div>
								<div class="c2">
									<div class="c2_button">
										<div>호스트에게 연락하기</div>
										<!-- 누르면 호스트 전화번호 or 이메일 -->
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main7">
		<div class="main7_1">
			<div class="main7_1_1">
				<div class="must">
					<div class="must1">
						<div class="must1_1">
							<div class="must1_2">
								<section>
									<h2>알아두어야 할 사항</h2>
								</section>
							</div>
						</div>
						<div class="must2">
							<div class="must2_1">
								<div class="must2_1_1">
									<div>
										<div class="sukso">
											<div class="sukso1">
												<h3>숙소 이용규칙</h3>
											</div>
											<div class="all">
												<div>
													<img src="${cpath}/resources/svg/clock.svg">
												</div>
												<span>체크인 : ${dto.product_checkin } 이후</span>
											</div>
											<div class="all">
												<div>
													<img src="${cpath}/resources/svg/clock.svg">
												</div>
												<span>체크아웃 : ${dto.product_checkout } 이전</span>
											</div>
											<div class="all">
												<div>
													<img src="${cpath}/resources/svg/pet.svg">
												</div>
												<span>${dto.product_pet }</span>
											</div>
											<div class="all">
												<div>
													<img src="${cpath}/resources/svg/smoke.svg">
												</div>
												<span>흡연 금지</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="must2_1">
								<div class="must2_1_1">
									<div>
										<div class="safe">
											<div class="safe1">
												<h3>건강과 안전</h3>
											</div>
											<div class="all">
												<div>
													<span>●</span>
												</div>
												<span style="height: 46px;">에어비앤비 코로나19 방역 수칙을 준수하셔야
													합니다.</span>
											</div>
											<div class="all">
												<div>
													<span>●</span>
												</div>
												<span>일산화탄소 경보기 없음</span>
											</div>
											<div class="all">
												<div>
													<span>●</span>
												</div>
												<span>보안 카메라/녹화 장치</span>
											</div>
											<div class="all">
												<div>
													<span>●</span>
												</div>
												<span>근처에 호수,강,바다 등이 있음</span>
											</div>

										</div>
									</div>
								</div>
							</div>
							<div class="must2_1">
								<div class="must2_1_1">
									<div>
										<div class="refund">
											<div class="refund1">
												<div class="refund1_top">
													<div>
														<h3>환불 정책</h3>
													</div>
												</div>
												<div class="refund1_middle">
													<!--  sysdate로 나중에 지정하기 -->
													<div>
														10일 이전은 무료 환불 가능합니다. <br>10일 이후는 호스트에게 문의하세요
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	</main>

	<script>
// 	const root2 = document.getElementById('root2')
	const leftp = document.getElementById('leftp')
	const rightp = document.getElementById('rightp')
// 	const offset = root2.getAttribute('offset')
	
	const root2 = document.getElementById('root2')
	const offset = root2.getAttribute('offset')
	
	
	
	
	
	
	
	
	window.addEventListener('load', loadHandler2)
	window.addEventListener('load', pageHandler)
	leftp.addEventListener('click', leftpHandler)
	rightp.addEventListener('click', rightpHandler)
	
	
	
</script>

	<script>

	
</script>



	<script>

	const guest = document.querySelector('.guest')
	const gdd = document.querySelector('.guest > .guest_dropdown')
	const main = document.querySelector('.main')
	
	
	function guestCilck(event) {
	   	gdd.classList.remove('hidden')
		}
	
	function closeguest(event){
		   if(event.target.className == 'close')
		   gdd.className.add('hidden')
		}
	
	
	guest.addEventListener('click', guestCilck)
	guest.addEventListener('click', closeguest)

</script>

</body>
</html>