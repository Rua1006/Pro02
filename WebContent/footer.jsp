<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<style>
	/*foot*/
    .ft {position: relative; height: 470px; width: 100%;}
    .ft_wrap:after { content:""; display:block; clear:both; }
    .ft_wrap .ft-top a {display: inline-block; font-family: 'AppleGothic-B'; font-size: 16px; color: #aaaba6; letter-spacing: -0.025em;}
    .ft_wrap .ft-top a:after {content: ''; display: inline-block; width: 1px; height: 14px; margin: 0 30px; background: #e2e5e4; vertical-align: middle;}
    .ft_wrap .ft-top {width: 1300px; margin: 0 auto;}
    .ft_wrap .left {float: left; width: 50%; height: 100%; padding-top: 100px; padding-left: 300px; padding-right: 150px; background: #353131; box-sizing: border-box; font-size: 14px; font-weight: 400; position: relative; overflow: hidden;}
    .ft_wrap .right {float: left; width: 50%; height: 100%; padding-top: 100px; background: #292626; box-sizing: border-box; overflow: hidden;}
    .ft_wrap .right .right1 {clear: both; float: left; padding-left: 90px; padding-right: 90px; border-right: 1px solid #6a6966; position: relative;}
    .ft_wrap .right .right2 {float: left; padding-left: 90px; padding-right: 90px; position: relative;}
    .ft-top {height: 50px; line-height: 50px;}
    .ft .ft_wrap {height: 430px; display: block;}
    .ft p {color: #aaaba6;}
    .pic_fb {display: block; float: left; margin-right: 10px;}
    .pic_is {display: block; float: left; margin-right: 10px;}
    .pic_yt {display: block; padding-top: 2px;}
    .copyright_title {font-weight: 700;}
    .copyright_title2 {font-weight: 700; margin-bottom: 20px;}
    .copyright_title3 {font-weight: 700; margin-top: 30px;}
    .ft_tel {font-size: 50px; font-weight: 700;}
    .weekend {font-size: 12px;}
    .humu {margin-bottom: 70px;} 
	</style>
</head>
<div class="ft_wrap">
    <div class="ft-top">
        <a href="#">이용안내</a>
        <a href="#">이용약관</a>
        <a href="#">개인정보처리방침</a>
        <a href="#">공지사항</a>
    </div>
    <div class="left">
        <p class="copyright">주식회사 일현코퍼레이션<br></p>
        <p class="addr">
            04799 서울특별시 성동구 아차산로15길 52 (성수동2가) 삼환디지털벤처타워 902-1호<br>
            이메일 : doctordog@ilhyun.co.kr<br>
            사업자번호 : 206-86-61496 | 통신판매신고번호 : 제 2012-서울성동-0364<br> 
            KG 이니시스 매매보호(에스크로)서비스 가입<br>
            대표이사 : 김형우 | 개인정보관리자 : 관리부<br>
        </p>
        <div>
            <p class="copyright">© Ilhyun Corporation. all rights reserved.</p>
            <a href="https://ko-kr.facebook.com/okdoctordog/" target="_blank">
                <img src="<%=request.getContextPath() %>/img/icon/ico_facebook.png"  width="25" height: auto alt="facebook" class="pic_fb">
            </a>
            <a href="https://www.instagram.com/doctordog_korea/?hl=ko" target="_blank">
                <img src="<%=request.getContextPath() %>/img/icon/ico_instagram.png"  width="25" height: auto alt="instagram" class="pic_is">
            </a>
            <a href="https://www.youtube.com/channel/UCFOuQToD-Ces7c1CxMu5SRA" target="_blank">
                <img src="<%=request.getContextPath() %>/img/icon/ico_youtube.png"  width="31" height: auto alt="youtube" class="pic_yt">
            </a>
        </div>
    </div>
    <div class="right">
        <div class="right1">
            <p class="copyright_title">고객센터</p>
            <p class="addr">
            <p class="ft_tel">1544-0322</p><br>
            <p>
                평일 | 오전 10:30~오후 05:00<br>
                점심시간 | 오전 11:30 ~ 오후 12:30<br>
            </p>
            <p class="weekend">     
                (주말 및 공휴일 휴무)<br> 
            </p>
            <p class="copyright">
                FAQ | 1:1문의 | 마케팅제휴문의
            </p>
        </div>    
        <div class="right2">
            <p class="copyright_title2">
                택배 배송 마감 안내
            </p>
            <p class="addr">
                평일 | 오후 2시 마감<br>
                토요일 | 오후 1시 마감<br>
            </p>
            <p class="humu">    
                고객센터는 토요일 휴무입니다.<br> 
            </p>
            <p class="copyright_title3">
                상온 제품 배송조회>
            </p>
            <p class="copyright_title3">
                냉동 제품 배송조회>
            </p>
        </div>
    </div>
</div>