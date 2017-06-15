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
    <%--<script src="${pageContext.request.contextPath}/js/angular.min.js"></script>--%>
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



<div class="slide banner" data-slide="{&quot;action&quot;:&quot;click&quot;,&quot;fn&quot;:&quot;banner_ext&quot;,&quot;time&quot;:&quot;5000&quot;}" >
    <c:forEach items="${picList}" var="pic">
        <div class="ban_c album">
            <a href="${pic.relateUrl}">
                <img src="${pic.imageUrl}" alt="${pic.mname}">
            </a>
        </div>
    </c:forEach>
    <div class="ban_nav">
        <a class="ban_prev">1</a><a class="on">2</a><a class="ban_next">3</a>
    </div>
    <a class="Left" onselectstart="return false;"></a><a class="Right" onselectstart="return false;"></a>
</div>

<section class="connent-bg">
    <div class="container">
        <div class="w-main">
            <dl class="i_about">
                <dt><img src="{{headPic}}" style="width: 311px ;height: 239px" alt=""></dt>
                <dd>
                    <div class="i_title"><span class="fmy">公司简介</span> <a
                            href="{{aboutMoreUrl}}"
                            class="more">更多&gt;&gt;</a></div>
                    <div class="ctn">
                        <p ng-bind="aboutContent"></p>
                    </div>
                </dd>
            </dl>
            <div class="i_box">
                <div class="box_l">
                    <%--<div class="news mt20">--%>
                        <%--<div class="box_h"><span><strong>公司简介</strong></span><a--%>
                                <%--href="{{moneyInfoMoreUrl}}">更多&gt;&gt;</a>--%>
                        <%--</div>--%>
                        <%--<div class="list">--%>
                            <%--<div class="first">--%>
                                <%--<div class="pic fl mr15">--%>
                                    <%--<a href="{{lastNewsContentUrl}}">--%>
                                        <%--<img src="${pageContext.request.contextPath}/images/new.jpg">--%>
                                    <%--</a>--%>
                                <%--</div>--%>
                                <%--<div>--%>
                                    <%--<a href="{{lastNewsContentUrl}}">--%>
                                        <%--<h1>{{lastNewsTitle}}</h1>--%>
                                    <%--</a>--%>
                                    <%--<p></p>--%>
                                    <%--<div class="tools"><span>{{lastNewsTime}}</span>--%>
                                        <%--<a href="{{lastNewsContentUrl}}">【全文】</a>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<ul>--%>
                                <%--<li ng-repeat="info in moneyInfoList">--%>
                                    <%--<span>{{info.time}}</span>--%>
                                    <%--<a href="{{info.contentUrl}}">--%>
                                        <%--<i>&gt;</i> {{info.title}}--%>
                                    <%--</a>--%>
                                <%--</li>--%>


                            <%--</ul>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <div class="news mt20">
                        <div class="box_h"><span><strong>业务</strong></span><a
                                href="{{businessUrl}}">更多&gt;&gt;</a>
                        </div>
                        <div class="list" ng-repeat="business in businessList">
                            <div class="first mb20">
                                <div>
                                    <a href="{{business.url}}">
                                        <h1>{{business.paper}}</h1>
                                    </a>
                                    <p></p>
                                    <div class="tools"><span>{{business.createTime | date : 'yyyy-MM-dd HH:MM:ss'}}</span>
                                        <a href="{{business.url}}">【全文】</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%--<div class="i_news mt20">--%>
                        <%--<div class="box">--%>
                            <%--<div class="box_h"><span class="fmy">融汇盈内参</span> <a--%>
                                    <%--href="{{internalUrl}}">更多&gt;&gt;</a>--%>
                            <%--</div>--%>
                            <%--<ul class="box_m">--%>
                                <%--<li ng-repeat="internal in internalList">--%>
                                    <%--<p>--%>
                                        <%--<a href="{{internal.contentUrl}}">{{internal.title}}</a>--%>
                                    <%--</p>--%>
                                    <%--<span>{{internal.time}}</span>--%>
                                <%--</li>--%>

                            <%--</ul>--%>
                        <%--</div>--%>
                        <%--<div class="box" style="margin-right:0px;">--%>
                            <%--<div class="box_h"><span class="fmy">融汇盈战法</span> <a--%>
                                    <%--href="{{methodlUrl}}">更多&gt;&gt;</a>--%>
                            <%--</div>--%>
                            <%--<ul class="box_m">--%>
                                <%--<li ng-repeat="method in methodList">--%>
                                    <%--<p>--%>
                                        <%--<a href="{{method.contentUrl}}">{{method.title}}</a>--%>
                                    <%--</p>--%>
                                    <%--<span>{{method.time}}</span>--%>
                                <%--</li>--%>

                            <%--</ul>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                </div>
                <div class="box_r aside">
                    <%--<div class="video mt30">--%>
                    <%--<div class="title">交易所介绍</div>--%>
                    <%--<div class="video_con">--%>
                    <%--<!--                            http://player.youku.com/player.php/sid/XODkxMTIzNzYw/v.swf-->--%>
                    <%--<embed src="{{videoUrl}}"--%>
                    <%--allowfullscreen="true" quality="high" width="300" height="300" align="middle"--%>
                    <%--allowscriptaccess="always" type="application/x-shockwave-flash">--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="school">--%>
                        <%--<div class="title">融汇盈学院</div>--%>
                        <%--<ul>--%>
                            <%--<li><a id="school1"--%>
                                   <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=64">--%>
                                <%--<p>开户指南</p>--%>
                            <%--</a></li>--%>
                            <%--<li><a id="school2"--%>
                                   <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=61">--%>
                                <%--<p>签约流程</p>--%>
                            <%--</a></li>--%>
                            <%--<li><a id="school3"--%>
                                   <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=63">--%>
                                <%--<p>开设实盘</p>--%>
                            <%--</a></li>--%>
                            <%--<li><a id="school4"--%>
                                   <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=69">--%>
                                <%--<p>交易规则</p>--%>
                            <%--</a></li>--%>
                            <%--<li><a id="school5"--%>
                                   <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=71">--%>
                                <%--<p>基础知识</p>--%>
                            <%--</a></li>--%>
                            <%--<li><a id="school6"--%>
                                   <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=72">--%>
                                <%--<p>投资技巧</p>--%>
                            <%--</a></li>--%>
                            <%--<li><a id="school7"--%>
                                   <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=73">--%>
                                <%--<p>投资攻略</p>--%>
                            <%--</a></li>--%>
                            <%--<li><a id="school8"--%>
                                   <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=70">--%>
                                <%--<p>技术面分析</p>--%>
                            <%--</a></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                    <div class="notice">
                        <div class="title">公司新闻
                            <a class="more" href="{{newsUrl}}">更多&gt;&gt;</a>
                        </div>
                        <div class="list">
                            <ul>
                                <li ng-repeat="news in newsList">
                                    <a href="{{news.url}}">{{news.title}}</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="content pt30 ">
    <div class="container">
        <div class="client">
            <div class="title">
                <h1 class="fmy">业绩</h1>
            </div>
            <div class="news mt20">
                <div class="list" ng-repeat="result in resultList">
                    <div class="first mb20">
                        <div>
                            <a href="{{result.url}}">
                                <h1>{{result.paper}}</h1>
                            </a>
                            <p></p>
                            <div class="tools"><span>{{result.createTime | date : 'yyyy-MM-dd HH:MM:ss '}}</span>
                                <a href="{{result.url}}">【全文】</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</section>


<script type="text/javascript">
    var flag = 1;
    $('#rightArrow').click(function () {
        if (flag == 1) {
            $("#floatDivBoxs").animate({right: '-175px'}, 300);
            $(this).animate({right: '-5px'}, 300);
            $(this).css('background-position', '-50px 0');
            flag = 0;
        } else {
            $("#floatDivBoxs").animate({right: '0'}, 300);
            $(this).animate({right: '170px'}, 300);
            $(this).css('background-position', '0px 0');
            flag = 1;
        }
    });
    //$('#rightArrow').trigger('click');
</script>

<footer class="footer">
    <%--<div class="container ft">--%>
    <%--<div class="ft_left">--%>
    <%--<div class="f_cal mt50">--%>
    <%--<p class="fmy fz16">客服咨询热线<br>--%>
    <%--<strong class="fz24">132-9010-2000</strong></p>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--<div class="ft_center">--%>
    <%--<p class="btnav mt20"><a--%>
    <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=2">关于我们</a> | <a--%>
    <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=44">企业文件</a> | <a--%>
    <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=45">合作伙伴</a> | <a--%>
    <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=46">企业架构</a> | <a--%>
    <%--href="http://www.xrh66.com/index.php?m=content&amp;c=index&amp;a=lists&amp;catid=47">联系我们</a></p>--%>
    <%--<p class="ts fmy">本产品属于高风险、高收益投资品种；投资者应具有较高的风险识别能力、资金实力与风险承受能力。投资者应合理配置资产、不应用全部资金做投资，不应借钱来做投资。</p>--%>
    <%--<p class="mt20"><!--<img src="http://www.xrh66.com/statics/rs/images/360.png">--></p>--%>
    <%--</div>--%>
    <%--<div class="ft_right">--%>
    <%--<!--<p class="ewm"><img src="http://www.xrh66.com/statics/rs/images/qc.jpg" width="150" height="150"></p>--%>
    <%--<p class="wxh">扫一扫，关注巨天食品微信</p>-->--%>
    <%--</div>--%>
    <%--</div>--%>
    <div class="copy fmy">
        <p>Copyright © 2017 龙岩永杭高速公路有限公司</p>
    </div>
</footer>

<%--<div class="tbox"><a href="javascript:void(0)" id="gotop"></a></div>--%>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/banner.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/main.js"></script>

</html>