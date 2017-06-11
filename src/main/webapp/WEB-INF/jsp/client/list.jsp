<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<html xmlns:ng="http://angularjs.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="renderer" content="webkit|ie-stand">
    <title>巨天食品</title>
    <!--  标题头像  -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/tel.png" />
    <meta name="keywords" content="巨天食品">
    <meta name="description" content="巨天食品">

    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/css/sprstyle.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/angular.js/1.2.32/angular.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
    <!--[if lt IE 9]>
    <!--<script src="${pageContext.request.contextPath}/js/html5shiv.js"></script>-->
    <!--<script src="${pageContext.request.contextPath}/js/respond.min.js"></script>-->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2pre/html5shiv.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/json2/20121008/json2.js"></script>
    <![endif]-->

    <!--[if lte IE 8]>
    <script>
        document.createElement('ng-include');
        document.createElement('ng-pluralize');
        document.createElement('ng-view');

        // Optionally these for CSS
        document.createElement('ng:include');
        document.createElement('ng:pluralize');
        document.createElement('ng:view');
    </script>
    <![endif]-->
</head>

<body ng-app="app" ng-controller="index">
<!--头部-->
<header>
    <div class="header-top">
        <div class="container fz14"><span class="fl gray">您好！欢迎来到巨天食品！</span> <span class="fr login"><!--<a href="#">免费注册</a> | <a href="#">登录</a>--></span>
        </div>
    </div>
    <div class="head-cont">
        <div class="container">
            <div class="logo"><a href="javascript:;"><img src="${pageContext.request.contextPath}/images/logo.png" alt="巨天食品"></a>
            </div>
            <div class="tell fr"><i class="cal">132-9010-2000</i></div>
        </div>
    </div>
</header>

<!--导航-->
<div class="top-nav">
    <div class="nav">
        <!--导航条-->
        <ul class="nav-main">
            <li><a href="/ps/">首页</a></li>
            <li id="li-{{menu.id}}" ng-repeat="menu in menulist" on-finish-render><a href="javascript:;">{{menu.name}}<span class="hover-down"></span></a></li>

        </ul>
        <!--隐藏盒子-->
        <div id="box-{{menu.id}}" class="hidden-box hidden-loc-{{menu.id}}" style="display: none;" ng-repeat="menu in menulist">
            <ul>
                <li ng-repeat="next in menu.nextlist"><a href="{{next.url}}">{{next.name}}</a></li>

            </ul>
        </div>
    </div>

</div>
<section>
    <div class="aboutbanner" style="background-image: url(${pageContext.request.contextPath}/images/nben.jpg);"></div>
</section>

<section class="z-con">
    <aside class="asides fl">
        <div class="nav_lt">
            <h2 class="tit">${parentName}</h2>
            <ul class="nav_left">
                <c:forEach items="${list}" var="entry">
                    <li><a href="${entry['url']}" <c:if test="${!empty entry['on']}"> class="cu" </c:if>   >${entry['name']}</a></li>
                </c:forEach>
            </ul>
        </div>
        <%--<div class="phone"> <span>24小时客服热线</span>--%>
            <%--<p>138-5008-5207</p>--%>
        <%--</div>--%>
    </aside>
    <article class="articles fr">
        <h2 class="breadcrumb"  ng-repeat="nav in leftNavMain" ng-if="nav.on">
            <p class="fr" ><em>您的位置:</em> <a href="/ps/">首页</a> &gt; <a href="javascript:;">${currentPosition}</a></p>
            <span>${currentPosition}</span></h2>
        <div class="news">
            <ul class="new-list">
                <c:forEach items="${artList}" var="myArt">
                    <li class="list" >
                        <div class="first">
                            <div><a href="${myArt.url}">
                                <h1>${myArt.title}</h1>
                            </a>
                                <p>${myArt.paper}</p>
                                <div class="tools"> <span> <fmt:formatDate value="${myArt.createTime}" pattern="yyyy-MM-dd HH:mm:ss" /></span><a href="${myArt.url}">【全文】</a> </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
        <div class="wp-pagenavi">
            <div class="page">  </div>
        </div>
    </article>
</section>

<%--<footer class="footer">--%>
<%--&lt;%&ndash;<div class="container ft">&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="ft_left">&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="f_cal mt50">&ndash;%&gt;--%>
<%--&lt;%&ndash;<p class="fmy fz16">客服咨询热线<br>&ndash;%&gt;--%>
<%--&lt;%&ndash;<strong class="fz24">138-5008-5207</strong></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="ft_center">&ndash;%&gt;--%>
<%--&lt;%&ndash;<p class="btnav mt20"><a&ndash;%&gt;--%>
<%--&lt;%&ndash;href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=2">关于我们</a> | <a&ndash;%&gt;--%>
<%--&lt;%&ndash;href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=44">企业文件</a> | <a&ndash;%&gt;--%>
<%--&lt;%&ndash;href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=45">合作伙伴</a> | <a&ndash;%&gt;--%>
<%--&lt;%&ndash;href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=46">企业架构</a> | <a&ndash;%&gt;--%>
<%--&lt;%&ndash;href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=47">联系我们</a></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;<p class="ts fmy">本产品属于高风险、高收益投资品种；投资者应具有较高的风险识别能力、资金实力与风险承受能力。投资者应合理配置资产、不应用全部资金做投资，不应借钱来做投资。</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;<p class="mt20"><!--<img src="http://www.xrh66.com/statics/rs/images/360.png">--></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="ft_right">&ndash;%&gt;--%>
<%--&lt;%&ndash;<!--<p class="ewm"><img src="http://www.xrh66.com/statics/rs/images/qc.jpg" width="150" height="150"></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;<p class="wxh">扫一扫，关注巨天食品微信</p>-->&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--<div class="copy fmy">--%>
<%--<p>Copyright © 2017 济南巨天食品有限公司</p>--%>
<%--</div>--%>
<%--</footer>--%>
<footer class="footer">
    <div class="container ft">
        <div class="ft_left">
            <div class="f_cal">
                <p class="fmy fz16">客服咨询热线<br>
                    <strong class="fz24">132-9010-2000</strong></p>
            </div>
        </div>
        <div class="ft_center">
            <p class="ts fmy">Copyright © 2017 济南巨天食品有限公司</p>
        </div>
        <div class="ft_right">
            <p class="ewm"><img src="${pageContext.request.contextPath}/images/wechat.jpg" width="50" height="50"></p>
            <p class="wxh">扫一扫，关注巨天食品微信</p>
        </div>
    </div>
    <%--<div class="copy fmy">--%>
    <%--<p>Copyright © 2017 济南巨天食品有限公司</p>--%>
    <%--</div>--%>
</footer>

<%--<div class="tbox" style="display: none;"><a href="javascript:void(0)" id="gotop"></a></div></body>--%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>