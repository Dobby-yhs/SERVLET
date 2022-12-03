<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import ="dto.Product"%>
<%@ page import ="dao.ProductRepository"%>
<%@ page import ="com.oreilly.servlet.*"%>
<%@ page import ="com.oreilly.servlet.multipart.*"%>
<%@ page import ="java.util.Enumeration"%>
<%@ page import ="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>


<%
    request.setCharacterEncoding("UTF-8");

    String realFolder = request.getServletContext().getRealPath("image");
    String encType = "utf-8";
    int maxSize = 5 * 1024 * 1024;

    DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);


    String memberId = multi.getParameter("memberId");
    String memberPassword = multi.getParameter("memberPassword");
    String memberName = multi.getParameter("memberName");
    String memberGender = multi.getParameter("memberGender");
    String memberBirth= multi.getParameter("memberBirth");
    String memberMail = multi.getParameter("memberMail");
    String memberPhone = multi.getParameter("memberPhone");
    String memberAddress = multi.getParameter("memberAddress");
    java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy/MM/dd(HH:mm:ss)");
    String regist_day = formatter.format(new java.util.Date());      

    String sql = "insert into member values(?,?,?,?,?,?,?,?,?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, memberId);
    pstmt.setString(2, memberPassword);
    pstmt.setString(3, memberName);
    pstmt.setString(4, memberGender);
    pstmt.setString(5, memberBirth);
    pstmt.setString(6, memberMail);
    pstmt.setString(7, memberPhone);
    pstmt.setString(8, memberAddress);
    pstmt.setString(9, regist_day);
    pstmt.executeUpdate();
   
    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();

    response.sendRedirect("../index.jsp");
%>