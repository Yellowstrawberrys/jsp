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
<title>Thdis ����</title>
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
		//sql ����(?) ����
			if(isgood){
				String htmls = "<h1>�� �������� ���������� �����ϼ̽��ϴ�!</h1><t>2�� �ڿ� ������������ �����̷�Ʈ �˴ϴ�</t>";
				html = htmls;
			}else{
				String htmls = "<h1>���������� �� ������ ��û�� ��� �Ͽ����ϴ�!</h1><t>2�� �ڿ� ������������ �����̷�Ʈ �˴ϴ�</t>";
				html = htmls;
			}
		%>
		<%=html %>
	</body>
</html>
<% response.setHeader("Refresh", "2;url=/thdis/"); %>