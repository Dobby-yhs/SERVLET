<%@ page contentType = "text/html;charset=utf-8" %>

<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script type = "text/javascript" src = "../js/validation.js"> </script>
        <title>상품 등록</title>
    </head>
    <body>
        <jsp:include page="top_menu_ad.jsp"/>
        <div class="jubotron">
            <div class="container">
                <h1 class="dsplay-3">
                    상품 등록
                </h1>
            </div>
        </div>
        <div class="container">
            <form name="newProduct" action="product_add_process.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
                <div class="form-group row">
                    <label class="col-sm-2">상품 코드</label>
                    <div class="col-sm-3">
                        <input type="text" id="productId" name="productId" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">상품명</label>
                    <div class="col-sm-3">
                        <input type="text" id="name" name="name" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">가격</label>
                    <div class="col-sm-3">
                        <input type="text" id="unitPrice" name="unitPrice" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">상세 정보</label>
                    <div class="col-sm-5">
                        <textarea id="description" name="description" cols="50" rows="2" class="form-control"> </textarea>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">제조사</label>
                    <div class="col-sm-3">
                        <input type="text" id="manufacturer" name="manufacturer" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">분류</label>
                    <div class="col-sm-3">
                        <select id="category" name="category" class="form-control">
                            <option value="ZipUp">집업</option>
                            <option value="Mtm">맨투맨</option>
                            <option value="Shirt">셔츠</option>
                            <option value="Coat">코트</option>
                            <option value="Cardigan">가디건</option>
                            <option value="Jacket">자켓</option>
                            <option value="Knit">니트</option>
                            <option value="Blouson">블루종</option>
                            <option value="Blazer">블레이저</option>
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">재고 수</label>
                    <div class="col-sm-3">
                        <input type="text" id="unitslnStock" name="unitslnStock" class="form-control">
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">상태</label>
                    <div class="col-sm-3">
                        <input type="radio" id="condition" name="condition" value="New"> 신규
                        <input type="radio" id="condition" name="condition" value="Old"> 중고
                        <input type="radio" id="condition" name="condition" value="Refurbished"> 재생
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-2">이미지</label>
                    <div class="col-sm-5">
                        <input type="file" id="productImage" name="productImage" class="form-control">
                    </div>
                </div>
                
                <div class = "form-group row">
                    <div class = "col-sm-offset-2 col-sm-10">
                        <input type = "button" class="btn btn-primary" value="등록" onclick="CheckAddProduct()">
                        <a href="../login/logout.jsp" class="btn btn-sm btn-success pull-right">로그아웃</a>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>