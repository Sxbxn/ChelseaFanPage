<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder"%>
    
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp"%>

	<body>
		<%
			String shipping_cartId = "";
			String shipping_name = "";
			String shipping_shippingDate = "";
			String shipping_country = "";
			String shipping_zipCode = "";
			String shipping_addressName = "";		
	
			Cookie[] cookies = request.getCookies();
	
			if (cookies != null) {
				for (int i = 0; i < cookies.length; i++) {
					Cookie thisCookie = cookies[i];
					String n = thisCookie.getName();
					if (n.equals("Shipping_cartId"))
						shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
					if (n.equals("Shipping_shippingDate"))
						shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
				}
			}
		%>	
		
		<header class="masthead" style="background-image: url('assets/img/thank.jpg')">
			<div class="container position-relative px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
		                <div class="site-heading">
		                    <h1>주문 완료</h1>
		                    <br>
							<span class="subheading">주문이 완료되었습니다. 감사합니다!</span>
						</div>
		            </div>
		        </div>
		    </div>
		</header>
        
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
	                <div class="site-heading">
						<h2 class="alert alert-danger">주문해주셔서 감사합니다.</h2>
						<p>	주문은	<%	out.println(shipping_shippingDate);	%>에 배송될 예정입니다! !	
						<p>	주문번호 :	<%	out.println(shipping_cartId);	%>		
					</div>
		    	</div>
		    	<div class="col-md-10 col-lg-8 col-xl-7">
		        	<div class="site-heading">
						<p>	<a href="./products.jsp" class="btn btn-secondary"> &laquo; 상품 목록</a>			
					</div>
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
