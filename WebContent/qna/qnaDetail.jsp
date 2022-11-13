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
    .title {font-weight: 600; padding-left: 2rem; margin-bottom: 20px; width: 80%; margin-left: 31%; }
    a {text-decoration: none;}
    .form {margin-top: 30px; width: 600px;}
    .row {width: 80%; padding: 0;}
   	.row1 {width: 100%; margin: 0; }
    .card-body .btn {float: right;}
    .table {margin-left: 40%;}

    .my-5 {margin-top: 0rem!important; margin-bottom: 0rem!important; }
    .product {height: 100vh;}
    .col-xl-3 {margin-bottom: 30px; float:left; width: 20%; margin-left: 5%;}
    .col-lg-6 {font-size: 15px; line-height: 30px; word-break: keep-all; flex: 0 0 auto; width: 71%; margin-top: 2em;}
    .card-text {word-break: keep-all; font-size: 17px; margin-bottom: 0.5em; font-weight: 600; }
    .card-title {font-size: 17px; font-weight: 600; margin-bottom: 1em;}
    .item-spec {display: block; float: right;}
    #sidebarMenu {height: 100vh; margin-right: 0;}
    .align-items-start {width: 100%}
    .mem {margin-top: 30px;}
    tr:nth-child(even){background: #f7f7f7;}
    .noti {display: block; float: right; margin: 0; vertical-align: middle;}
    
    /*btn*/
    .btn {margin-top: 0.5em; }
    .btn-group {width: 45%; padding-left: calc(var(--bs-gutter-x) * .10); margin-left: 97%;}
    .btn-grop {border-top-right-radius: 0.375rem; border-bottom-right-radius: 0.375rem;}
    
    </style>
</head>
<body>
<div class="wrap">
<header class="hd">
    <div class="hd_wrap">
        <%@ include file="../header.jsp" %>
    </div>
</header>
<%
	Qna vo = (Qna) request.getAttribute("qna");
%>
<div class="content container-fluid" id="page1">
    <div class="product" id="content">
        <div class="row" id="content_row">
        <% if(sid!=null && sid.equals("admin")) { %>
		<%@ include file="../admin/admin_sidebar.jsp" %>
		<% } %>
		<% if(sid!=null && sid.equals("admin")) { %>
		<main role="main" class="col-md-9">
		<% } else { %>
		<main class="content container">
		<% } %>
		<h2 class="pb-2 border-bottom title">고객문의</h2>
		<div class="row row-cols-1 row-cols-sm-2 g-4">
		<table class="table">
			<tbody>
				<tr>
					<th>구분</th>
					<td>
					<%
					if(vo.getLev()==0){
						out.println("<span>질문</span>");
					} else {
						out.println("<span>답변</span>");
					}
					%>
					</td>
				</tr>
				<tr>
					<th>공개여부</th>
					<td>
					<%
					if(vo.getSec().equals("Y")){
						out.println("<span>비공개</span>");
					} else {
						out.println("<span>공개</span>");
					}
					%>
					</td>
				</tr>
				<tr>
					<th>번호</th>
					<td><%=vo.getNo() %></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><%=vo.getTitle() %></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><%=vo.getContent() %></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><%=vo.getAuthor() %></td>
				</tr>
				<tr>
					<th>작성일시</th>
					<td><%=vo.getResDate() %></td>
				</tr>
				<tr>
					<th>읽은 횟수</th>
					<td><%=vo.getVisited() %></td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<a href="<%=request.getContextPath() %>/GetQnaListCtrl.do" class="btn btn-dark">목록으로</a>
			<%
				if(sid.equals("admin")) {
					if(vo.getLev()==0){
			%>
				<a href='QnaReplyWriteCtrl.do?parno=<%=vo.getNo() %>' class="btn btn-warning">답변 하기</a>
				<a href='UpdateQnaCtrl.do?no=<%=vo.getNo() %>' class="btn btn-secondary">글 수정</a>
				<a href='DeleteQnaCtrl.do?parno=<%=vo.getNo() %>' class="btn btn-dark">글 삭제</a>
			<%
					} else {
			%>
				<a href='UpdateQnaCtrl.do?no=<%=vo.getNo() %>' class="btn btn-info">답글 수정</a>
				<a href='DeleteQnaCtrl.do?no=<%=vo.getNo() %>' class="btn btn-danger">답글 삭제</a>
			<%
					}
				} else if(sid.equals(vo.getAuthor())){
			%>
				<a href='UpdateQnaCtrl.do?no=<%=vo.getNo() %>' class="btn btn-secondary">글 수정</a>
				<a href='DeleteQnaCtrl.do?parno=<%=vo.getNo() %>' class="btn btn-dark">글 삭제</a>
			<%		
				} else {
			%>
				<a href='<%=request.getContextPath() %>/GetQnaListCtrl.do' class="btn btn-danger">글 작성자가 아닙니다.</a>
			<%
				}
			%>
		</div>
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