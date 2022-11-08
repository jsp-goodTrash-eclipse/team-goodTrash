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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/rider/join.css" />
    </head>
    <body>
        <header>
            <!--뒤로가기 & 회원가입 헤더-->
            <div class="header_area">
                <div class="back_area">
                    <span class="back_icon"></span>
                </div>
                <div class="header_text_area">
                    <h2 class="header_text">회원가입</h2>
                </div>
            </div>
        </header>
        <main>
            <form name="form" action="${pageContext.request.contextPath}/driver/joinOk.driver">
                <div class="input_email_area input_box">
                    <div class="input_title">이메일<span id = "emailResult"></span></div>
                    <input
                        type="text"
                        name="driverEmail"
                        placeholder="이메일"
                        autocomplete="off"
                        id = "driverEmail"
                    />
                    <div id="email_result"></div>
                </div>
                <div class="input_pw_area input_box">
                    <div class="input_title">비밀번호</div>
                    <input
                        type="password"
                        name="password"
                        placeholder="비밀번호"
                    />
                    <div id="pw_result"></div>
                    <input
                        type="password"
                        name="passwordCheck"
                        placeholder="비밀번호 확인"
                        class="pwCheck_bottom"
                    />
                    <div id="pwCheck_result"></div>
                </div>
                <div class="input_delivery_area input_box">
                    <div class="input_title">배달지역 (서울특별시)</div>
                    <select name="delivery">
                        <option value="none">-선택-</option>
                        <option value="강남구">강남구</option>
                        <option value="강동구">강동구</option>
                        <option value="서초구">서초구</option>
                        <option value="송파구">송파구</option>
                    </select>
                </div>
                <div class="input_account_area input_box">
                    <div class="input_title">계좌정보</div>
                    <input type="text" placeholder="은행명" name="driverAccountBank"/>
                    <input
                        type="text"
                        placeholder="계좌번호('-' 제외)"
                        class="input_bottom"
                        name = "driverAccountNumber"
                    />
                </div>
                <div class="policy_area input_box">
                    <div class="input_title">
                        약관동의
                        <div class="policy">
                            <div class="check_all">
                                <label for="check_all"
                                    ><span>전체 동의</span></label
                                >
                                <input
                                    type="checkbox"
                                    name="check_all"
                                    id="check_all"
                                />
                            </div>
                            <div class="check firstPolicy">
                                <label for="check"
                                    ><span
                                        >이용약관<span class="green_text"
                                            >(필수)</span
                                        ></span
                                    ></label
                                >
                                <input
                                    type="checkbox"
                                    name="check"
                                    class="check"
                                    id="checkNum1"
                                />
                            </div>
                            <div class="check secondPolicy">
                                <label for="check"
                                    ><span
                                        >개인정보처리방침<span
                                            class="green_text"
                                            >(필수)</span
                                        ></span
                                    ></label
                                >
                                <input
                                    type="checkbox"
                                    name="check"
                                    class="check"
                                    id="checkNum2"
                                />
                            </div>
                            <div class="check thirdPolicy">
                                <label for="check"
                                    ><span
                                        >마케팅 수신동의<span class="gray_text"
                                            >(선택)</span
                                        ></span
                                    ></label
                                >
                                <input
                                    type="checkbox"
                                    name="check"
                                    class="check"
                                    id="checkNum3"
                                />
                            </div>
                        </div>
                    </div>
                </div>
                <!--회원가입버튼-->
                
                    <button id="joinButton" class="join_button" type = "button" onclick="activeButton()" >회원가입 완료</button>
                
            </form>
        </main>

        
    </body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/rider/join.js"></script>
</html>
