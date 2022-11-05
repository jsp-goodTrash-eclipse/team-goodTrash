<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="main01.css">
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mainPage/main01.css">

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
        <article class="mainSlide">
            <div class="holder">
                <div class="banner">
                    <div><img src="https://www.shouse.garden/data/banner/221006_093938_338500p.jpg"></div>
                    <div><img src="https://www.shouse.garden/data/banner/221006_093938_384300p.jpg"></div>
                    <div><img src="https://www.shouse.garden/data/banner/220729_025610_938300p.jpg"></div>
                    <div><img src="https://www.shouse.garden/data/banner/220729_024323_046500p.jpg"></div>
                    <div><img src="https://www.shouse.garden/data/banner/220729_024323_093400p.jpg"></div>
                    <div><img src="https://www.shouse.garden/data/banner/220729_024323_069700p.jpg"></div>
                </div>
            </div>
            <div class="slide_controls">
            </div>
        </article>
        <article class="category">
            <div class="holder ctg">
                <ul class="category_icon">
                    <li>
                        <a href="">
                            <span class="icon">
                                <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_221007154056.jpg">
                            </span>
                            수거신청
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_221007154133.jpg">
                            </span>
                            수거내역
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_211129172542.jpg">
                            </span>
                            이용안내
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_211129174015.jpg">
                            </span>
                            쇼핑하기
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_211129172551.jpg">
                            </span>
                            내포인트
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_211129174025.jpg">
                            </span>
                            수거기사
                        </a>
                    </li>
                </ul>
            </div>
        </article>
        <div class="holder hr"></div>

        <article class="best">
            <div class="holder">
                <h3 class="subtit">ECO's BEST</h3>
                <div class="lst_gallery">
                    <ul>
                        <li id="best1">
                            <a href="">
                                <div class="wrphover">
                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1648205898821l0.jpeg">
                                    <span class="top">BEST</span>
                                </div>
                                <p class="txt">친환경 텀블러</p>
                                <div class="pinfo">
                                    <p class="price">26,000</p>
                                </div>
                            </a>
                        </li>
                        <li id="best2">
                            <a href="">
                                <div class="wrphover">
                                    <img src="https://product-image.kurly.com/cdn-cgi/image/width=676,format=auto/product/image/06dc7d4a-85a9-416e-9d7b-f5acd66d8bef.jpg">
                                    <span class="top">NEW</span>
                                </div>
                                <p class="txt">천연 수세미 2개입</p>
                                <div class="pinfo">
                                    <p class="price">5,000</p>
                                </div>
                            </a>
                        </li>
                        <li id="best3">
                            <a href="">
                                <div class="wrphover">
                                    <img src="https://shop.shouse.garden/data/goods/214/2021/05/2542_tmp_fa77a7fc6f5d7fb02f72e963a7f103237944list1.jpg">
                                </div>
                                <p class="txt">무럭무럭 코코넛화분 13cm 1입</p>
                                <div class="pinfo">
                                    <p class="price">12,000</p>
                                </div>
                            </a>
                        </li>
                        <li id="best4">
                            <a href="">
                                <div class="wrphover">
                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1657784000482l0.jpg">
                                </div>
                                <p class="txt">친환경 대나무 칫솔</p>
                                <div class="pinfo">
                                    <p class="price">9,000</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="lst_gallery">
                    <ul>
                        <li id="best5">
                            <a href="">
                                <div class="wrphover">
                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1610949342271l0.jpg">
                                    <span class="top">BEST</span>
                                </div>
                                <p class="txt">친환경 퍼퓸 고체 샴푸</p>
                                <div class="pinfo">
                                    <p class="price">11,000</p>
                                </div>
                            </a>
                        </li>
                        <li id="best6">
                            <a href="">
                                <div class="wrphover">
                                    <img src="https://img-cf.kurly.com/cdn-cgi/image/width=676,format=auto/shop/data/goods/1648220235601l0.jpg">
                                    <span class="top">NEW</span>
                                </div>
                                <p class="txt">에코 다용도 가방</p>
                                <div class="pinfo">
                                    <p class="price">23,000</p>
                                </div>
                            </a>
                        </li>
                        <li id="best7">
                            <a href="">
                                <div class="wrphover">
                                    <img src="https://product-image.kurly.com/cdn-cgi/image/width=676,format=auto/product/image/c2cb7c2f-e629-4cf8-bc3c-07d56723c2ce.jpg">
                                </div>
                                <p class="txt">친환경 분리수거함</p>
                                <div class="pinfo">
                                    <p class="price">14,000</p>
                                </div>
                            </a>
                        </li>
                        <li id="best8">
                            <a href="">
                                <div class="wrphover">
                                    <img src="https://product-image.kurly.com/cdn-cgi/image/width=676,format=auto/product/image/575de81d-9983-4c0c-ae2a-f4ecc1c145c1.jpg">
                                </div>
                                <p class="txt">생분해 매쉬 수세미</p>
                                <div class="pinfo">
                                    <p class="price">3,000</p>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </article>
    
        <article class="keyword">
            <div class="holder">
                <h3 class="subtit">HOT KEYword</h3>
                <div class="keyword_bg">
            <div class="lst_keyword">
                <ul>
                    <li>
                        <span class="hotKeyword">#재활용품</span>
                    </li>
                    <li>
                        <span class="hot hotKeyword">#친환경수거</span>
                    </li>
                    <li >
                        <span class="hotKeyword">#종이의자</span>
                    </li>
                    <li>
                        <span class="hotKeyword">#공기정화</span>
                    </li>
                    <li>
                        <span class="hotKeyword">#지구</span>
                    </li>
                    <li>
                        <span class="hotKeyword">#친환경용돈벌기</span>
                    </li>
                </ul>
            </div>
            <br>
            <div class="lst_keyword2">
                <ul>
                    <li>
                        <span class="hotKeyword">#재활용제품</span>
                    </li>
                    <li>
                        <span class="hotKeyword">#목재</span>
                    </li>
                    <li>
                        <span class="hot hotKeyword">#대나무칫솔</span>
                    </li>
                        <span class="hotKeyword">#온실가스</span>
                    </li>
                    <li>
                        <span class="hotKeyword">#지구온난화</span>
                    </li>
                </ul>
            </div>
            </div>
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
    <script src="index01.js"></script>
    </html>
    