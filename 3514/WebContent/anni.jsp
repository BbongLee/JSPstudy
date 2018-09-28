<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="true" import="java.util.*"%>
<p id="today"></p>
<p id="days"></p>
<p id="findDay"></p>

<script>

var d = new Date();
var tYear = d.getFullYear();
var tMonth = d.getMonth()+1;
var tDate = d.getDate();

var today = tYear+" "+tMonth+" "+tDate;

window.onload = showCalendar(tYear, tMonth);

document.getElementById("today").innerHTML = today;

function getDays(year, month){  //일 수 계산
	var days;
	switch(month){
		case 1: case 3: case 5: case 7: case 8: case 10: case 12:
			days=31;
	    break;
	    case 2:
	    	//윤달 계산
	    	if( (year%4 == 0 && year%100 != 0) || year%400 == 0 ) {
				days= 29 ;
	        }
			else {
				days= 28 ;
			}
	    	break;
	    case 4: case 6: case 9: case 11:
	    	days=30;
	    break;
	}
	return days;
}

function getDay(year, month){ //요일 ㄱㅖ산  0-6 일 월 화 수 목 금 토
	//Let's make a CALENDAR !!! 히히
	 var findDate = new Date(month +' 1 ,'+year);//달력을 위해 첫1일의 요일 찾기!
	 var findDay= findDate.getDay();
	 document.getElementById("findDay").innerHTML = findDay;
	 return findDay;
}

//캘린더 폼만 계산
function makeCalendar(year, month){
	var nowDays = getDays(year, month); //현재달력의 일 수
	var nowDay = getDay(year, month); //1일의 요일
	
	var theseDays=[0,]; //한 달력에 들어갈 전체 일 배열 !
//	for(var i=0; i<nowDay;i++){
	//	theseDays[i] = i+1;
	//}
	for(var i=nowDay;i<nowDays;i++){
		theseDays[i] = i+1;
	}
	return theseDays;
}

//html로 보여주기
function showCalendar(year, month){
	var sYear = year;
	var sMonth = month;
	var theseDays = makeCalendar(sYear, sMonth);
	/*var thisDays= new Array();
	thisDays[0] = new Array();
	for(var i=0; i<5; i++){
		for(var j=0; j<7; j++){
			thisDays[i][j] = theseDays[];
		}
	}*/
	
	var calDiv = year+month+"달력!!";
	document.getElementById("calend").innerHTML=calDiv;
} 
 
 function paramCalendar(num){
		 showCalendar(tYear, tMonth+num);
 }//이전/현재/미래의 달력을 설정하기 위한 통 로 야 . .  .?

</script>
<button onclick="paramCalendar(-1)">◀</button>
<h3 id="tMon"></h3>
<button onclick="paramCalendar(1)">▶</button>
<div id="calend">
</div>
</body>
</html>















