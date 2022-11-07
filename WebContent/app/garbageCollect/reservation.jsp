<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/garbageCollect/reservation.css">
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
            <h3 class="subtit">예약하기
                <span class="important"></span>
            </h3>
            <div class="caution">
                <h4>* 배출 예약시 주의사항 *</h4>
                <ul class="dot_list">
                    <li>
					주소가 입력되지 않은 상태에서는 품목 및 희망 배출일 선택이 되지 않습니다. 
                    주소를 우선적으로 입력해주세요.
                    </li>
                    <li>
                    접수 시 불편사항이나 문의사항은
                    <span>1599-0903</span>
                    으로 연락 바랍니다.
                    </li>
                </ul>
            </div>
            <fieldset>
            	<form method="post" action="${pageContext.request.contextPath}/garbageCollect/reservationOk.collect" name="reservationForm">
	                <table class="table">
	                    <tbody>
	                        <tr class="dot">
	                            <th scope="row">
	                                고객명
	                            </th>
	                            <td colspan="3">
	                                <div>
	                                    <div class="input">
	                                        <input type="text" name="garbageCollectName" title="고객명 입력" id="garbageCollectName">
	                                    </div>
	                                </div>
	                            </td>
	                        </tr>
	                        <tr class="dot">
	                            <th scope="row">
	                                휴대전화
	                            </th>
	                            <td colspan="3">
	                                <div class="phone">
	                                    <div class="input phonenumber_area" style="width: 250px;">
	                                        <input type="tel" class="numeric" name="garbageCollectPhoneNumber" title="번호 입력" maxlength="13" id="garbageCollectPhoneNumber" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}">
	                                    </div>
	                                </div>
	                            </td>
	                        </tr>
	                        <tr class="dot">
	                            <th scope="row">
	                                주소
	                            </th>
	                            <td colspan="3">
	                                <div class="addr">
	                                    <div class="addr_detail">
	                                    	<span>우편번호</span>
	                                        <div class="input">
	                                            <input type="text" name="garbageCollectZipcode" title="우편번호 입력" id="garbageCollectZipcode">
	                                            <input class="findButton" type="button" onclick="find()" value="우편번호 찾기">
	                                        </div>
	                                        <div class="input_addressDetail">
	                                        <span>주소</span>
	                                        <div class="input">
	                                            <div class="adr_sel">
	                                            <input type="text" name="garbageCollectAddress" title="주소입력" id="garbageCollectAddress">
	                                            </div>
	                                        </div>
	                                        </div>
	                                        <div class="input_addressDetail" style="display: inline-block;">
	                                        <span class="addressDetail_area">상세주소 입력</span>
	                                        <div class="input input_detail addressDetail_area">
	                                            <input class="addressDetail_area" type="text" name="garbageCollectAddressDetail" title="주소입력" id="garbageCollectAddressDetail">
	                                        </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </td>
	                        </tr>
	                        <tr class="dot recycle_content">
	                                <th scope="row">배출품목</th>
	                                <td colspan="3">
	                                    <div class="addr recycle_type">
	                                        <div class="addr_detail recycle_type_detail">
	                                        	<div class="type_area">
		                                        <span>품목 선택</span>
	                                            <div class="input">
	                                                <div
	                                                    class="adr_sel recycle_type_sel"
	                                                >
	                                                    <select
	                                                        name="garbageCollectType"
	                                                        title="품목 선택"
	                                                        id="garbageCollectType"
	                                                    >
	                                                        <option value="종이류">
	                                                            종이류
	                                                        </option>
	                                                        <option value="병류">
	                                                            병류
	                                                        </option>
	                                                        <option value="캔류">
	                                                            캔류
	                                                        </option>
	                                                        <option value="고철류">
	                                                            고철류
	                                                        </option>
	                                                        <option value="의류">
	                                                            의류
	                                                        </option>
	                                                        <option
	                                                            value="플라스틱류"
	                                                        >
	                                                            플라스틱류
	                                                        </option>
	                                                    </select>
	                                                </div>
	                                            </div>
	                                            </div>
	                                            <div class="box_area">
	                                            <span>박스 수량</span>
	                                            <div class="input">
	                                                <div
	                                                    class="adr_sel recycle_type_sel"
	                                                >
	                                                    <select
	                                                        name="garbageCollectBoxCount"
	                                                        title="품목 선택"
	                                                        id="garbageCollectBoxCount"
	                                                    >
	                                                        <option value="1box">
	                                                            1box
	                                                        </option>
	                                                        <option value="2box">
	                                                            2box
	                                                        </option>
	                                                        <option value="3box">
	                                                            3box
	                                                        </option>
	                                                        <option value="4box">
	                                                            4box
	                                                        </option>
	                                                        <option value="5box">
	                                                            5box
	                                                        </option>
	                                                    </select>
	                                                </div>
	                                            </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </td>
	                            </tr>
	                        <tr class="dot">
	                            <th scope="row">
	                                배출 희망일자
	                            </th>
	                            <td colspan="3">
	                                <div class="date">
	                                    <div class="date_input">
	                                        <label for="input_date">
	                                            <input type="date" name="garbageCollectRequestDate" title="날짜 선택" min="2022-01-01" max="2222-12-31" id="garbageCollectRequestDate">
	                                            <button type="button" class="input_date">
	                                                <span class="input_date"></span>
	                                            </button>
	                                        </label>
	                                    </div>
	                                </div>
	                                <span class="noti">예약 접수량이 많을 경우, 방문일정이 지연될 수 있습니다.</span>
	                            </td>
	                        </tr>
	                        <tr>
	                            <th scope="row">메모</th>
	                            <td colspan="3">
	                                <div>
	                                    <textarea name="garbageCollectMemo" title="메모 입력" maxlength="200" id="garbageCollectMemo"></textarea>
	                                    <span class="noti">※ 공백, -, /, (, ), @, ',', '.' 를 제외한 특수 문자는 입력 하실 수 없습니다.</span>
	                                </div>
	                            </td>
	                        </tr>
	                    </tbody>
	                </table>
	                <div class="btn_box">
	                    <button type="button" onclick="location.href='${pageContext.request.contextPath}/garbageCollect/request.collect'">취소하기</button>
	                    <button type="button" class="btn" onclick="send()">접수하기</button>
	                </div>
                </form>
            </fieldset>
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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/browser.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/reservation.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>