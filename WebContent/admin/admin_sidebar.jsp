<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
#sidebarMenu {height:; margin-right: 0; text-align: center; font-size: 20px; font-weight: 600;}
</style>
<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">   
	<div class="sidebar-sticky pt-3">
		<ul class="nav flex-column">
		  <li class="nav-item">
		    <a class="nav-link active" href="<%=request.getContextPath() %>/admin/index.jsp">
		    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
		    	기본설정<span class="sr-only"></span></a>
		  </li>
		  <li class="nav-item">
		  	<a class="nav-link text-dark" href="<%=request.getContextPath() %>/GetCustomListCtrl">
		           회원관리 ></a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link text-dark" href="<%=request.getContextPath() %>/GetBoardListCtrl">
			 공지사항 관리 ></a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link text-dark" href="<%=request.getContextPath() %>/GetProductListCtrl?cateNo=4">
		  	  제품 관리 ></a>
		  </li>
		  <li class="nav-item">
	       <a class="nav-link text-dark" href="<%=request.getContextPath() %>/GetQnaListCtrl.do">
	      	고객문의 ></a>
		  </li>
		  <li class="nav-item">
	       <a class="nav-link text-dark" href="<%=request.getContextPath() %>/GetAdminSalesListCtrl">
	       	판매관리 ></a>
		  </li>
		  <li class="nav-item">
	       <a class="nav-link text-dark" href="<%=request.getContextPath() %>/GetAdminParselListCtrl">
	       	배송관리 ></a>
		  </li>
		</ul>
	</div>
</nav> 