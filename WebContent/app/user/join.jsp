<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>회원가입</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/user/join.css">
</head>
<body>
    <div id="wrap" class="sub blank">
        <header id="header">
            <nav class="hide">
                <div class="holder">
                    <ul class="fr">
                        <li><a href="https://www.shouse.garden/main/main.html">홈</a></li>
                        <li><a href="login.html">로그인</a></li>                        
                    </ul>
                </div>
            </nav>
        </header>
        <section id="container">
            <article class="member_join">
                <h1 class="member_hide">
                    <span class="sp">싱그러운 집</span>
                    회원가입
                </h1>
                <div class="member">
                    <form name="form" method="post" action="${pageContext.request.contextPath}/user/joinOk.user">
                        <input type="hidden" name="mode" value="join">
                        <input type="hidden" name="platform" value>
                        <input type="hidden" name="sns_id" value>
                        <dl>
                            <dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이메일&nbsp;&nbsp;&nbsp;<span id="emailResult"></span></dt>
                            <dd id="email">
                                <label>
                                    <input type="email" name="userEmail" class="userInput" id="userEmail"
                                    autofocus placeholder="이메일">
                                </label>
                            </dd>
                        </dl>
                        <dl>
                            <dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;비밀번호&nbsp;&nbsp;&nbsp;<span id="passwordResult"></span></dt>
                            <dd id="password">
                                <label>
                                    <input type="password" name="userPassword" class="userInput" id="password1"
                                    autocomplete="off" placeholder="비밀번호">
                                </label>
                            </dd>
                            <dd id="passck">
                                <label>
                                    <input style="margin-top: 10px;" type="password" name="password2" class="userInput" id="password2"
                                    autocomplete="off" placeholder="비밀번호 확인">
                                </label>
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <label for="j_name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;닉네임
                                    <span class="stxt">(변경불가)</span>&nbsp;&nbsp;&nbsp;<span id = "nicknameResult"></span>
                                </label>
                            </dt>
                            <dd>
                                <input type="text" name="userNickname" class="userInput" id = "userNickname"
                                placeholder="별명(2~10자)">
                            </dd>
                        </dl>
                        <dl>
                            <dt>
                                <label for="j_id">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;추천인
                                    <span class="stxt">(선택사항)</span>
                                </label>
                            </dt>
                            <dd>
                                <input type="text" name="userRecommendName" class="userInput" 
                                placeholder="추천인 닉네임">
                            </dd>
                        </dl>
                        <dl>
                            <dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;약관동의</dt>
                            <dd>
                                <div class="policy">
                                
                                	 <div class="check">
                                        
                                            전체동의
                                           <span></span>
                                        
                                        <label>
                                            <input type="checkbox" id="selectAll" >
                                            <span></span>
                                        </label>
                                    </div>
                                
                                    <div class="check">
                                        
                                            이용약관
                                           <span>(필수)</span>
                                        
                                        <label>
                                            <input type="checkbox" class = "requiredCheckbox" id="checkNum1">
                                            <span></span>
                                        </label>
                                    </div>
                                    <div class="check">
                                        
                                            개인정보처리방침
                                           <span>(필수)</span>
                                       
                                        <label>
                                            <input type="checkbox"  class = "requiredCheckbox" id="checkNum2">
                                            <span></span>
                                        </label>
                                    </div>
                                    <div class="check">
                                        
                                            마케팅 수신동의
                                           <span>(선택)</span>
                                        
                                        <label>
                                            <input type="checkbox" class = "requiredCheckbox" >
                                            <span></span>
                                        </label>
                                    </div>
                                    
                                </div>
                            </dd>
                        </dl>
                        <button type="button" class="btn" id="submitBtn" onclick="activeButton()">회원가입 완료</button>
                    </form>
                </div>
            </article>
            <article class="service">

            </article>
            <article class="privacy">

            </article>
            <article class="mkagree">

            </article>
        </section>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/user/join.js"></script>
<script type="text/javascript">
	let path = "${pageContext.request.contextPath}";
</script>
</html>