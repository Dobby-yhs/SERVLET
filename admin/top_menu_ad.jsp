<%@ page contentType = "text/html;charset=utf-8"%>


<nav class="navbar navbar-expand navbar-white bg-white">
	<div class="dropdown">
		<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        	카테고리
        </button>
    	<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="/admin/category_ad/body_zipup_ad.jsp">집업</a>
            <a class="dropdown-item" href="/admin/category_ad/body_mtm_ad.jsp">맨투맨</a>
            <a class="dropdown-item" href="/admin/category_ad/body_shirt_ad.jsp">셔츠</a>
            <a class="dropdown-item" href="/admin/category_ad/body_coat_ad.jsp">코트</a>
            <a class="dropdown-item" href="/admin/category_ad/body_cardigan_ad.jsp">가디건</a>
            <a class="dropdown-item" href="/admin/category_ad/body_jacket_ad.jsp">자켓</a>
            <a class="dropdown-item" href="/admin/category_ad/body_knit_ad.jsp">니트</a>
            <a class="dropdown-item" href="/admin/category_ad/body_blouson_ad.jsp">블루종</a>
            <a class="dropdown-item" href="/admin/category_ad/body_blazer_ad.jsp">블레이저</a>

        </div>
    </div>
  	<div>
        <img src="image\logo.jpg" class="img-fluid" alt="main_image" style="width:150px" style="height:70px">
    </div>
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="./index_ad.jsp">기본 홈</a>
            <a class="navbar-brand" href="/member/member_view.jsp">회원 관리</a>
            <a class="navbar-brand" href="/admin/product_add.jsp">상품 등록</a>
            <a class="navbar-brand" href="/admin/product_edit.jsp?edit=update.jsp">상품 수정</a>
            <a class="navbar-brand" href="/admin/product_edit_del.jsp">상품 삭제</a>
            <a class="navbar-brand" href="/index.jsp">일반 모드</a>
            <a class="btn btn-secondary" href="../login/logout.jsp">로그아웃</a>
        </div>
        
    </div>
</nav>





