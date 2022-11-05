<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>스토어 관리</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/reset.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/storeMange.css">
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
                <div class="title">스토어 메인</div>
                <div class="site_comming_route">
                  <div class="admin">사이트 운영</div>
                  <div class="user">스토어</div>
                  <!-- <div class="user_lookup">상품 리스트</div> -->
              </div>

              <div>
                <img src="">상품목록
              </div>


              <div class="table_wrapper">

                <div class="search_rejected_user">
                  <div>
                    <select name="search_type_select" id="">
                    <option value="product_group">상품그룹</option>
                    <option value="product_name">이름</option>                  
                  </select>
                </div>
                  <div><input type="text"></div>
                  <div class="search_button"><button>검색</button></div>
                </div>
  

                <table class="result_table">

                  <thead>
                  <tr>
                    <th scope="cols">상품그룹</th>
                    <th scope="cols">상품이름</th>
                    <th scope="cols">재고 수량</th>
                    <th scope="cols">판매가</th>
                    <th scope="cols">원가</th>
                    <th scope="cols">판매여부</th>
                  </tr>
                  </thead>

                  <tbody>
                  <tr>
                    <th scope="row">의류</th>
                    <td><a href="">업사이클 후디</a></td>
                    <td>100 EA</td>
                    <td>100,000 ₩ </td>
                    <td>2,500 ₩</td>
                    <td>판매중지</td>
                  </tr>

                  <tr>
                    <th scope="row">인형류</th>
                    <td><a href="">업사이클 벌까루 고래인형</a></td>
                    <td>20 EA</td>
                    <td>25,000 ₩</td>
                    <td>2000 ₩</td>
                    <td>판매중</td>
                  </tr>

                  <tr>
                    <th scope="row">가방류</th>
                    <td><a href="">업사이클 가방</a></td>
                    <td>0 EA</td>
                    <td>15,000 ₩</td>
                    <td>1,000 ₩</td>
                    <td>품절</td>
                  </tr>

                  <tr>
                    <th scope="row">신발류</th>
                    <td><a href="">업사이클 슬리퍼</a></td>
                    <td>10 EA</td>
                    <td>5,000 ₩</td>
                    <td>1,000 ₩</td>
                    <td>판매중</td>
                  </tr>

                  <tr>
                    <th scope="row">항목명</th>
                    <td><a href="">내용이 들어갑니다.</a></td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                  </tr>

                  <tr>
                    <th scope="row">항목명</th>
                    <td><a href="">내용이 들어갑니다.</a></td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                  </tr>

                  <tr>
                    <th scope="row">항목명</th>
                    <td><a href="">내용이 들어갑니다.</a></td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                  </tr>

                  <tr>
                    <th scope="row">항목명</th>
                    <td><a href="">내용이 들어갑니다.</a></td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                  </tr>

                  <tr>
                    <th scope="row">항목명</th>
                    <td><a href="">내용이 들어갑니다.</a></td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                  </tr>

                  <tr>
                    <th scope="row">항목명</th>
                    <td><a href="">내용이 들어갑니다.</a></td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                    <td>내용이 들어갑니다.</td>
                  </tr>
                  </tbody>
                </table>

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