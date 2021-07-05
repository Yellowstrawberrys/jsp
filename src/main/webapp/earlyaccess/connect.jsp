<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="/thdis/css/main.css"> 
<head>
<meta charset="EUC-KR">
<title>Thdis 서버</title>
</head>
	<body>
	<div align="left">
		<a href="/thdis/"><img src="/thdis/img/logo.png" width=70 align="left"><h>Thdis Server</h></a>
	</div>
		<%
		String html = "";
		boolean isgood;
		try{
			isgood = request.getParameter("really").equals("on");
		}catch(java.lang.NullPointerException e){
			isgood = false;
		}
		//sql 넣을(?) 예정
			if(isgood){
				String htmls = "<h1>얼리 엑세스에 성공적으로 참가하셨습니다!</h1><t>2초 뒤에 메인페이지로 리다이렉트 됩니다</t>";
				html = htmls;
			}else{
				String htmls = "<h1>성공적으로 얼리 엑세스 신청에 취소 하였습니다!</h1><t>2초 뒤에 메인페이지로 리다이렉트 됩니다</t>";
				html = htmls;
			}
		%>
		<%=html %>
	</body>
</html>
<% response.setHeader("Refresh", "2;url=/thdis/"); %>