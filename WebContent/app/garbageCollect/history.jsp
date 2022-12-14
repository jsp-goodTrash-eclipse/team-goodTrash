<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>history</title>
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/garbageCollect/history.css">
</head>
<body>
    <header id="header">
        <nav class="util" style="background-color: #f2f2f2;">
        <div class="top holder">
            <div class="link_nav">
                <ul>
                    <li>
                        <span class="sp gp">
                        <img src="https://www.shouse.garden/images/common/u_gp.png" class="sp">
                        </span>
                    </li>
                    <li>
                        <span class="sp ap">
                            <img src="https://www.shouse.garden/images/common/u_ap.png" class="sp">
                        </span>
                    </li>
                    <li>
                        <span class="sp in">
                            <img src="https://www.shouse.garden/images/common/u_in.png" class="sp">
                        </span>
                    </li>
                    <li>
                        <span class="sp kc">
                            <img src="https://www.shouse.garden/images/common/u_kc.png" class="sp">
                        </span>
                    </li>
                    <li>
                        <span class="sp fd">
                            <img src="https://www.shouse.garden/images/common/u_fb.png" class="sp">
                        </span>
                    </li>
                    <li>
                        <span class="sp yt">
                            <img src="https://www.shouse.garden/images/common/u_yt.png" class="sp">
                        </span>
                    </li>
                </ul>
            </div>
            <div class="link_my">
            <ul>
            	<c:choose>
            		<c:when test="${empty sessionScope.userNumber}">
            			 <li>
                    		<a href="${pageContext.request.contextPath}/user/login.user" style="text-decoration: none;">?????????</a>
               			 </li>
			             <li>
			             	<a href="${pageContext.request.contextPath}/user/join.user">????????????</a>
			             </li>
            		</c:when>
            		<c:otherwise>
            			<li>
                    		<a href="${pageContext.request.contextPath}/myPage/main.mp">???????????????</a>
               			</li>
               			<li>
                   			<a href="${pageContext.request.contextPath}/user/logout.user">????????????</a>
               			</li>
            		</c:otherwise>
            	</c:choose>
            </ul>
            </div>
        </div>
        </nav>
        <article class="top_home">
            <h1 class="home">
                <a href="${pageContext.request.contextPath}/user/mainPage.user">
                    <span class="logo">
                    </span>
                </a>
            </h1>
            <div class="inner">
                <div class="holder">
                    <button type="button" class="btn_n nav">
                        <span class="menu c">??????</span>
                    </button>
                    <ul>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/user/mainPage.user">???</a>
                    </li>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/product/main.product">?????????</a>
                    </li>
                    <li class="active">
                        <a href="">????????????</a>
                    </li>
                    <li class="active">
                        <a href="">????????????</a>
                    </li>
                    </ul>
                    <a href="" class="btn_t write">
                    <span class="c write">
                        ?????????</span>
                    </a>
                    <a href="" class="btn_t cart">
                    <span class="c cart">
                        ????????????</span>
                    </a>
                    <a href="${pageContext.request.contextPath}/myPage/main.mp" class="btn_t my">
                    <span class="c my">
                        ???????????????</span>
                    </a>
                    <div class="search">
                    <form class="mainSearchForm">
                        <input type="text" id="Search" name="find" placeholder="??????????????? ???????????????." autocomplete="off">
                        <button type="submit" class="btn_search">
                            <span class="btn_search_icon">
                                <!-- <img src="imgs/search.png"> -->
                            </span>
                        </button>
                    </form>
                    </div>
                </div>
            </div>
        </article>
    </header>
    <article class="request">
        <div class="holder">
            <h3 class="subtit">????????????</h3>
            <div class="request_c">
               <table class="table">
                <thead>
                <tr>
                    <th scope="col">??????</th>
                    <th scope="col">?????? ????????????</th>
                    <th scope="col">?????? ??????</th>
                    <th scope="col">?????? ?????????</th>
                    <th scope="col">?????? ?????????</th>
                    <th scope="col">?????? ??????</th>
                </tr>
                </thead>
                <!-- <tbody>
                    <tr style="cursor: pointer;">
                        <td data-before="??????">
                            <div>1</div>
                        </td>
                        <td data-before="?????? ????????????">
                            <div>2022-10-01</div>
                        </td>
                        <td data-before="?????? ??????">
                            <div>????????????</div>
                        </td>
                        <td data-before="?????? ?????????">
                            <div>2022-10-02</div>
                        </td>
                        <td data-before="?????? ?????????">
                            <div>????????? ?????????</div>
                        </td>
                        <td data-before="?????? ??????">
                            <div style="color: red;">????????????</div>
                        </td>
                    </tr>
                </tbody> -->
                <tbody>
					<c:choose>
						<c:when test="${not empty historys and fn:length(historys) > 0}">
							<c:forEach var="history" items="${historys}">
								<tr>
									<td>
									<a href="${pageContext.request.contextPath}/garbageCollect/requestCheckDetail.collect?garbageCollectNum=${history.getGarbageCollectNum()}">
									<c:out value="${history.getGarbageCollectNum()}"/>
									</a>
									</td>
									<td><c:out value="${history.getGarbageCollectRequestDate()}"/></td>
									<td><c:out value="${history.getGarbageCollectType()}"/></td>
									<td><c:out value="${history.getGarbageCollectRequestDate()}"/></td>
									<td><c:out value="${history.getGarbageCollectName()}"/></td>
									<c:choose>
							              <c:when test="${history.getGarbageCollectStatus() eq '????????????'}">
							              	<td style="color:#ff0000"><c:out value="${history.getGarbageCollectStatus()}"/></td>
							              </c:when>
							              <c:when test="${history.getGarbageCollectStatus() eq '????????????'}">
							              	<td style="color:#000000"><c:out value="${history.getGarbageCollectStatus()}"/></td>
							              </c:when>
							        </c:choose>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="6" align="center">????????? ???????????? ????????????.</td>
									</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
               </table>
            </div>
            <!-- ????????? ?????? -->
			<table style="font-size:1rem; margin-top: 40px !important;">
			<tr align="center" valign="middle">
				<td class="web-view">
					<c:if test="${prev}">
						<a href="${pageContext.request.contextPath}/garbageCollect/history.collect?page=${startPage - 1}">&lt;</a>
					</c:if>
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<c:when test="${not (i eq page)}">
								<a href="${pageContext.request.contextPath}/garbageCollect/history.collect?page=${i}">
									<c:out value="${i}"/>&nbsp;&nbsp;
								</a>
							</c:when>
							<c:otherwise>
									<c:out value="${i}"/>&nbsp;&nbsp;
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${next}"> 
						<a href="${pageContext.request.contextPath}/garbageCollect/history.collect?page=${endPage + 1}">&gt;</a>
					</c:if>
				</td>
			</tr>
		</table>
           <!--  <div class="btn_box">
                <button type="button" class="btn">????????????</button>
                <button type="button" class="btn btn2">????????????</button>
            </div> -->
        </div>
    </article>
    <footer id="footer">
        <div class="holder">
            <div class="info">
                <span>
                    ???????????? : cs@cona.world
                     |
                </span>
                <span>???????????? : cooperate@cona.world</span>
            </div>
            <nav class="fnav">
                <ul>
                    <li>
                        <a href="">
                            ????????????
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            ??????????????????
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            ????????????????????????
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            ?????????????????????
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            ????????????
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            ???????????????
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            ????????????????????????
                            <span class="arrow"></span>
                        </a>
                    </li>
                </ul>
            </nav>
            <div class="siteinfo">
                <span>
                    ???????????? : 1899-9137 | ???????????? ?????? | ???????????? : | ?????????????????????<br>
                    ??????: ??????????????? ????????? ????????????1??? 36,7???(?????????) | ?????????????????????: 532-87-01552 | ???????????????????????????: 2020-???????????????-0872 | Copyright?????????????? ??? ALL RIGHTS RESERVED.<br>
                    ???????????????????????????: ????????? | ??????????????????:???????????? ?????????????????????
                </span>
            </div>
            <div class="bottom info">
                <p>
                    NICEPAY ???????????? ????????? : ???????????? ??????????????? ?????? ?????? ?????? ???, ?????? ??????????????? ????????? ???????????? ???????????? ????????? ??? ????????????.  
                </p>
                <p>
                    ???????????? ??????????????????????????? ??????????????? ???????????? ?????????, ??????????????? ????????? ??????, ???????????? ??? ????????? ????????? ?????????????????? ?????? ????????? ?????? ????????????.
                </p>
            </div>
        </div>
    </footer>   
    
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</html>