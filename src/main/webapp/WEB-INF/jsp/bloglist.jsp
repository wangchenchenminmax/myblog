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
    <title>BLOGS</title>

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

        <div style="">
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
                <a id="lastpage" title="Total record" href="${pageContext.request.contextPath }/pageblogs?queryPage=${nowpage-1}">&nbsp;上一页 </a>&nbsp;&nbsp;&nbsp;


               <c:forEach begin="1" end="${pages}" step="1" var="page">
                   <a id="a${page}" href="${pageContext.request.contextPath }/pageblogs?queryPage=${page}">${page}</a>&nbsp;
               </c:forEach>

                <a id="nextpage" href="${pageContext.request.contextPath }/pageblogs?queryPage=${nowpage+1}">下一页</a>&nbsp;
           <%--<input onkeyup="this.value=this.value.replace(/\D|^0/g,'')" onafterpaste="this.value=this.value.replace(/\D|^0/g,'')"  style="width: 20px;" id="itxt" type="text">--%>
                <input  oninput="if(value>${pages})value=${pages};if(value<1)value=1"   id="itxt" type="number" >
                <a  id="mybutton"  >跳转</a>
            </div>
        </div>

    </div>
</main>
</body>
<script >
    $("#itxt").css({"width": "35px","height":"25px" })
    $("#itxt").blur(function () {
        var xpage=$("#itxt").val();
       // alert(xpage)
        if (xpage!=null&xpage!=""){
            $("#mybutton").attr("href","${pageContext.request.contextPath }/pageblogs?queryPage="+xpage)
        }

    })


$("#a${nowpage}").css("background","rosybrown")
        $("#lastpage").click(function () {
            if ( ${nowpage}== 1 ){
               alert("已经是第一页了")
            }
        })
      $("#nextpage").click(function () {
          if (${nowpage}==${pages}){
              alert("已经是最后一页了,返回第一页")
          }
      })

</script>
</html>
