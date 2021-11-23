<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
    
<!DOCTYPE html>
<html lang="en">
	<%@ include file="header.jsp"%>
	<%
	if(userID == null) { // 사용자가 없으면 
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인이 필요합니다.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		} 
	 %>
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
				<form method="post" action="writeAction.jsp">
					<table class="table table-striped" style = "width:70%; margin-left:auto; margin-right:auto; text-align:center; border: 3px solid #dddddd">
						<thead>
							<tr>
								<th colspan="2" style="background-color: #2A61B1; color: #FFFFFF; text-align: center; width:70%">응원의 한마디 작성</th>
							</tr>
					 	</thead>
					 	<tbody>
							<tr>
								<td><input type="text" class="form-control" placeholder="응원의 한마디" name="bContent" maxlength="50"></td>
							</tr>						 								
					 	</tbody>	
					</table>
					<input type=submit value="완료" style = "float: right; margin-right:15%; width:15%; background-color: #2A61B1; color:#EEEEEE;">
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
