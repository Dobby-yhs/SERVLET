<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
	Date nowDate = new Date();
	SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd");    
%>

<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>상품 수정</title>
    </head>
    <body>
        <jsp:include page="../top_menu.jsp" />
        <div class="jumbotron">
	        <div class="container">
		        <h1 class="display-3">상품 수정</h1>
	        </div>
        </div>
        <%@ include file="../db/db_conn.jsp"%>
        <%
	        String memberId = request.getParameter("id");

	        String sql = "select * from member where id = ?";
	        pstmt = conn.prepareStatement(sql);
	        pstmt.setString(1, memberId);
	        rs = pstmt.executeQuery();
	        if (rs.next()) {
        %>
        <div class="container">
            <div class="row">
	            <div class="col-md-8">
	                <form action="member_update_process.jsp" class="form-horizontal" method="post" enctype ="multipart/form-data">
	                <div class="form-group row">
		                <label class="col-sm-3">아이디</label>
		                <div class="col-sm-3">            
			                <input type="text" id="memberId" name="memberId" class="form-control" value='<%=rs.getString("id")%>' readonly />
		                </div>
	                </div>
	                <div class="form-group row">
		                <label class="col-sm-3">패스워드</label>
		                <div class="col-sm-3">
			                <input type="password" id="memberPassword" name="memberPassword" class="form-control" value='<%=rs.getString("password")%>'>
		                </div>
	                </div>
                    <!--
	                <div class="form-group row">
		                <label class="col-sm-3">패스워드 재입력</label>
		                <div class="col-sm-3">
			                <input type="password" id="re_Password" name="re_Password" class="form-control">
		                </div>
	                </div>
                    -->
                    <div class="form-group row">
		                <label class="col-sm-3">이름</label>
		                <div class="col-sm-3">
			                <input type="text" id="memberName" name="memberName"class="form-control" value='<%=rs.getString("name")%>'>
		                </div>
	                </div>
	                <div class="form-group row">
		                <label class="col-sm-3">성별</label>
		                <div class="col-sm-3">
                            <select type="text" id="memberGender" name="memberGender" class="form-control" value='<%=rs.getString("gender")%>'>
                                <option value="남"> 남 </option>
                                <option value="여"> 여 </option>
                            </select>
		                </div>
	                </div>
                    <div class="form-group row">
		                <label class="col-sm-3">생년월일</label>
		                <div class="col-sm-3">
			                <input type="date" id="memberBirth" name="memberBirth" class="form-control" value='<%=rs.getString("birth")%>'>
		                </div>
	                </div>
	                <div class="form-group row">
		                <label class="col-sm-3">메일주소</label>
		                <div class="col-sm-4">
			                <input type="text" id="memberMail" name="memberMail" class="form-control" value='<%=rs.getString("mail")%>'>
		                </div>
	                </div>
	                <div class="form-group row">
		                <label class="col-sm-3">폰번호</label>
		                <div class="col-sm-4">
			                <input type="text" id="memberPhone" name="memberPhone" class="form-control" value='<%=rs.getString("phone")%>'>
		                </div>
	                </div>
                        <div class="form-group row">
		                <label class="col-sm-3">주소</label>
		                <div class="col-sm-5">
			                <input type="text" id="memberAddress" name="memberAddress" class="form-control" value='<%=rs.getString("address")%>'>
		                </div>
	                </div>
	                <div class="form-group row">
		                <div class="col-sm-offset-2 col-sm-10 ">
			                <input type="submit" class="btn btn-success" value="수정">
		                </div>
	                </div>
	            </form>
	        </div>
        </div>
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
    <hr>
    <jsp:include page="../footer.jsp" />
    </body>
</html>