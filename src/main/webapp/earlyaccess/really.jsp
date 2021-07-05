<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<%@page import="org.json.JSONObject "%>
<%@page import="java.io.IOException "%>
<%@ page import="main.*"%>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="/thdis/css/main.css"> 
<meta charset="EUC-KR">
<title>이 유저가 맞습니까 - Thdis 서버</title>
</head>
<body>
	<div align="left">
		<a href="/thdis/"><img src="/thdis/img/logo.png" width=70 align="left"><h>Thdis Server</h></a>
	</div>
	<br/>
	<%JsonReader jsr = new JsonReader(); 
    String uuid = null;
    try{
    	JSONObject j = jsr.readJsonFromUrl("https://api.mojang.com/users/profiles/minecraft/"+request.getParameter("mc_name"));
    	uuid = j.get("id").toString();
    }catch(IOException e){
    	response.setHeader("Refresh", "0;url=/thdis/earlyaccess/?error=nuser");
    }catch(NullPointerException e){
    	response.setHeader("Refresh", "0;url=/thdis/earlyaccess/?error=nuser");
    }
    %>
    <div style="border-radius: 40px;border: 2px solid #ffffff; width:500px; height: 219px; margin:0 auto;">
		<form action = "connect.jsp" method = "GET">
        	<h1 class="m">&#51060; &#44228;&#51221;&#51004;&#47196; &#44228;&#49549; &#54616;&#49884;&#44192;&#49845;&#45768;&#44620;?</h1>
        	<img src="https://mc-heads.net/head/<%= request.getParameter("mc_name")%>/left" width=60px align="left">
        	&nbsp <t>플레이어 이름: <%=request.getParameter("mc_name") %></t>
        	<br/>
        	&nbsp <t>플레이어 uuid: <%=get.uuid(request.getParameter("mc_name")) %></t>
        	<br/>
        	&nbsp <t>맞습니까?</t><input type = "checkbox" name = "really">
        	<br/>
        	<br/>
    		&nbsp <input type = "submit" value = "&#49888;&#52397;&#54616;&#44592;" style="text-align: center;"/>
    		<br/>
    		<br/>
    	</form>
    </div>
</body>
</html>