<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>공지사항</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/writeInquiry.css" />
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

              <div class="user_lookup_wrapper">
                <div class="title">공지사항 작성</div>
                <div class="site_comming_route">
                  <div class="admin">사이트 운영</div>
                  <div class="user">공지사항</div>
                  <div class="user_lookup">공지사항 작성</div>
              </div>

              <div id="notice_wrapper">
                <div id="notice_write_container">
                  <form action="" class="notice_write_form">
                    <table class="admin_input">
                      <!-- 1행 -->
                      <tr>
                        <th scope="row">제목</th>
                        <td style="border-right: none;">
                        <input type="text" class="notice_title">
                      </td>
                        <th scope="row" style="border-right: none;"></th>
                        <td></td>
                      </tr>

                      <tr>
                        <th scope="row">첨부파일</th>
                        <td style="border-right: none;">
                          <input type="file">
                        </td>
                        <th scope="row" style="border-right: none;"></th>
                        <td></td>
                      </tr>

                      <tr>
                        <th scope="row">내용</th>
                        <td style="border-right: none;">
                          <textarea name="notice_detail" id="" cols="100" rows="30">

                          </textarea>
                        </td>
                        <th scope="row" style="border-right: none;"></th>
                        <td></td>
                      </tr>

                      <tr>
                        <th scope="row">작성자</th>
                        <td style="border-right: none;">
                          <input type="text" placeholder="작성자 ">
                        </td>
                        <th scope="row" style="border-right: none;"></th>
                        <td></td>
                      </tr>

                    </table>

                    <button type="button" class="notice_submit">제출</button>
                  </form>
                </div>
              </div>
        </main>
</body>
</html>