<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 티켓자바 - 예매 상세페이지</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">
<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage/mypageTicketingDetail.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js">
</script>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js">
</script>


</head>

<body>
	<div id="wrap">

		<!-- 헤더 header 구역 시작 (로그인 로고 검색창) -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
		<!-- 네비바 구역 종료 -->

		<!-- 컨텐츠 구역 시작 -->
		<div class="container-fluid zp">
			<div class="container zp">
				<div class="row">
					<!-- .col-xs-2 어사이드 자리 시작 -->
					<div class="col-xs-2">

						<!-- aside -->
						<c:import url="/WEB-INF/views/include/asideMypage.jsp"></c:import>
						<!-- //aside -->


					</div>
					<!-- .col-xs-2 어사이드 종료 -->
					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10">
						<!-- content -->
						<div id="content">
							<!-- content-head -->
							<div id="content-head">
								<h3>예매정보 상세</h3>
								<div id="location">
									<ul>
										<li>홈</li>
										<li>마이페이지</li>
										<li class="last">예매내역/취소</li>
									</ul>
								</div>
								<div class="clear"></div>
							</div>
							<!-- //content-head -->

							<!-- content body -->
							<div class="ticketingDetail">
								<div class="rezInvoice">
									<h4>${rMap.reserveDetail.name}님의 예매정보</h4>

									<h5>티켓명 : ${rMap.reserveDetail.prodname}</h5>

									<table>
										<tbody>
											<tr>
												<th>관람일시</th>
												<td>${rMap.reserveDetail.viewdate} ${rMap.reserveDetail.showTime}</td>
												<th>장소</th>
												<td>${rMap.reserveDetail.theatername} ${rMap.reserveDetail.hallname}</td>
											</tr>
											<tr>
												<th>예매자 연락처</th>
												<td>${rMap.reserveDetail.phone}<br>
												${rMap.reserveDetail.email}
												<%-- 예매상태 <c:choose>
														<c:when test="${rMap.reserveDetail.status eq 0}">
															비활성
														</c:when>
														<c:otherwise>
															활성
														</c:otherwise>
													</c:choose> --%></td>
												<th>예매일</th>
												<td>${rMap.reserveDetail.rezdate}</td>
											</tr>
											<tr>
												<th>예매번호</th>
												<td>${rMap.reserveDetail.rezNo}</td>
												<th>예매자</th>
												<td>${rMap.reserveDetail.name}</td>
											</tr>
											<tr>
												<th>지불 총액</th>
												<td>${rMap.reserveDetail.totalPayment+2000}원</td>
												<th>총 좌석수</th>
												<td>${rMap.reserveDetail.selseatCount}석</td>
											</tr>
											
										</tbody>
									</table>
								<div class="noticePee">지불 총액은 수수료 2000원이 포함된 금액입니다.</div>


								</div>
								<!-- //rezInvoice -->

								<div class="rezSeatList">
									<h4>예매내역 및 좌석</h4>
									<form action="${pageContext.request.contextPath}/mypage/requestCancelTicket" method="post" id="requestCancel">
									
										<table>
											<thead>
												<tr>
													<th scope="col"><input type="checkbox" disabled></th>
													<th scope="col">좌석등급</th>
													<th scope="col">권종</th>
													<th scope="col">좌석섹션</th>
													<th scope="col">좌석번호(col/num)</th>
													<th scope="col">가격</th>
													<th scope="col">예매상태</th>
												</tr>
											</thead>
												
											<tbody>
												<c:forEach items="${requestScope.rMap.reserveSeatList}" var="vo">
													<tr>
														<td><c:if test="${vo.status eq 1}"><input type="checkbox" name="selseatNo" value="${vo.selseatNo}" /></c:if></td>
														<td><p class="rezGrade">${vo.grade}석</p></td>
														<td>${vo.dcName}<c:if test="${empty vo.dcName}">일반</c:if></td>
														<td>${vo.section}구역</td>
														<td>${vo.col}열${vo.num}번</td>
														<td>${vo.payment}원</td>
														<td>
															<c:choose>
																<c:when test="${vo.status eq 1}">
																	<p class="rezStatusOn">정상 예매중</p>
																</c:when>
																<c:otherwise>
																	<p class="rezStatusOff">취소됨</p>
																</c:otherwise>
															</c:choose>
														</td>								
													</tr>
												</c:forEach>
											</tbody>
										</table>
										<div><button type="button" class="btn btn-outline-primary" onclick="requestCancel()">예매취소</button></div>
									</form>
									
								</div>
								<!-- //rezSeatList -->
								
								

								<div class="cancelRule">
									<h4>취소 유의사항</h4>

									<table>
										<tbody>
											<tr>
												<th></th>
												<td>
													<div class="noticeCancelRegulations">
														<ul>
															<li>취소마감시간이 공연전시 상품 및 스포츠 구단마다 상이하며, 마감시간이 지난 이후에는 취소가 불가능합니다.</li>
															<li>취소 진행 시 취소 마감시간 확인 후 취소해주시기 바랍니다.</li>
															<li>예매수수료는 예매일 당일 취소하실 경우만 환불되며, 그 이후 취소 시에는 환불되지 않습니다.</li>
															<li>행사상의 문제로 인해 환불을 받으실 경우 별도의 수수료를 제공하지 않으며, 환불 주체가 티켓자바(TicketJava)가 아닌 행사 주최사가 될 수 있습니다.</li>
															<li>신용카드로 결제한 건에 대해 취소하실 경우, 최초 결제와 동일한 카드로 예매시점에 따라 취소 수수료와 배송비 등을 재승인합니다. 따라서 무이자할부 혜택 등 기간 별 프로모션 혜택이 적용되지 않을 수 있습니다.</li>
															<li>배송준비중 혹은 배송이후 상태에서는 배송지 변경이 불가합니다.</li>
															<li>발송 받으신 티켓을 분실하셨거나 티켓이 훼손되었을 경우 취소 및 변경이 절대 불가하오니 이 점 유의하시기 바랍니다.</li>
															<li>이미 배송이 시작된 티켓의 경우는 온라인 및 콜센터에서 취소가 불가합니다. 반드시 취소마감 시간 이전에 티켓이 아래 주소로 반송되어야 합니다. 취소수수료는 도착일자 기준으로 부과됩니다.</li>
															<li>티켓 반송시, 고객님의 예매번호와 연락처, 반송사유를 함께 보내주시면 빠른 처리에 도움이 됩니다. 또한 무통장 입금이나 계좌이체를 이용하셨을 경우 환불 받으실 계좌와 예금주를 적으셔서 티켓과 함께 등기우편으로 보내주시길 부탁 드립니다.</li>
															<li class="last">위 조건은 2022년 01월 01일 부터 유효합니다</li>
														</ul>
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!-- //cancelRule -->
							</div>
							<!-- //content body -->
						</div>
						<!-- //content -->

					</div>
					<!-- .col-xs-10 컨텐츠 종료 -->
				</div>
				<!-- 어사이드 컨텐츠 그리드 종료 -->
			</div>
			<!-- container 종료 -->
		</div>
		<!-- 컨텐츠 구역 종료 -->

		<!-- 푸터 구역 시작 -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- 푸터 구역 종료 -->

	</div>
	<!-- wrap 종료 -->
</body>


<script type="text/javascript">
	function requestCancel() {

		if (window.confirm('예매를 취소하시겠습니까? 예매취소를 복구할 수 없습니다') == true) {
			
			document.getElementById('requestCancel').submit();
			
			alert("선택하신 좌석의 취소 처리가 완료 되었습니다");
			
		} else {
			
			alert("취소를 눌렀습니다.");
			
			return;
			
		}

	};
</script>


</html>
