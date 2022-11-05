<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운영시간 및 유의사항</title>
        <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice/notandum.css">
    
    </head> 

 <body>
    
 <!-- 헤더 -->
  <header id="header">
    <nav class="util" style="background-color: #f2f2f2;">
    <div class="top holder">
        <div class="link_nav">
            <ul>
                <li>
                    <span class="sp gp">
                    <img src="https://www.shouse.garden/images/common/u_gp.png" class="sp">
                    </span>
                </li>
                <li>
                    <span class="sp ap">
                        <img src="https://www.shouse.garden/images/common/u_ap.png" class="sp">
                    </span>
                </li>
                <li>
                    <span class="sp in">
                        <img src="https://www.shouse.garden/images/common/u_in.png" class="sp">
                    </span>
                </li>
                <li>
                    <span class="sp kc">
                        <img src="https://www.shouse.garden/images/common/u_kc.png" class="sp">
                    </span>
                </li>
                <li>
                    <span class="sp fd">
                        <img src="https://www.shouse.garden/images/common/u_fb.png" class="sp">
                    </span>
                </li>
                <li>
                    <span class="sp yt">
                        <img src="https://www.shouse.garden/images/common/u_yt.png" class="sp">
                    </span>
                </li>
            </ul>
        </div>
        <div class="link_my">
        <ul>
        	<c:choose>
            		<c:when test="${empty sessionScope.userNumber}">
            			 <li>
                    		<a href="${pageContext.request.contextPath}/user/login.user" style="text-decoration: none;">로그인</a>
               			 </li>
			             <li>
			             	<a href="${pageContext.request.contextPath}/user/join.user">회원가입</a>
			             </li>
            		</c:when>
            		<c:otherwise>
            			<li>
                    		<a href="${pageContext.request.contextPath}/myPage/main.mp">마이페이지</a>
               			</li>
               			<li>
                   			<a href="${pageContext.request.contextPath}/user/logout.user">로그아웃</a>
               			</li>
            		</c:otherwise>
            	</c:choose>
            <!-- 	
            <li>
                <a href="" style="text-decoration: none;">로그인</a>
            </li>
            <li>
                <a href="">회원가입</a>
            </li>
            <li>
                <a href="">마이페이지</a>
            </li>
             -->
        </ul>
        </div>
    </div>
    </nav>

        <article class="top_home">
            <h1 class="home">
                <a href="">
                    <span class="logo">
         
                        <img src="../icon2.png">
                    </span>
                </a>
            </h1>
            <div class="inner">
                <div class="holder">
                    <button type="button" class="btn_n nav">
                        <span class="menu c">메뉴</span>
                    </button>
                    <ul>
                    <li class="active">
                        <a href="">홈</a>
                    </li>
                    <li class="active">
                        <a href="">스토어</a>
                    </li>
                    <li class="active">
                        <a href="">커뮤니티</a>
                    </li>
                    <li class="active">
                        <a href="">이용안내</a>
                    </li>
                    <li class="active">
                        <a href="../notice/notice.html">공지사항</a>
                    </li>
                    </ul>
                    <a href="" class="btn_t write">
                    <span class="c write">
                        글쓰기</span>
                    </a>
                    <a href="" class="btn_t cart">
                    <span class="c cart">
                        장바구니</span>
                    </a>
                    <a href="" class="btn_t my">
                    <span class="c my">
                        마이페이지</span>
                    </a>
                    <div class="search">
                    <form class="mainSearchForm">
                        <input type="text" id="Search" name="find" placeholder="검색하세요" autocomplete="off">
                        <button type="submit" class="btn_search">
                            <span class="btn_search_icon">
                            </span>
                        </button>
                    </form>
                    </div>
                </div>
            </div>
        </article>
        <nav class="subnav">
            <div data-start="menu2" class="pholder mswiper"><!-- data-start 현재 페이지 메뉴 순서(0부터) -->
                <ul class="swiper-wrapper">
                    <!--li class="swiper-slide"><a href="../community/11000_community_mian.html">인기</a></li>
                    <li class="swiper-slide"><a href="../community/12001_list.html">사진</a></li-->
                    <li class="swiper-slide active">
                        <a href="">서비스 가능 지역</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="../subject/subject.html">수거가능/불가능 품목</a>
                    </li>
                    <li class="swiper-slide">
                        <a href="../community/15001_tour_list.html">유의사항 및 운영시간</a>
                    </li>

                </ul>
            </div>
        </nav>
    </header>
<!-- 내용 -->
<div class="sub" id="contents">
    <div class="container">
    <div class="sub_con">
    <ul class="con_list">
        <li>
        <h3 class="tit">이용방법</h3>
    
        <p class="m_txt">폐가전제품 배출 예약은 전국 어디서나 간편하게 하실 수 있습니다.</p>
    
        <ol class="use_list">
            <li><span>인터넷/모바일</span> <em>www.15990903.or.kr</em></li>
            <li><span> 폐가전<br>
            무상방문수거 </span> <b>1599-0903</b></li>
        </ol>
        </li>
         <li>
                <h3 class="tit">유의사항</h3>
            
                <ol class="dot_list">
                    <li><span class="fn_blue">에어컨, 벽걸이 TV, 빔프로젝터, 유무선공유기, 감시카메라</span> 등 설치(고정)된 제품은 서비스 이용 전 기본 철거가 되어 있어야 수거가 가능함 <span class="fn_red">(미철거시 수거 불가)</span></li>
                    <li>방문수거 대상품목 수거 시, 다량배출품목 추가 수거 가능</li>
                    <li><span class="fn_blue">프린터, 복사기, 팩시밀리</span> 수거 신청시, <span class="fn_red">잉크/토너</span> 등이 밖으로 새어나가지 않도록 <span class="fn_red">고정 조치</span> 후 배출</li>
                    <li><span class="fn_blue">인력으로 수거가 불가한 제품</span>은 주민이 <span class="fn_red">수거 가능한 상태가 되도록 조치</span> 하여야 수거가 가능함</li>
                </ol>
            
                <ul class="m_list">
                    <li style="padding-left: 10px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 예) 사다리차, 크레인 없이 수거가 불가능한 경우, 제품을 분해해야만 수거가 가능한 경우, 에어컨 실외기가 위험한 곳에 설치된 경우</li>
                </ul>
                </li>
        <li>
        <h3 class="tit">운영시간</h3>
    
        <ul class="time_list">
            <li>
            <ol>
                <span><em>콜센터</em></span>
            
                <li>운영시간</li>
                <li><span>평일(월 ~ 금)</span> <b>08:00 ~ 18:00</b></li><br>
                <span>콜센터 휴무일</span>
               <li> <em>매주 토·일요일, 공휴일, 신정(1.1),<br>
                근로자의 날(5.1), 설/추석연휴</em></li><br>
            </ol>
        </li>
            <li>
            <ol>
                <span><em>수거차량</em></span>
                <li><span>평일 및 토요일</span></li>
                <li><span>휴무일</span> <em>매주 일요일, 신정(1.1),<br>
                근로자의 날(5.1), 설/추석연휴</em> <strong>※ 지역에 따라 수거 가능 요일이 상이합니다. </strong></li>
            </ol>
        </li>
        </ul>
        </li>
    </ul>
    </div>
    </div>
    </div>
       <!-- 푸터 -->
<footer id="footer">
    <div class="holder">
        <div class="info">
            <span>
                고객문의 : cs@cona.world
                 |
            </span>
            <span>제휴문의 : cooperate@cona.world</span>
        </div>
        <nav class="fnav">
            <ul>
                <li>
                    <a href="">
                        공지사항
                        <span class="arrow"></span>
                    </a>
                </li>
                <li>
                    <a href="">
                        브랜드스토리
                        <span class="arrow"></span>
                    </a>
                </li>
                <li>
                    <a href="">
                        개인정보처리방침
                        <span class="arrow"></span>
                    </a>
                </li>
                <li>
                    <a href="">
                        서비스이용약관
                        <span class="arrow"></span>
                    </a>
                </li>
                <li>
                    <a href="">
                        고객상담
                        <span class="arrow"></span>
                    </a>
                </li>
                <li>
                    <a href="">
                        판매자신청
                        <span class="arrow"></span>
                    </a>
                </li>
                <li>
                    <a href="">
                        사업자구매회원신청
                        <span class="arrow"></span>
                    </a>
                </li>
            </ul>
        </nav>
        <div class="siteinfo">
            <span>
                대표번호 : 1899-9137 | 주식회사 코나 | 대표이사 : | 사업자정보확인<br>
                주소: 대구광역시 수성구 알파시티1로 36,7층(대흥동) | 사업자등록번호: 532-87-01552 | 통신판매업신고번호: 2020-대구수성구-0872 | Copyright©싱그러운 집 ALL RIGHTS RESERVED.<br>
                개인정보보호책임자: 조정아 | 호스팅제공자:주식회사 가비아씨엔에스
            </span>
        </div>
        <div class="bottom info">
            <p>
                NICEPAY 안전거래 서비스 : 고객님의 안전거래를 위해 현금 결제 시, 저희 사이트에서 가입한 구매안전 서비스를 이용할 수 있습니다.  
            </p>
            <p>
                ㈜코나는 통신판매중개자로서 통신판매의 당사자가 아니며, 입점업체가 등록한 상품, 상품정보 및 거래에 대하여 ㈜코나에서는 일체 책임을 지지 않습니다.
            </p>
        </div>
    </div>
</footer>
        </body>
        </html>
        