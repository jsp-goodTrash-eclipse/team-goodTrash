<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>회원정보 조회</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/userMangeSearch.css">
<body>
    <div class="all_wrapper">
        <header>
          <div class="logo">Great Trash</div>
          <hr />
          <div class="go_to_site"><a href="">사이트 바로가기</a></div>
          <div class="list_wrapper">
            <details class="site_manage">
              <summary>
                <div>사이트 관리</div>
                <img src="${pageContext.request.contextPath}/assets/images/admin/pngwing.com.png" />
              </summary>
              <ul class="manage">
                <li><a href="#">&nbsp&nbsp&nbsp사이트 수정</a></li>
              </ul>
            </details>
  
            <details class="user_manage">
              <summary>
                <div>회원관리</div>
                <img src="${pageContext.request.contextPath}/assets/images/admin/pngwing.com.png" />
              </summary>
              <ul class="manage">
                <li><a href="#">&nbsp&nbsp&nbsp회원정보 조회</a></li>                
                <li><a href="#">&nbsp&nbsp&nbsp차단된 회원</a></li>
              </ul>
            </details>
  
            <details class="driver_manage">
              <summary>
                <div><a href="#">수거기사 관리</div></a>
                <a href="#"><img src="${pageContext.request.contextPath}/assets/images/admin/pngwing.com.png" /></a>
              </summary>
            </details>
  
            <details class="store_manage">
              <summary>
                <div>스토어 관리</div>
                <img src="${pageContext.request.contextPath}/assets/images/admin/pngwing.com.png" />
              </summary>
              <ul class="manage">
                <li><a href="#">&nbsp&nbsp&nbsp상품리스트</a></li>
                <li><a href="#">&nbsp&nbsp&nbsp판매내역</a></li>
                <li><a href="#">&nbsp&nbsp&nbsp재고현황</a></li>
                <li><a href="#">&nbsp&nbsp&nbsp환불</a></li>
              </ul>
            </details>
  
            <details class="notice_manage">
              <summary>
                <div>공지사항 및 문의</div>
                <img src="${pageContext.request.contextPath}/assets/images/admin/pngwing.com.png" />
              </summary>
              <ul class="manage">
                <li><a href="#">&nbsp&nbsp&nbsp공지사항 작성</a></li>
                <li><a href="#">&nbsp&nbsp&nbsp공지사항 목록</a></li>
                <li><a href="#">&nbsp&nbsp&nbsp문의 및 답변</a></li>
              </ul>
            </details>
          </div>
        </header>
        <main>
            <div class="main_header">
                <button type="button" class="button1">연장/업그레이드</button>
                <button type="button" class="button2">로그아웃</button>
            </div>
            

            <!-- main 주 내용 시작 -->
            <div class="user_lookup_wrapper">
              <div class="title">회원정보 조회</div>
              <div class="site_comming_route">
                <div class="admin">사이트 운영</div>
                <div class="user">회원관리</div>
                <div class="user_lookup">회원정보 조회</div>
            </div>

              <!-- 검색 조건 시작 -->

              <div class="input_form_wrapper">
                <form action="">
                  <table class="admin_input">
                    <!-- 1행 -->
                    <tr>
                      <th scope="row">개인정보</th>
                      <td style="border-right: none;"><select name="id_or_name" id="">
                        <option value="id">아이디</option>
                        <option value="name">이름</option>
                      </select>
                      <input type="text">
                    </td>
                      <th scope="row" style="border-right: none;"></th>
                      <td></td>
                    </tr>

                    <tr>
                      <th scope="row">이메일</th>
                      <td style="border-right: none;">
                        <input type="text" placeholder="닉네임 "> &nbsp@
                        <select name="mail_company" id="">
                          <option value="gmail">gmail</option>
                          <option value="naver">naver</option>
                        </select>
                      </td>
                      <th scope="row" style="border-right: none;"></th>
                      <td></td>
                    </tr>

                    <!-- 2행 -->
                    <tr>
                      <th scope="row">닉네임</th>
                      <td style="border-right: none;">
                        <input type="text" placeholder="닉네임 ">
                      </td>
                      <th scope="row" style="border-right: none;"></th>
                      <td></td>
                    </tr>

                    <!-- 3행 -->
                    <tr>
                      <th scope="row">회원등급</th>
                      <td><select name="user_grade_check" id="">
                        <option value="normal">일반회원</option>
                        <option value="great">우수 쓰레기</option>
                      </select></td>
                      <th scope="row">회원유형</th>
                      <td>
                        <input type="radio" id="all_user" name="user_type"><label for="all_user">전체</label>
                        <input type="radio" id="special_user" name="user_type"><label for="special_user">특별 관리 회원</label>
                        <input type="radio" id="trash_user" name="user_type"><label for="trash_user">불량 쓰레기</label>
                      </td>
                    </tr>

                    <!-- 4행 -->
                    <tr>
                      <th scope="row">가입경로</th>
                      <td>
                        <input type="radio" id="pc_route" name="user_join_method"><label for="PC_route">PC</label>
                        <input type="radio" id="mobile_route" name="user_join_method"><label for="mobile_route">모바일</label>
                      </td>
                      <th scope="row">유입경로</th>
                      <td>
                        <select name="user_join_route" id="">
                          <option value="advertisement_internet">인터넷 광고</option>
                          <option value="advertisement_mobile">문자 광고</option>
                          <option value="friend_recommen">지인 추천</option>
                        </select>
                      </td>
                    </tr>

                    <!-- 5행 -->
                    <tr>
                      <th scope="row">가입일 / 기념일</th>
                      <td style="border-right: none;">
                        <select name="date_join_anniversary" id="">
                          <option value="join">가입일</option>
                          <option value="anniversary">기념일</option>
                        </select>
                      </td>
                      <th scope="row" style="border-right: none;"></th>
                      <td></td>
                    </tr>

                    <!-- 6행 -->
                    <tr>
                      <th scope="row">나이</th>
                      <td>
                        <input type="text">  ~
                        <input type="text"> 
                      </td>
                      <th scope="row">성별</th>
                      <td>
                        <input type="radio" value="both" id="gender_all" name="user_gender"><label for="gender_all">전체</label>
                        <input type="radio" value="men" id="gender_men" name="user_gender"><label for="gender_men">남자</label>
                        <input type="radio" value="women" id="gender_women" name="user_gender"><label for="gender_women">여자</label>
                      </td>
                    </tr>

                    <!-- 7행 -->
                    <tr>
                      <th scope="row">접속일</th>
                      <td>
                        <input type="date">
                        ~
                        <input type="date">
                      </td>
                      <th scope="row">접속 IP</th>
                      <td>
                        <input type="text">
                        예) 123.123.123.123
                      </td>
                    </tr>

                    <!-- 8행 -->
                    <tr>
                      <th scope="row">지역</th>
                      <td>
                        <select name="user_region" id="">
                          <option value="seocho">서초구</option>
                          <option value="gangnam">강남구</option>
                          <option value="songpa">송파구</option>
                          <option value="yang">양구</option>
                          <option value="duckjin">덕진구</option>
                        </select>
                      </td>
                      <th scope="row">상세주소</th>
                      <td>
                        <input type="text" placeholder="동,면,읍">
                      </td>
                    </tr>

                    <!-- 9행 -->
                    <tr>
                      <th scope="row">구매날짜</th>
                      <td style="border-right: none;">
                        <input type="date">
                        ~
                        <input type="date">
                      </td>
                      <th scope="row" style="border-right: none;"></th>
                      <td></td>
                    </tr>

                    <!-- 10행 -->
                    <tr>
                      <th scope="row">구매 건수/금액</th>
                      <td style="border-right: none;">
                        <select name="purchase_price_count" id="">
                          <option value="price">구매 금액</option>
                          <option value="count">구매 건수</option>
                        </select>
                      </td>
                      <th scope="row" style="border-right: none;"></th>
                      <td></td>
                    </tr>

                  </table>
                  <button type="button" class="search_button">검색</button>
                </form>
              </div>
            
              <div class="result_wrapper">
                <div class="result_table_title">조회 결과</div>

                <table class="result_table">
                  <thead>
                  <tr>
                    <th scope="cols">아이디</th>
                    <th scope="cols">이름</th>
                    <th scope="cols">닉네임</th>
                    <th scope="cols">이메일</th>
                    <th scope="cols">주소</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <th scope="row">유저1</th>
                    <td>이종호</td>
                    <td>caMelodain</td>
                    <td>abcabc@gmail.com</td>
                    <td>서울시</td>
                  </tr>
                  <tr>
                    <th scope="row">유저2</th>
                    <td>고진혁</td>
                    <td>코머</td>
                    <td>qweqwe@gmail.com</td>
                    <td>제주시</td>
                  </tr>
                  <tr>
                    <th scope="row">유저2</th>
                    <td>노희찬</td>
                    <td>감칠맛민초</td>
                    <td>fuckingMintChoco@gmail.com</td>
                    <td>서울시</td>
                  </tr>
                  </tbody>
                </table>

                <!-- 페이지 이동 버튼 -->
                <div class="change_page">
                  <button>[1]</button>
                  <button>[2]</button>
                  <button>[3]</button>
                  <button>[4]</button>
                </div>

              </div>
            </div>

        </main>
</body>
</html>