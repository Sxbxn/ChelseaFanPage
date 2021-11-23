<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="dao.ProductRepository"%>
<%@ page import="dto.Product"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp" %>

<!DOCTYPE html>
<html lang="en">
	<%@ include file="header.jsp"%>

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
	
	ProductRepository dao = ProductRepository.getInstance();

	String sql = "insert into product values(?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, pID);
	pstmt.setString(2, pName);
	pstmt.setInt(3, unitPrice);
	pstmt.setString(4, pDescription);
	pstmt.setString(5, fileName);
	pstmt.setInt(6, quantity);
	pstmt.executeUpdate();
	
	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();
	
 	response.sendRedirect("products.jsp");
%>
