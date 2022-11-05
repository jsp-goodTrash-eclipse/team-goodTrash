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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/rider/reset.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/rider/login.css" />
    </head>
    <body>
        <header>
            <!--뒤로가기 & 로그인 헤더-->
            <div class="header_area">
                <div class="back_area">
                    <span class="back_icon"></span>
                </div>
                <div class="header_text_area">
                    <h2 class="header_text">이메일 로그인</h2>
                </div>
            </div>
        </header>
        <main>
            <!--input-->
            <form class="input_area" name="form">
                <input type="text" name="email" placeholder="이메일" />
                <input
                    type="password"
                    name="pw"
                    placeholder="비밀번호 8자 이상"
                    id="input_pw"
                />
            </form>
            <!--이메일저장 & 비밀번호 재설정-->
            <div class="login_option_area">
                <div class="remember_id">
                    <input type="checkbox" name="save_id" id="save_id" />
                    <label for="save_id"><span>이메일 저장</span></label>
                </div>
                <div class="reset_pw">
                    <a href="">비밀번호 재설정</a>
                </div>
            </div>
            <!--로그인버튼-->
            <a href="">
                <button class="login_button" onclick="loginCheck()">
                    로그인
                </button>
            </a>
            <!--회원가입 안내-->
            <div class="inform_join_area">
                <p>
                    혹시 우수 쓰레기가 처음이신가요?
                    <a class="join_link" href="join.html">회원가입</a>
                </p>
            </div>
        </main>
    </body>

    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/driver/login.js"></script>
</html>
