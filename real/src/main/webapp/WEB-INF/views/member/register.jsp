<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="headerH.jsp"%>
<!-- <!DOCTYPE html> -->
<!--     <meta charset="UTF-8"> -->
<!--     <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<!--     <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!--     <title>Document</title> -->
<link type="text/css" rel="stylesheet"
	href="${cpath }/resources/css/style_영규상세2.css">



<script>
	const cpath = '${cpath}'
</script>
<style>
	ol > li > input{
		width: 30px;
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
    input[type="submit"]:hover, button:hover{
        cursor: pointer;
        opacity: 100%;
        transition-duration: 0.2s;
    } 
</style>

<script src="${cpath }/resources/js/function.js"></script>
</head>
<form method="POST">
	<main style="height: 3000px">
	<div>
		<div class="main1">
			<div class="main1_1">
				<div class="main1_head">
					<section class="section1">
						<div class="top">
							<span><img src="svg/translation.svg"></span>
							<h1>
								<input type="text" name="product_title" placeholder="상품의 제목을 입력하세요"
								style="width: 600px; height:34px; font-size: 1em" required>
								<input type="hidden" name="host_idx" value="${checkH.host_idx }">
							</h1>
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
								<img src="${cpath}/resources/img/${dto.img}/1.jpg">
							</div>
						</div>
						<div class="photo2">
							<div class="photo2_1">
								<img src="${cpath}/resources/img/${dto.img}/2.jpg">
							</div>
							<div class="photo2_1">
								<img src="${cpath}/resources/img/${dto.img}/3.jpg">
							</div>
						</div>
						<div class="photo2">
							<div class="photo2_2">
								<img src="${cpath}/resources/img/${dto.img}/4.jpg">
							</div>
							<div class="photo2_2">
								<img src="${cpath}/resources/img/${dto.img}/5.jpg">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main3" style="height: 1540px">
		<!-- 왼쪽-->
		<div class="main3_1">
			<div class="main_left">
				<div class="left1">
					<div>
						<section class="third">
							<div>
								<h2>${checkH.host_name}님이 호스팅하는 돔하우스
								<input type="text" name="product_hostname" required placeholder="호스트 본인 이름 입력"
								style="margin-left: 20px"></h2>
								<ol>
									<li>최대 인원 <input type="number" name="product_maxpeople" required min="1" max="18">명 </li>
									<li> · 침실 <input type="number" name="product_bedroom" required min="1" max="3">칸 </li>
									<li> · 침대 <input type="number" name="product_bed" required min="1" max="3">개 </li>
									<li> · 욕실 <input type="number" name="product_bathroom" required min="1" max="3">칸 </li>
								</ol>
							</div>
							<div class="thirdImg">
								<div>
<!-- 									<img src="https://a0.muscache.com/im/pictures/user/0ea3cd74-7ce9-4f59-bf57-334651d552c6.jpg?im_w=240"> -->
									<c:if test="${empty checkH.host_img }">
										<img src="${cpath }/resources/img/마이페이지/profil.png">
									</c:if>
									<c:if test="${not empty checkH.host_img }">
										<img src="${cpath }/project/${checkH.host_img }">
									</c:if>
								</div>
							</div>
						</section>
					</div>
				</div>
				<div class="left2">
					<div class="left2_1">
						<div class="first">
							<div>
								<img src="svg/swim.svg">
							</div>
							<div class="first1">
								<div class="top">
									<input type="text" name="product_mtitle" placeholder="작은 소개문 제목" 
									style="width: 250px" required>
								</div>
							</div>
						</div>
						<div class="first">
							<div>
								<img src="svg/details.svg">
							</div>
							<div class="bottom">
								<textarea name="product_mstory" placeholder="작은 소개문" 
								style="width: 400px; height: 50px" required></textarea>
							</div>
						</div>
						<div class="second">
							<div>
								<img src="svg/cal.svg">
							</div>
							<div class="top"></div>
							<!-- sys데이트 jstl -->
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
				<div class="left4" style="height: 200px; border-bottom: 1px solid rgb(219, 216, 216); padding-bottom: 32px">
					<div class="a1" style="display: inline">
						<div><h4>상품 가격</h4></div>
						<div><input type="number" name="product_price"></div>
						<br>
						<div><h4>상품 분류</h4></div>
						<div>
							<select name="product_category" style="font-size: 16px">
								<option value="멋진 수영장">멋진 수영장</option>
								<option value="해변 근처">해변 근처</option>
								<option value="북극">북극</option>
								<option value="료칸">료칸</option>
								<option value="섬">섬</option>
							</select>
						</div>
					</div>
					<div></div>
				</div>
				<div class="left5">
					<textarea name="product_story" placeholder="큰 소개문" style="width: 600px; height: 100px" required></textarea>
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
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="main5" style="height: 300px">
		<div class="main5_1">
			<div class="main5_1_1">
				<div style="height: 250px">
					<div>
						<section>
							<div><h2>호스팅 주소</h2></div>
							<div class="m5">
								<div class="m5_1"><h4>상품 주소</h4></div>
								<div><input type="text" name="product_addrs" style="width: 300px" required></div>
							</div>
							<br><br><br><br>
							<div>
								<div>
									<div>
										<input type="text" name="product_latitude" 
										placeholder="위도" style="width: 150px" required>
										<input type="text" name="product_longitude" 
										placeholder="경도" style="width: 150px" required>
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
					<div class="must1" style="padding-top: 32px">
						<div class="must1_1">
							<div class="must1_2">
								<section>
									<h2>예약 이전 필수 사항</h2>
								</section>
							</div>
						</div>
						<div class="must2">
							<div class="must2_1">
								<div class="must2_1_1">
									<div>
										<div class="sukso">
											<div style="display: flex;">
												<div class="all" style="margin-right: 120px">
													<div>
														<img src="svg/clock.svg">
													</div>
													<span>체크인<select name="product_checkin">
														<option>오후 02:00</option>
														<option>오후 03:00</option>
														<option>오후 04:00</option>
														<option>오후 05:00</option>
													</select></span>
												</div>
												<div class="all">
													<div>
														<img src="svg/clock.svg">
													</div>
													<span>체크아웃<select name="product_checkout">
														<option>오전 09:00</option>
														<option>오전 10:00</option>
														<option>오전 11:00</option>
														<option>오전 12:00</option>
													</select></span>
												</div>
											<div class="all" style="margin-left: 120px">
												<div>
													<img src="svg/pet.svg">
												</div>
												<!-- 디비에 추가하기 -->
												<span>반려동물
													<select name="product_pet" style="font-size: 16px">
														<option value="반려동물 동반 가능">반려동물 동반 가능</option>
														<option value="반려동물 동반 불가능">반려동물 동반 불가능</option>
													</select>
												</span>
											</div>
										</div>
									</div>
									<input type="submit" value="등록">
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
</form>
<script>

   const guest = document.querySelector('.guest')
   const gdd = document.querySelector('.guest > .guest_dropdown')
   
   function guestCilck(event) {
      gdd.classList.remove('hidden')
   }
   
   
   guest.addEventListener('click' , guestCilck)
</script>

</body>
