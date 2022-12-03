<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<%@ include file="../db/db_conn.jsp" %>
<%
	String memberId = request.getParameter("id");

	String sql = "select * from product";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();

	if (rs.next()) {
        sql = "delete from member WHERE id=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, memberId);
        pstmt.executeUpdate();
	}

	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();
	if (conn != null)
		conn.close();

	response.sendRedirect("member_view.jsp");
%>