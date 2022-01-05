<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>    
<%@ page import="java.io.PrintWriter" %>
<%@ page errorPage ="exceptionNoProductId.jsp"%>

<!DOCTYPE html>
<html>
	<%@ include file="header.jsp"%>
	<%
	if(userID == null) { // 사용자가 없으면 
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인이 필요합니다.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		} 
	 %>
	<body>
		<header class="masthead" style="background-image: url('assets/img/gift.jpg')">
			<div class="container position-relative px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
		                <div class="site-heading">
		                    <h1>굿즈 정보</h1>
		                    <br>
							<span class="subheading">다양한 굿즈들을 만나보세요.</span>
						</div>
		            </div>
		        </div>
		    </div>
		</header>
		
	    <%
	        ProductRepository dao = ProductRepository.getInstance();
	        ArrayList<Product> listOfBooks = dao.getAllProducts();
	    %>

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
						<img src="assets/img/<%=rs.getString("filename")%>" style="width: 100%">
						<h3><%=rs.getString("pName")%></h3>
						<p><%=rs.getString("pDescription")%>
						<p><%=rs.getString("UnitPrice")%>원
						<p>
							<a href="./product.jsp?id=<%=rs.getString("pID")%>"
								class="btn btn-primary" role="button"> 상세 정보 &raquo;</a>
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
