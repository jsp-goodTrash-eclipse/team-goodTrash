<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>판매 확인</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/storeSaleInformation.css">
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

              <div class="user_lookup_wrapper">
                <div class="title">판매관리</div>
                <div class="site_comming_route">
                  <div class="admin">사이트 운영</div>
                  <div class="user">스토어 관리</div>
                  <div class="user_lookup">판매 관리</div>
              </div>
              
              <!--input search table 시작  -->
              <div class="search_table_wrapper">

                <table class="search_input_table">
                  <thead>
                  <tr>
                      <th>기준 일자(시작)</th>
                      <th>기준 일자(종료)</th>
                      <th>물품 종류</th>
                      <th>제품명</th>                      
                      <th></th>
              
                  </tr>
                  </thead>

                  <tbody>
                  <tr>
                      <td><input type="date"></td>
                      <td><input type="date"></td>
                      <td>
                        <select name="want_to_search" id="">
                          <option value="all">전체</option>
                          <option value="bag">가방류</option>
                          <option value="shoes">신발류</option>
                          <option value="cloth">의류</option>
                        </select>
                      </td>
                      <td>
                        <input type="text" class="input_name" placeholder="상품명 입력">
                      </td>
                      <td>
                        <button type="button">조회</button>
                      </td>                   
                  </tr>
                  </tbody>
                </table>

                
              </div>

              <div class="sale_result_table_wrapper">

                <div>조회 목록</div>

                <table class="sale_result_table">
                  <tr>
                    <th scope="row">구매자(아이디)</th>
                    <td>구매 말짜</td>
                    <td>카테고리</td>
                    <td>제품명</td>
                    <td>수량</td>
                    <td>가격</td>
                  </tr>

                  <tr>
                    <th scope="row">caMelodian</th>
                    <td>2022.10.24</td>
                    <td>가방류</td>
                    <td>가방</td>
                    <td>2</td>
                    <td>12,000</td>
                  </tr>
                  <tr class="even">
                    <th scope="row">항목명</th>
                    <td>내용이 들어갑니다.</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                  </tr>
                  <tr>
                    <th scope="row">항목명</th>
                    <td>내용이 들어갑니다.</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                  </tr>

                  <tr class="even">
                    <th scope="row">항목명</th>
                    <td>내용이 들어갑니다.</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                  </tr>

                  <tr>
                    <th scope="row">항목명</th>
                    <td>내용이 들어갑니다.</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                  </tr>

                  <tr class="even">
                    <th scope="row">항목명</th>
                    <td>내용이 들어갑니다.</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                  </tr>

                  <tr>
                    <th scope="row">항목명</th>
                    <td>내용이 들어갑니다.</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                  </tr>

                  <tr class="even">
                    <th scope="row">항목명</th>
                    <td>내용이 들어갑니다.</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                  </tr>

                  <tr>
                    <th scope="row">항목명</th>
                    <td>내용이 들어갑니다.</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                  </tr>

                  <tr class="even">
                    <th scope="row">항목명</th>
                    <td>내용이 들어갑니다.</td>
                    <td>1</td>
                    <td>2</td>
                    <td>3</td>
                    <td>4</td>
                  </tr>
                </table>
                <!-- 페이지 이동 버튼 -->
                <div class="change_page">
                  <button>[1]</button>
                  <button>[2]</button>
                  <button>[3]</button>
                  <button>[4]</button>
                </div>

              </div>
        </main>
</body>
</html>