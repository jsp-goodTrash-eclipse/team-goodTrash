<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>수거기사 조회</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/driverSearch.css" />
<body>
    <div class="all_wrapper">
        <header>
          <div class="logo">Great Trash</div>
          <hr />
          <div class="go_to_site"><a href="">사이트 바로가기</a></div>
          <div class="list_wrapper">            
  
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
              <div class="title">수거기사정보 조회</div>
              <div class="site_comming_route">
                <div class="admin">사이트 운영</div>
                <div class="user">수거기사 관리</div>
                <div class="user_lookup">수거기사정보 조회</div>
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
                      <th scope="row">핸드폰 번호</th>
                      <td style="border-right: none;">
                        <input type="text" placeholder="핸드폰 번호 ">
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
                    <th scope="cols">이메일</th>
                    <th scope="cols">주소</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <th scope="row">유저1</th>
                    <td>이종호</td>                   
                    <td>abcabc@gmail.com</td>
                    <td>서울시</td>
                  </tr>
                  <tr>
                    <th scope="row">유저2</th>
                    <td>고진혁</td>                    
                    <td>qweqwe@gmail.com</td>
                    <td>제주시</td>
                  </tr>
                  <tr>
                    <th scope="row">유저2</th>
                    <td>노희찬</td>                    
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