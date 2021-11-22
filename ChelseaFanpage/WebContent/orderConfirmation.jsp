<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();

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
			if (n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_shippingDate"))
				shipping_shippingDate = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_country"))
				shipping_country = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_zipCode"))
				shipping_zipCode = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_addressName"))
				shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>

<!DOCTYPE html>
<html lang="en">
	<%@ include file="header.jsp"%>

	<body>
		<header class="masthead" style="background-image: url('assets/img/post.jpg')">
			<div class="container position-relative px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
		                <div class="site-heading">
		                    <h1>주문 정보</h1>
		                    <br>
							<span class="subheading">주문 정보를 확인하세요</span>
						</div>
		            </div>
		        </div>
		    </div>
		</header>
        
        <!-- Post Content-->

		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="text-center ">
					<h1>영수증</h1>
				</div>
				<div class="row justify-content-between">
					<div class="col-4" align="left">
						<strong>배송 주소</strong> <br> 성명 : <% out.println(shipping_name); %>	<br> 
						우편번호 : <% 	out.println(shipping_zipCode);%><br> 
						주소 : <%	out.println(shipping_addressName);%>(<%	out.println(shipping_country);%>) <br>
					</div>
					<div class="col-4" align="right">
						<p>	<em>배송일: <% out.println(shipping_shippingDate);%></em>
					</div>
				</div>
				<div>
					<table class="table table-hover">			
					<tr>
						<th class="text-center">도서</th>
						<th class="text-center">#</th>
						<th class="text-center">가격</th>
						<th class="text-center">소계</th>
					</tr>
					<%
						int sum = 0;
						ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
						if (cartList == null)
							cartList = new ArrayList<Product>();
						for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
							Product product = cartList.get(i);
							int total = product.getUnitPrice() * product.getQuantity();
							sum = sum + total;
					%>
					<tr>
						<td class="text-center"><em><%=product.getpName()%> </em></td>
						<td class="text-center"><%=product.getQuantity()%></td>
						<td class="text-center"><%=product.getUnitPrice()%>원</td>
						<td class="text-center"><%=total%>원</td>
					</tr>
					<%
						}
					%>
					<tr>
						<td> </td>
						<td> </td>
						<td class="text-right">	<strong>총액: </strong></td>
						<td class="text-center text-danger"><strong><%=sum%> </strong></td>
					</tr>
					</table>
					
						<a href="./ShippingInfo.jsp?cartId=<%=shipping_cartId%>"class="btn btn-secondary" role="button"> 이전 </a>
						<a href="./thankCustomer.jsp"  class="btn btn-success" role="button"> 주문 완료 </a>
						<a href="./checkOutCancelled.jsp" class="btn btn-secondary"	role="button"> 취소 </a>			
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
