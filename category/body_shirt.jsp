<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import = "java.util.Date"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Product"%>
<%@ page import = "dao.ProductRepository"%>
<%@ page import = "java.sql.*"%>         <!-- 자바 mysql 연동 -->

<html>
    <head>
    	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>반갑습니다. 개인 쇼핑몰입니다.</title>
    </head>
    <body>
        <%@ include file = "/top_banner.jsp" %>
        <%@ include file = "/top_menu.jsp" %>
        <%! String greeting = "현재 페이지는 카테고리 : 셔츠 목록입니다."; %>
        <div class = "jumbotron" style="text-align:center; margin: 0 350px 0 350px;">
            <div class = "container">
                <h3>
                    <%=greeting%>
                </h3>
            </div>
        </div>

        <br><br><br> 


        <div class="container">
            <div class="row" align="center">

            <%@ include file="/db/db_conn.jsp"%>
	        <%
		        String sql = "select * from product where p_category = 'Shirt'"; // 조회
		        pstmt = conn.prepareStatement(sql); // 연결 생성
		        rs = pstmt.executeQuery(); // 쿼리 실행
		        while (rs.next()) { // 결과 ResultSet 객체 반복
	        %>

        
                <div class="col-md-3">
                    <div class="card bg-dark text-white">
                        <img src="/image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="clothes_img">
                        <div class="card-img-overlay">
                            <h5 class="card-title">	옷 상품 </h5>
                            <p class="card-text"> 출처 : 무신사 </p>
                        </div>
                    </div>
                    <h3> <%=rs.getString("p_name")%> </h3>
                    <p> <%=rs.getString("p_description")%> </p>
                    <p> <%=rs.getString("p_unitPrice")%>원 </p>
                    <p> <a href = "/product_detail.jsp?id=<%=rs.getString("p_id")%>" class = "btn btn-secondary" role = "button"> 상품 상세 정보 &raquo; </a> </p>
                </div>
            <%
                }
                if (rs != null)
                    rs.close();
                if (pstmt != null)
     			    pstmt.close();
 		        if (conn != null)
		    	    conn.close();
	        %> 
            </div>

        </div>

        <hr>

        <div class="container">
            <div class="row">
                <div class="col-6">
                    <img src="/image/top_001.jpg" class="card-img" alt="card_image" style="width:80%">
                    <div class="card-img-bottom">
                        <h5 class="card-title" style="color:black">
                            니트 한정판매 이벤트
                        </h5>
                        <p class="card-text" style="color:black">
                            출처 : 무신사
                        </p>
                    </div>
                </div>
                <div class="col-6">
                    <img src="/image/top_002.jpg" class="card-img" alt="card_image" style="width:80%">
                    <div class="card-img-bottom">
                        <h5 class="card-title" style="color:black">
                            남자 1위 상품
                        </h5>
                        <p class="card-text" style="color:black">
                            출처 : 무신사
                        </p>
                    </div>
                </div>    
            </div>
        </div>


        <div class="list-group">
            <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
                그레이 웨일 더블 코트 그레이
            </a>
            <a href="#" class="list-group-item list-group-item-action">
                글램 트러커 재킷 버건디
            </a>
            <a href="#" class="list-group-item list-group-item-action">
                코듀로이 컷오프 크롭 셔츠
            </a>
        </div>
        <%@ include file = "/footer.jsp" %>
    </body>
</html>