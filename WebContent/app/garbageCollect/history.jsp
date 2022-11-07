<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>history</title>
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/garbageCollect/history.css">
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
                        <img src="C:\web_1900_pej\js\workspace\myProject.html\imgs\home.png">
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
    <article class="request">
        <div class="holder">
            <h3 class="subtit">수거내역</h3>
            <div class="request_c">
               <table class="table">
                <thead>
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">희망 배출일시</th>
                    <th scope="col">예약 품목</th>
                    <th scope="col">방문 예정일</th>
                    <th scope="col">방문 담당자</th>
                    <th scope="col">진행 상태</th>
                </tr>
                </thead>
                <!-- <tbody>
                    <tr style="cursor: pointer;">
                        <td data-before="번호">
                            <div>1</div>
                        </td>
                        <td data-before="희망 배출일시">
                            <div>2022-10-01</div>
                        </td>
                        <td data-before="예약 품목">
                            <div>플라스틱</div>
                        </td>
                        <td data-before="방문 예정일">
                            <div>2022-10-02</div>
                        </td>
                        <td data-before="방문 담당자">
                            <div>박은지 기사님</div>
                        </td>
                        <td data-before="진행 상태">
                            <div style="color: red;">수거완료</div>
                        </td>
                    </tr>
                </tbody> -->
                <tbody>
					<c:choose>
						<c:when test="${not empty historys and fn:length(historys) > 0}">
							<c:forEach var="history" items="${historys}">
								<tr>
									<td>
									<a href="${pageContext.request.contextPath}/garbageCollect/requestCheckDetail.collect?garbageCollectNum=${history.getGarbageCollectNum()}">
									<c:out value="${history.getGarbageCollectNum()}"/>
									</a>
									</td>
									<td><c:out value="${history.getGarbageCollectRequestDate()}"/></td>
									<td><c:out value="${history.getGarbageCollectType()}"/></td>
									<td><c:out value="${history.getGarbageCollectRequestDate()}"/></td>
									<td><c:out value="${history.getGarbageCollectName()}"/></td>
									<td><c:out value="${history.getGarbageCollectStatus()}"/></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="6" align="center">등록된 게시물이 없습니다.</td>
									</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
               </table>
            </div>
            <!-- 페이징 처리 -->
			<table style="font-size:1rem; margin-top: 40px !important;">
			<tr align="center" valign="middle">
				<td class="web-view">
					<c:if test="${prev}">
						<a href="${pageContext.request.contextPath}/garbageCollect/history.collect?page=${startPage - 1}">&lt;</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<c:when test="${not (i eq page)}">
								<a href="${pageContext.request.contextPath}/garbageCollect/history.collect?page=${i}">
									<c:out value="${i}"/>&nbsp;&nbsp;
								</a>
							</c:when>
							<c:otherwise>
									<c:out value="${i}"/>&nbsp;&nbsp;
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${next}"> 
						<a href="${pageContext.request.contextPath}/garbageCollect/history.collect?page=${endPage + 1}">&gt;</a>
					</c:if>
				</td>
			</tr>
		</table>
           <!--  <div class="btn_box">
                <button type="button" class="btn">취소하기</button>
                <button type="button" class="btn btn2">수정하기</button>
            </div> -->
        </div>
    </article>
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
</html>