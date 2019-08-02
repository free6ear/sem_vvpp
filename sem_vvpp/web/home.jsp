<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.io.File" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="./js/jquery/2.0.0/jquery.min.js"></script>
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/app.css">
    <link href="./css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet"> 
    <title>论文资讯</title>
    <link rel="shortcut icon" href="./imgs/paper_icon.png">
    <style>
        body {
            font-size: 22px;
        }
        #number_bkg{
            width: 30px;
            height: 30px;
            background-color: #cf000f;
            border-radius: 7px;
            text-align: center;
            margin: auto;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }
        tbody {
            text-align: center;
        }
        .btn.disabled {
            filter: alpha(opacity=65);
            -webkit-box-shadow: none;
            box-shadow: none;
            opacity: 1;
        }
        .btn-group-xs>.btn, .btn-xs {
            padding: 2px 5px;
            font-size: 12px;
            line-height: 1.5;
            border-radius: 3px;
        }
        tr td:nth-child(3) {
        text-align:left;
        }
        a:focus, a:hover {
            color: #cf000f;
            text-decoration: none;
        }
        a:focus, a:active {
            color: black;
            text-decoration: none;
        }
        a {
            color: black;
            text-decoration: none;
        }
        .pagination>li>a, .pagination>li>span {
            position: relative;
            float: left;
            padding: 8px 0px;
            margin-left: -1px;
            line-height: 1.42857143;
            color: #337ab7;
            text-decoration: none;
            background-color: #fff;
            border: 1px solid #ddd;
        }
        .pagination {
            display: inline-block;
            padding-left: 0;
            margin: 8px 0;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div class="container-fluid" style="min-width: 1220px">
            <div class="row clearfix" style="height: 100px; margin-top: 17px">
                <div class="col-xs-2 col-xs-offset-1">
                    <a href="/index"><img src="./imgs/main_logo.png" style="margin-top: 10px; height: auto; width: 200px;" alt="东南汽车"></a>
                </div>
                <div class="col-xs-4 col-xs-offset-1" style="text-align: center; margin-top: 17px">
                    <img src="./imgs/home_title.png" alt="论文资讯" style="margin-right: -50px">
                </div>
            </div>
            
        <div class="row clearfix" style="height: 800px">
            <!-- <div class="col-xs-1" id="triangle" style="width: 5px; height:5px; margin-bottom: -85px"></div> -->
            <div class="col-xs-offset-1 col-xs-10">
                <table class="table table-hover" style="margin-top: -22px">
                    <thead class="row" style="color: #cf000f; margin-top: 20px">
                        <th class="col-xs-1" style="text-align: center">序号</th>
                        <th class="col-xs-1" style="text-align: center">类型</th>
                        <th class="col-xs-7" style="text-align: center">标题</th>
                        <th class="col-xs-1" style="text-align: center">作者</th>
                        <th class="col-xs-2" style="text-align: center">发布时间</th>
                    </thead>
                    <tbody style="text-align: center; font-weight: 500">
                        <c:forEach items="${pis}" var = "pi" varStatus="status">
                            <tr>
                                <td>
                                    <div id="number_bkg" style="color: white">
                                        <font>${status.index + 1}</font>
                                    </div>
                                </td>
                                <td>
                                    <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">${pi.type}</button>
                                </td>

                                <%
                                    String token = "web" + File.separator;
                                    request.setAttribute("token", token);
                                %>
                                <td><a href="./pdfjs/web/viewer.html?file=${fn:substring(pi.path, fn:indexOf(pi.path, token) + 4, fn:length(pi.path))}" target=_blank><font> ${pi.title}</font></a></td>
                                <td>${pi.author}</td>
                                <td>
                                    <fmt:formatDate pattern="yyyy-MM-dd" value="${pi.createDate}" />
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="row clearfix>
            <div class="col-xs-12 style="margin-top: -30px; padding-left: 70px">
                <div class="demo" style="min-height: 40px;">          
                    <div class="row pad-15">
                        <div class="col-md-12">
                            <nav class="pagination-outer" aria-label="Page navigation">
                                <ul class="pagination">

                                    <!--首页-->
                                    <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
                                        <a class="page-link" href="?page.start=0" aria-label="Previous" >
                                            <span aria-hidden="true"><b><<</b></span>
                                        </a>
                                    </li>

                                    <!--上一页-->
                                    <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
                                        <a class="page-link" href="?page.start=${page.start-page.count}" aria-label="Previous">
                                            <span aria-hidden="true"><b><</b></span>
                                        </a>
                                    </li>

                                    <!--中间页-->
                                    <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">
                                        <c:if test="${status.count*page.count-page.start<60 && status.count*page.count-page.start>=-30}">
                                            <li <c:if test="${status.index*page.count==page.start}">class="disabled active"</c:if>>
                                                <a class="page-link"
                                                    href="?page.start=${status.index*page.count}"
                                                    >${status.count}</a>
                                            </li>
                                        </c:if>
                                    </c:forEach>

                                    <!--下一页-->
                                    <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
                                        <a href="?page.start=${page.start+page.count}" class="page-link" aria-label="Next">
                                            <span aria-hidden="true"><b>></b></span>
                                        </a>
                                    </li>

                                    <!--尾页-->
                                    <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
                                        <a href="?page.start=${page.last}" class="page-link" aria-label="Next">
                                            <span aria-hidden="true"><b>>></b></span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" color="214,69,65" opacity='0.8' zIndex="-2" count="99" src="./js/canvas-nest.js"></script>
    <script src="./pdfjs/build/pdf.js"></script>
    <script src="./pdfjs/build/pdf.worker.js"></script>
    <script>
        $(function(){
            $("ul.pagination li.disabled a").click(function(){
                return false;
            });
        });
        $(function() {
            $("ul.pagination li.disabled a").removeAttr('href');
        });
    </script>
</body>
</html>