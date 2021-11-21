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
		                    <h1>응원의 한마디</h1>
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
					<thead>
						<tr>
							<th style="background-color: #B1AF72; text-align: center;">번호</th>
							<th style="background-color: #2A61B1; text-align: center;">한마디</th>
							<th style="background-color: #B1AF72; text-align: center;">작성자</th>
							<th style="background-color: #2A61B1; text-align: center;">작성날짜</th>
						</tr>
				 	</thead>
				 	<tbody>
						<tr>
							<td>1</td>
							<td>파이팅</td>
							<td>조수빈</td>
							<td>2021-11-21</td>
						</tr>						 	
						<tr>
							<td>1</td>
							<td>파이팅</td>
							<td>조수빈</td>
							<td>2021-11-21</td>
						</tr>
						<tr>
							<td>1</td>
							<td>파이팅</td>
							<td>조수빈</td>
							<td>2021-11-21</td>
						</tr>								
				 	</tbody>	
				</table>
				<table class="table" style = "margin-left:auto; margin-right:auto; text-align:center;">
					<input type=button value="글쓰기" style = "margin-left:auto; width:18%; background-color: #B1AF72; color:#EEEEEE;" OnClick="window.location='post_write.jsp'">
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
