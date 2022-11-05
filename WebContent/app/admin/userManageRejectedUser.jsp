<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>차단된 회원 관리</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/reset.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/userManageRejectedUser.css">
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
              <div class="title">차단된 회원</div>
              <div class="site_comming_route">
                <div class="admin">사이트 운영</div>
                <div class="user">회원관리</div>
                <div class="user_lookup">차단회원 관리</div>
            </div>

            <div class="rejected_user_info_wrapper">

              <div class="search_rejected_user">
                <div><input type="text"></div>
                <div class="search_button"><button>검색</button></div>
              </div>

              <form action="" name="check_rejected">
              <table class="rejected_user_table">

                <tr class="table_title">
                  <th scope="row">아이디</th>
                  <td>차단 내용</td>
                  <td class="check_out_reject">체크 시 차단해제</td>
                </tr>

                <tr>
                  <th scope="row">이종호</th>
                  <td>분리수거 안 되는 쓰레기 많이 투여</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

                <tr class="even">
                  <th scope="row" class="even">노희찬</th>
                  <td class="even">기사님께 내려가는 길에 음식물 쓰레기 버려달라 요청</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

                <tr>
                  <th scope="row">한동석</th>
                  <td>쓰레기 투여시간 잘 안지킴</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

                <tr class="even">
                  <th scope="row" class="even">문성준</th>
                  <td class="even">분리수거 안 되는 쓰레기 많이 투여</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

                <tr>
                  <th scope="row">한동석</th>
                  <td>쓰레기 투여시간 잘 안지킴</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

                <tr class="even">
                  <th scope="row" class="even">문성준</th>
                  <td class="even">분리수거 안 되는 쓰레기 많이 투여</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

                <tr>
                  <th scope="row">한동석</th>
                  <td>쓰레기 투여시간 잘 안지킴</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

                <tr class="even">
                  <th scope="row" class="even">문성준</th>
                  <td class="even">분리수거 안 되는 쓰레기 많이 투여</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

                <tr>
                  <th scope="row">한동석</th>
                  <td>쓰레기 투여시간 잘 안지킴</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

                <tr class="even">
                  <th scope="row" class="even">문성준</th>
                  <td class="even">분리수거 안 되는 쓰레기 많이 투여</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

                <tr>
                  <th scope="row">고진혁</th>
                  <td>한번에 너무 많은양 쓰레기 투여</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

                <tr class="even">
                  <th scope="row" class="even">노희찬</th>
                  <td class="even">알수없음</td>
                  <td class="check_out_reject">
                    <input type="checkbox" value="not_deprecated">
                  </td>
                </tr>

              </table>
              <button type="button">제출</button>
            </form>
            </div>
          </main>

</body>
<script src="index.js"></script>
</html>