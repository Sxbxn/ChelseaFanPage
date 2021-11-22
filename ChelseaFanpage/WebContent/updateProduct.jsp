<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html lang="en">
	<%@ include file="header.jsp"%>

	<body>
		<header class="masthead" style="background-image: url('assets/img/post.jpg')">
			<div class="container position-relative px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
		                <div class="site-heading">
		                    <h1>상품 수정</h1>
		                    <br>
							<span class="subheading">응원의 한마디 남겨주세요!</span>
						</div>
		            </div>
		        </div>
		    </div>
		</header>
		
	<%@ include file="dbconn.jsp"%>
	<%
		String productId = request.getParameter("ID");

		String sql = "SELECT * FROM PRODUCT WEHRE pID = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, productId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
        
        <!-- Post Content-->

		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-5">
					<img src="c:/upload/<%=rs.getString("filename")%>" alt="image" style="width: 100%" />
				</div>
				<div class="col-md-7">
					<form name="newProduct" action="./processUpdateProduct.jsp"
						class="form-horizontal" method="post" enctype="multipart/form-data">
						<div class="form-group row">
							<label class="col-sm-2">상품 코드</label>
							<div class="col-sm-3">
								<input type="text" id="pID" name="pID"
									class="form-control" value='<%=rs.getString("pID")%>'>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2">상품명</label>
							<div class="col-sm-3">
								<input type="text" id="pName" name="pName" class="form-control"
									value="<%=rs.getString("pName")%>">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2">가격</label>
							<div class="col-sm-3">
								<input type="text" id="pUnitPrice" name="pUnitPrice"
									class="form-control" value="<%=rs.getInt("pUnitPrice")%>">
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2">상세 설명</label>
							<div class="col-sm-5">
								<textarea name="pDescription" cols="50" rows="2"
									class="form-control"><%=rs.getString("pDescription")%></textarea>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-sm-2">이미지</label>
							<div class="col-sm-5">
								<input type="file" name="pImage" class="form-control">
							</div>
						</div>
						<div class="form-group row">
							<div class="col-sm-offset-2 col-sm-10 ">
								<input type="submit" class="btn btn-primary" value="등록">
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
                
		<jsp:include page="footer.jsp" />
		
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
