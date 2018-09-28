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
        #artPreGallary {
            width: 80%;
            border: 2px solid #493918;
            margin: auto;
            display: flex;
            justify-content: center;
            padding:2em;
        }

        .secPreDetail {
            width: 250px;
            background-color: rgb(217, 255, 0);
            padding: 20px;
            margin: auto;
            display: inline-block;
            text-align: center;
        }

.gallery {
     margin:1em auto;
}
.gallery li {
  display: inline-block;
  opacity:1;
  -webkit-transition: opacity .5s ease-in-out;
  -moz-transition: opacity .5s ease-in-out;
  -o-transition: opacity .5s ease-in-out;
  transition: opacity .5s ease-in-out;
}
label {
  cursor: pointer;
  color: #fff;
  background: #4682b4;
  padding: 0.5em 1em;
  margin:0.5em;
  font-size:1.2em;
}
input {
  display: none;
}
.gallery li{
    width: 25%;
    height:20em;
    /*border: 3px solid #688E2F;*/
    background-color:#fff;
    padding: 0.5em;
}
.gallery li img{
    width: 100%;
}
/*카테고리 구별하기*/	
input#select-live:checked ~ .gallery li:not(.live-item), input#select-comm:checked ~ .gallery li:not(.comm-item) {
  opacity: 0.2;
}
    </style>
</head>
<body>
<%!
String[] title=new String[10];
String[] date=new String[10];
String[] imgNum=new String[10];
String[] pageNum=new String[10];
String[] select=new String[10];
int caseNum=9;
%>
<%
	BufferedReader reader = null;
	try {
		String filePath = application.getRealPath("Interior/info.txt");
		reader = new BufferedReader(new FileReader(filePath));
		int cnt=0;
		while (true) {
			String str = reader.readLine();
			if (str == null)
				break;
			title[cnt]=str.split("\t")[0];
			date[cnt]=str.split("\t")[1];
			imgNum[cnt]=str.split("\t")[2];
			pageNum[cnt]=str.split("\t")[3];
			select[cnt]=str.split("\t")[4];
			cnt++;
		}
	} catch (Exception e) {
		out.println(e);
	}
    %>
	<article id="artPreGallary">
        <section class="">
            <input type="radio" id="select-all" name="button">
            <label for="select-all" class="label-all">
                All
            </label>
            <input type="radio" id="select-live" name="button">
            <label for="select-live" class="label-live">
                	주거공간
            </label>
            <input type="radio" id="select-comm" name="button">
            <label for="select-comm" class="label-comm">
                	상업공간
            </label>
            
            <ul class="gallery">
            <%
            for(int i=0; i<caseNum; i++){
            	%>
            	<li class="<%=select[i]%>-item">
                    <a href="detailGallery.jsp?pageNum=<%=pageNum[i]%>&imgNum=<%=imgNum[i]%>&item=<%=select[i]%>">
                    <img src="Interior/<%=pageNum[i]%>/1.jpg"/>
                    <article class="preText">
                        <p class="title"><%=title[i]%></p>
                        <p class="date"><%=date[i]%></p>
                    </article>
                    </a>
                </li>
            	<%
            }
            %>
            </ul>
        </section>
        </article>
</body>
</html>