<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <body>
	<%@ include file="header.jsp"%>

        <header class="masthead" style="background-image: url('assets/img/contact-bg.jpg')">
            <div class="container position-relative px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <div class="page-heading">
                            <h1>주문 정보</h1>
                            <span class="subheading">주문 정보를 입력해주세요!</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        
        <!-- Main Content-->
        <main class="mb-4">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-md-10 col-lg-8 col-xl-7">
                        <p>아래 양식을 작성해주세요. 최대한 빠르게 배송해드리겠습니다!</p>
                        <div class="my-5">
							<form id="contactForm" action="./processShippingInfo.jsp" class="form-horizontal" method="post">
                            	
                            	<input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
                           	
                                <div class="form-floating">
                                	<label>수취인</label>
                                	<br>
                                	<br>
									<div class="col-sm-3">
										<input name="name" type="text" class="form-control" />
									</div>
                                </div>
                                
								<div class="form-floating">
                                	<label>배송일</label>                                	
                                	<br>
                                	<br>
									<div class="col-sm-3">
										<input name="shippingDate" type="text" class="form-control" placeholder="YYYY/MM/DD" />
									</div>
                                </div>
								<div class="form-floating">
                                	<label>우편번호</label>
                                	<br>
                                	<br>
									<div class="col-sm-3">
										<input name="zipCode" type="text" class="form-control" />
									</div>
                                </div>
								<div class="form-floating">
                                	<label>주소</label>
                                	<br>
                                	<br>
									<div class="col-xs-4">
										<input name="addressName" type="text" class="form-control" />
									</div>
                                </div>
                                <br />
                                <!-- Submit success message-->
                                <!---->
                                <!-- This is what your users will see when the form-->
                                <!-- has successfully submitted-->
                                <div class="d-none" id="submitSuccessMessage">
                                    <div class="text-center mb-3">
                                        <div class="fw-bolder">Form submission successful!</div>
                                        To activate this form, sign up at
                                        <br />
                                        <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                    </div>
                                </div>
                                <!-- Submit error message-->
                                <!---->
                                <!-- This is what your users will see when there is-->
                                <!-- an error submitting the form-->
                                <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                                <!-- Submit Button-->
                                
                                <div>
                                	<a href="./cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
                                	<input type="submit" class="btn btn-primary" value="등록">
                                </div>                            
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
        </main>
 		<jsp:include page="footer.jsp" />
		
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        
    </body>
</html>