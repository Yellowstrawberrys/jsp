<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<head>
<meta charset="EUC-KR">
<title>얼리 엑세스 - Thdis 서버</title>
</head>
<link rel="stylesheet" href="/thdis/css/main.css"> 
	<body>
		<div align="left">
		<a href="/thdis/"><img src="/thdis/img/logo.png" width=70 align="left"><h>Thdis Server</h></a>
		</div>
		<br/>
		<div style="border-radius: 40px;border: 2px solid #ffffff; width:500px; height: auto; text-align: center; margin:0 auto;">
		<h1>&#50620;&#47532; &#50641;&#49464;&#49828; &#49888;&#52397;&#54616;&#44592;</h1>
    	<form action = "really.jsp" method = "GET">
         	<t>&#47560;&#51064;&#53356;&#47000;&#54532;&#53944; &#45769;&#45348;&#51076;: 
         	<%
         	boolean iserror;
         	String ec = null;
         	try{
         		String errorcode = request.getParameter("error");
         		if(errorcode.equals(null) || errorcode.equals("null"))
         			iserror=false;
         		else
         			iserror=true;
         		ec = errorcode;
         	}catch(NullPointerException e){
         		iserror=false;
         	} 
         	%>
         	<%
         	String html = "<input type = \"text\" name = \"mc_name\" style=\"border: 2px solid white \"></t>";
         	if(iserror)
         		html = "<input type = \"text\" name = \"mc_name\" style=\"border: 2px solid red \"></t>";
         	else
         		html = "<input type = \"text\" name = \"mc_name\" style=\"border: 2px solid white \"></t>";
         	%>
         	<%=html %>
         	<br/><br/>
         	&nbsp&nbsp<input type = "submit" value = "&#49888;&#52397;&#54616;&#44592;" />
         	<br/>
         	<br/>
      	</form>
      	</div>
	</body>
</html>