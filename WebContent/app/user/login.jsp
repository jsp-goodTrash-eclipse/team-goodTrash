<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/login.css">
    <style type="text/css">
    	a:link { color: red; text-decoration: none;}
 		a:visited { color: black; text-decoration: none;}
 		a:hover { color: blue; text-decoration: underline;}
    </style>
</head>
<body>
<c:if test="${not empty param.login}">
	 <script>alert("로그인 실패");</script>
</c:if>
    <div id="body">
        <section>
            <div class="space"></div>
            <p class="home">
                <img src="${pageContext.request.contextPath}/assets/images/user/house.png" width="209px" height="50px">
            </p>
            <div class="main">
                <form name="form" method="post" action="${pageContext.request.contextPath}/user/loginOk.user">
                    <div class="login">
                        <div class="id">
                            <label>
                                <input type="email" name="userEmail" class="email_id" placeholder="이메일" value="${userEmail}" >
                            </label>
                        </div>
                        <div class="password">
                            <label>
                                <input type="password" name="userPassword" class="pw" placeholder="비밀번호 8자 이상">
                            </label>
                        </div>
                        <button type="button" class="login_btn" onclick="send()">로그인</button>
                        <div class="under_login">
                            <div id="div">
                                <label class="save_email">
                                    <input type="checkbox" name="save_id" class="save_id" value="y">
                                    <span class="em">이메일 저장</span>
                                </label>
                            </div>
                            <div style="display: inline-block;" class="link_fr">
                                <a href="#">비밀번호 재설정</a>
                                <a href="${pageContext.request.contextPath}/user/join.user">회원가입</a>
                            </div>
                        </div>
                        <dl class="easy_login">
                            <dd>
                                <button type="button" class="kakao">
                                    <span class="kakao_login">
                                    
                                    카카오톡으로 로그인
                                    </span>
                                </button>
                            </dd>
                        </dl>
                    </div>
                </form>
            </div>
        </section>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/user/login.js"></script>
</html>