<%@page import="java.util.Arrays"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>YOLO 순위</h1>
<%

// 리스트 불러오기 !!!
BufferedReader reader = null;
BufferedReader readerRe = null;
	try {
		String filePath = application.getRealPath("/WEB-INF/bbs/checkList.txt");
		reader = new BufferedReader(new FileReader(filePath));
		int countR=0;
		while (true) {
			String str = reader.readLine();
			if (str == null)
				break;
			countR++;
		}
		String[] names=new String[countR];
		int[] rank=new int[countR];
		int[] checks=new int[countR];
		Arrays.fill(names, "");
		Arrays.fill(rank, 1);
		Arrays.fill(checks, 0);
		int index=0;
		
		String filePathRe = application.getRealPath("/WEB-INF/bbs/checkList.txt");
		readerRe = new BufferedReader(new FileReader(filePathRe));
		while (true) {
			String strRe = readerRe.readLine();
			//out.print("dddd  : "+strRe);
			if (strRe == null)
				break;
			names[index] = strRe.split("\t")[0];
			checks[index] = Integer.parseInt(strRe.split("\t")[1]);
			out.print("이름 : "+names[index]+" "+checks[index]+"<br>");
			index++;
		}

		//나보다 높은 점수가 있으면 +1
		for(int i=0 ; i<countR ; i++)
		{
			for(int j=0 ; j<countR; j++)
			{
				if(checks[i] < checks[j])
				{
					++rank[i];
				}
			}
		}
	
		String[] score = new String[countR];
		for(int i=0 ; i<countR ; i++)
		{
			score[i] = rank[i]+"<label class='scoreName'>이름</label>"+names[i]+"<label class='scoreName'>점수</label>"+checks[i];
		}
	} catch (Exception e) {
		out.println(e);
	}


%>
</body>
</html>
