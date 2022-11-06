<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/garbageCollect/requestCheckDetail.css">
</head>
<body>
	<main>
        <div class="detail_area">
            <!-- 기본정보 -->
            <h2 class="detail_title">기본 정보</h2>
            <table>
                <tbody>
                    <tr>
                        <th>고객명</th>
                        <td>
                            <div><c:out value="${requestDetail.getGarbageCollectName()}"/></div>
                        </td>
                    </tr>
                    <tr>
                        <th>휴대폰</th>
                        <td>
                            <div><c:out value="${requestDetail.getGarbageCollectPhoneNumber()}"/></div>
                        </td>
                    </tr>
                    <tr>
                        <th><span class="address_area">주소</span></th>
                        <td>
                            <div>
                            	<div class="address_list">
                                    <span class="address_span">우편번호</span>
                                    <div class="address_text" id="addressZipcode">
                                    <c:choose>
										<c:when test="${requestDetail.getGarbageCollectZipcode() > 9999}">
											<c:out value="${requestDetail.getGarbageCollectZipcode()}"/>
										</c:when>
										<c:otherwise>
											<c:out value="0${requestDetail.getGarbageCollectZipcode()}"/>
										</c:otherwise>
									</c:choose>
                                        <%-- <c:out value="zipcode(${requestDetail.getGarbageCollectZipcode()})"/> --%>
                                    </div>
                                </div>
                                <div class="address_list">
                                    <span class="address_span">도로명 주소</span>
                                    <div class="address_text">
                                        <c:out value="${requestDetail.getGarbageCollectAddress()}"/>
                                    </div>
                                </div>
                                <div class="address_list">
                                    <span class="address_span">상세주소</span>
                                    <div class="address_text"><c:out value="${requestDetail.getGarbageCollectAddressDetail()}"/></div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>배출 희망일</th>
                        <td>
                            <div><c:out value="${requestDetail.getGarbageCollectRequestDate()}"/></div>
                        </td>
                    </tr>
                    <tr>
                        <th>메모</th>
                        <td>
                            <div><c:out value="${requestDetail.getGarbageCollectMemo()}"/></div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- 선택된 배출 품목 -->
        <div class="detail_area second_area">
            <h2 class="detail_title">선택된 배출품목</h2>
            <table>
                <tbody>
                    <tr>
                        <th>분류</th>
                        <td>
                            <div><c:out value="${requestDetail.getGarbageCollectType()}"/></div>
                        </td>
                    </tr>
                    <tr>
                        <th>박스 수량</th>
                        <td>
                            <div><c:out value="${requestDetail.getGarbageCollectBoxCount()}"/></div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="button_area">
            <button class="buttons button_cancel" type="button" style="cursor: pointer;" onclick="deleteCheck();">
                예약 취소
            </button>
            <a href="${pageContext.request.contextPath}/garbageCollect/history.collect">
            <button class="buttons button_list" type="button" style="cursor: pointer;">목록보기</button>
            </a>
        </div>
        </main>
        
    </body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/garbageCollect/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/util.js"></script>
	<script>
		function deleteCheck(){
			if(confirm("예약을 취소하시겠습니까?")){
				location.href="/garbageCollect/requestDelete.collect?garbageCollectNum=${requestDetail.getGarbageCollectNum()}";
			} else return;
		}
	</script>
</html>