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
    .page_wrap {width: 30%; margin: 0 auto;}
    .container-fluid {padding-left: 0; padding-right: 0;}
    .product {width: 100%;}
    .content {padding-top: 110px; height: 100vh;}
    .subtitle {font-weight: 600; font-size: 30px; margin-top: 150px; text-align: center; padding-bottom: 20px;}
	a {text-decoration: none;}
    .form {margin-top: 30px; width: 600px; margin: 0 auto;}
    .row {width: 100%; margin:0 auto;}
    .card-body .btn {float: right;}
   	th{vertical-align: middle;}
    .title {margin-top: 1em;}
    
    /*btn*/
    .btn-group {float: right;}
    #button-addon2 {border-top-right-radius: 0.375rem; border-bottom-right-radius: 0.375rem;}
   	
    </style>
</head>
<body>
<%
	ArrayList<Category> cateList = (ArrayList<Category>) request.getAttribute("cateList");
	List<Product> proList = (ArrayList<Product>) request.getAttribute("proList");
%>
<div class="wrap">
<header class="hd">
    <div class="hd_wrap">
        <%@ include file="../header.jsp" %>
    </div>
</header>
<div class="content" id="page1">
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
		<h2 class="title">제품 등록</h2>
		<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/FileUpload" method="post" enctype="multipart/form-data">
			<table class="table">
				<tbody>
					<tr>
						<th>상품분류</th>
						<td>
							<select name="cateNo" id="cateNo" class="custom-select custom-select-lg mb-3">
								<% 
									for(int i=0;i<cateList.size();i++){
										Category cate = cateList.get(i);
								%>
								<option value="<%=cate.getCateNo() %>"><%=cate.getCateName() %></option>
								<%
									}
								%>
							</select>
						</td>
					</tr>
					<tr>
						<th>상품명</th>
						<td><input type="text" name="proName" id="title" placeholder="제목 입력" class="form-control" autofocus required /></td>
					</tr>
					<tr>
						<th>제품 설명</th>
						<td><textarea cols="80" rows="6" name="proSpec" id="proSpec" class="form-control" required></textarea></td>
					</tr>
					<tr>
						<th>제품 가격</th>
						<td><input type="text" name="oriPrice" id="oriPrice" class="form-control" required></td>
					</tr>
					<tr>
						<th>할인율</th>
						<td><input type="text" name="discountRate" id="discountRate" class="form-control" required></td>
					</tr>
					<tr>
						<th>제품 이미지1</th>
						<td><input type="file" name="proPic" id="proPic" accept="image/*" class="form-control" required></td>
					</tr>
					<tr>
						<th>제품 이미지2</th>
						<td><input type="file" name="proPic2" id="proPic2" accept="image/*" class="form-control"></td>
					</tr>
				</tbody>
			</table>
			<div class="btn-group ">
				<input type="submit" name="submit-btn" class="btn btn-warning rounded" value="제품 등록" style="margin-right: 1em;">
				<input type="reset" name="reset-btn" class="btn btn-secondary rounded" value="취소" style="margin-right: 1em;">
				<a href="<%=request.getContextPath() %>/GetProductListCtrl" class="btn btn-warning rounded">목록으로</a>
			</div>
		</form>	
		</main>
		</div>
    </div>
</div>
</div>
<footer class="ft container-sticky">
	<%@ include file="../footer.jsp" %>
</footer>
</html>