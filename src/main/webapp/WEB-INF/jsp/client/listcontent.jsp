<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<html xmlns:ng="http://angularjs.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="renderer" content="webkit|ie-stand">
    <title>龙岩永杭高速公路</title>
    <!--  标题头像  -->
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/tel.png" />
    <meta name="keywords" content="龙岩永杭高速公路">
    <meta name="description" content="龙岩永杭高速公路">

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
    <style type="text/css">
        .top {
            height: 65px;
            width: 100%;
            background: url('${pageContext.request.contextPath}/images/top-bg.png') 0 0 repeat-x;
            position: relative;
        }
        .top-area {
            width: 1184px;
            position: relative;
            left: 50%;
            margin-left: -592px;
            color: #fff;
        }

        a:link {
            text-decoration: none;
            cursor: pointer;
            color: #0f6fc4;
        }
        a:visited {
            text-decoration: none;
            cursor: pointer;
            color: #0f6fc4;
        }
        a:hover {
            text-decoration: none;
            cursor: pointer;
            color: #0f6fc4;
        }
        a {
            text-decoration: none;
            cursor: pointer;
        }
        a, input {
            outline: none;
        }
        .top-logo {
            width: 221px;
            height: 42px;
            position: absolute;
            top: 23px;
            left: 0;
        }
        img {
            border: 0;
        }
        .QuickLink {
            position: absolute;
            right: 0px;
            top: 19px;
        }
        * {
            margin: 0;
            margin: 0;
            padding: 0;
            list-style: none;
            border: 0;
        }
        ul, li {
            margin: 0;
            padding: 0;
            list-style: none;
            -webkit-margin-before: 0em;
            -webkit-margin-after: 0em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
            -webkit-padding-start: 0px;
        }
        .QuickLink li {
            float: right;
            background: url('${pageContext.request.contextPath}/images/sj.png') no-repeat 0;
            padding: 0 0px 0 10px;
            margin-left: 20px;
        }
        .QuickLink li a {
            display: block;
            color: #000;
        }
        .top-input {
            width: 123px;
            height: 30px;
            background: url('${pageContext.request.contextPath}/images/input.png') 0 0 no-repeat;
            position: absolute;
            right: 24px;
            top: 75px;
            border: 0;
            outline: none;
            padding-left: 10px;
        }
        .top-search {
            width: 27px;
            height: 27px;
            background: url('${pageContext.request.contextPath}/images/search.png') 0 0 no-repeat;
            position: absolute;
            right: 0;
            top: 75px;
            border: 0;
            outline: none;
            cursor: pointer;
        }
        .tabMenu {
            position: absolute;
            top: 71px;
        }
        .tabMenu li {
            width: 136px;
            height: 40px;
            line-height: 40px;
            color: #34333b;
            text-align: center;
            float: left;
            font-size: 16px;
            cursor: pointer;
        }
        .tabMenu a {
            text-decoration: none;
            color: #000;
        }
        .tabMenu a:hover {
            text-decoration: none;
            color: #0f6fc4;
        }
    </style>
</head>


<body ng-app="app" ng-controller="index" class="ng-app:app" id="ng-app">
<!--头部-->
<header>
    <div class="top">
        <div class="top-area">
            <div class="top-area-a" style="position: relative">
                <a href="../index.aspx">
                    <img src="${pageContext.request.contextPath}/images/logo.png" class="top-logo" alt=""></a>
                <div class="QuickLink">
                    <ul>
                        <li><a href="javascript:void(0);" onclick="IsIEE()">OA系统入口</a></li>
                        <li><a href="javascript:void(0);" onclick="SetHome(this,'http://www.kingee.cn');">设为首页</a></li>
                    </ul>
                </div>
                <input type="text" class="top-input" placeholder="关键字">
                <input type="button" class="top-search">
            </div>
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
        <h2 class="breadcrumb" ng-repeat="nav in leftNavMain" ng-if="nav.on">
            <p class="fr" ><em>您的位置:</em> <a href="/ps/">首页</a> &gt; <a href="javascript:;"><c:if test="${!empty currentPosition}">${currentPosition}</c:if></a></p>
            <span><c:if test="${!empty currentPosition}">${currentPosition}</c:if></span></h2>


        <div class="details">
            <h1><c:if test="${!empty article.title}">${article.title}</c:if></h1>
            <p style="text-indent:2em"><c:if test="${!empty article.title}">${article.content}</c:if><br>
                &nbsp;</p>
        </div>
    </article>
</section>

<footer class="footer">
    <div class="container ft">
        <div class="ft_left">
            <div class="f_cal">
                <p class="fmy fz16">客服咨询热线<br>
                    <strong class="fz24">132-9010-2000</strong></p>
            </div>
        </div>
        <div class="ft_center">
            <p class="ts fmy">Copyright © 2017 龙岩永杭高速公路有限公司</p>
        </div>
        <div class="ft_right">
            <p class="ewm"><img src="${pageContext.request.contextPath}/images/wechat.jpg" width="50" height="50"></p>
            <p class="wxh">扫一扫，关注龙岩永杭高速公路微信</p>
        </div>
    </div>
    <%--<div class="copy fmy">--%>
        <%--<p>Copyright © 2017 龙岩永杭高速公路有限公司</p>--%>
    <%--</div>--%>
</footer>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/banner.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script></body>
</html>