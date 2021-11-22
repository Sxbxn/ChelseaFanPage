<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html lang="en">
	<script type="text/javascript">
		function deleteConfirm(id) {
			if (confirm("해당 상품을 삭제합니다!!") == true)
				location.href = "./deleteProduct.jsp?id=" + id;
			else
				return;
		}
	</script>
	<%
		String edit = request.getParameter("edit");
	%>
	<%@ include file="header.jsp"%>
	<body>
		<header class="masthead" style="background-image: url('assets/img/post.jpg')">
			<div class="container position-relative px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
		                <div class="site-heading">
		                    <h1>상품 편집</h1>
		                    <br>
							<span class="subheading">상품 편집</span>
						</div>
		            </div>
		        </div>
		    </div>
		</header>
        
        <!-- Post Content-->

		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<%@ include file="dbconn.jsp"%>
				<%
					String sql = "select * from product";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while (rs.next()) {
				%>
				<div class="col-md-4">
					<img src="c:/upload/<%=rs.getString("p_fileName")%>" style="width: 100%">
					<h3><%=rs.getString("p_name")%></h3>
					<p><%=rs.getString("p_description")%>
					<p><%=rs.getString("p_UnitPrice")%>원
					<p>
						<%
							if (edit.equals("update")) {
						%>
						<a href="./updateProduct.jsp?id=<%=rs.getString("p_id")%>"	class="btn btn-success" role="button"> 수정 &raquo;></a>
						<%
							} else if (edit.equals("delete")) {
						%>
						<a href="#" onclick="deleteConfirm('<%=rs.getString("p_id")%>')" class="btn btn-danger" role="button">삭제 &raquo;></a>
						<%
							}
						%>				
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
		</div>     
                
		<jsp:include page="footer.jsp" />
		
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
