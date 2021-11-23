<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("UTF-8");
	
	String filename = "";
	String realFolder = "C:\\Users\\subin\\Desktop\\Study\\JSP_Project\\ChelseaFanpage\\WebContent\\assets\\img"; //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType,
			new DefaultFileRenamePolicy());

	String pID = multi.getParameter("productId");
	String pName = multi.getParameter("name");
	String price = multi.getParameter("unitPrice");
	String pDescription = multi.getParameter("description");
	String unitsInStock = multi.getParameter("unitsInStock");

	Integer unitPrice;

	if (price.isEmpty())
		unitPrice = 0;
	else
		unitPrice = Integer.valueOf(price);
	
	Integer quantity;

	if (unitsInStock.isEmpty())
		quantity = 0;
	else
		quantity = Integer.valueOf(unitsInStock);

	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);	

	
	String sql = "select * from product where pID = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, pID);
	rs = pstmt.executeQuery();

	if (rs.next()) {
		if (fileName != null) {
			sql = "UPDATE product SET pName=?, unitPrice=?, pDescription=?, filename=?, quantity=? WHERE pID=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pName);
			pstmt.setInt(2, unitPrice);
			pstmt.setString(3, pDescription);
			pstmt.setString(4, fileName);
			pstmt.setInt(5, quantity);
			pstmt.setString(6, pID);
			pstmt.executeUpdate();
			
		} else {
			sql = "UPDATE product SET pName=?, unitPrice=?, pDescription=?, quantity=? WHERE pID=?";
			pstmt.setString(1, pName);
			pstmt.setInt(2, unitPrice);
			pstmt.setString(3, pDescription);
			pstmt.setInt(4, quantity);
			pstmt.setString(5, pID);
			pstmt.executeUpdate();
		}
	}
	if (rs != null)
		rs.close();
 	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();

	response.sendRedirect("editProduct.jsp?edit=update");
%>


