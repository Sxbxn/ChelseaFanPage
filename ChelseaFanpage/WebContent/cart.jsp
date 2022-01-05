<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<!DOCTYPE html>
<html>
	<%
		String cartId = session.getId();
	%>

	<%@ include file="header.jsp"%>

	<body>
		<header class="masthead" style="background-image: url('assets/img/cart.jpg')">
			<div class="container position-relative px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
		                <div class="site-heading">
		                    <h1>장바구니</h1>
		                    <br>
							<span class="subheading">장바구니에 담겨있는 굿즈들입니다.</span>
						</div>
		            </div>
		        </div>
		    </div>
		</header>

		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<input type=button value="쇼핑 계속하기" style = "margin-right:auto; width:15%; background-color: #a1c4fd; color:#EEEEEE;" OnClick="window.location='products.jsp'">
				<table class="table table-striped" style = "margin-left:auto; margin-right:auto; text-align:center; border: 3px solid #dddddd">
					<tr>
						<th style="width: 50%">상품</th>
						<th style="width: 10%">가격</th>
						<th style="width: 10%">수량</th>
						<th style="width: 10%">소계</th>
						<th style="width: 20%">비고</th>
					</tr>					
				</table>
				<table class="table table-striped" style = "margin-left:auto; margin-right:auto; text-align:center; border: 3px solid #dddddd">
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
						<td style="width: 50%"><%=product.getpID()%> - <%=product.getpName()%></td>
						<td style="width: 10%"><%=product.getUnitPrice()%></td>
						<td style="width: 10%"><%=product.getQuantity()%></td>
						<td style="width: 10%"><%=total%></td>
						<td style="width: 20%"><a href="./removeCart.jsp?id=<%=product.getpID()%>" class="badge badge-danger" style= "color: #000000" >삭제</a></td>
					</tr>
					<%
						}
					%>
					<tr>
						<th></th>
						<th></th>
						<th>총액</th>
						<th><%=sum%></th>
						<th></th>
					</tr>
				</table>
				<table>
					<tr>
						<td align="right"><a href="./shippingInfo.jsp?cartId=<%= cartId %>" class="btn btn-success" style= "background-color: #a1c4fd">주문하기</a></td>
					</tr>
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
