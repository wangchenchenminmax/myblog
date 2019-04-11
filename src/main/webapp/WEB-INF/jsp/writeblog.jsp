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
    <title>BLOG</title>

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

        <div style="background: #353E4A;">
            <form action="${pageContext.request.contextPath }/submitblog" method="post">
                标题: <input name="blog_title" type="text"> <br>
                标签:<input name="blog_remarks" type="text"> <br>


                <div><textarea name="blog_content" style="overflow-y: auto; color: #53e3a6;background:#3A434D; height: 900px;width: 100%;font-size: 24px; ">
     </textarea></div>



                <input type="submit" value="提交">


            </form>


        </div>

    </div>
</main>
</body>

</html>
