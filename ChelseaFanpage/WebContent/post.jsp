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
		<article class="mb-4">
			<div class="container px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
						<table style = "margin-left:auto; margin-right:auto; text-align: center;">
							<tr>
								<input type=button value="글쓰기" OnClick="window.location='post_write.jsp'">
							</tr>
						</table>
						<table style = "margin-left:auto; margin-right:auto; text-align:center;" cellspacing=1 border=1 width=100%;>
							<tr>
								<td width=10%> <p align=center>번호</p> </td>
								<td width=10%> <p align=center>이름</p> </td>
								<td width=65%> <p align=center>내용</p> </td>
								<td width=15%> <p align=center>등록일</p> </td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</article>
        
        
        
                
		<jsp:include page="footer.jsp" />
		
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
