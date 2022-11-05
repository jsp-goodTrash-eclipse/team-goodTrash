<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <title>우수 쓰레기 | Riders</title>
        <link
            href="//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css"
            rel="stylesheet"
            type="text/css"
        />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/riderService/reset.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/riderService/content_detail.css" />
    </head>
    <body>
        <header>
            <!--뒤로가기 & 로그인 헤더-->
            <div class="header_area">
                <div class="back_area">
                    <span class="back_icon"></span>
                </div>
                <div class="header_text_area">
                    <h2 class="header_text">수거 정보</h2>
                </div>
            </div>
        </header>
        <main>
            <!--수거 상세 정보-->
            <div>
                <h2 class="title">수거 상세 정보</h2>
                <ul class="collect_info">
                    <li>
                        <span class="info_title">수거 목록</span>
                        <span class="info_text">종이*1box</span>
                    </li>
                </ul>
                <ul class="address_info">
                    <li>
                        <span class="info_title">주소</span>
                        <span class="info_text">서울특별시 서초구 0000로</span>
                    </li>
                </ul>
                <ul class="date_info">
                    <li>
                        <span class="info_title">방문날짜</span>
                        <span class="info_text">2022/01/01</span>
                    </li>
                </ul>
                <ul class="memo_info">
                    <li>
                        <span class="info_title">수거메모</span>
                        <span class="info_text">문 앞에 두었습니다.</span>
                    </li>
                </ul>
            </div>
            <!--주문자-->
            <div>
                <h2 class="title" style="margin-top: 50px">주문자</h2>
                <ul class="collect_info">
                    <li>
                        <span class="info_title">주문자명</span>
                        <span class="info_text">홍길동</span>
                    </li>
                </ul>
                <ul class="address_info">
                    <li>
                        <span class="info_title">휴대폰번호</span>
                        <span class="info_text">010-1234-1234</span>
                    </li>
                </ul>
                <ul class="memo_info">
                    <li>
                        <span class="info_title">이메일</span>
                        <span class="info_text">abc@gmail.com</span>
                    </li>
                </ul>
            </div>
            <!--취소 / 수락 버튼-->
            <ul class="button_wrapper">
                <li class="cancel_btn">
                    <a href="myPage.html">취소</a>
                </li>
                <li class="accept_btn">
                    <a href="">수거 완료</a>
                </li>
            </ul>
        </main>
    </body>
</html>
