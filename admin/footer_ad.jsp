<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import = "example.*" %>	<%-- example.ShopTime으로 해도 무방 --%>

<footer class = "container">
	<p>
        &copy; 쇼핑몰 대표 : 윤해상, 고유번호 : 20191002, 연락처 : jjj1299@sungkyul.ac.kr <br>

    <%
        ShopTime time = new ShopTime();
    %>
    오늘 날짜와 시간 : <%=time.timenow()%>
   
           
	
       </p>
</footer>