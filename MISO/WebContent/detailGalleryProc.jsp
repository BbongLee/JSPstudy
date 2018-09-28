<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
*{
margin-left:auto; margin-right:auto;
}
		#detailGall {
            width: 80%;
            margin: auto;
            padding-bottom: 20px;
            border: 2px solid #fff;
        }

        #info {
            padding: 20px;
            background-color:white;
            margin-bottom:1em;
            font-size:1.1em;
        }

        .content {
            border: 2px solid rgb(35, 228, 61);
        }


        .mySlides {
            display: none;
            margin:auto;
        }

       .image {
       		vertical-align: middle;
            height:600px;
            margin:auto;
        }
        /* Slideshow container */

        .slideshow-container {
            max-width: 70%;
            position: relative;
            margin: 20px auto;
        }
		.mySlides fade{
		margin:0px auto;
		}
        .prev,
        .next {
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top:-20px; 
            color: rgba(0, 23, 128);
            font-weight: bold;
            font-size: 30px;
        }

        .prev {
            left: -150px;
            border-radius: 3px 0 0 3px;
        }
        .next {
            right: -150px;
        }

     
        .prev:hover,
        .next:hover {
            color: rgba(0, 23, 128, 0.8);
        }

        .text {
            color: black;
            font-size: 1.1em;
            padding: 20px;
            top: -100px;
            width: 100%;
            background-color:white;
            text-align: center;
        }

        /* Number text (1/3 etc) */

        .numbertext {
            color: #f2f2f2;
            font-size: 1em;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The minis/bullets/indicators */

        .mini {
            cursor: pointer;
            height: 50px;
            display: inline-block;
            margin: 5px;
        }

        /* Fading animation */

        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @-webkit-keyframes fade {
            from {
                opacity: .4
            }
            to {
                opacity: 1
            }
        }

        @keyframes fade {
            from {
                opacity: .4
            }
            to {
                opacity: 1
            }
        }

        /* On smaller screens, decrease text size */

        @media only screen and (max-width: 300px) {
            .prev,
            .next,
            .text {
                font-size: 15px
            }
        }
        
        .lab{ 
        display:inline-block;
        width:100px;
        margin : 10px 0px 5px 20px;
        }
    </style>
</head>
<body>
<%
int pageNum=Integer.parseInt(request.getParameter("pageNum"));
int imgNum=Integer.parseInt(request.getParameter("imgNum"));
String item = request.getParameter("item");
%>
<script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
        	  var i;
        	  var slides = document.getElementsByClassName("mySlides");
        	  var minis = document.getElementsByClassName("mini");
        	  if (n > slides.length) {slideIndex = 1}    
        	  if (n < 1) {slideIndex = slides.length}
        	  for (i = 0; i < slides.length; i++) {
        	      slides[i].style.display = "none";  
        	  }
        	  for (i = 0; i < minis.length; i++) {
        	      minis[i].className = minis[i].className.replace(" active", "");
        	  }
        	  slides[slideIndex-1].style.display = "block";  
        	  minis[slideIndex-1].className += " active";
        	}
    </script>
    <%
    BufferedReader reader = null;
    String title="";
    String date="";
    String method="";
    String size="";
    String[] imgText = new String[imgNum];
	try {
		String filePath = application.getRealPath("/Interior/" + pageNum + ".txt");
		reader = new BufferedReader(new FileReader(filePath));
		int cnt=0;
		int imgCnt=0;
		while (true) {
			String str = reader.readLine();
			if (str == null)
				break;
			if(cnt==0){
				title=str;
			}else if(cnt==1){
				date=str;
			}else if(cnt==2){
				method=str;
			}else if(cnt==3){
				size=str;
			}else{
				imgText[imgCnt]=str;
				imgCnt++;
			}
			cnt++;
		}
	} catch (Exception e) {
		//out.println(e);
	}
    %>
    <article id="detailGall">
        <div id="info">
            <label class="lab">제목</label><span><%=title%></span><br>
            <label class="lab">날짜</label><span><%=date%></span><br>
            <label class="lab">시공 방법</label><span><%=method%></span><br>
            <label class="lab">공사면적</label><span><%=size%></span><br>
        </div>
        <div style="text-align:center">
        <%
		for(int i=1;i<=imgNum;i++){
		%>
		<img src="Interior/<%=pageNum%>/<%=i%>.jpg" onclick="currentSlide(<%=i%>)" class="mini">
        <%
		}
		%> 
        </div>
        <center>
        <div class="slideshow-container">
        	<div class="mySlides fade" style="display:block;">
                <div class="numbertext"><%=1%> / <%=imgNum %></div>
                <img src="Interior/<%=pageNum%>/<%=1%>.jpg" class="image" >
                <div class="text"><%=imgText[0]%></div>
        	</div>
		<%
		for(int i=1;i<imgNum;i++){
		%>
            <div class="mySlides fade">
                <div class="numbertext"><%=i+1%> / <%=imgNum %></div>
                <img src="Interior/<%=pageNum%>/<%=i+1%>.jpg" class="image">
                <div class="text"><%=imgText[i]%></div>
            </div>
        <%
		}
		%> 
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
</center>
        </div>
    </article>
</body>
</html>