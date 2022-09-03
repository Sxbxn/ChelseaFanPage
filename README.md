# 💙 첼시 팬 페이지
JSP를 활용하여 개발 진행  
상품 조회ㆍ구매ㆍ수정, 게시판 등의 기능이 있는 페이지

## 📽 시연 영상
![1-min](https://user-images.githubusercontent.com/79958455/188282658-ca815ba8-df2e-4c53-825d-fa735afc9fe3.gif)  
![2-min](https://user-images.githubusercontent.com/79958455/188282673-c35f69de-8a69-4bb4-96d6-edc55ab93e5c.gif)

## 🔍 개발 동기 및 목적, 필요성
저는 평소에 축구 경기 시청을 즐겨하며, __첼시(Chelsea)__ 라는 잉글랜드 축구팀의 열렬한 팬입니다.  
유니폼 등의 굿즈도 종종 구매하고, 경기가 있는 날에는 팬 커뮤니티에서 다른 첼시팬들과 함께 응원을 합니다.  
하지만 굿즈를 판매하는 공식 홈페이지나 다수의 사이트에서는 커뮤니티 기능 없이 단순 __상업 목적__이 강하며, 팬 커뮤니티 사이트들은 굿즈를 판매하지 않고 __팬들 간의 소통 등의 목적__만을 가지는 경우가 많습니다.   
이러한 배경에서 저는 굿즈도 구매할 수 있고, 다른 사람들과 소통도 가능하게 하는 서비스가 있다면 매우 편리하겠다고 생각했기에 해당 웹페이지를 개발하게 되었습니다.  
=> __상품 구매 기능 + 커뮤니티 기능__ 이 있는 첼시 팬 페이지

## 📍 구현 기능
- 메인 페이지, 관련 소식들을 볼 수 있는 기능
- 로그인과 로그아웃, 회원가입 페이지
- 상품목록 페이지
- 장바구니 페이지
- 주문하기 페이지(주소 등의 정보 입력 페이지)
- 주문내역 페이지
- 상품 등록, 수정, 삭제 페이지 (관리자만)
- 커뮤니티 기능 페이지 (게시판 형태) 
- 오류 처리 페이지

## 🚀 사용한 기술
- JSP
  - 스크립트 태그, 액션 태그, 폼 태그 등
  - 파일 업로드, 유효성 검사, 시큐리티 등
  - 세션, 쿠키 등
- 톰캣
- 데이터베이스
  - MyOracle
  - JDBC, JSP와 연동 
  - 3개의 테이블
    - BOARD: (bID, bContent, userID, bDate, bAvailable)
    - PRODUCT: (pID, pName, unitPrice, pDescription, filename, quantity)
    - USER: (userID, userPassword, userName, userEmail)

## 📷 인터페이스(UI)

메인 화면  
<img src="https://user-images.githubusercontent.com/79958455/188266769-17dc6d0a-78b8-4cac-9d69-0e06b62f9241.png">

모바일 화면  
<img src="https://user-images.githubusercontent.com/79958455/188266761-40610140-1b20-473b-a977-692a7f8b2191.png">
<img src="https://user-images.githubusercontent.com/79958455/188266766-69c0a198-f295-4aa6-8e0e-a376633bdb46.png">

굿즈   
<img src="https://user-images.githubusercontent.com/79958455/188266983-744e10ad-4f41-4e5c-8ba6-8e8259865e16.png">
<img src="https://user-images.githubusercontent.com/79958455/188266778-4941ba38-14cb-4903-a246-be12279f38e8.png">

장바구니, 주문 정보  
<img src="https://user-images.githubusercontent.com/79958455/188266939-9602841e-661a-4e5c-bc98-3dc7ebaecace.png">    
<img src="https://user-images.githubusercontent.com/79958455/188266943-31f1b7d3-650c-403d-a46a-190e479128bc.png">
<img src="https://user-images.githubusercontent.com/79958455/188267170-78333e75-4dca-46a8-813e-68f28aa13d75.png">  

응원 게시판  
<img src="https://user-images.githubusercontent.com/79958455/188266838-c2713a35-05df-4b4e-88c2-7946cdc07421.png">
