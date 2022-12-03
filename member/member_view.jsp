<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.sql.*"%>

<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script type ="text/javascript" src ="../js/validation.js"></script>
        <title>회원 관리</title>
        
        <script type="text/javascript">
	        function deleteConfirm(id) {
		        if (confirm("해당 계정을 삭제합니다!!") == true)
		           location.href = "member_delete_process.jsp?id=" + id;
		        else
		           return;
	        }
        </script>
    </head>
    <body>
        <jsp:include page="/admin/top_menu_ad.jsp" />
        <div class="jumbotron">
	           <div class="container">
		            <h1 class="display-3">회원 관리</h1>
	           </div>
	    </div>
    
	    <div class="container">
	        <div class="row" align="left">
		    <%@ include file="../db/db_conn.jsp"%>
		    <%
    			String sql = "select * from member";
       			pstmt = conn.prepareStatement(sql);
    			rs = pstmt.executeQuery();
    			while (rs.next()) {
	    	%>
		        <div class="col-md-4">
		            <p>ID  : <%=rs.getString("id")%></p>
		            <p>이름 : <%=rs.getString("name")%></p>
		            <p>성별 : <%=rs.getString("gender")%></p>
		            <p>생년월일 :<%=rs.getString("birth")%></p>
                    <p>메일 : <%=rs.getString("mail")%></p>
                    <p>핸드폰 번호 : <%=rs.getString("phone")%></p>
                    <p>주소 : <%=rs.getString("address")%></p>
                    <p>등록 날짜 : <%=rs.getString("regist_day")%></p>
                    <p>
                        <a href="./member_update.jsp?id=<%=rs.getString("id")%>" class="btn btn-success" role="button"> 수정 &raquo;></a>
                        <input type="submit" class="btn btn-danger" href="./member_delete_process.jsp" value="삭제 &raquo;>" onclick="deleteConfirm('<%=rs.getString("id")%>')">\
                    </p>                
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
	        <hr>
        </div>
        <jsp:include page="../admin/footer_ad.jsp" />
    </body>
</html>


