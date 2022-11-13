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
    .tb_ck  { display:none; }
    #parsel0, #parsel1, #parsel2, #parsel3 { display:none; }
	#tb_ck1:checked ~ #parsel0 { display:table; }
	#tb_ck2:checked ~ #parsel1 { display:table; }
	#tb_ck3:checked ~ #parsel2 { display:table; }
	#tb_ck4:checked ~ #parsel3 { display:table; }
	.table caption { caption-side:top; }

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
    .btn-group {width: 35%; float: right; padding-left: calc(var(--bs-gutter-x) * .5); padding-right: 1.5rem!important; margin-right: 1%}
    #button-addon2 {border-top-right-radius: 0.375rem; border-bottom-right-radius: 0.375rem;}
    
    </style>
</head>
<body>
<%
	List<Parsel> parList = (ArrayList<Parsel>) request.getAttribute("parList");
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
		<h2 class="pb-2 border-bottom">배송관리</h2>
		<div class="row row-cols-1 row-cols-sm-2 g-4">
		<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck1" checked>
			<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck2">
			<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck3">
			<input type="radio" name="tb_ck" class="tb_ck" id="tb_ck4">
			<div class="btn-group" id="tb_btn_box">
				<label for="tb_ck1" class="btn btn-outline-warning">배송 준비 중</label>
				<label for="tb_ck2" class="btn btn-outline-primary">배송 시작</label>
				<label for="tb_ck3" class="btn btn-outline-primary">배송 도착</label>
				<label for="tb_ck4" class="btn btn-outline-primary">구매결정</label>
			</div>
			<table class="table" id="parsel0">
				<caption><h3>배송 준비 중</h3></caption>
				<thead>
					<tr>
						<th>번호</th><th>배송지</th><th>고객 연락처</th>
						<th>배송회사</th><th>배송자 연락처</th>
						<th>화물코드</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<parList.size();i++){
					Parsel vo = parList.get(i);
					if(vo.getParselState()==0){
				%>
				<tr>
					<td><%=parList.size()-i %></td>
					<td><%=vo.getParselAddr() %></td>
					<td><%=vo.getCusTel() %></td>
					<td><%=vo.getParselCompany() %></td>
					<td><%=vo.getParselTel() %></td>
					<td>
						<a href="<%=vo.getParselUrl(vo.getParselCompany()) %><%=vo.getBaleCode() %>" target="_blank"><%=vo.getBaleCode() %></a>
					</td>
				</tr>
				<%
					}
				} 
				%>	
				</tbody>
			</table>
			<table class="table" id="parsel1">
				<caption><h3>배송 시작</h3></caption>
				<thead>
					<tr>
						<th>번호</th><th>배송지</th><th>고객 연락처</th>
						<th>배송회사</th><th>배송자 연락처</th>
						<th>화물코드</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<parList.size();i++){
					Parsel vo = parList.get(i);
					if(vo.getParselState()==1){
				%>
				<tr>
					<td><%=parList.size()-i %></td>
					<td><%=vo.getParselAddr() %></td>
					<td><%=vo.getCusTel() %></td>
					<td><%=vo.getParselCompany() %></td>
					<td><%=vo.getParselTel() %></td>
					<td>
						<a href="<%=vo.getParselUrl(vo.getParselCompany()) %><%=vo.getBaleCode() %>" target="_blank"><%=vo.getBaleCode() %></a>
					</td>
				</tr>
				<%
					}
				} 
				%>	
				</tbody>
			</table>
			<table class="table" id="parsel2">
				<caption><h3>배송 도착</h3></caption>
				<thead>
					<tr>
						<th>번호</th><th>배송지</th><th>고객 연락처</th>
						<th>배송회사</th><th>배송자 연락처</th>
						<th>화물코드</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<parList.size();i++){
					Parsel vo = parList.get(i);
					if(vo.getParselState()==2){
				%>
				<tr>
					<td><%=parList.size()-i %></td>
					<td><%=vo.getParselAddr() %></td>
					<td><%=vo.getCusTel() %></td>
					<td><%=vo.getParselCompany() %></td>
					<td><%=vo.getParselTel() %></td>
					<td>
						<a href="<%=vo.getParselUrl(vo.getParselCompany()) %><%=vo.getBaleCode() %>" target="_blank"><%=vo.getBaleCode() %></a>
					</td>
				</tr>
				<%
					}
				} 
				%>	
				</tbody>
			</table>
			<table class="table" id="parsel3">
				<caption><h3>구매결정</h3></caption>
				<thead>
					<tr>
						<th>번호</th><th>배송지</th><th>고객 연락처</th>
						<th>배송회사</th><th>배송자 연락처</th>
						<th>화물코드</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<parList.size();i++){
					Parsel vo = parList.get(i);
					if(vo.getParselState()>=3){
				%>
				<tr>
					<td><%=parList.size()-i %></td>
					<td><%=vo.getParselAddr() %></td>
					<td><%=vo.getCusTel() %></td>
					<td><%=vo.getParselCompany() %></td>
					<td><%=vo.getParselTel() %></td>
					<td>
						<a href="<%=vo.getParselUrl(vo.getParselCompany()) %><%=vo.getBaleCode() %>" target="_blank"><%=vo.getBaleCode() %></a>
					</td>
				</tr>
				<%
					}
				} 
				%>	
				</tbody>
			</table>
		</main>
		<script>
		$(document).ready(function(){
			$("#tb_btn_box label").click(function(){
				$(this).removeClass("btn-outline-primary").addClass("btn-outline-warning");
				$(this).siblings("label").removeClass("btn-outline-warning").addClass("btn-outline-primary");
			});
		});
		</script>
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