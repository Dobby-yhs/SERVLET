<%@ page contentType = "text/html;charset=utf-8"%>

<%! String greeting = "꾸팡.COM에 오신것을 환영합니다.";
	String tagline = "하단페이지 : 확인";%>
<div class = "jumbotron">
	<div class = "container">
		<h1 class="display-3">
			<%=greeting%>
		</h1>
	</div>
</div>


<div class="card bg-dark text-white" style="width:600px">
    <img src="image\top.jpg" class="card-img" alt="card_image" style="width:100%">
    <div class="card-img-overlay">
		<h5 class="card-title">
            그래픽 카드 이벤트
        </h5>
        <p class="card-text">
            출처 : 다나와
        </p>
    </div>
</div>


<div class="list-group">
    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
    	지포스 3060 시리즈
    </a>
    <a href="#" class="list-group-item list-group-item-action">
        지포스 3070 시리즈
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
        