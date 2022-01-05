<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.BoardDAO" %>
<%@ page import="board.Board" %>
<%@ page import="java.util.ArrayList" %>    

<!DOCTYPE html>
<html>
	<%@ include file="header.jsp"%>
	
	<%
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	
	<body>
		<header class="masthead" style="background-image: url('assets/img/post.jpg')">
			<div class="container position-relative px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
		                <div class="site-heading">
		                    <h1>응원의 한마디</h1>
		                    <br>
							<span class="subheading">응원의 한마디 남겨주세요!</span>
						</div>
		            </div>
		        </div>
		    </div>
		</header>
        
        <!-- Post Content-->

		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<table class="table table-striped" style = "margin-left:auto; margin-right:auto; text-align:center; border: 3px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #c2e9fb; text-align: center;">번호</th>
							<th style="background-color: #a1c4fd; text-align: center;">한마디</th>
							<th style="background-color: #c2e9fb; text-align: center;">작성자</th>
							<th style="background-color: #a1c4fd; text-align: center;">작성날짜</th>
						</tr>
				 	</thead>
				 	<tbody>
				 		<%
				 			BoardDAO boardDAO = new BoardDAO();
				 			ArrayList<Board> list = boardDAO.getList(pageNumber);
				 			for(int i = 0; i < list.size(); i++) {				 			
				 		%>
						<tr>
							<td><%= list.get(i).getbID() %></td>
							<td><%= list.get(i).getbContent() %></td>
							<td><%= list.get(i).getUserID() %></td>
							<td><%= list.get(i).getbDate().substring(0, 11) + list.get(i).getbDate().substring(11, 13) + "시 " + list.get(i).getbDate().substring(14, 16) + "분 "%></td>														
						</tr>						 	
						<%
				 			}
						%>	
				 	</tbody>	
				</table>
				<table class="table" style = "margin-left:auto; margin-right:auto; text-align:center;">
				<%
					if(pageNumber != 1) {
				%>
					<a href="post.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arraw-left" style="margin-right:auto; width:8%; background-color: #a1c4fd; color:#000000;">다음</a> 
				<%
					} if(boardDAO.nextPage(pageNumber + 1)) {
				%>
					<a href="post.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arraw-right" style="margin-right:auto; width:8%; background-color: #a1c4fd; color:#000000;">이전</a>
				<%
					}
				%> 
					<input type=button value="글쓰기" style = "margin-left:auto; width:18%; background-color: #a1c4fd; color:#000000;" OnClick="window.location='write.jsp'">
				</table>
			</div>
		</div>     
                
		<jsp:include page="footer.jsp" />
		
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
