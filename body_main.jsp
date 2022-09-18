<%@ page contentType = "text/html;charset=utf-8"%>

<%! String greeting = "꾸팡.COM에 오신것을 환영합니다.";
	String tagline = "하단페이지 : 확인";%>
<div class = "jumbotron" style="text-align:center; margin: 0 350px 0 350px;">
	<div class = "container">
		<h1 class="display-3">
			<%=greeting%>
		</h1>
	</div>
</div>

<br><br><br>

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
        