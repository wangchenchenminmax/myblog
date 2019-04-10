<%--
  Created by IntelliJ IDEA.
  User: gosick
  Date: 2019/4/8
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>博客列表</title>

    <link href="${pageContext.request.contextPath }/static/css/index.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/static/js/comm.js"></script>
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath }/static/js/modernizr.js"></script>
    <![endif]-->
</head>

<body>
<header>
    <div class="logo"><a href="${pageContext.request.contextPath }/index">Seek-April个人博客 </a>  <c:if test="${user==null}"> <a href="${pageContext.request.contextPath }/login">登录</a>

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

        <div style="background: ;">
            <div class="bloglist">
                <ul>
                    <c:forEach items="${blogs}" var="blog">
                    <li>
                        <h2><a href="${pageContext.request.contextPath }/blogdetail?blog_id=${blog.blog_id}">${blog.blog_title}</a></h2>
                        <i><a href=""><img src=""></a></i>
                        <p class="blogtext">${blog.blog_content}</p>
                        <p class="bloginfo"><span>${blog.blog_writer}</span><span>${blog.blog_date}</span><span><a href="/">${blog.blog_remarks}</a></span></p>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="pagelist">
                <a title="Total record">&nbsp;<b>上一页</b> </a>&nbsp;&nbsp;&nbsp;<b>1</b>&nbsp;
                <a href="/jstt/index_2.html">2</a>&nbsp;
                <a href="/jstt/index_3.html">3</a>&nbsp;
                <a href="/jstt/index_4.html">4</a>&nbsp;
                <a href="/jstt/index_5.html">5</a>&nbsp;
                <a href="/jstt/index_6.html">6</a>&nbsp;
                <a href="/jstt/index_2.html">下一页</a>&nbsp;
                <a href="/jstt/index_15.html">尾页</a>
            </div>
        </div>

    </div>
</main>
</body>

</html>
