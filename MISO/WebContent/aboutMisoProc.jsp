<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>미소 소개</title>
<style>
body{
 overflow-x: hidden;
}
#artAbout {
	position: relative;
	width: 80%;
	margin: auto;
	min-height:1000px;
}
.center{
text-align: center;
}
#intro {
	width:90%;
	min-height: 100%;
	padding: 2em;
	display: inline-block;
	margin:0 auto;
	background: #159957; 
	background: -webkit-linear-gradient(to left, #155799, #159957);  
	background: linear-gradient(to left, #155799, #159957); 
	
}
#intro div{
	vertical-align: bottom;
	color: #f9f0e7;
	text-align:right;
}
#intro h1{
	font-size: 1.8em;
}
#intro p{
	font-size: 1.5em;
}

#introImg {
	width: 60%;
	float: left;
}

.title{
	font-size:2em;
	padding:20px 10px;
	text-align:center;
}
#introMap {
clear: both;
	width: 100%;
	height: 600px;
	background-color: white;
}
#map {
        height: 400px;
        width: 90%;
        margin:auto;
       }

#faqSection{
	background-color:white;
	width:95%;
	padding:2em;
	margin:20px auto;
	font-size: 1.3em;
	min-height:400px;
}

#faqSection h1{
	font-size:2em;
	text-align:center;
}
/* 아코디언 스타일 */
.tab {
  position: relative;
  margin:auto;
  margin-bottom: 1px;
  width: 90%;
  color: #fff;
  overflow: hidden;
}
input {
  position: absolute;
  opacity: 0;
  z-index: -1;
}
label {
  position: relative;
  display: block;
  padding: 0 0 0 1em;
  background: #16a085;
  font-weight: bold;
  line-height: 3;
  cursor: pointer;
}
.blue label {
  background: #2980b9;
}
.tab-content {
  max-height: 0;
  overflow: hidden;
  line-height:1.7em;
  border: 3px solid #1abc9c;
  color:#119b80;
  -webkit-transition: max-height .35s;
  -o-transition: max-height .35s;
  transition: max-height .35s;
}
.blue .tab-content {
  background: #3498db;
}
.tab-content p {
  margin: 1em;
}
/* :checked */
input:checked ~ .tab-content {
  max-height: 10em;
}
/* Icon */
label::after {
  position: absolute;
  right: 0;
  top: 0;
  display: block;
  width: 3em;
  height: 3em;
  line-height: 3;
  text-align: center;
  -webkit-transition: all .35s;
  -o-transition: all .35s;
  transition: all .35s;
}
input[type=checkbox] + label::after {
  content: "+";
}
input[type=radio] + label::after {
  content: "\25BC";
}
input[type=checkbox]:checked + label::after {
  transform: rotate(315deg);
}
input[type=radio]:checked + label::after {
  transform: rotateX(180deg);
}

</style>
</head>
<body>
<script>


</script>
	<article id="artAbout">
		<div class="center">
		<section id="intro" style="margin:auto;"> 
			<img id="introImg" src="img/back.jpg">
			<div>
			<h1>MISO INTERIOR</h1><br>
			<br>
			<p>어렵고 까다로운 건축, 혼자 하지 마세요.</p>
			<p>미소 인테리어와 함께하면 건축이 쉬워집니다.</p>
			<br>
			<br>
			<p>🕿010 - 4581 - 0082</p>
			<p>leegijong75@gmail.com</p>
			</div>
		</section> 
		</div> 
		<section id="faqSection">
			<h1>FAQ 문의사항</h1>
  
		    <div class="tab">
		      <input id="tab-one" type="checkbox" name="tabs">
		      <label for="tab-one">견적을 받고 싶을 땐 어떻게 신청하나요?</label>
		      <div class="tab-content">
		        <p>
		       	전화(010 - 4581 - 0082)가 가장 빠른 수단이지만, 혹시나 전화를 받지 못하는 상황 등이 있을 때엔 이 홈페이지의 <b>견적 문의</b>에서 신청하실 수 있습니다.
		       	<b>하루 ~ 1주일</b>내로 신속한 연락 드리겠습니다.</p>
				
		      </div>
		    </div>
		    <div class="tab">
		      	<input id="tab-two" type="checkbox" name="tabs">
		      	<label for="tab-two">공사기간은 얼마나 소요되나요?</label>
		      	<div class="tab-content">
			        <p>공사의 소요기간을 정확히 책정하기는 사실 좀 애매한게 사실입니다. 
      				<b>프로젝트별</b>로 편차가 있으며, <b>공사의 범위</b>에 따라서도 차이가 있습니다.<br>
      				<b>해당 면적 및 공사의 분량 및 공사 시기</b>를 <b>종합적으로 판단</b>하여 공사 기간이 결정됩니다.<br>
      				자세한 상담은 <b>전화</b>or<b>견적문의</b>로 문의해주시기 바랍니다.</p>
				</div>
		    </div>
		    <div class="tab">
		      	<input id="tab-three" type="checkbox" name="tabs">
		      	<label for="tab-three">공사진행 가능지역은 어디인가요?</label>
		      	<div class="tab-content">
		        	<p>
			       	<b>부산 동래구</b>에 위치한 업체이지만  경기도, 서울 등 <u>먼 지역에서도 시공 경력이 다수 있습니다.</u><br>
			       	<b>부산 주변지역</b> "방문견적, 시공" 및  <b>전지역</b> "시공"이 가능합니다.
					</p>
			  	</div>
		    </div>
		</section>
		<section id="introMap">
			<h1 class="title">찾아오시는 길</h1>
			<div id="map"></div>
		    <script>
		      function initMap() {
		    	  //35.206218, 129.059033
		        var uluru = {lat: 35.206218, lng: 129.059033};
		        var map = new google.maps.Map(document.getElementById('map'), {
		          zoom: 12,
		          center: uluru
		        });
		        var marker = new google.maps.Marker({
		          position: uluru,
		          map: map
		        });
		      }
		    </script>
		    <script async defer
		    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBv5llRXYHpa-7QigbpKO7eiet_iEQx8HE&callback=initMap">
		    </script>
		 </section>
	
	 </article>
</body>
</html>