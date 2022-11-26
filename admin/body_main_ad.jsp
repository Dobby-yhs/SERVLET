<%@ page contentType = "text/html;charset=utf-8"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Product"%>
<%@ page import = "dao.ProductRepository"%>
<%@ page import = "java.sql.*"%>         <!-- 자바 mysql 연동 -->

<!-- <jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />	// page import와 use bean의 차이점 : scope 차이 / 위에는 껍데기 뿐, class="dao.ProductRepository"를 통해 객체 생성된 데이터 -->

<%! String greeting = "현재 페이지는 남자 옷 상품 목록입니다.";
	String tagline = "하단페이지 : 확인";%>
<div class = "jumbotron" style="text-align:center; margin: 0 350px 0 350px;">
	<div class = "container">
		<h3>
			<%=greeting%>
		</h3>
	</div>
</div>

<!-- 

//<
//%
//	ProductRepository dao = ProductRepository.getInstance();
//	ArrayList<Product> listOfProducts = dao.getAllProducts();
//%>
-->
<br><br><br> 


<div class="container">
    <div class="row" align="center">

        <%@ include file="../db/db_conn.jsp"%>
	        <%
		        String sql = "select * from product"; // 조회
		        pstmt = conn.prepareStatement(sql); // 연결 생성
		        rs = pstmt.executeQuery(); // 쿼리 실행
		        while (rs.next()) { // 결과 ResultSet 객체 반복
	        %>

        
        <div class="col-md-3">
            <div class="card bg-dark text-white">
                <img src="../image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="clothes_img">
                <div class="card-img-overlay">
                    <h5 class="card-title">	옷 상품 </h5>
                    <p class="card-text"> 출처 : 무신사 </p>
                </div>
            </div>
            <h3> <%=rs.getString("p_name")%> </h3>
            <p> <%=rs.getString("p_description")%> </p>
            <p> <%=rs.getString("p_unitPrice")%>원 </p>
            <p> <a href = "product_detail.jsp?id=<%=rs.getString("p_id")%>" class = "btn btn-secondary" role = "button"> 상품 상세 정보 &raquo; </a> </p>
        </div>
        <%
		    } // 반복문 끝난 이후 db 연결 종료	
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
    		<img src="image\top_001.jpg" class="card-img" alt="card_image" style="width:80%">
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
            <img src="image\top_002.jpg" class="card-img" alt="card_image" style="width:80%">
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
<div class = "container">
	<div class = "text-center">
		<h3>
			<%=tagline%>
		</h3>           
		<hr>
	</div>
</div>
        