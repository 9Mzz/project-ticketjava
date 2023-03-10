$(function(){ 
	var pageContext = $('#pageContext').val();
	var hallNo = $('#hallNo').val();
	
	$('#nextBtn').on('click', function(){
		
		var chkbox = $('[type=checkbox]').not('[class=n]');
		
		var seatList = [];
		for(var i=0; i< chkbox.length; i++) {
			var e = chkbox.eq(i);
			
			var grade= e.attr("class");
			if(grade == 'v')
				grade = "vip";
			var section = e.attr('data-section');
			var col = e.attr('data-col');
			var num = e.attr('data-num');
			
			var initVo = {
				hallNo:hallNo,
				grade:grade,
				section:section,
				col:col,
				num:num				
			};
			seatList.push(initVo);
		}
		
		$.ajax({
			url: pageContext+"/seat/initSeat",
			type : "post",
			traditional : true,
			contentType : "application/json",
			data: JSON.stringify(seatList),
			dataType:"json",
			success : function(){
				alert('초기화 완료');
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
		 
	});

});