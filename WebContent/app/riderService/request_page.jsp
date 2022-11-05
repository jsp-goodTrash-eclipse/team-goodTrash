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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/riderService/request_page.css" />
    </head>
    <body>
        <header>
            <!--뒤로가기 & 로그인 헤더-->
            <div class="header_area">
                <div class="back_area">
                    <span class="back_icon"></span>
                </div>
                <div class="header_text_area">
                    <h2 class="header_text">마이페이지</h2>
                </div>
                <div class="setting_area">
                    <span class="setting_icon"></span>
                </div>
            </div>
        </header>
        <main>
            <!--마이리스트 & 요청리스트-->
            <ul class="list_wrapper">
                <li class="my_list list">
                    <a class="my_list_text" href="myPage.html"> 마이리스트 </a>
                </li>
                <li class="request_list list">
                    <a class="request_list_text" href="rqPage.html">
                        요청리스트
                    </a>
                </li>
            </ul>

            <!-- 지역 분류 -->
            <div class="input_delivery_area input_box">
                <select name="delivery">
                    <option value="none">-전체지역-</option>
                    <option value="강남구">강남구</option>
                    <option value="강동구">강동구</option>
                    <option value="서초구">서초구</option>
                    <option value="송파구">송파구</option>
                </select>
            </div>

            <!-- 리스트 -->
            <ul class="content_wrapper">
                <li class="content">
                    <a href="">
                        <div class="content_date">
                            <div class="date">10.22</div>
                        </div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_date">
                            <div class="date">10.22</div>
                        </div>
                        <p class="content_title">플라스틱*1box / 종이*2box</p>
                        <p class="content_address">
                            서울특별시 강남구 테헤란로 100
                        </p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_date">
                            <div class="date">10.22</div>
                        </div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_date">
                            <div class="date">10.22</div>
                        </div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_date">
                            <div class="date">10.22</div>
                        </div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_date">
                            <div class="date">10.22</div>
                        </div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_date">
                            <div class="date">10.22</div>
                        </div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_date">
                            <div class="date">10.22</div>
                        </div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
            </ul>
        </main>
    </body>
</html>
