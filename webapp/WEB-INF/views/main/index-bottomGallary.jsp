<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓자바 TicketJava 당신의 인생작을 티켓자바로 만나보세요!</title>

<!-- 티잡 파비콘 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32.png">

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 메인페이지 디자인 css  -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaIndexDesign.css" rel="stylesheet" type="text/css">

</head>


<body>

	<div id="wrap">

		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 구역 종료 -->


		<!-- 컨텐츠 구역 시작 -->
		<article class="container-fluid zp">

			<!-- 영상 재생 구역 시작 -->
			<section class="productVideo">
				<div class="mainVideo">
					<!-- 영상재생이 안될때 대신 보여주는 이미지 -->
					<img src="${pageContext.request.contextPath}/assets/image/index/thumbnail_ticketjava_desktop.png">
					<video loop="" muted="" autoplay="" playsinline="" webkit-playsinline="true">
						<source type="video/mp4" src="assets/video/video_index.mp4">
					</video>
				</div>

				<!-- 영상 코멘트 및 버튼 -->
				<div class="mainVideoOverlay">
					<div class="mainVideoComment">
						<h1>
							당신의 인생작품을<br>놓치지 마세요
						</h1>
					</div>
					<div class="mainVideoButton">
						<p>
							<a href="${pageContext.request.contextPath}/product/ranking">예매하러가기</a>
						</p>
					</div>
				</div>
			</section>
			<!-- 영상 재생 구역 종료 -->


			<!-- 파란배경 구역 시작 -->
			<section class="container-fluid zp ticketIntroducebox">

				<div class="blueGradationAreaTop zp"
					style="background-image: URL(${pageContext.request.contextPath}/assets/image/index/blueColorBackground-up.png); background-repeat: repeat-x; height: 100px; width: 100%;"></div>

				<div class="blueGradationAreaMid">

					<!-- 티켓자바 서비스 소개 노트북 디자인 -->
					<div class="ticketIntroducebox">

						<div class="container">
							<div class="row">

								<div class="col-md-5">
									<div class="whisperText">
										<h2>안녕하세요 티켓자바 입니다!</h2>
										
										<h3>혹시... 원하는 작품을 예매하는데 매진을 경험해보신 적이 있나요?</h3>
										<p>원하는 작품을 예매해도 원하는 좌석이 아니라서 실망했던 적은 없나요?</p>
										<p>그래서 내가 원하는 조건에 맞는 취소표를 기다린적은요?</p>
									</div>
								</div>

								<div class="col-md-1"></div>

								<div class="col-md-6">
									<img src="${pageContext.request.contextPath}/assets/image/index/ticketing_online_notebook.png">
								</div>

							</div>
						</div>

					</div>
					<!-- //티켓자바 서비스 소개 노트북 디자인 -->

				</div>

				<div class="blueGradationAreaBottom zp"
					style="background-image: URL(${pageContext.request.contextPath}/assets/image/index/blueColorBackground-down.png); background-repeat: repeat-x; height: 110px; width: 100%;"></div>
			</section>
			<!-- //파란배경 구역 종료 -->



			<!-- 티켓자바 서비스 소개 귓속말 디자인 -->
			<section class="container-fluid zp ticketjavaWhisper">
				<div class="container">
					<div class="row">

						<div class="col-md-4">
							<img src="${pageContext.request.contextPath}/assets/image/index/whisper.png">
						</div>

						<div class="col-md-3"></div>

						<div class="col-md-5">
							<div class="whisperText">
								<h3>티켓자바는 무엇인가요?</h3>
								<p>티켓자바는 뮤지컬, 공연, 콘서트의 취소표를 알려주는 서비스입니다.</p>
								<h3>왜 티켓자바를 써야하나요?</h3>
								<p>지금까지 없었던 기능!! 언제 뜰지 모르는 취소표를 기다리지 마세요.</p>
								<p>맞춤형 알림!! 원하는 공연, 원하는 시간, 원하는 자리에 뜨는 취소 알림을 받아보세요.</p>
							</div>
						</div>

					</div>
				</div>
			</section>
			<!-- //티켓자바 서비스 소개 귓속말 디자인 -->



			<!-- 티켓모양 종이질감 블루 구역 시작 -->
			<section class="container-fluid zp ticketjavaBlueTicket">

				<div class="ticketBorderTop zp" style="background-image: URL(assets/image/index/ticket_border_top_blue.png); background-repeat: repeat-x; height: 40px; width: 100%;"></div>

				<div class="ticketBorderMid" style="background-image: URL(assets/image/index/orange_paper-texture_blue.png); background-repeat: repeat; height: 400px; width: 100%;">

					<div class="ticketbox">

						<!-- 카운터 numbering 구역 시작 -->
						<section class="numbering text-center">
							<div class="container">
								<div class="row">
									<div class="col-sm-3 col-xs-6">
										<img src="assets/image/index/dancerRightSide.png" width="200px">
									</div>
									<div class="col-sm-3 col-xs-6 text-center counter-item">
										<h3>지금까지</h3>
										<p class="counter" data-to="13378" data-speed="1000">0</p>
										<h3>
											분이 <br>티켓자바를 통해 <br>원하는 작품을 만나셨습니다!
										</h3>
									</div>

									<div class="col-sm-3 col-xs-6 text-center counter-item">
										<h4>티켓자바로 본 누적 작품 시간</h4>
										<br>
										<h2>
											<p class="counter" data-to="1525204" data-speed="1000">0</p>
											분
										</h2>
									</div>
									<div class="col-sm-3 col-xs-6">
										<img src="assets/image/index/stamp_certi.png">
									</div>

								</div>
							</div>
						</section>
						<!-- 카운터 numbering 구역 종료 -->



					</div>
					<!-- //ticketbox -->
				</div>
				<!-- // ticketBorderMid -->

				<div style="background-image: URL(assets/image/index/ticket_border_bottom_blue.png); background-repeat: repeat-x; height: 100px; width: 100%;"></div>

			</section>
			<!-- 티켓모양 종이질감 블루 구역 종료 -->






			<!-- 작품 리스트 Gallery 구역 시작 -->
			<section class="productGallery">
				<div class="product section-padding" data-scroll-index='3'>

					<!-- container-fluid row 시작 -->
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-12 section-title text-center">
								<h3>우리의 공연을 놓치지 마세요 !</h3>
								<p>관람 이후 좋은 평가를 받고 있는 작품</p>
								<span class="section-title-line"></span>
							</div>

							<!-- gallery zp col-lg-12 col-sm-12 시작 -->
							<div class="gallery zp col-lg-12 col-sm-12">

								<!-- product item 시작 -->
								<div class="col-lg-4 col-sm-6 zp">
									<div class="item-img">
										<a class="single-image" href="http://naver.com"></a>
										<div class="part-img">
											<img src="assets/image/indexgall/gall1.jpg" alt="image">
											<div class="overlay-img">
												<h4>2022-02-18 ~ 2022-03-25</h4>
												<h6>뮤지컬 아이다</h6>
											</div>
										</div>
									</div>
								</div>
								<!-- product item 종료 -->

								<div class="col-lg-4 col-sm-6 zp">
									<div class="item-img">
										<a class="single-image" href="assets/image/indexgall/gall2.jpg"></a>
										<div class="part-img">
											<img src="assets/image/indexgall/gall2.jpg" alt="image">
											<div class="overlay-img">
												<h4>2022-02-18 ~ 2022-03-25</h4>
												<h6>잭 더 리퍼</h6>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 zp">
									<div class="item-img">
										<a class="single-image" href="assets/image/indexgall/gall3.jpg"></a>
										<div class="part-img">
											<img src="assets/image/indexgall/gall3.jpg" alt="image">
											<div class="overlay-img">
												<h4>2022-02-18 ~ 2022-03-25</h4>
												<h6>온에어</h6>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 zp">
									<div class="item-img">
										<a class="single-image" href="assets/image/indexgall/gall4.jpg"></a>
										<div class="part-img">
											<img src="assets/image/indexgall/gall4.jpg" alt="image">
											<div class="overlay-img">
												<h4>2022-02-18 ~ 2022-03-25</h4>
												<h6>라이온킹</h6>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 zp">
									<div class="item-img">
										<a class="single-image" href="assets/image/indexgall/gall5.jpg"></a>
										<div class="part-img">
											<img src="assets/image/indexgall/gall5.jpg" alt="image">
											<div class="overlay-img">
												<h4>2022-02-18 ~ 2022-03-25</h4>
												<h6>블러디</h6>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 zp">
									<div class="item-img">
										<a class="single-image" href="assets/image/indexgall/gall6.jpg"></a>
										<div class="part-img">
											<img src="assets/image/indexgall/gall6.jpg" alt="image">
											<div class="overlay-img">
												<h4>2022-02-18 ~ 2022-03-25</h4>
												<h6>미오 프라텔로</h6>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 zp">
									<div class="item-img">
										<a class="single-image" href="assets/image/indexgall/gall7.jpg"></a>
										<div class="part-img">
											<img src="assets/image/indexgall/gall7.jpg" alt="image">
											<div class="overlay-img">
												<h4>2022-02-18 ~ 2022-03-25</h4>
												<h6>킹 아더</h6>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 zp">
									<div class="item-img">
										<a class="single-image" href="assets/image/indexgall/gall8.jpg"></a>
										<div class="part-img">
											<img src="assets/image/indexgall/gall8.jpg" alt="image">
											<div class="overlay-img">
												<h4>2022-02-18 ~ 2022-03-25</h4>
												<h6>더 데빌</h6>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-sm-6 zp">
									<div class="item-img">
										<a class="single-image" href="assets/image/indexgall/gall9.jpg"></a>
										<div class="part-img">
											<img src="assets/image/indexgall/gall9.jpg" alt="image">
											<div class="overlay-img">
												<h4>2022-02-18 ~ 2022-03-25</h4>
												<h6>썸싱로튼</h6>
											</div>
										</div>
									</div>
								</div>


							</div>
							<!-- gallery zp col-lg-12 col-sm-12 종료 -->
						</div>
					</div>
					<!-- container-fluid row 종료 -->
				</div>
			</section>
			<!-- 작품 리스트 Gallery 구역 종료 -->

		</article>
		<!-- 컨텐츠 구역 종료 -->


		<!-- 푸터 구역 시작 -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- 푸터 구역 종료 -->

	</div>
	<!-- wrap 종료 -->

</body>

<!-- 갤러리 기능을 위한 js -->
<script src="${pageContext.request.contextPath}/assets/js/ajax1.12.4jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/indexProductGallery.js"></script>

<!-- 카운터 기능을 위한 js -->
<script src="${pageContext.request.contextPath}/assets/js/jquery.countTo.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/indexCounter.js"></script>


</html>
