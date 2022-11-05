<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>관리자 메인 페이지</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin/index.css" />
  </head>
  <style>
  	@font-face {
  font-family: newFont;
  src: url("${pageContext.request.contextPath}/assets/css/webfonts/NanumSquareNeo-dEb.ttf");
  body{
  font-family: "newFont";
  }
}
  </style>
  <!-- 관리자 메인 페이지에 있어야 할 것들  -->
  <body>
    <!-- 양 옆으로 나누기 위해 전체를 div 하나로 감싸서 flex를 준다 -->
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
              <li><a href="/admin_user_manage_findUser/index.html">&nbsp&nbsp&nbsp회원정보 조회</a></li>
              <li><a href="/admin_user_manage_reject_user/index.html">&nbsp&nbsp&nbsp차단된 회원</a></li>
            </ul>
          </details>

          <details class="driver_manage">
            <summary>
              <div><a href="#">수거기사 관리</div></a>
              <img src="${pageContext.request.contextPath}/assets/images/admin/pngwing.com.png" />
            </summary>
          </details>

          <details class="store_manage">
            <summary>
              <div>스토어 관리</div>
              <img src="${pageContext.request.contextPath}/assets/images/admin/pngwing.com.png" />
            </summary>
            <ul class="manage">
              <li><a href="/admin_store_manage_product_list/index.html">&nbsp&nbsp&nbsp상품리스트</a></li>
              <li><a href="/admin_store_sale_manage/index.html">&nbsp&nbsp&nbsp판매내역</a></li>
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
        <div class="today_list">
          <div class="today_work">오늘의 할일</div>
          <hr />
          <ul class="today_list_firstline">
            <li><a href="">신규주문</a></li>
            <li><a href="">취소관리</a></li>
            <li><a href="">교환관리</a></li>
            <li><a href="">답변대기문의</a></li>
            <li><a href="">기사님 요청사항</a></li>
          </ul>
        </div>

        <div class="main_num2">
          <div class="vistor">
            <div class="title">현재 방문 현황</div>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
            <canvas id="line-chart" width="300" height="250"></canvas>
          </div>
          <div class="summary">
            <div class="title">지역별 요약</div>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
            <canvas id="bar-chart" width="300" height="230"></canvas>
          </div>
        </div>
        <div class="main_num3">
          <div class="review">
            <div class="title">구매평/서비스 사용 후기</div>
            <hr />
            <div class="user_review">
              <div class="review_img"><img src="/img/그림1.png" width="100%" height="100%" /></div>
              <div class="review_word">[상품후기] 이쁘게 생겼는데 편하기 까지해요 이 제품 너무 좋네요!!! 재활용 쓰레기 버릴 욕구가 솟아오르네요 !!</div>
            </div>
            <div class="user_review">
              <div class="review_img"><img src="/img/그림2.png" width="100%" height="100%" /></div>
              <div class="review_word">[상품후기] 보온성이 너무 좋네요 장갑 끼고 자다가 화상 걸릴뻔 했어요 재활용 쓰레기 버릴 욕구가 솟아오르네요 !!</div>
            </div>
            <div class="user_review">
              <div class="review_img"><img src="/img/그림3.png" width="100%" height="100%" /></div>
              <div class="review_word">[상품후기] 수납 공간이 너무 넓고 상당히 질기네요 이사할때 이 가방하나로 이사할 수 있어요!!</div>
            </div>
            <div class="user_review">
              <div class="review_img"><img src="/img/그림3.png" width="100%" height="100%" /></div>
              <div class="review_word">[상품후기] 수납 공간이 너무 넓고 상당히 질기네요 이사할때 이 가방하나로 이사할 수 있어요!!</div>
            </div>
          </div>
          <div class="reaction">
            <div class="title">컨텐츠 반응</div>
            <hr />
          </div>
        </div>
      </main>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/admin/index.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>


</html>
