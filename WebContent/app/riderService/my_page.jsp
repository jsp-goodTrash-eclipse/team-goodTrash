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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/riderService/my_page.css" />
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
            <!--분류-->
            <ul class="category_wrapper">
                <li class="category category_active">
                    <a class="category_active" href="">전체</a>
                </li>
                <li class="category">
                    <a href="">진행중</a>
                </li>
                <li class="category">
                    <a href="">완료</a>
                </li>
            </ul>
            <!--리스트-->
            <ul class="content_wrapper">
                <li class="content">
                    <a href="">
                        <div class="content_img img_ing"></div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_img img_end"></div>
                        <p class="content_title">플라스틱*1box / 종이*2box</p>
                        <p class="content_address">
                            서울특별시 강남구 테헤란로 100
                        </p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_img img_ing"></div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_img img_ing"></div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_img img_ing"></div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_img img_ing"></div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_img img_ing"></div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
                <li class="content">
                    <a href="">
                        <div class="content_img img_ing"></div>
                        <p class="content_title">종이*1box</p>
                        <p class="content_address">서울특별시 서초구 0000로</p>
                        <div class="arrow_img"></div>
                    </a>
                </li>
            </ul>
        </main>

        <footer></footer>
    </body>
</html>
