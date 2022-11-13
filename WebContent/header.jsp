<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
%>
<head>
	<style>
	/*head*/
    .dropdown-menu {border-radius:0%}
    .text-secondary {margin-left: 20px;}
    .navbar {--bs-navbar-padding-y: 0; height: 100px; padding: 20px;}
	</style>
</head>
<nav class="navbar navbar-expand-lg bg-white fixed-top">
    <div class="container-fluid">
        <!-- 로고 클릭시 메인페이지 이동 -->
        <a class="navbar-brand" href="<%=request.getContextPath() %>/index.jsp"><img src="<%=request.getContextPath() %>/img/logo/header_logo_mini.png" alt="로고" width="100" height="auto"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="<%=request.getContextPath() %>/brandStroy.jsp" role="button" data-bs-toggle="dropdown" aria-expanded="false">
             	   브랜드</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/brandStroy.jsp">브랜드스토리</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="<%=request.getContextPath() %>/brandGiveLove.jsp">Give & Love</a></li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="GetProductItemListCtrl?cateNo=1" role="button" data-bs-toggle="dropdown" aria-expanded="false">
             	   제품</a>
                <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=1">사료</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=2">화식</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=3">간식</a></li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="<%=request.getContextPath() %>/event.jsp" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              	  커뮤니티</a>
                <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=request.getContextPath() %>/event.jsp">이벤트</a></li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="<%=request.getContextPath() %>/GetBoardListCtrl" role="button" data-bs-toggle="dropdown" aria-expanded="false">
 				고객지원</a>
                <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetBoardListCtrl">공지사항</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetQnaListCtrl.do">고객문의</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">자주 묻는 질문</a></li>
                </ul>
            </li>
            </ul>
            <!-- navi 끝부분 -->
            <ul class="nav justify-content-end">
				<% if(sid!=null) { %>
					<li class="nav-item">
					  <span class="nav-link text-secondary"><%=sname %>님</span>
					</li>
					<li class="nav-item">
					  <a class="nav-link text-secondary" href="<%=request.getContextPath() %>/LogOutCtrl">로그아웃</a>
					</li>
					<li class="nav-item">
					  <a class="nav-link text-secondary" href="<%=request.getContextPath() %>/GetCustomInfoCtrl">회원정보</a>
					</li>
					<% if(sid.equals("admin")) { %>
						<li class="nav-item">
							<a class="nav-link text-secondary" href="<%=request.getContextPath() %>/admin/index.jsp">관리자 페이지로</a>
						</li>
					<% } else { %>
						<li class="nav-item">
							<a class="nav-link text-secondary" href="<%=request.getContextPath() %>/GetMemberSalesInfoCtrl">구매내역</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-secondary" href="<%=request.getContextPath() %>/GetMemberCartListCtrl">장바구니</a>
						</li>
					<% } %>
				<% } else { %>
					<li class="nav-item">
				  		<a class="nav-link text-secondary" href="<%=request.getContextPath() %>/custom/login.jsp">로그인</a>
					</li>
					<li class="nav-item">
				  		<a class="nav-link text-secondary" href="<%=request.getContextPath() %>/custom/membership.jsp">회원가입</a>
					</li>
				<% } %>
            </ul>
        </div>
    </div>
</nav>