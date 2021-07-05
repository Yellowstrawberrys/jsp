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
<meta charset="EUC-KR">
<style type="text/css">
  h{
    font-family: 'Do Hyeon', sans-serif;
    font-size: 300%;
  }
  h1{
    font-family: 'Do Hyeon', sans-serif;
    font-size: 200%;
  }
  t{
    font-family: 'Do Hyeon', sans-serif;
    font-size: 100%;
  }
</style>
<title>이 유저가 맞습니까 - Thdis 서버</title>
</head>
<body>
	<div style="">
		<img src="/thdis/img/logo.png" width=5%><h> Thdis &#49436;&#48260;</h>
	</div>
	<hr/>
	<br/>
	<%JsonReader jsr = new JsonReader();
    String uuid = null;
    try{
    	JSONObject j = jsr.readJsonFromUrl("https://api.mojang.com/users/profiles/minecraft/"+request.getParameter("mc_name"));
    	uuid = j.get("id").toString();
    	System.out.println(uuid);
    }catch(IOException e){
    	System.out.println(e);	
    } %>
	<form action = "connect.jsp" method = "GET">
        <h1>&#51060; &#44228;&#51221;&#51004;&#47196; &#44228;&#49549; &#54616;&#49884;&#44192;&#49845;&#45768;&#44620;?</h1>
        <img src="https://mc-heads.net/head/<%= request.getParameter("mc_name")%>/left" width=5% align="left">
        <t>플레이어 이름: <%=request.getParameter("mc_name") %></t>
        <br/>
        <t>플레이어 uuid: <%=get.uuid(request.getParameter("mc_name")) %>
        <br/>
        <t>맞습니까?</t><input type = "checkbox" name = "really">
        <br/>
        <br/>
    	<input type = "submit" value = "&#49888;&#52397;&#54616;&#44592;" />
    </form>
</body>
</html>