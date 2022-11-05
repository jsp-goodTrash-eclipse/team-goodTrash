<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>스토어</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/store/main.css">
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
                    <span class="logo" style="color: green;">
                        우수 쓰레기
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
                    <li class="active" style="border-bottom:3px solid green;">
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
                    <a href="/store/storebasket.html" class="btn_t cart">
                    <span class="c cart">
                        장바구니</span>
                    </a>
                    <a href="" class="btn_t my">
                    <span class="c my">
                        마이페이지</span>
                    </a>
                    <div class="search">
                    <form class="mainSearchForm">
                        <input type="text" id="Search"placeholder="싱그러움을 검색하세요.">
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
            <div class="sub_holder">
                <ul class="sub-wrapper">
                    <li class="subli-wrapper">
                        <a href="">홈</a>
                    </li>
                    <li class="subli">
                        <a href="">카테고리</a>
                    </li>
                    <li class="subli">
                        <a href="">베스트</a>
                    </li>
                    <li class="subli">
                        <a href="">기획전</a>
                    </li>
                    <li class="subli">
                        <a href="">이벤트</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <section id="container">
        <article class="mainSlide">
            <div class="holder">
                <div class="banner">
                    <div><img src="https://www.shouse.garden/data/banner/221006_094234_289900p.jpg"></div>
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
                                <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_221007160410.png">
                            </span>
                            희귀식물
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <!-- <div class="img thumbs"> -->
                                    <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_221007160150.png">
                                <!-- </div> -->
                            </span>
                            식물/플라워
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_221007160226.png">
                            </span>
                            플랜테리어
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_221007160254.png">
                            </span>
                            가이드닝용품
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_221007160410.png">
                            </span>
                            DIY/체험
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <span class="icon">
                                <img src="https://shop.shouse.garden/data/categoryimage/event_view_banner_221007160410.png">
                            </span>
                            친환경
                        </a>
                    </li>
                    <div class="end_category">
                        <div class="">
                            <img src="https://www.shouse.garden/data/banner/220624_060913_923400p.jpg">
                        </div>                
                    </div>
                </ul>
            </div>
        </article>
        <div class="holder hr"></div>

        <div class="bestshop">
        <article class="best">
            <div class="shopname">
                <h3 class="subtit">지금 꼭 사야하는 BEST 추천상품</h3>
            </div>
                <div class="lst_gallery">
                    <ul class="best-top">
                        <li class="best1">
                            <a href="">
                                <img src="/img/1shop.jpg">
                                <p>[식물행성] 여우꼬리철화 미니밍크선인장 이태리토분 세트</p>
                                <span>42,000</span>
                            </a>
                        </li>
                        <li class="best2">
                            <a href="">
                                <img src="/img/2shop.png">
                                <p>립살리스 트리고나 늘어지는 공중식물(행잉플랜트) - EV 이태리토분 세트</p>
                                <span>60,000</span>
                            </a>
                        </li>
                        <li class="best3">
                            <a href="">
                                <img src="/img/3shop.jpg">
                                <p>수경 재배 식물 영양제 액상비료 화분 영양액</p>
                                <span>34,000</span>
                            </a>
                        </li>
                        <li class="best4">
                            <a href="">
                                <img src="/img/4shop.jpg">
                                <p>[부부가드닝] 엔조이스킨 스킨답서스 수경재배식물 공기정화식물 포트</p>
                                <span>19,000</span>
                            </a>
                        </li>
                    </ul>
                    <ul class="best-bottom">
                        <li class="best5">
                            <a href="">
                                <img src="/img/5shop.jpg">
                                <p>플라랜드 공기정화 인테리어식물 딸기코 만세선인장 핑크선인장 테라조 대리석화분</p>
                                <span>20,000</span>
                            </a>
                        </li>
                        <li class="best6">
                            <a href="">
                                <img src="/img/6shop.jpg">
                                <p>★단독입점★ 테라몽드 시그니처 수제토분 토분</p>
                                <span>24,000</span>
                            </a>
                        </li>
                        <li class="best7">
                            <a href="">
                                <img src="/img/7shop.jpg">
                                <p>춘봉철화 접목선인장(화이트고스트, 핑크고스트) 이태리토분 세트</p>
                                <span>12,000</span>
                            </a>
                        </li>
                        <li class=best8"">
                            <a href="">
                                <img src="/img/8shop.jpg">
                                <p>호프셀렘 수경재배 set</p>
                                <span>18,000</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <h3>함께 하면 좋은 싱그러운 연관상품</h3>
                <div class="lst_gallery">
                    <ul class="best-top">
                        <li class="best1">
                            <a href="">
                                <img src="/img/9shop.jpg">
                                <p>파키라(목대3)_바소토분</p>
                                <span class="price">
                                    27,000
                                </span>
                            </a>
                        </li>
                        <li class="best2">
                            <a href="">
                                <img src="/img/10shop.jpg">
                                <p>파키라(목대3)_독일 스팡 토분(13cm)_3colors
                                </p>
                                <span class="price">
                                    42,000
                                </span>
                            </a>
                        </li>
                        <li class="best3">
                            <a href="">
                                <img src="/img/11shop.jpg">
                                <p>포인세티아 레드컬러 중형_독일 스팡 토분(15cm)_3colors</p>
                                <span class="price">
                                    42,000
                                </span>
                            </a>
                        </li>
                        <li class="best4">
                            <a href="">
                                <img src="/img/12shop.jpg">
                                <p>포인세티아 레드컬러_아트스톤 친환경 화분(13cm)_2c</p>
                                <span class="price">
                                    42,000
                                </span>
                            </a>
                        </li>
                </div>
            </article>
    </div>
       
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
    