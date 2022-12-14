<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
    <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/garbageCollect/reservation.css">
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
            <h3 class="subtit">????????????
                <span class="important"></span>
            </h3>
            <div class="caution">
                <h4>* ?????? ????????? ???????????? *</h4>
                <ul class="dot_list">
                    <li>
					????????? ???????????? ?????? ??????????????? ?????? ??? ?????? ????????? ????????? ?????? ????????????. 
                    ????????? ??????????????? ??????????????????.
                    </li>
                    <li>
                    ?????? ??? ?????????????????? ???????????????
                    <span>1599-0903</span>
                    ?????? ?????? ????????????.
                    </li>
                </ul>
            </div>
            <fieldset>
            	<form method="post" action="${pageContext.request.contextPath}/garbageCollect/reservationOk.collect" name="reservationForm">
	                <table class="table">
	                    <tbody>
	                        <tr class="dot">
	                            <th scope="row">
	                                ?????????
	                            </th>
	                            <td colspan="3">
	                                <div>
	                                    <div class="input">
	                                        <input type="text" name="garbageCollectName" title="????????? ??????" id="garbageCollectName">
	                                    </div>
	                                </div>
	                            </td>
	                        </tr>
	                        <tr class="dot">
	                            <th scope="row">
	                                ????????????
	                            </th>
	                            <td colspan="3">
	                                <div class="phone">
	                                    <div class="input phonenumber_area" style="width: 250px;">
	                                        <input type="tel" class="numeric" name="garbageCollectPhoneNumber" title="?????? ??????" maxlength="13" id="garbageCollectPhoneNumber" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}">
	                                    </div>
	                                </div>
	                            </td>
	                        </tr>
	                        <tr class="dot">
	                            <th scope="row">
	                                ??????
	                            </th>
	                            <td colspan="3">
	                                <div class="addr">
	                                    <div class="addr_detail">
	                                    	<span>????????????</span>
	                                        <div class="input">
	                                            <input type="text" name="garbageCollectZipcode" title="???????????? ??????" id="garbageCollectZipcode">
	                                            <input class="findButton" type="button" onclick="find()" value="???????????? ??????">
	                                        </div>
	                                        <div class="input_addressDetail">
	                                        <span>??????</span>
	                                        <div class="input">
	                                            <div class="adr_sel">
	                                            <input type="text" name="garbageCollectAddress" title="????????????" id="garbageCollectAddress">
	                                            </div>
	                                        </div>
	                                        </div>
	                                        <div class="input_addressDetail" style="display: inline-block;">
	                                        <span class="addressDetail_area">???????????? ??????</span>
	                                        <div class="input input_detail addressDetail_area">
	                                            <input class="addressDetail_area" type="text" name="garbageCollectAddressDetail" title="????????????" id="garbageCollectAddressDetail">
	                                        </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </td>
	                        </tr>
	                        <tr class="dot recycle_content">
	                                <th scope="row">????????????</th>
	                                <td colspan="3">
	                                    <div class="addr recycle_type">
	                                        <div class="addr_detail recycle_type_detail">
	                                        	<div class="type_area">
		                                        <span>?????? ??????</span>
	                                            <div class="input">
	                                                <div
	                                                    class="adr_sel recycle_type_sel"
	                                                >
	                                                    <select
	                                                        name="garbageCollectType"
	                                                        title="?????? ??????"
	                                                        id="garbageCollectType"
	                                                    >
	                                                        <option value="?????????">
	                                                            ?????????
	                                                        </option>
	                                                        <option value="??????">
	                                                            ??????
	                                                        </option>
	                                                        <option value="??????">
	                                                            ??????
	                                                        </option>
	                                                        <option value="?????????">
	                                                            ?????????
	                                                        </option>
	                                                        <option value="??????">
	                                                            ??????
	                                                        </option>
	                                                        <option
	                                                            value="???????????????"
	                                                        >
	                                                            ???????????????
	                                                        </option>
	                                                    </select>
	                                                </div>
	                                            </div>
	                                            </div>
	                                            <div class="box_area">
	                                            <span>?????? ??????</span>
	                                            <div class="input">
	                                                <div
	                                                    class="adr_sel recycle_type_sel"
	                                                >
	                                                    <select
	                                                        name="garbageCollectBoxCount"
	                                                        title="?????? ??????"
	                                                        id="garbageCollectBoxCount"
	                                                    >
	                                                        <option value="1box">
	                                                            1box
	                                                        </option>
	                                                        <option value="2box">
	                                                            2box
	                                                        </option>
	                                                        <option value="3box">
	                                                            3box
	                                                        </option>
	                                                        <option value="4box">
	                                                            4box
	                                                        </option>
	                                                        <option value="5box">
	                                                            5box
	                                                        </option>
	                                                    </select>
	                                                </div>
	                                            </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </td>
	                            </tr>
	                        <tr class="dot">
	                            <th scope="row">
	                                ?????? ????????????
	                            </th>
	                            <td colspan="3">
	                                <div class="date">
	                                    <div class="date_input">
	                                        <label for="input_date">
	                                            <input type="date" name="garbageCollectRequestDate" title="?????? ??????" min="2022-01-01" max="2222-12-31" id="garbageCollectRequestDate">
	                                            <button type="button" class="input_date">
	                                                <span class="input_date"></span>
	                                            </button>
	                                        </label>
	                                    </div>
	                                </div>
	                                <span class="noti">?????? ???????????? ?????? ??????, ??????????????? ????????? ??? ????????????.</span>
	                            </td>
	                        </tr>
	                        <tr>
	                            <th scope="row">??????</th>
	                            <td colspan="3">
	                                <div>
	                                    <textarea name="garbageCollectMemo" title="?????? ??????" maxlength="200" id="garbageCollectMemo"></textarea>
	                                    <span class="noti">??? ??????, -, /, (, ), @, ',', '.' ??? ????????? ?????? ????????? ?????? ?????? ??? ????????????.</span>
	                                </div>
	                            </td>
	                        </tr>
	                    </tbody>
	                </table>
	                <div class="btn_box">
	                    <button type="button" onclick="location.href='${pageContext.request.contextPath}/garbageCollect/request.collect'">????????????</button>
	                    <button type="button" class="btn" onclick="send()">????????????</button>
	                </div>
                </form>
            </fieldset>
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
<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/browser.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/garbageCollect/reservation.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>