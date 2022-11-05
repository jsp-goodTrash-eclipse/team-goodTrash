<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>마이페이지</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myPage/myPage.css">
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
</head>
<body>
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
            </ul>
            </div>
        </div>
        </nav>
        <article class="top_home">
            <h1 class="home">
                <a href="">
                    <span class="logo">
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
                        <a href="">공지사항</a>
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
                        <input type="text" id="Search" name="find" placeholder="싱그러움을 검색하세요." autocomplete="off">
                        <button type="submit" class="btn_search">
                            <span class="btn_search_icon">
                                <!-- <img src="imgs/search.png"> -->
                            </span>
                        </button>
                    </form>
                    </div>
                </div>
            </div>
        </article>
    </header>
    <section id="container">
        <article class="holder">
            <div class="mymenu">
            <details>
                <summary>
                  수거내역
                  <button type="button" data-action="slide" class="btn_arrow"></button>
                </summary>
                <ul>
                  <li class="sub_menu"><a href="#">상세정보</a></li>
                </ul>
              </details>
              <details>
                <summary>
                  내 정보관리
                  <button type="button" data-action="slide" class="btn_arrow btn_arrow2"></button>
                </summary>
                <ul>
                  <li class="sub_menu"><a href="#">프로필 수정</a></li>
                  <li class="sub_menu"><a href="#">로그아웃</a></li>
                  <li class="sub_menu"><a href="#">회원탈퇴</a></li>
                </ul>
              </details>
              <details>
                <summary>
                  내 포인트
                  <button type="button" data-action="slide" class="btn_arrow"></button>
                </summary>
                <ul>
                  <li class="sub_menu"><a href="#">출금하기</a></li>
                  <li class="sub_menu"><a href="#">포인트조회</a></li>
                </ul>
              </details>
              <details>
                <summary>
                  1대 1문의
                  <button type="button" data-action="slide" class="btn_arrow"></button>
                </summary>
                <ul>
                  <li class="sub_menu"><a href="#">내 문의내역</a></li>
                  <li class="sub_menu"><a href="#">문의답변</a></li>
                </ul>
                </details>
            </div>
            <div class="mycon">
                <div class="myprofile">
                    <div class="thumbs" id="photo" style="background-image: url(https://www.shouse.garden/data/profile/profile.jpg);">
                        <button type="button" class="btn_profile"></button>
                    </div>
                    <p class="name">
                        <span class="lv gg"></span>
                    </p>
                    <div class="relative tgwrp">
                        <div>
                            <p class="txt" id="introducion">한 줄 소개글을 작성해주세요.</p>
                            <button type="button" data-action="fade" class="btn_tg">작성</button>
                        </div>
                    </div>
                    <div class="sns_list">
                        <div class="item">
                            <button type="button" data-action="fade" class="sns sns1">인스타그램 주소 작성</button>
                        </div>
                        <div class="item">
                            <button type="button" data-action="fade" class="sns sns2">유튜브 주소 작성</button>
                        </div>
                        <div class="item">
                            <button type="button" data-action="fade" class="sns sns3">블로그 주소 작성</button>
                        </div>
                    </div>
                    <ul class="clearfix">
                        <li>
                            <strong>
                                <a href="">0</a>
                            </strong>
                            <a href="">게시물</a>
                        </li> 
                        <li>
                            <strong>
                                <a href="">0</a>
                            </strong>
                            <a href="">팔로우</a>
                        </li> 
                        <li>
                            <strong>
                                <a href="">0</a>
                            </strong>
                            <a href="">팔로잉</a>
                        </li> 
                    </ul>
                    
                </div>
                <ul class="mystate tc">
                    <li>
                        <a href="">
                            <span class="icon icon1"></span>
                            <span class="txt">알림</span>
                            <span class="num">0</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon icon2"></span>
                            <span class="txt">좋아요</span>
                            <span class="num">0</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon icon3"></span>
                            <span class="txt">후기</span>
                            <span class="num">0</span>
                        </a>
                    </li>
                </ul>
                <ul class="mylink tc">
                    <li>
                        <a href="">
                            <div class="point_box">
                            <span class="icon"></span>
                            <span class="txt">내 포인트</span>
                            <span class="point">0</span>
                            <button type="button" class="point_btn" value="출금">출금</button>
                            </div>    
                        </a>
                    </li>
                </ul>
            </div>
        </article>
    </section>


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
                            관리자페이지이동
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
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="mypage.js"></script>
<script>
   
</script>
</html>