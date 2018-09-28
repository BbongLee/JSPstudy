<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>index</title>
<style>
#artGallary {
	position: static;
	margin:auto;
}

.row {
	display: flex; /* equal height of the children */
	margin:auto;
	margin-bottom:0.5em;
	width:85%;
}

.col {
	 flex: 1; /* additionally, equal width */
 	 margin : 0 0.5em;
 	 height:100%;
 	 
}
.col img{
	width:100%;
}
.text{
	background: #1D2341;  /* fallback for old browsers */
	
	color:#fff;
	padding:30px;
	font-size:1.5em;
	text-align:right;
}

.text p{
	font-size:1.9em;
}

.text b{
 	background: linear-gradient(to right, #FFFFFF, #FFEFBA);
  	-webkit-background-clip: text;
  	-webkit-text-fill-color: transparent;
    font-size: 130%;

}
.hov{
transition: transform .2s;
}
.hov:hover{
opacity: 0.6;
transform: scale(1.1);
}

</style>
</head>
<body>
<script>

</script>
	<article id="artGallery">
	<div class="row">
		<div class="col">
			<div class="text">
			<b>미소</b>가 끊이지 않는<br>공간을 만듭니다<br><br><br>
			<p><b>미소</b>인테리어</p>
			</div>
		</div>
		<div class="col">
			<img src="Interior/1/4.jpg" class="hov">
		</div>
		<div class="col">
			<img src="Interior/1/8.jpg" class="hov">
		</div>
	</div>
	<div class="row">
		<div class="col">
		<img src="Interior/2/3.jpg" class="hov">
		</div>
		<div class="col">
		<img src="Interior/2/6.jpg" class="hov">
		</div>
	</div>
	<div class="row">
		<div class="col">
		<img src="Interior/3/4.jpg" class="hov">
		</div>
		<div class="col">
		<img src="Interior/2/1.jpg" class="hov">
		</div>
		<div class="col">
		<img src="Interior/4/4.jpg" class="hov">
		</div>
	</div>
</article>
</body>
</html>