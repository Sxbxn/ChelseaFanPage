<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script type ="text/javascript" src ="./resources/js/validation.js"></script>
    
<!DOCTYPE html>

<html lang="en">
	<%@ include file="header.jsp"%>

	<body>
		<fmt:setLocale value='<%= request.getParameter("language") %>'/>
		<fmt:bundle basename="bundle.message" > 
			<header class="masthead" style="background-image: url('assets/img/post.jpg')">
				<div class="container position-relative px-4 px-lg-5">
					<div class="row gx-4 gx-lg-5 justify-content-center">
						<div class="col-md-10 col-lg-8 col-xl-7">
			                <div class="site-heading">
			                    <h1>상품 추가</h1>
			                    <br>
								<span class="subheading">상품 추가입니다.</span>
							</div>
			            </div>
			        </div>
			    </div>
			</header>
	        
	        <!-- Post Content-->
	
			<div class="container px-4 px-lg-5">
				<div class="text-right"> 
					<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>
				</div>	
				<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post" enctype ="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2"><fmt:message key="productId" /></label>
						<div class="col-sm-3">
							<input type="text" id ="productId" name="productId" class="form-control" >
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2"><fmt:message key="pName" /></label>
						<div class="col-sm-3">
							<input type="text" id ="pName" name="pName" class="form-control" >
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2"><fmt:message key="unitPrice"/></label>
						<div class="col-sm-3">
							<input type="text" id ="unitPrice" name="unitPrice" class="form-control" >
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2"><fmt:message key="pDescription" /></label>
						<div class="col-sm-5">
							<textarea name="pDescription" cols="50" rows="2"
								class="form-control"></textarea>
						</div>
					</div>
					<div class ="form-group row">
					<label class ="col-sm-2"><fmt:message key="filename" /></label>
						<div class ="col-sm-5">
		 					<input type="file" name="filename" class="form-control">
		 				</div>
		 			</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<input type ="submit" class="btn btn-primary" value="<fmt:message key="button" />">
						</div>
					</div>
				</form>			
			</div>     
		</fmt:bundle>
		                
		<jsp:include page="footer.jsp" />
		
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
