<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>    

<!DOCTYPE html>
<html>
	<%@ include file="header.jsp"%>
	
	<body>
		<header class="masthead" style="background-image: url('assets/img/add.jpg')">
			<div class="container position-relative px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
		                <div class="site-heading">
		                    <h1>상품 등록</h1>
		                    <br>
							<span class="subheading">상품 등록 화면입니다.</span>
						</div>
		            </div>
		        </div>
		    </div>
		</header>

		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<form name="newProduct" action="./processAddProduct.jsp" class="form-inline center" method="post" enctype="multipart/form-data" style="padding-left:30%">
					<div class="form-group row">
						<label class="col-sm-2">제품코드</label>
						<div class="col-sm-3">
							<input type="text" id ="productId" name="productId" class="form-control" >
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상품명</label>
						<div class="col-sm-3">
							<input type="text" id ="name" name="name" class="form-control" >
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">가격</label>
						<div class="col-sm-3">
							<input type="text" id ="unitPrice" name="unitPrice" class="form-control" >
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">상세설명</label>
						<div class="col-sm-5">
							<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">재고</label>
						<div class="col-sm-3">
							<input type="text" id ="unitsInStock" name="unitsInStock" class="form-control" >
						</div>
					</div>
					<div class ="form-group row">
					<label class ="col-sm-2">제품사진</label>
						<div class ="col-sm-5">
		 					<input type="file" name="productImage" class="form-control">
		 				</div>
		 			</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<input type ="submit" class="btn btn-primary" value="등록">
						</div>
					</div>
				</form>
			</div>
		</div>     
                
		<jsp:include page="footer.jsp" />
		
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
