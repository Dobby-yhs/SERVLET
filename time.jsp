<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
	Date nowDate = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
    
    Date nextDate = new Date(
        nowDate.getYear(),
        nowDate.getMonth(),
        nowDate.getDate() + 1
    );
    
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>오늘의 날짜와 시간</title>
</head>
<body>
    
    <%= sf.format(nextDate) %> <br>
    
</body>
</html>