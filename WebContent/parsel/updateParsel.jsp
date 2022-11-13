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
    .title {font-weight: 600; margin-bottom: 20px; margin-left: 14%;}
    a {text-decoration: none;}
    .form {margin-top: 30px; width: 600px;}
    .row {width: 80%; padding: 0; margin-left: 14%;}
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
	Parsel pro = (Parsel) request.getAttribute("parsel");
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
		<h2 class="title">배송 정보 등록 및 수정</h2>
			<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/UpdateParselProCtrl" method="post" onsubmit="return postCheck(this)">
				<table class="table">
					<tbody>
						<tr>
							<th style="max-width:200px;width:200px;">배송 코드</th>
							<td>
								<p><%=pro.getParselNo() %></p>
								<input type="hidden" name="parselNo" id="parselNo" value="<%=pro.getParselNo() %>">
							</td>
						</tr>
						<tr>
							<th>배송 업체 선택</th>
							<td>
								<% if(pro.getParselState()!=0) { %>
								<p><%=pro.getParselCompany() %></p>
								<% } %>
								<select name="parselCompany" id="parselCompany" placeholder="배송업체 선택" class="form-control" required>
									<option value="CJ대한통운">CJ대한통운</option>
									<option value="롯데택배">롯데택배</option>
									<option value="우체국택배">우체국택배</option>
									<option value="로젠택배">로젠택배</option>
									<option value="한진택배">한진택배</option>
									<option value="CU 편의점택배">CU 편의점택배</option>
									<option value="EMS 택배">EMS 택배</option>
									<option value="경동택배">경동택배</option>
								</select>
								
							</td>
						</tr>
						<tr>
							<th>화물 코드</th>
							<td>
								<% if(pro.getParselState()!=0) { %>
								<input type="text" name="baleCode" id="baleCode" placeholder="배송회사의 화물코드를 숫자만 입력" class="form-control" value="<%=pro.getBaleCode() %>" required />
								<% } else { %>
								<input type="text" name="baleCode" id="baleCode" placeholder="배송회사의 화물코드를 숫자만 입력" class="form-control" required />
								<% } %>								
							</td>
						</tr>
						<tr>
							<th>배송 기사 연락처</th>
							<td>
								<% if(pro.getParselState()!=0) { %>
								<input type="text" name="parselTel" id="parselTel" placeholder="배송회사의 화물코드를 숫자만 입력" class="form-control" value="<%=pro.getParselTel() %>" required />
								<% } else { %>
								<input type="tel" name="parselTel" id="parselTel" placeholder="배송기사 연락처 입력" class="form-control" required />
								<% } %>
							</td>
						</tr>
						<tr>
							<th>배송상태</th>
							<td>
								<% if(pro.getParselState()==0) { %>
								<p value="0">현재 상태 : <strong>배송 준비 중</strong></p>
								<% } else if(pro.getParselState()==1) { %>
								<p value="1">현재 상태 : <strong>배송 시작</strong></p>
								<% } else if(pro.getParselState()==2) { %>
								<p value="2">현재 상태 : <strong>배송 도착</strong></p>
								<% } else if(pro.getParselState()==3) { %>
								<p value="3">현재 상태 : <strong>구매결정 완료</strong></p>
								<% } else { %>
								<p value="4">현재 상태 : <strong>점검중</strong></p>
								<% } %>
								<select name="parselState" id="parselState" class="form-control">
									<option value="0">배송 준비 중</option>
									<option value="1">배송 시작</option>
									<option value="2">배송 도착</option>
									<option value="3">구매결정 완료</option>
									<option value="4">점검중</option>
								</select>
								<% if(pro.getParselState()!=0) { 
									if(pro.getParselCompany()=="CJ대한통운") {
								%>
									<p><a href="http://nplus.doortodoor.co.kr/web/detail.jsp?slipno=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="롯데택배") { %>	
									<p><a href="https://www.lotteglogis.com/mobile/reservation/tracking/linkView?InvNo=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="우체국택배") { %>	
									<p><a href="http://service.epost.go.kr/trace.RetrieveRegiPrclDeliv.postal?sid1=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="로젠택배") { %>	
									<p><a href="https://www.ilogen.com/m/personal/trace/<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="한진택배") { %>	
									<p><a href="https://www.hanjin.co.kr/kor/CMS/DeliveryMgr/WaybillResult.do?mCode=MN038&schLang=KR&wblnumText2=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="CU 편의점택배") { %>	
									<p><a href="https://www.cupost.co.kr/postbox/delivery/localResult.cupost?invoice_no<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="EMS 택배") { %>	
									<p><a href="http://service.epost.go.kr/trace.RetrieveEmsTrace.postal?ems_gubun=E&POST_CODE=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } else if(pro.getParselCompany()=="경동택배") { %>	
									<p><a href="http://kdexp.com/basicNewDelivery.kd?barcode=<%=pro.getBaleCode() %>">배송 추적</a></p>
									<% } %>
								<% } %>	
							</td>
						</tr>
					</tbody>
				</table>
				<div class="btn-group">
					<input type="submit" name="submit-btn" class="btn btn-dark" value="배송 정보 변경">
					<input type="reset" name="reset-btn" class="btn btn-secondary" value="취소">
					<a href="<%=request.getContextPath() %>/GetAdminSalesListCtrl" class="btn btn-dark">목록으로</a>
				</div>
			</form>
			<script>
			function postCheck(f){
				var code = [10,12,13,11,12,13,13,11];
				var com = ["CJ대한통운","롯데택배","우체국택배","로젠택배","한진택배","CU 편의점택배","EMS 택배","경동택배"];
				var baleCode = f.baleCode.value;
				baleCode = baleCode.trim();
				var parselCompany = f.parselCompany.value;
				for(var i=0;i<8;i++){
					if(parselCompany==com[i]){
						if(baleCode.length!=code[i]){
							alert("해당 택배사와 화물코드의 형식이 일치하지 않습니다.");
							f.baleCode.focus();
							return false;
						}
						//return false;
					}				
				}
			}
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