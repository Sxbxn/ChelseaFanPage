<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<!DOCTYPE html>
<html lang="en">
	<%
		String cartId = session.getId();
	%>

	<%@ include file="header.jsp"%>

	<body>
		<header class="masthead" style="background-image: url('assets/img/post.jpg')">
			<div class="container position-relative px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
		                <div class="site-heading">
		                    <h1>장바구니</h1>
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
				<table class="table table-striped" style = "margin-left:auto; margin-right:auto; text-align:center; border: 3px solid #dddddd">
					<tr>
						<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
						<td align="right"><a href="./shippingInfo.jsp?cartId=<%= cartId %>" class="btn btn-success">주문하기</a></td>
					</tr>
				</table>
				<table class="table" style = "margin-left:auto; margin-right:auto; text-align:center;">
					<tr>
						<th>상품</th>
						<th>가격</th>
						<th>수량</th>
						<th>소계</th>
						<th>비고</th>
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
						<td><%=product.getpID()%> - <%=product.getpName()%></td>
						<td><%=product.getUnitPrice()%></td>
						<td><%=product.getQuantity()%></td>
						<td><%=total%></td>
						<td><a href="./removeCart.jsp?id=<%=product.getpID()%>" class="badge badge-danger">삭제</a></td>
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
				<input type=button value="쇼핑 계속하기" style = "margin-left:auto; width:18%; background-color: #B1AF72; color:#EEEEEE;" OnClick="window.location='products.jsp'">
				
			</div>
		</div>     
                
		<jsp:include page="footer.jsp" />
		
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
