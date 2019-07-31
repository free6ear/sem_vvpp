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
    </style>
</head>
<body>
    <div class="container-fluid" style="min-width: 1220px">
            <div class="row clearfix" style="height: 100px; margin-top: 17px">
                <div class="col-xs-8 col-xs-offset-2" style="text-align: center; margin-top: 17px">
                    <img src="./imgs/home_title.png" alt="论文资讯" style="margin-right: -50px">
                </div>
                <div class="col-xs-2">
                    <a href="./login.jsp"><img src="./imgs/main_logo.png" style="margin-top: 18px; margin-left: -30px; height: auto; width: 160px;" alt="东南汽车"></a>
                </div>
            </div>
            
        <div class="row clearfix">
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
<%--                                <script>--%>
<%--                                    var tempPath = ${pi.path};--%>
<%--                                    var arr = tempPath.split("web/");--%>
<%--                                    var finalPath = arr[arr.length - 1];--%>
<%--                                </script>--%>
<%--                                --%>
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
        <div class="row clearfix">
            <div class="col-xs-12 column" style="margin-top: -30px; padding-left: 70px">
                <div class="demo" style="min-height: 40px;">          
                    <div class="row pad-15">
                        <div class="col-md-12">
                            <nav class="pagination-outer" aria-label="Page navigation">
                                <ul class="pagination">
                                    <li class="page-item" <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
                                        <a href="?page.start=${page.start-page.count}" class="page-link" aria-label="Previous">
                                            <span aria-hidden="true"><b><</b></span>
                                        </a>
                                    </li>

                                    <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">

                                            <li class="page-item" <c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
                                                <a class="page-link"
                                                    href="?page.start=${status.index*page.count}"
                                                    <c:if test="${status.index*page.count==page.start}">class="current"</c:if>
                                                    >${status.count}</a>
                                            </li>
                                    </c:forEach>
                                    <li class="page-item" <c:if test="${!page.hasNext}">class="disabled"</c:if>>
                                        <a href="?page.start+page.count" class="page-link" aria-label="Next">
                                            <span aria-hidden="true"><b>></b></span>
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
        $(function() {
            $("ul.pagination li.disabled a").removeAttr('href');
        });
    </script>
</body>
</html>