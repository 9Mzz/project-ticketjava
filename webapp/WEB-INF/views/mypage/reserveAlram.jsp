<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketJava 티켓자바 - 취소알림</title>

<!-- 티잡 파비콘 파란손 배경없음 -->
<link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/assets/image/index/favicon-32x32_ticketjava_nobackground.png">


<script src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>

<!-- 부트스트랩 Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- 기본 css -->
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonAside.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ticketjavaCommonFooter.css" rel="stylesheet" type="text/css">

<!-- 개인 css (폴더로 관리 권장 ex assets/css/mypage/ticketing.css) -->
<link href="${pageContext.request.contextPath}/assets/css/mypage/ticketjavaMypageCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/mypage/reserveAlram.css" rel="stylesheet" type="text/css">
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
					<!-- 어사이드 종료 -->

					<!-- .col-xs-10컨텐츠 출력 자리 시작 -->
					<div class="col-xs-10">


						<!-- content -->
						<div id="content">

							<!-- content-head -->
							<div id="content-head">
								<h3>취소알림 내역</h3>
								<div id="location">
									<ul>
										<li>홈</li>
										<li>마이페이지</li>
										<li class="last">취소알림 내역</li>
									</ul>
								</div>
								<div class="clear"></div>
							</div>
							<!-- //content-head -->

							<!-- content body -->
							<div id="board">
								<div id="list">
									<table>
										<thead>
											<tr>
												<th>내용</th>
												<th>시간</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody>
										<c:if test="${empty notiList}">
												<tr><td colspan="3">취소 알림이 없습니다</td></tr>
												</c:if>
												
											<c:forEach items="${notiList}" var="vo">
												<tr id="tr${vo.notiNo}">
													<c:choose>
														<c:when test="${vo.read == 0}">
															<td class="unread text-left" data-notino="${vo.notiNo}">${vo.content}</td>
														</c:when>
														<c:otherwise>
															<td class="read text-left" data-notino="${vo.notiNo}">${vo.content}</td>
														</c:otherwise>
													</c:choose>
													<td>${vo.notiTime}</td>
													<td><button type="button" class="delBtn btn btn-outline-primary" data-notino="${vo.notiNo}">삭제</button></td>
												</tr>
											</c:forEach>
											
										</tbody>
									</table>
									
								
							</div>
							<!-- //list -->

							
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
	$('.delBtn').on('click', function(){
		var notiNo = $(this).data('notino');
		console.log(notiNo);
		
		$.ajax({
			url: "${pageContext.request.contextPath}/notification/deleteNoti",
			type : "post",
			data : {notiNo:notiNo},
			dataType: "json",
			success : function(result){
				if(result == 'success'){
					console.log(result);
					$('#tr'+notiNo).remove();
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
	});
	
	$('.content').on('click',function(){
		var td = $(this).closest('td');
		var notiNo = td.data('notino');
		
		$.ajax({
			url: "${pageContext.request.contextPath}/notification/read",
			type : "post",
			data : {notiNo:notiNo},
			dataType: "json",
			success : function(result){
				if ( td.hasClass('unread') ) {
					td.removeClass('unread');
					td.addClass('read');
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		
		
	});
</script>


</html>
