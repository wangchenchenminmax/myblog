<%--
  Created by IntelliJ IDEA.
  User: gosick
  Date: 2019/4/8
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>myBlog</title>
    <meta name="keywords" content="关键词,关键词,关键词,关键词,5个关键词" />
    <meta name="description" content="网站简介，不超过80个字" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${pageContext.request.contextPath }/static/css/index.css" rel="stylesheet">
    <link type="text/css" href="${pageContext.request.contextPath }/static/css/style.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath }/static/js/jquery.min.js" ></script>
    <script src="${pageContext.request.contextPath }/static/js/comm.js" ></script>
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath }/static/js/modernizr.js"></script>
    <![endif]-->
</head>
<body>
<header>
    <div class="logo" ><a href="${pageContext.request.contextPath }/index">Seek-April个人博客 </a> <c:if test="${user==null}"> <a href="${pageContext.request.contextPath }/login">登录</a>

    </c:if></div>
    <div class="top-nav">
        <h2 id="mnavh"><span class="navicon"></span></h2>

    </div>

</header>
<aside class="side">
    <c:if test="${user!=null}">
        <div class="about"><i><a><img src=""></a></i>
            <h2>这</h2>
            <h2>只</h2>
            <h2>是</h2>
            <h2>一</h2>
            <h2>只</h2>
            <h2>默</h2>
            <h2>默</h2>
            <h2>无</h2>
            <h2>闻</h2>
            <h2>的</h2>
            <h2>小</h2>
            <h2>码</h2>
            <h2>农</h2>
            <h2>的</h2>
            <h2>窝</h2>
        </div>
    </c:if>

</aside>
<main>
    <div class="main-content">

        <div class="picbox">
            <body>

            <script src="${pageContext.request.contextPath }/static/js/polyfill.min.js"></script>

            <div id="hero-slides">

                <div id="header">
                    <div id="logo"></div>
                    <div id="menu">
                        <div id="hamburger">
                            <div class="slice"></div>
                            <div class="slice"></div>
                            <div class="slice"></div>
                        </div>
                    </div>
                </div>

                <div id="slides-cont">
                    <div class="button" id="next"></div>
                    <div class="button" id="prev"></div>
                    <div id="slides">
                        <div class="slide"
                             style="background-image: url(${pageContext.request.contextPath }/static/img/2.png);">
                            <div class="number">01</div>
                            <div class="body">
                                <div class="location"></div>
                                <div class="headline"><a href="${pageContext.request.contextPath }/blogs">博客</a></div>
                                <a href="#">
                                    <c:if test="${user!=null}">
                                    <div class="link"><a href="${pageContext.request.contextPath }/writeblog"> New</a></div>
                                </a></c:if>
                            </div>
                        </div>
                        <div class="slide"
                             style="background-image: url(${pageContext.request.contextPath }/static/img/1.png);">
                            <div class="number">02</div>
                            <div class="body">
                                <div class="location"></div>
                                <div class="headline"><a href="${pageContext.request.contextPath }/blogs">博客</a></div>
                                <a href="#">
                                    <c:if test="${user!=null}">
                                    <div class="link"><a href="${pageContext.request.contextPath }/writeblog"> New</a></div>
                                </a></c:if>
                            </div>
                        </div>
                        <div class="slide"
                             style="background-image: url(${pageContext.request.contextPath }/static/img/3.png);">
                            <div class="number">03</div>
                            <div class="body">
                                <div class="location"></div>
                                <div class="headline"><a href="${pageContext.request.contextPath }/blogs">博客</a></div>
                                <a href="#">
                                    <c:if test="${user!=null}">
                                    <div class="link"><a href="${pageContext.request.contextPath }/writeblog"> New</a></div>
                                </a></c:if>
                            </div>
                        </div>
                        <div class="slide"
                             style="background-image: url(${pageContext.request.contextPath }/static/img/4.png);">
                            <div class="number">04</div>
                            <div class="body">
                                <div class="location"></div>
                                <div class="headline"><a href="${pageContext.request.contextPath }/blogs">博客</a></div>
                                <a href="#">
                                    <c:if test="${user!=null}">
                                    <div class="link"><a href="${pageContext.request.contextPath }/writeblog"> New</a></div>
                                </a></c:if>
                            </div>
                        </div>
                        <div class="slide"
                             style="background-image: url(${pageContext.request.contextPath }/static/img/5.png);">
                            <div class="number">05</div>
                            <div class="body">
                                <div class="location"></div>
                                <div class="headline"><a href="${pageContext.request.contextPath }/blogs">博客</a></div>
                                <a href="#">
                                    <c:if test="${user!=null}">
                                    <div class="link"><a href="${pageContext.request.contextPath }/writeblog"> New</a></div>
                                </a></c:if>
                            </div>
                        </div>
                        <div class="slide"
                             style="background-image: url(${pageContext.request.contextPath }/static/img/6.png);">
                            <div class="number">06</div>
                            <div class="body">
                                <div class="location"></div>
                                <div class="headline"><a href="${pageContext.request.contextPath }/blogs">博客</a></div>
                                <a href="#">
                                    <c:if test="${user!=null}">
                                    <div class="link"><a href="${pageContext.request.contextPath }/writeblog"> New</a></div>
                                </a></c:if>
                            </div>
                        </div>
                        <div class="slide"
                             style="background-image: url(${pageContext.request.contextPath }/static/img/7.png);">
                            <div class="number">07</div>
                            <div class="body">
                                <div class="location"></div>
                                <div class="headline"><a href="${pageContext.request.contextPath }/blogs">博客</a></div>
                                <a href="#">
                                    <c:if test="${user!=null}">
                                    <div class="link"><a href="${pageContext.request.contextPath }/writeblog"> New</a></div>
                                </a></c:if>
                            </div>
                        </div>
                    </div>
                    <div id="next-catch"></div>
                    <div id="prev-catch"></div>
                </div>

            </div>

            <script>
                let hero = document.getElementById('hero-slides');
                let menu = document.getElementById('menu');
                let slides = document.getElementById('slides');
                let next = [ 'next', 'next-catch' ].map(n => document.getElementById(n));
                let prev = [ 'prev', 'prev-catch' ].map(n => document.getElementById(n));
                let slideChildren = slides.children;
                let slideCount = slides.children.length;
                let currentlyDemoing = false;
                let currentPage = 0;
                let slidesPerPage = () => window.innerWidth > 1700 ? 4 : window.innerWidth > 1200 ? 3 : 2;
                let maxPageCount = () => slideCount / slidesPerPage() - 1;

                function goToPage(pageNumber = 0) {
                    currentPage = Math.min(maxPageCount(), Math.max(0, pageNumber));
                    console.log(currentPage);
                    hero.style.setProperty('--page', currentPage);
                }

                function sleep(time) {
                    return new Promise(res => setTimeout(res, time));
                }

                function hoverSlide(index) {
                    index in slideChildren &&
                    slideChildren[index].classList.add('hover');
                }

                function unhoverSlide(index) {
                    index in slideChildren &&
                    slideChildren[index].classList.remove('hover');
                }

                async function demo() {
                    if(currentlyDemoing) {
                        return;
                    }
                    currentlyDemoing = true;
                    if(currentPage !== 0) {
                        goToPage(0);
                        await sleep(800);
                    }
                    let slides = slidesPerPage();
                    let pageSeq_ = { 2: [ 1, 2, 1 ], 3: [ 1, 2, 1 / 3 ], 4: [ 1, 1, 0 ] };
                    let pageSeq = pageSeq_[slides] || pageSeq_[4];
                    let slideSeq_ = { 2: [ 2, 4, 3 ], 3: [ 3, 6, 2 ], 4: [ 3, 6, 2 ] };
                    let slideSeq = slideSeq_[slides] || slideSeq_[2];
                    await sleep(300);
                    goToPage(pageSeq[0]);
                    await sleep(500);
                    hoverSlide(slideSeq[0]);
                    await sleep(1200);
                    goToPage(pageSeq[1]);
                    unhoverSlide(slideSeq[0]);
                    await sleep(500);
                    hoverSlide(slideSeq[1]);
                    await sleep(1200);
                    goToPage(pageSeq[2]);
                    unhoverSlide(slideSeq[1]);
                    await sleep(300);
                    hoverSlide(slideSeq[2]);
                    await sleep(1600);
                    goToPage(0);
                    unhoverSlide(slideSeq[2]);
                    currentlyDemoing = false;
                }

                next.forEach(n => n.addEventListener('click', () => !currentlyDemoing && goToPage(currentPage + 1)));
                prev.forEach(n => n.addEventListener('click', () => !currentlyDemoing && goToPage(currentPage - 1)));
                menu.addEventListener('click', demo);

                sleep(100).then(demo);

                // window.addEventListener('resize', () => {
                // console.log(document.body.style.getPropertyValue('--slide-per-page'));
                // });
            </script>


            <!--box end-->
        </div>
        <!-- <div class="newsbox">





         </div>
         <div class="blank"></div>
         <div class="links">

         </div>-->

    </div>
</main>
</body>
</html>

