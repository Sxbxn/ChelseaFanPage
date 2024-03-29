<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Chelsea FC Fan Page</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
</head>
		<%
			String userID = null;
			if(session.getAttribute("userID") != null) {
				userID = (String) session.getAttribute("userID");		
			}
		%>
		
<nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="index.jsp">Let's go Chelsea</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto py-4 py-lg-0">
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="index.jsp">Main</a></li>
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="products.jsp">굿즈</a></li>
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="post.jsp">응원의 한마디</a></li>
               		
		<% 
			if(userID != null) {
		%>  
            <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="cart.jsp">장바구니</a></li>			              
			<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="logoutAction.jsp">로그아웃</a></li>
		<%
				if(userID.equals("subin")) {
					%>                
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="addProduct.jsp">상품 등록</a></li>
		            <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="editProduct.jsp?edit=update">상품 수정</a></li>
		            <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="editProduct.jsp?edit=delete">상품 삭제</a></li>
				<%
				}
			}
		%>
                
		<% 
			if(userID == null) {
		%>                
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="login.jsp">로그인</a></li>
                <li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4" href="join.jsp">회원가입</a></li>
		<%
			}
		%>
            </ul>
        </div>
    </div>
</nav>