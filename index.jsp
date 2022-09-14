<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "java.util.Date"%>
<%@ page buffer="1kb" autoFlush="true"%>

<html>
    <head>
    	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">  
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
        <title>반갑습니다. 개인 쇼핑몰입니다.</title>
        <script>
            window.open("popup/popup1.jsp","popup","width=365, height=250,left=0,top=0")
        </script>
    </head>
    <body>
        <%@ include file = "top_banner.jsp" %>
        <%@ include file = "top_menu.jsp" %>
        <%@ include file = "body_main.jsp" %>
        <%@ include file = "footer.jsp" %>
        현재 페이지 버퍼 용량 : <%= out.getBufferSize() %> <br>
        남은 페이지 버퍼 용량 : <%= out.getRemaining() %>
    </body>
</html>