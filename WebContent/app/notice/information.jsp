<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <title>이용안내</title>
        <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice/infomation.css">
    
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
                            <a href="../test/test.html">서비스 가능 지역</a>
                        </li>
                        <li class="swiper-slide">
                            <a href="../subject/subject.html">수거가능/불가능 품목</a>
                        </li>
                        <li class="swiper-slide">
                            <a href="../notandum/notandum.html">유의사항 및 운영시간</a>
                        </li>
    
                    </ul>
                </div>
            </nav>
        </header>
        <div class="cont-wrap">
            <h2>예약 가능 지역 조회</h2>
            <div class="reservation_cont_wrap">
                <div class="cont cont01">
                    <div class="visual_img"></div>
                </div>
    
                <div class="cont cont02">
                    <div class="select_inp_wrap">
                        <div class="select_wrap">
                            <label for="inp_01">시도</label>
                            <select id="inp_01">
                                <option disabled selected>시도</option>
                                <option>서울</option>
                                <option>경기도</option>
                                <option>인천</option>
                                <option>부산</option>
                                <option>대구</option>
                                <option>광주</option>
                                <option>대전</option>
                                <option>울산</option>
                                <option>세종</option>
                                <option>강원</option>
                                <option>충북</option>
                                <option>충남</option>
                                <option>전북</option>
                                <option>전남</option>
                                <option>경북</option>
                                <option>경남</option>
                                <option>제주</option>
                            </select>
                        </div>
            
                        <div class="select_wrap">
                            <label for="inp_01">시군구</label>
                            <select id="inp_02">
                                <option disabled selected>시군구</option>
                                <option>강서구</option>
                                <option>양천구</option>
                                <option>마포구</option>
                            </select>
                        </div>
            
                        <div class="select_wrap">
                            <label for="inp_01">읍면동</label>
                            <select id="inp_03">
                                <option disabled selected>읍면동</option>
                                <option>신정동</option>
                                <option>목동</option>
                                <option>신월동</option>
                            </select>
                        </div>
            
                        <div class="button_wrap">
                            <button type="button">조회하기</button>
                            <button type="button" class="init">초기화</button>
                        </div>
                    </div>
    
                    <!-- <p class="text_info_box">
                        해당 지역이 목록에 없는 경우 검색 불가 지역입니다.<br>
                        고객센터 1599-0903로 문의 주시기 바랍니다.
                    </p> -->
    
                    <p class="text_info_box">
                        선택하신 지역은 배출예약 수거 <em>가능</em> 지역입니다.<br>
                        수거 가능 요일 : <em>월, 수, 금</em>
                    </p>
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
        