<%@ page import="java.io.File" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta content='text/html;charset=utf-8' http-equiv='Content-Type'>
    <link rel="stylesheet" type="text/css" href="./css/main.css">
    <link rel="stylesheet" href="./css/font-awesome-4.7.0/css/font-awesome.css">
    <script src="./js/jquery/2.0.0/jquery.min.js"></script>
    <link href="./css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="./js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <title>登录</title>
    <link rel="shortcut icon" href="./imgs/login_icon.png">
    <style type="text/css">
        a:focus, a:hover {
            color: #cf000f;
            text-decoration: none;
        }
        a:focus, a:active {
            color: #cf000f;
            text-decoration: none;
        }
        a {
            color: #cf000f;
            text-decoration: none;
        }
        .bottom li{
            margin:0 auto;
            height: 50px;
            width: 1000px;
            margin-top:10px;
            margin-bottom: 10px;
            background: red;  
        }
        div.item img{
            width: 100%;
        }
        div#carousel-example-generic{
            width: 100%;
            margin: 0 auto;
        }

        .container-fluid {
            padding-right: 0px;
            padding-left: 0px;
            margin-right: auto;
            margin-left: auto;
        }

        /*垂直居中*/
        .center-vertical{
            position: relative;
            top: 50%;
            transform: translateY(32%);
        }
        .center-parallel{
            position: relative;
            top: 50%;
            transform: translateX(32%);
        }
        .bg-primary{
            background-color:rgba(232, 232, 232, 0.8);
        }
        #triangle1{
            border: 80px solid transparent;
            border-left: 80px solid  #cf000f;
        }
        .form-horizontal .btn {
            border-radius: 18px;
            padding: 7px 15px;
        }
        a:link{
            text-decoration:none; 
        }  /* 指正常的未被访问过的链接*/

        a:visited{
            text-decoration:none; 
        }/*指已经访问过的链接*/

        a:hover{
            text-decoration:none;
        }/*指鼠标在链接*/

        a:active{
            text-decoration:none;
        }/* 指正在点的链接*/ 

        #login-button:hover {
            background-color: #96281b;
            color: white;
        }
        #login-button:active {
            background-color: #cf000f;
            color: white;
        }

        .btn.disabled {
            filter: alpha(opacity=65);
            -webkit-box-shadow: none;
            box-shadow: none;
            opacity: 1;
        }/*论文/资讯标签*/
        .btn-group-xs>.btn, .btn-xs {
            padding: 0px 3px;
            font-size: 12px;
            line-height: 1.5;
            border-radius: 3px;
        }/*论文/资讯标签*/
        span #login-switch:hover {
            color: black;
        }

        .form-control:focus {
            border-color: #f1a9a0;
        }
        #login-switch-button:hover {
            color: #cf000f;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row" style="height: 11vh">
        <!--Header logo--> 
        <div class="col-xs-6" style="text-align: left">
                <img src="./imgs/main_logo.png" class="center-vertical" style=" height: 60px; width: auto; margin-left: 30px">
            </div> 
            <div class="col-xs-6" style="text-align: center">
                <img src="./imgs/CAE_logo_black.png" class="center-vertical" style="margin-top: -10px; width: 80%">
            </div>
         
        </div>
        <!--Body-->
        <div class="row clearfix bg-primary">
            <div class="col-xs-6">
                <!--Carousel model-->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="./imgs/carousel_pic1.jpg" class="img-respinsive">
                            <div class="carousel-caption">
                                <h1><b>电动福建&nbsp&nbsp美丽八闽<br>东南汽车积极响应政府新能源号召</b></h1>
                            </div>
                        </div>
                        <div class="item">
                            <img src="./imgs/carousel_pic2.jpg">
                            <div class="carousel-caption">
                                <h1><b>响应“一带一路”拓展海外市场<br>庆祝东南汽车缅甸曼德勒展厅开业</b></h1>
                            </div>
                        </div>
                        <div class="item">
                            <img src="./imgs/carousel_pic3.jpg">
                            <div class="carousel-caption">
                                <h1><b>东南汽车降税优惠至高3万<br>2019款东南DX3预售价6.39万起</b></h1>
                            </div>
                        </div>
                        <div class="item">
                            <img src="./imgs/carousel_pic4.jpg">
                            <div class="carousel-caption">
                                <h1><b>造物志<br>“翼”见钟情的背后，翼设计与鹰志故事</b></h1>
                            </div>
                        </div>
                        <div class="item">
                            <img src="./imgs/carousel_pic5.png">
                            <div class="carousel-caption">
                                <h1><b>东南汽车：省钱虽是硬道理<br>但靠谱才是真正的让利于民</b></h1>
                            </div>
                        </div>
                    </div>
                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    </a>
                </div>
            </div>
            <!--Login model-->
             <div class="col-xs-4 col-xs-offset-1">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2">
                        <form class="form-horizontal" method="post" action="login" style="text-align:center; margin: -35px -100px; transform: translateY(32%)">
                            <span class="heading">用户登录</span>
                            <div class="form-group">
                                <i class="fa fa-user"></i>
                                <input type="text" class="form-control" id="inputEmail3" name="username" placeholder="用户名">
                            </div>
                            <div class="form-group help">
                                <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="密　码">
                                <i class="fa fa-lock"></i>
                            </div>
                            <div class="pull-right" style="font-size: 3px; color: #cf000f; margin-top: -20px; margin-right: 40px">
                                <font class="errorMessage"></font>

                            </div>
                            <div class="pull-right" id="loginErrorMessageDiv" style="font-size: 3px; color: #cf000f; margin-top: -20px; margin-right: 40px">
                                ${msg}
                            </div>
                            <div class="form-group" id="login-switch">
                                <a href="#">
                                    <span class="text" id="login-switch-button" style="color: rgba(46, 49, 49, 0.8)"><u>我是内容管理员</u></span>
                                </a>
                                <button type="submit" id="login-button" class="btn btn-default" style="outline:none">登录</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--footer model-->
        <div class="row clearfix">
            <div class="col-xs-1" id="triangle1" style="transform: translate(0, 60%)"></div>
            <div class="col-xs-10">    
                <table class="table">
                    <thead style="display: table; width: 96.5%">
                        <th><h3 style="color: #cf000f; margin-bottom: -5px; margin-left: -5px"><b>论文/资讯</b></h3></th>
                        <th style="text-align: right"><a href="/home"><img src="./imgs/more_icon.png" style="height: 20px; width:20px;  margin-bottom: -10px; margin-right: -8px;"></a></th>
                    </thead>
                    <tbody style="display: table; width: 96.5%">
                        <c:forEach items="${pis}" var = "pi" varStatus="status">
<%--                            <c:if test="${pis == null}">--%>
<%--                                <c:redirect url="/index"></c:redirect>--%>
<%--                            </c:if>--%>
                            <c:choose>
                                <c:when test="${'资讯' == pi.type}">
                                    <tr>
                                        <td>
                                            <%
                                                String token = "web" + File.separator;
                                                request.setAttribute("token", token);
                                            %>
                                            <font size="4"><a href="./pdfjs/web/viewer.html?file=${fn:substring(pi.path, fn:indexOf(pi.path, token) + 4, fn:length(pi.path))}" target=_blank>${pi.title}</a></font>
                                            <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">资讯</button>
                                        </td>
                                    </tr>
                                </c:when>
                                <c:when test="${pi.type == '论文'}">
                                    <tr>
                                        <td>
                                            <font size="4">&nbsp;${pi.author} 于 <fmt:formatDate pattern="yyyy年M月d日" value="${pi.createDate}" /> 发表了<a href="./pdfjs/web/viewer.html?file=${fn:substring(pi.path, fn:indexOf(pi.path, token) + 4, fn:length(pi.path))}" target=_blank>《${pi.title}》</a></font>
                                            <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                                        </td>
                                    </tr>
                                </c:when>
                            </c:choose>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script type="text/javascript" color="214,69,65" opacity='1' zIndex="-2" count="99" src="./js/canvas-nest.js"></script>
    <script src="./pdfjs/build/pdf.js"></script>
    <script src="./pdfjs/build/pdf.worker.js"></script>
    <script>
        $("form.form-horizontal").submit(function(){
            if(0==$("#inputEmail3").val().length||0==$("#inputPassword3").val().length){
                $("font.errorMessage").html("请输入账号密码");
                return false;
            }
            return true;
        });
        $("form.form-horizontal input").keyup(function(){
            $("div#loginErrorMessageDiv").hide();
            $("font.errorMessage").empty();
        });

    </script>
</body>
</html>