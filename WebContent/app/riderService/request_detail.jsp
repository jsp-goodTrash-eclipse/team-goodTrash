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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/riderService/request_detail.css" />
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
                <div
                    class="info_map"
                    id="map"
                    style="width: inherit; height: 300px"
                ></div>
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
                    <a href="">수락</a>
                </li>
            </ul>
        </main>
    </body>
    <!-- 2162d24226c95edfb47c17d989234fa1 -->
    <script
        type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2162d24226c95edfb47c17d989234fa1&libraries=services"
    ></script>
    <script>
        var mapContainer = document.getElementById("map"), // 지도를 표시할 div
            mapOption = {
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 3, // 지도의 확대 레벨
            };

        // 지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new kakao.maps.services.Geocoder();

        // 주소로 좌표를 검색합니다
        geocoder.addressSearch(
            "서울 서초구 서초대로 지하 233",
            function (result, status) {
                // 정상적으로 검색이 완료됐으면
                if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(
                        result[0].y,
                        result[0].x
                    );

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new kakao.maps.Marker({
                        map: map,
                        position: coords,
                    });

                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                    map.setCenter(coords);
                }
            }
        );
    </script>
</html>
