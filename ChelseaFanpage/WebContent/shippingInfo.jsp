<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<%@ include file="header.jsp"%>

	<body>
		<header class="masthead" style="background-image: url('assets/img/post.jpg')">
			<div class="container position-relative px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
		                <div class="site-heading">
		                    <h1>배송 정보</h1>
		                    <br>
							<span class="subheading">배송 정보를 확인하세요.</span>
						</div>
		            </div>
		        </div>
		    </div>
		</header>
        
        <!-- Post Content-->

		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
					<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
					<div class="form-group row">
						<label class="col-sm-2">성명</label>
						<div class="col-sm-3">
							<input name="name" type="text" class="form-control" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">배송일</label>
						<div class="col-sm-3">
							<input name="shippingDate" type="text" class="form-control" />(yyyy/mm/dd)
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">국가명</label>
						<div class="col-sm-3">
							<input name="country" type="text" class="form-control" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">우편번호</label>
						<div class="col-sm-3">
							<input name="zipCode" type="text" class="form-control" />
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">주소</label>
						<div class="col-sm-5">
							<input name="addressName" type="text" class="form-control" />
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
							<input	type="submit" class="btn btn-primary" value="등록" />
							<a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
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
