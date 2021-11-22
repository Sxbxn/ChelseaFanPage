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
		                    <h1>상품 아이디 오류</h1>
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
				<h2 class="alert alert-danger">해당 상품이 존재하지 않습니다.</h2>
			</div>
		</div>     
		
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
				<p><a href="products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>			
			</div>
		</div>

                
		<jsp:include page="footer.jsp" />
		
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>