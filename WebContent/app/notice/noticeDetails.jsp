<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <title>공지사항</title>
        <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice/noticeDetails.css">
    
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
                            <img src="../icon1.png">
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
        </header>

<!-- 공지사항  -->
    <div class="notice-cont-wrap">
        <h2 class="title">공지사항</h2>

        <div class="notice-table-wrap">
            <table>
                <!-- 캡션: 테이블 설명 -->
                <caption>
                    <strong>대표 공지사항</strong>
                    <p>공지사항 목록입니다. 번호, 제목, 등록일로 구성되어 있습니다.</p>
                </caption>
                <!--// 캡션: 테이블 설명 -->

                <colgroup>
                    <col style="width:15%">
                    <col style="width:70%">
                    <col style="width:15%">
                </colgroup>

                <!-- 참고: http://www.tcpschool.com/html-tag-attrs/th-scope -->
                <thead>
                    <tr>
                        <th scope="col">번호</th>
                        <th scope="col">제목</th>
                        <th scope="col">등록일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="important">
                        <td>3</td>

                        <!-- <td class="">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vitae, accusantium?</td> -->
                        <td class="text_tit">
			<a href="#">[공지]포인트 사용 기준 및 포인트 정책 변경 안내</a>
		</td>
                        <td>2021.02.24</td>
                    </tr>
                    <tr>
                        <td>2</td>

                        <!-- <td>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vitae, accusantium?</td> -->
                        <td class="text_tit">
<a href="#">[공지]서비스 가능 지역 조회 페이지 오류 안내</a>
</td>
                        <td>2021.01.14</td>
                    </tr>
                    <tr>
                        <td>1</td>

                        <!-- <td>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vitae, accusantium?</td> -->
                        <td class="text_tit">
<a href="#">[공지][우수 쓰레기] 홈페이지 개인정보처리방침 변경안내</a></td>
                        <td>2010.02.24</td>
                    </tr>
                </tbody>
            </table>
        </div>

<div class="paging_wrap">
<button type="button">
<span class="blind">가장 처음</span>
</button>

<ul class="paging">
	<li class="now">1</li>
<li>2</li>
<li>3</li>
<li>4</li>
</ul>
<button type="button">
<span class="blind">가장 마지막</span>
</button>
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

</body></html>