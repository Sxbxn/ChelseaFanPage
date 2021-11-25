<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>    
<%@ page errorPage ="exceptionNoProductId.jsp"%>
    
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp"%>
	
	<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
	</script>

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
			String id = request.getParameter("id");
			ProductRepository dao = ProductRepository.getInstance(); 
			Product product = dao.getProductById(id);
		%>
        
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class ="col-md-5">
					<img src="assets/img/<%=product.getFilename()%>" style="width: 100%" />
				</div>
				<div class="col-md-6">
					<h3><%=product.getpName()%></h3>
					<p><%=product.getpDescription()%>
					<p><b>상품 코드 : </b><span class="badge badge-danger"> <%=product.getpID()%></span>
					<h4><%=product.getUnitPrice()%>원</h4>
					<p><form name="addForm" action="./addCart.jsp?id=<%=product.getpID()%>" method="post">
						<a href="#" class="btn btn-primary" onclick="addToCart()"> 장바구니에 담기 &raquo;</a> 
						<a href="./cart.jsp" class="btn btn-success" > 장바구니로 이동 &raquo;</a>
						<a href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
					   </form>
				</div>
		
			</div>
		</div>     
                
		<jsp:include page="footer.jsp" />
		
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>