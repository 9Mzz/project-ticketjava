$(function(){
	
	var seatMap = [];
	
	var sectionA = [
		'vvvvvvvvvvvvvvvv',
		'vvvvvvvvvvvvvvvv',		
		'rrrrrrrrrrrrrrrr',
		'ssssssssssssssss',
		'aaaaaaaaaaaaaaaa',
		'bbbbbbbbbbbbbbbb'
	];
	seatMap.push(sectionA);
	
	var sectionB = [
		'vvvvvvvvvvvvvvvv',
		'vvvvvvvvvvvvvvvv',		
		'rrrrrrrrrrrrrrrr',
		'ssssssssssssssss',
		'aaaaaaaaaaaaaaaa',
		'bbbbbbbbbbbbbbbb'
	];
	seatMap.push(sectionB);
	
	var sectionC = [
		'vvvvvvn',
		'vvvvvvv',		
		'rrrrrrr',
		'sssssss',
		'aaaaaaa',
		'bbbbbbb'
	];
	seatMap.push(sectionC);
	
	
	var sectionD = [
		'vvvvvv',
		'vvvvvv',		
		'rrrrrr',
		'ssssss',
		'aaaaaa',
		'bbbbbb'
	];
	seatMap.push(sectionD);
	
	
	var sectionE = [
		'nvvvvvv',
		'vvvvvvv',		
		'rrrrrrr',
		'sssssss',
		'aaaaaaa',
		'bbbbbbb'
	];
	seatMap.push(sectionE);
	
	
	var sectionF = [
		'nvvvvvv',
		'vvvvvvv',		
		'rrrrrrr',
		'sssssss',
		'aaaaaaa',
		'bbbbbbb'
	];
	seatMap.push(sectionF);
	
	
	var sectionG = [
		'vvvvvv',
		'vvvvvv',		
		'rrrrrr',
		'ssssss',
		'aaaaaa',
		'bbbbbb'
	];
	seatMap.push(sectionG);
	
	
	var sectionH = [
		'vvvvvvn',
		'vvvvvvv',		
		'rrrrrrr',
		'sssssss',
		'aaaaaaa',
		'bbbbbbb'
	];
	seatMap.push(sectionH);
	
	fetchSeatPlan(seatMap);
	
	/* 좌석 새로고침 */
	$('#seatRefresh').on('click',function(){
		console.log('좌석 새로고침');
		deleteSeatPlan();
		fetchSeatPlan(seatMap);
	});
	
	var seatno;
	var num;
	function fetchSeatPlan(seatMap){
		seatno=0;
		num=0;
		for(var section = 0; section < seatMap.length; section++ ){
		
			var sectionCh = String.fromCharCode(section+65);
			$("#seatPlanDiv").append('<table id="seatArea'+sectionCh+'"> <tr> <th class="center" colspan="100%">'+ sectionCh +'</tr></thead> </table>');
			
			for(var col=0; col<seatMap[section].length; col++) {
				
				$('#seatArea'+sectionCh).append('<tr id="col'+col+'"></tr>');
	
				num=1;
				for(var s=0; s<=seatMap[section][col].length;s++){
					
					if(s<seatMap[section][col].length){
						render(seatMap[section][col][s], col, sectionCh);
					}
					else{
						renderCol(col, sectionCh);
					}
						
				}
			}
		
		}
	}
	
	function render(seat,col, sectionCh){
		var str = '';
		str += '<td>';
		 
		if(seat == "n"){
			str += '<input class="n" type="checkbox" id="seat'+seatno+'"disabled>';
		}
		else{
			if(seat == "o"){
				str += '<input type="checkbox" id="seat'+seatno+'"disabled>';
			}
			else{
				str += '<input class="'+seat+'" type="checkbox" id="seat'+seatno+
					   '" data-section="'+sectionCh+'" data-col="'+(col+1)+'" data-num="'+num+'" >';
			}
			num++;
		}
		
		str += '<label for="seat'+seatno+'"></label>';
		str += '</td>';
		
		$('#seatArea'+sectionCh+' #col'+col).append(str);
		seatno++;
	}
	
	function renderCol(col, sectionCh) {
		$('#seatArea'+sectionCh+' #col'+col).append('<td class="colno">'+(col+1)+'</td>');
		seatno++;
	}

	function deleteSeatPlan(){
		var seatPlan = $('#seatPlanDiv>table');
		seatPlan.remove();
	}
});