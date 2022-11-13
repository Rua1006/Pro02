<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.drdog.vo.*"%>
<%	Custom custom = (Custom) request.getAttribute("custom"); %>
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
    .page_wrap {width: 30%; margin: 0 auto; padding-bottom: 50px; }
    .container-fluid {padding-left: 0; padding-right: 0;}
    .content {padding-top: 110px; height: 100vh;}
    .subtitle {font-weight: 600; font-size: 30px; margin-top: 50px; text-align: center; padding-bottom: 20px;}
    a {text-decoration: none;}
    .form {margin-top: 30px; width: 600px; margin: 0 auto;}
    .row {width: 100%; margin:0 auto;}
    
    /*btn*/
    .btn-group {width: 100%;}
    #button-addon2 {border-top-right-radius: 0.375rem; border-bottom-right-radius: 0.375rem;}
    
    </style>
</head>
<body>
<div class="wrap">
<header class="hd">
    <div class="hd_wrap">
    	<%@ include file="../header.jsp" %>  
    </div>
</header>
<div class="content container-fluid bg-light">
    <div class="page_wrap">    
        <div class="container subtitle">
        <div class="list-title font--kr">회원정보 확인 및 수정</div>
        </div>
        <form action="<%=request.getContextPath() %>/UpdateCustomCtrl" method="post" name="frm1" id="frm1" onsubmit="return updateCheck(this)" class="insertjoin">
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
						<input type="hidden" name="cusPw" id="cusPw" value="<%=custom.getCusPw() %>">
						<input type="password" name="edit_cusPw" id="edit_cusPw" placeholder="비밀번호 입력" class="form-control" />
					</td>
				</tr>
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="edit_cusPw2" id="edit_cusPw2" placeholder="비밀번호 입력" class="form-control" /></td>
				</tr>
				<tr>
					<th>고객이름</th>
					<td><input type="text" name="cusName" id="cusName" placeholder="이름 입력" class="form-control" value="<%=custom.getCusName() %>" required /></td>
				</tr>
				<tr>
					<th>주소</th>
					<td>
						<p><%=custom.getAddress() %></p>
						<input type="hidden" name="address" id="address">
						<span class="text-danger">*</span><span>주소 변경시 입력</span>
						<input type="text" name="editaddress1" id="editaddress1" placeholder="기본 주소 입력" class="form-control" /><br>
						<input type="text" name="editaddress2" id="editaddress2" placeholder="상세 주소 입력" class="form-control" /><br>
						<input type="text" name="editpostcode" id="editpostcode" style="width:160px;float:left;margin-right:20px;" placeholder="우편번호" class="form-control">
						<button type="button" id="post_btn" onclick="findAddr()" class="btn btn-dark">우편번호 검색</button>
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="tel" name="tel" id="tel" placeholder="전화번호 입력 000-0000-0000" class="form-control" value="<%=custom.getTel() %>" required></td>
				</tr>
				<tr>
					<th>등급</th>
					<td><%
				if(custom.getLevel()==0) {
					out.println("<span>준회원</span>");
				} else if(custom.getLevel()==1){
					out.println("<span>정회원</span>");
				} else if(custom.getLevel()==2){
					out.println("<span>우수회원</span>");
				} else if(custom.getLevel()==3){
					out.println("<span>VIP회원</span>");
				} else {
					out.println("<span>관리자</span>");
				}
				%></td>
				</tr>
				<tr>
					<th>회원 포인트</th>
					<td><%=custom.getPoint() %></td>
				</tr>
				<tr>
					<th>방문횟수</th>
					<td><%=custom.getVisited() %></td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="btn btn-secondary" value="정보수정">
			<input type="reset" name="reset-btn" class="btn btn-dark" value="취소">
		</div>
	</form>	
	<script>
	function updateCheck(f){
		if(f.edit_cusPw.value!=f.edit_cusPw2.value){
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			f.edit_cusPw.focus();
			return false;
		}
	}
	</script>
	<script>
	function findAddr() {
		new daum.Postcode({
			oncomplete: function(data) {
				console.log(data);
				var roadAddr = data.roadAddress;
				var jibunAddr = data.jibunAddress;
				document.getElementById("editpostcode").value = data.zonecode;
				if(roadAddr !== '') {
					document.getElementById("editaddress1").value = roadAddr;				
				} else if(jibunAddr !== ''){
					document.getElementById("editaddress1").value = jibunAddr;
				}
			}
		}).open();
	}
	</script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	</div>
</div>
</div>
</body>
<footer class="ft container-sticky">
    <div class="ft_wrap">
        <%@ include file="../footer.jsp" %>
    </div>
</footer>
</html>