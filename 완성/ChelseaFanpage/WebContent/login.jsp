<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<%@ include file="header.jsp"%>
	
<head>
<meta charset="UTF-8">
</head>

<body>

	<header class="masthead" style="background-image: url('assets/img/index.jpg')">
	     <div class="container position-relative px-4 px-lg-5">
	         <div class="row gx-4 gx-lg-5 justify-content-center">
	             <div class="col-md-10 col-lg-8 col-xl-7">
	                <div class="site-heading">
	                    <h1>Sign in</h1>
	                    <br>
                    	<span class="subheading">로그인 페이지입니다.</span>
	                </div>
	             </div>
	         </div>
	     </div>
	 </header>

	<div class="container"  style = "margin-left:auto; margin-right:auto; text-align:center">
			<div class="jumbotron" style= "display:inline-block; width:50%;">
				<form method="post" action="loginAction.jsp">
					<div class = "form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<br>
					<div class = "form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<br>					
					<input type="submit" class="btn btn-primary form-control" style="background-color: #294171; width: 20%;" value="로그인">
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