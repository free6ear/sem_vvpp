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
        body{
            perspective: 1000px;
        }
    </style>
</head>
<body>
    <div class="container-fluid" style="min-width: 1200px">
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
        <div class="row clearfix bg-primary" style="height: 507px;">
            <div class="col-xs-6">
                <!--Carousel model-->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators" id="olnum">
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox" id="carousel">
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
                    <div class="login-box">
                        <!--内容管理员登录-->
                        <div class="card front" id="front">
                            <div class="col-xs-8 col-xs-offset-2">
                                <form class="form-horizontal" method="post" action="login" style="text-align:center; margin: -35px -100px; transform: translateY(32%)">
                                    <span class="heading">内容管理员登录</span>
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
                                        <!-- <a href=""> -->
                                        <a><span class="text" id="change1" style="color: rgba(46, 49, 49, 0.8)"><u>我是管理员用户</u></span></a>
                                        <!-- </a> -->
                                        <button type="submit" id="login-button" class="btn btn-default" style="outline:none">登录</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!--普通用户登录-->
                        <div class="card back" id="back" hidden>
                            <div class="col-xs-8 col-xs-offset-2">
                                <form class="form-horizontal" method="post" style="text-align:center; margin: -35px -100px; transform: translateY(32%)">
                                    <span class="heading">普通用户登录</span>
                                    <div class="form-group">
                                        <i class="fa fa-user"></i>
                                        <input type="text" class="form-control" id="inputEmail2" name="" placeholder="用户名">
                                    </div>
                                    <div class="form-group help">
                                        <input type="password" class="form-control" id="inputPassword2" name="" placeholder="密　码">
                                        <i class="fa fa-lock"></i>
                                    </div>
                                    <div class="pull-right" style="font-size: 3px; color: #cf000f; margin-top: -20px; margin-right: 40px">
                                        <font class="errorMessage"></font>

                                    </div>
                                    <div class="pull-right" id="loginErrorMessageDiv2" style="font-size: 3px; color: #cf000f; margin-top: -20px; margin-right: 40px">
                                        ${msg}
                                    </div>
                                    <div class="form-group" id="login-switch2s">
                                        <a><span class="text" id="change2" style="color: rgba(46, 49, 49, 0.8)"><u>我是普通用户</u></span></a>
                                        <button type="button" id="login-button2" class="btn btn-default" style="outline:none">登录</button>
                                    </div>
                                </form>
                            </div>
                        </div>
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

        $(function () {
            //填充轮播图数
            for (var i = 0; i < ${fn:length(cs)}; i++) {
                if (i == 0) {
                    $('#olnum').append("<li data-target='#carousel-example-generic' data-slide-to='0'  class='active'></li>")
                } else {
                    $('#olnum').append("<li data-target='#carousel-example-generic' data-slide-to='"+i+"'></li>")
                }
            }
            <%
                String token = "web" + File.separator;
                request.setAttribute("token", token);
            %>
            //填充每幅图像具体信息
            <c:forEach items="${cs}" var="c" varStatus="status">
                <c:if test="${status.index == 0}">
                    $('#carousel').append(
                        "<div class='item active'>" +
                        "<img src='/pdfjs/web/carousel_upload/${c.path}' alt='test' style='width: 50vw'>" +
                        "<div class='carousel-caption'>" +
                        "<h1><b>${c.title}</b></h1>" +
                        "</div>" +
                        "</div>"
                    );
                </c:if>
                <c:if test="${status.index != 0}">
                $('#carousel').append(
                    "<div class='item'>" +
                    "<img src='/pdfjs/web/carousel_upload/${c.path}' alt='test' style='width: 50vw'>" +
                    "<div class='carousel-caption'>" +
                    "<h1><b>${c.title}</b></h1>" +
                    "</div>" +
                    "</div>"
                );
            </c:if>
            </c:forEach>
        });
        $('#change1').click(function() {
            $('#front').hide();
            $('#back').show();
        });

        $('#change2').click(function() {
            $('#back').hide();
            $('#front').show();
        })
    </script>
</body>
</html>