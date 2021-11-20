<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
		
		<article class="mb-4">
			<div class="container px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
	
						<table style = "margin-left:auto; margin-right:auto; text-align: center;">
							<tr>
								<input type=button value="등록" OnClick="window.location='board_write_insert.jsp'">
							</tr>
						</table>
	
	
						<table style = "margin-left:auto; margin-right:auto; text-align:center;" cellspacing=1 border=1 width=100%;>
							<tr>
								<td>
									<b>이름</b>
								</td>
								<td>
									<input type=text name=name>
								</td>
							</tr>
							<tr>
								<td>
									<b>응원의 한마디</b>
								</td>
								<td>
									<textarea name=content></textarea>
								</td>
							</tr>
							
						</table>

					</div>
				</div>
			</div>
		</article>
		
		<jsp:include page="footer.jsp" />						
</body>	