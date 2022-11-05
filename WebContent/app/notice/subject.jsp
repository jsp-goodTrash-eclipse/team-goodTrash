<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>          
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <title>수거 가능/불가능 품목</title>
        <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/notice/subject.css">
    
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
                            <a href="../community/14000_tube.html">수거가능/불가능 품목</a>
                        </li>
                        <li class="swiper-slide">
                            <a href="../community/15001_tour_list.html">유의사항 및 운영시간</a>
                        </li>
    
                    </ul>
                </div>
            </nav>
        </header>


<div class="sub" id="contents">
<div class="container">
        <div class="sub_con">
            <h3 class="tit icon">수거품목 및 수거기준</h3>
            
            <ul class="con_list">
                <li>
                <h4>단일수거 가능 품목</h4>
            
                <div class="table">
                <table class="tableB border sort">
                    <caption>품목,세부품목을 보여주는 표</caption>
                    <colgroup>
                        <col width="20%">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col">품목</th>
                            <th scope="col">세부품목</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>냉장고</td>
                            <td>가정용ㆍ업소용ㆍ냉동고ㆍ김치냉장고ㆍ쇼케이스 등</td>
                        </tr>
                        <tr>
                            <td>세탁기</td>
                            <td>일반세탁기ㆍ드럼세탁기ㆍ탈수기 등</td>
                        </tr>
                        <tr>
                            <td>에어컨</td>
                            <td>실내기ㆍ실외기ㆍ일체형 등</td>
                        </tr>
                        <tr>
                            <td>TV</td>
                            <td>CRTㆍLCDㆍLEDㆍ프로젝션</td>
                        </tr>
                        <tr>
                            <td>일반 전자제품</td>
                            <td>전기오븐ㆍ 자동판매기ㆍ 러닝머신ㆍ 식기건조기ㆍ 식기세척기ㆍ 복사기ㆍ 전기정수기ㆍ 냉온수기ㆍ 공기청정기ㆍ 전자레인지ㆍ 제습기</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                </li>
                <li>
                <h4>세트 품목</h4>
            
                <div class="table">
                <table class="tableB border sort">
                    <caption>세부품목을 보여주는 표</caption>
                    <thead>
                        <tr>
                            <th scope="col">세부품목</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>오디오 세트(전축)ㆍ 데스크탑PC세트(본체 + 모니터)</td>
                        </tr>
                    </tbody>
                </table>
                </div>
                </li>
                <li>
                <h4>다량 배출 품목 <span class="fn_red">*수량기준 5개 이상 배출 품목</span></h4>
            
                <div class="table">
                <table class="tableB border sort">
                    <caption>세부품목을 보여주는 표</caption>
                    <thead>
                        <tr>
                            <th scope="col">세부품목</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>가습기ㆍ 비디오플레이어ㆍ 스캐너ㆍ 연수기ㆍ 음식물처리기ㆍ 전기밥솥ㆍ 전기온수기ㆍ 전기히터ㆍ 청소기ㆍ 튀김기ㆍ 감시카메라(CCTV)ㆍ 빔프로젝터ㆍ 식품건조기ㆍ 영상게임기ㆍ 전기재봉틀ㆍ 전기비데ㆍ 전기주전자ㆍ 제빵기ㆍ 커피메이커ㆍ 헤어드라이어ㆍ 믹서기(주서기)ㆍ 선풍기ㆍ 약탕기ㆍ 유무선공유기ㆍ 전기다리미ㆍ 전기안마기(안마의자 제외) ㆍ 전기후라이팬ㆍ 족욕기ㆍ 토스트기ㆍ 컴퓨터 본체ㆍ 모니터ㆍ 노트북ㆍ 내비게이션ㆍ 팩시밀리ㆍ 휴대폰ㆍ 오디오 본체ㆍ 오디오 스피커ㆍ 오디오 포터블ㆍ 프린터</td>
                        </tr>
                    </tbody>
                </table>
                </div>
            
                <p class="m_txt">※ 무상방문수거 서비스 이용 시, 상기제품 외 기타 전자제품/부품·부속품 배출 가능</p>
                </li>
                <li>
                <h4>수거방법</h4>
            
                <p class="m_txt">주민이 예약한 배출 품목 가정 내 방문 수거 (단, 주민의 요청 시 현관문 앞, 마당 등 문전 수거)</p>
                </li>
               
                <li>
                <h4>수거 불가 품목</h4>
            
                <div class="table">
                <table class="tableA">
                    <caption>가전제품, 가전제품외를 보여주는 표</caption>
                    <tbody>
                        <tr>
                            <th scope="row">가전제품</th>
                            <td>
                            <ol class="dot_list">
                                <li><span class="fn_red">원형 훼손</span> 제품<br>
                                (냉장고 냉각기, 세탁기 모터 훼손, 온전한 형태가 아닌 분해 되어 있는 제품 등)</li>
                                <li>맞춤 제작된 대형 제품(빌트인, 냉장, 냉동창고 등)</li>
                                <li>전기안마기 중 <span class="fn_red">안마의자</span></li>
                                <li>선택 품목(소형 가전제품) 5개 미만 요청 시</li>
                            </ol>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">가전제품 외</th>
                            <td>
                            <ol class="dot_list">
                                <li>폐가구(장롱, 책상, 의자 등)</li>
                                <li>러닝머신을 제외한 운동기구</li>
                                <li>악기류(피아노, 전자 피아노 등)</li>
                                <li>전기장판류 (전기장판, 옥장판, 온수매트 등)</li>
                                <li>의료기기 (안마기, 찜질기 등)</li>
                                <li>기타 전기를 사용하지 않는 제품류(가스레인지 등)</li>
                            </ol>
                            </td>
                        </tr>
                    </tbody>
                </table>
                </div>
                </li>
                <li>
                <h4>수거불가품목 배출방법</h4>
            
                <p class="m_txt">관할 주민센터 등 지자체 문의 후 배출</p>
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
        