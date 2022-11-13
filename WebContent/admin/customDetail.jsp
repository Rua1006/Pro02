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
    #page1 {padding-top: 110px;}
    body {font-family: 'Nanum Gothic', sans-serif;}  
    img {border: none; vertical-align: top; margin: 0; padding: 0;}
    .wrap {height: auto; min-height: 100%;} 
    .wrap:after {content: ""; display: block; clear: both;}

    /*main*/
    .container-fluid {padding-left: 0; padding-right: 0;}
    .content {padding-top: 110px; height: auto; width: 100%; position: relative;}
    .subtitle {font-weight: 600; font-size: 30px; margin-top: 150px; text-align: center; padding-bottom: 20px;}
    .title {font-weight: 600; margin-bottom: 20px; margin-left: 25%;}
    a {text-decoration: none;}
    .form {margin-top: 30px; width: 600px;}
    .row {width: 100%; padding: 0;}
   	.row1 {width: 100%; margin: 0; }
    .card-body .btn {float: right;}
    .table {width: 50%; margin-left: 25%;}

    .my-5 {margin-top: 0rem!important; margin-bottom: 0rem!important; }
    .product1 {margin-top: 30px;}
    .col-xl-3 {margin-bottom: 30px; float:left; width: 20%; margin-left: 5%;}
    .col-lg-6 {font-size: 15px; line-height: 30px; word-break: keep-all; flex: 0 0 auto; width: 71%; margin-top: 2em;}
    .card-text {word-break: keep-all; font-size: 17px; margin-bottom: 0.5em; font-weight: 600; }
    .card-title {font-size: 17px; font-weight: 600; margin-bottom: 1em;}
    .item-spec {display: block; float: right;}
    #sidebarMenu {height: 100vh; margin-right: 0;}
    /*btn*/
    .btn {margin-top: 0.5em; float: right;}
    .btn-group {width: 45%; padding-left: calc(var(--bs-gutter-x) * .5); margin-left: 28%;}
    #button-addon2 {border-top-right-radius: 0.375rem; border-bottom-right-radius: 0.375rem;}
   	
    </style>
</head>
<body>
<% Custom custom = (Custom) request.getAttribute("custom"); %> 
<div class="wrap">
<header class="hd">
    <div class="hd_wrap">
        <%@ include file="../header.jsp" %>
    </div>
</header>
<div class="container-fluid" id="page1">
<div class="row" id="content_row">
	<%@ include file="admin_sidebar.jsp" %>
	<main role="main" class="col-md-9">
		<h2 class="title">회원 상세 정보 확인 및 수정</h2>
		<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/DirectUpdateCustomCtrl" method="post">
			<table class="table">
				<tbody>
					<tr>
						<th>아이디</th>
						<td>
							<input type="text" name="cusId" id="cusId" placeholder="아이디 입력" class="form-control" value="<%=custom.getCusId() %>" readonly required />
						</td>
					</tr>
					<tr>
					<th>비밀번호</th>
						<td>
							<input type="text" name="cusPw" id="cusPw" placeholder="비밀번호 입력" class="form-control" value="<%=custom.getCusPw() %>" readonly required />
							<button type="button" class="btn btn-dark" onclick="defaultPass()">비밀번호 초기화</button>
							<input type="hidden" name="changePw" id="changePw" value="no">
						</td>
					</tr>
					<tr>
						<th>고객이름</th>
						<td><input type="text" name="cusName" id="cusName" placeholder="이름 입력" class="form-control" value="<%=custom.getCusName() %>" required /></td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<p><%=custom.getAddress() %></p>
						</td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="tel" name="tel" id="tel" placeholder="전화번호 입력 000-0000-0000" class="form-control" value="<%=custom.getTel() %>" required></td>
					</tr>
					<tr>
						<th>회원 포인트</th>
						<td><input type="number" name="point" id="point" class="form-control" value="<%=custom.getPoint() %>" required></td>
					</tr>
					<tr>
						<th>등급</th>
						<td>
						<select name="level">
							<%
								if(custom.getLevel()==0) {
									out.println("<option value='0' selected>준회원</option>");
									out.println("<option value='1'>정회원</option>");
									out.println("<option value='2'>우수회원</option>");
									out.println("<option value='3'>VIP회원</option>");
									out.println("<option value='9'>관리자</option>");
								} else if(custom.getLevel()==1){
									out.println("<option value='0'>준회원</option>");
									out.println("<option value='1' selected>정회원</option>");
									out.println("<option value='2'>우수회원</option>");
									out.println("<option value='3'>VIP회원</option>");
									out.println("<option value='9'>관리자</option>");
								} else if(custom.getLevel()==2){
									out.println("<option value='0'>준회원</option>");
									out.println("<option value='1'>정회원</option>");
									out.println("<option value='2' selected>우수회원</option>");
									out.println("<option value='3'>VIP회원</option>");
									out.println("<option value='9'>관리자</option>");
								} else if(custom.getLevel()==3){
									out.println("<option value='0'>준회원</option>");
									out.println("<option value='1'>정회원</option>");
									out.println("<option value='2'>우수회원</option>");
									out.println("<option value='3' selected>VIP회원</option>");
									out.println("<option value='9'>관리자</option>");
								} else {
									out.println("<option value='0'>준회원</option>");
									out.println("<option value='1'>정회원</option>");
									out.println("<option value='2'>우수회원</option>");
									out.println("<option value='3'>VIP회원</option>");
									out.println("<option value='9' selected>관리자</option>");
								}
							%>					
						</select>
						</td>
					</tr>
					<tr>
						<th>방문횟수</th>
						<td><input type="number" name="visited" id="visited" class="form-control" value="<%=custom.getVisited() %>" required></td>
					</tr>
				</tbody>
			</table>
			<div class="btn-group">
				<input type="submit" name="submit-btn" class="btn btn-dark" value="정보수정">
				<input type="reset" name="reset-btn" class="btn btn-secondary" value="취소">
			</div>						
		</form>
		<script>
		function defaultPass(){
			var tel = document.frm1.tel.value; 
			var conf = tel.substring(tel.length - 4, tel.length);
			document.frm1.cusPw.value = conf;
			document.frm1.changePw.value = "yes";
			alert("전화번호 뒷자리 4글자 : "+conf+"로 초기화 됩니다.");
		}
		</script>
	</main>
</div>
</div>
</body>
<footer class="ft container-sticky">
	<%@ include file="../footer.jsp" %>
</footer>
</html>