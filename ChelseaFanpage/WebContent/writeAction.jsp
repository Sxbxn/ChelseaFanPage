<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.BoardDAO" %>    
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="board" class="board.Board" scope="page" />
<jsp:setProperty name="board" property="bContent" />

<!DOCTYPE html>
<html lang="en">
	<%@ include file="header.jsp"%>
	
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<%
		if(userID == null) { // 사용자가 없으면 
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 해야 합니다')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		} else { // 사용자가 있으면  
			if (board.getbContent() == null) { // 보드 객체의 값이 없으면 
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('응원의 한마디를 작성해주세요!')");
				script.println("history.back()");
				script.println("</script>");
			} else { // 보드 객체 값이 있으면, 
				BoardDAO boardDAO = new BoardDAO();
				int result = boardDAO.write(board.getbContent(), userID); // 있는 값을 받아와서 DAO에 write(DB에 저장)
				
				if (result == -1) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('작성에 실패하였습니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
				else {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'post.jsp'");
					script.println("</script>");
				}
			}	
		}
		
	%>
</body>
</html>