<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css' rel='stylesheet' type='text/css'>
        <link
            href="//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css"
            rel="stylesheet"
            type="text/css"
        />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/garbageCollect/header.css"/>
        
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
                <li>
                    <a href="" style="text-decoration: none;">?????????</a>
                </li>
                <li>
                    <a href="">????????????</a>
                </li>
                <li>
                    <a href="">???????????????</a>
                </li>
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
    </body>
</html>
