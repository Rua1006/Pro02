<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.drdog.vo.*"%>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <title>닥터독-가족이지만 말 못하는 그들을 위해</title>
    <!-- 메타포 -->
    <meta name="description" content="닥터독은 육류·다양한 과채류 및 제약회사에서 사용중인 기능성 원료를 결합한 최상의 영양설계 강아지사료입니다.">
    <meta name="keywords" content="닥터독, Drdog, 강아지사료, 강아지간식, 강아지영양제, 강아지화식">
    <!-- 오픈그래프 -->
    <meta property="og:site_name" content="닥터독-가족이지만 말 못하는 그들을 위해">
    <meta property="og:title" content="닥터독-가족이지만 말 못하는 그들을 위해">
    <meta property="og:url" content="https://okdoctordog.com/index.html">
    <meta property="og:type" content="website">
    <meta property="og:description" content="닥터독은 육류·다양한 과채류 및 제약회사에서 사용중인 기능성 원료를 결합한 최상의 영양설계 강아지사료입니다.">
    <meta property="og:image" content="./img/logo/header_logo_mini.png"> 
    <meta property="og:image:width" content="800">
    <meta property="og:image:height" content="400">
    <!-- 파비콘 -->
    <link rel="shortcut icon" href="./img/favi/favicon.ico" type="image/x-icon">
    <link rel="icon" href="./img/favi/favicon.ico" type="image/x-icon">
    <!-- 각 종 플러그인과 설정 파일 -->
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <!-- 구형 브라우저 html5태그 인식 -->
    <script src="./js/html5shiv.js"></script>
    <!-- 구형 브라우저에서 css animation 인식 -->
    <script src="./js/prefixfree.min.js"></script>
    <!-- 구형 브라우저에서 미디어쿼리 인식 -->
    <script src="./js/respond.min.js"></script>
    <!-- jquery 플러그인 연결 -->
    <script src="./js/jquery-1.11.1.js"></script>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="./css/header.css">
    <!-- bootstrap link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <!--header.css -->
    <!-- <link rel="stylesheet" href="./css/header.css"> -->
    <!--footer.css-->
    <!-- <link rel="stylesheet" href="./css/footer.css"> -->
    <!-- 폰트 Nanum Gothic -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Ms+Madi&family=Nanum+Gothic&display=swap" rel="stylesheet">

    <style>
    body {font-family: 'Nanum Gothic', sans-serif;}  
    img {border: none; vertical-align: top; margin: 0; padding: 0;}
    .wrap {height: auto; min-height: 100%;} 
    .wrap:after {content: ""; display: block; clear: both;}

    /*main*/
    #page1 {height: 100vh;}
    .container-fluid {padding-left: 0; padding-right: 0;}
    .content {padding-top: 110px; height: auto; width: 100%; position: relative;}
    .subtitle {font-weight: 600; font-size: 30px; margin-top: 150px; text-align: center; padding-bottom: 20px;}
    .title {font-weight: 600; padding-left: 2rem; margin-bottom: 20px; margin-left: 5%;}
    a {text-decoration: none;}
    .form {margin-top: 30px; width: 600px;}
    .row {width: 100%; padding: 0;}
   	.row1 {width: 100%; margin: 0; }
    .card-body .btn {float: right;}

    .my-5 {margin-top: 0rem!important; margin-bottom: 0rem!important; }
    .product {height: 90vh;}
    .col-xl-3 {margin-bottom: 30px; float:left; width: 20%; margin-left: 5%;}
    .col-lg-6 {font-size: 15px; line-height: 30px; word-break: keep-all; flex: 0 0 auto; width: 71%; margin-top: 2em;}
    .card-text {word-break: keep-all; font-size: 17px; margin-bottom: 0.5em; font-weight: 600; }
    .card-title {font-size: 17px; font-weight: 600; margin-bottom: 1em;}
    .item-spec {display: block; float: right;}
    #sidebarMenu {height: 100vh; margin-right: 0;}
    .align-items-start {width: 100%}
    .mem {margin-top: 30px;}
    
    /*btn*/
    .btn {margin-top: 0.5em; float: right;}
    .btn-group {width: 25%; float: right; padding-left: calc(var(--bs-gutter-x) * .5); padding-right: 1.5rem!important; margin-right: 1%}
    #button-addon2 {border-top-right-radius: 0.375rem; border-bottom-right-radius: 0.375rem;}
    
    </style>
</head>
<body>
<%
	Sales vo = (Sales) request.getAttribute("sales");
%>
<div class="wrap">
<header class="hd">
    <div class="hd_wrap">
        <%@ include file="../header.jsp" %>
    </div>
</header>
<div class="content container-fluid" id="page1">
    <div class="product" id="content">
        <div class="row" id="content_row">
        <% if(sid!=null && sid.equals("admin")) { %>
		<%@ include file="../admin/admin_sidebar.jsp" %>
		<% } %>
		<% if(sid!=null && sid.equals("admin")) { %>
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
		<% } else { %>
		<main class="content container">
		<% } %>
		<h2 class="pb-2 border-bottom">구매 상세 내역</h2>
		<div class="row row-cols-1 row-cols-sm-2 g-4">
			<table class="table">
				<tbody>
					<tr>
						<th>구매 번호</th>
						<td><%=vo.getSaleNo() %></td>
					</tr>
					<tr>
						<th>구매 제품 번호</th>
						<td><%=vo.getProNo() %></td>
					</tr>
					<tr>
						<th>구매 수량</th>
						<td><%=vo.getAmount() %></td>
					</tr>
					<tr>
						<th>구매일</th>
						<td><%=vo.getSaleDate() %></td>
					</tr>
					<tr>
						<th>배송번호</th>
						<td><%=vo.getParselNo() %></td>
					</tr>
					<tr>
						<th>결제번호</th>
						<td><%=vo.getProNo() %></td>
					</tr>
					<tr>
						<th>배송상태</th>
						<td>
							<% if(vo.getParselState()==0) { %>
							<span>배송전</span>
							<% } else if(vo.getParselState()==1) { %>
							<span>배송중</span>
							<% } else if(vo.getParselState()==2) { %>
							<span>도착</span>
							<% } else if(vo.getParselState()==3) { %>
							<span>구매결정 완료</span>
							<% } %>
						</td>
					</tr>
				</tbody>
			</table>
			</div>
			<div class="btn-group">
				<% if(sid!=null && sid.equals("admin")) { %>
				<a href="<%=request.getContextPath() %>/GetAdminSalesListCtrl" class="btn btn-dark">제품관리목록</a>
				<% } else { %>
				<a href="<%=request.getContextPath() %>/GetMemberSalesInfoCtrl" class="btn btn-secondary">목록으로</a>
				<% } %>
				<% if(vo.getParselState()==0) { %>
				<a href="<%=request.getContextPath() %>/DeleteSalesCtrl?saleNo=<%=vo.getSaleNo() %>" class="btn btn-dark">결제 취소</a>
				<% } %>
				<a href="<%=request.getContextPath() %>/UpdateParselCtrl?parselNo=<%=vo.getParselNo() %>" class="btn btn-secondary">배송 정보 등록</a>
			</div>
			</main>
    	</div>
	</div>
</div>
</div>
</body>
<footer class="ft container-sticky">
	<%@ include file="../footer.jsp" %>
</footer>
</html>