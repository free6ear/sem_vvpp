<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="./js/jquery/2.0.0/jquery.min.js"></script>
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/theme.css">
    <link rel="stylesheet" href="./css/red.css">
    <link href="./css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet"> 
    <link rel="stylesheet" href="./css/bootstrap-fileinput-master/css/fileinput.css">
    <title>后台管理系统</title>
    <link rel="stylesheet" href="./imgs/back_icon.png"/>
    <style>
        .modal-body {
            position: relative;
            padding: 15px 40px;
        }
        .pagination {
            display: inline-block;
            padding-left: 0;
            margin: 34px 0;
            border-radius: 4px;
        }
        .pagination>li>a, .pagination>li>span {
            position: relative;
            float: left;
            padding: 6px 0px;
            margin-left: -1px;
            line-height: 1.42857143;
            color: #337ab7;
            text-decoration: none;
            background-color: #fff;
            border: 1px solid #ddd;
        }
        .form-control:focus {
            border-color: #f1a9a0;
        }

        .sidebar .sidebar-wrapper>.nav li>a:hover {
            opacity: 1;
            color: #cf000f;
        }

        .sidebar .sidebar-wrapper>.nav li>a:focus {
            opacity: 1;
            color: #cf000f;
        }

        body {
            font-size: 22px;
        }
        #number_bkg{
            width: 31px;
            height: 31px;
            background-color: #cf000f;
            border-radius: 7px;
            text-align: center;
            margin: auto;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
        }
        td > a > i .glyphicon-edit:hover {
            color: rgb(255, 91, 91);
        }
        .glyphicon-trash:hover {
            color: rgb(255, 91, 91);
        }
        .table>thead>tr>th {
            vertical-align: bottom;
            border-bottom: 0px solid #ddd;
        }
        .navbar-form .form-control {
            background-color: #FFF;
            border: 1px solid rgba(251, 64, 75, 0.8);
            border-left: 0 none;
        }

        .navbar-form .form-control:focus {
            border: 1px solid #FB404B;
            border-left: 0 none;
        }

        .navbar-default .navbar-nav>li>a:hover {
            color: rgb(255, 91, 91);
        }

        /*设置 tab 页面 hover的颜色*/
        .nav-tabs>li.active>a:hover,
        .nav-tabs>li>a:hover {
            background-color: rgba(251, 64, 75, 0.8);
            /*background-color: #FFF;*/
            color: rgba(251, 64, 75, 0.8);
        }

        .card-wizard .nav-pills.main>li>a {
            background-color: rgba(238, 238, 238, 0.5);
            color: rgba(251, 64, 75, 0.8);
        }

        .nav-pills.main>li.active>a,
        .nav-pills.main>li.active>a:hover,
        .nav-pills.main>li.active>a:focus {
            background-color: rgba(251, 64, 75, 0.8);
            color: #FFF;
        }

        .card .card-footer button {
            background-color: rgba(251, 64, 75, 0.8);
        }

        .card-wizard .content .panel .panel-body .header ul li.active {
            background-color: #2185D0;
        }

        .card-wizard .content .panel .panel-body .header ul li {
            background-color: rgba(251, 64, 75, 0.5);
        }

        .popo-list li:hover {
            background-color: rgba(251, 64, 75, 0.8);
        }

        .sidebar .sidebar-wrapper>.nav li.active>a,
        .off-canvas-sidebar .sidebar-wrapper>.nav li.active>a {
            color: #f5f5f5;
            font-weight: 600;
        }

        .sidebar .sidebar-wrapper>.nav li.active>a:hover,
        .off-canvas-sidebar .sidebar-wrapper>.nav li.active>a:hover {
            color: #f5f5f5;
            font-weight: 600;
        }

        .btn.disabled {
            filter: alpha(opacity=65);
            -webkit-box-shadow: none;
            box-shadow: none;
            opacity: 1;
        }

        .dropdown-menu>li>a:focus,
        .dropdown-menu>li>a:hover {
            background-color: rgba(251, 64, 75, 0.8);
        }

        .es-list li.selected {
            background: rgba(251, 64, 75, 0.8);
        }

        .navbar-default .navbar-form .dropdown-menu>.active>a,
        .navbar-default .navbar-form .dropdown-menu>.active>a:focus,
        .navbar-default .navbar-form .dropdown-menu>.active>a:hover {
            background-color: rgba(251, 64, 75, 0.8);
        }
        a:link{text-decoration:none; }  /* 指正常的未被访问过的链接*/

        a:visited{text-decoration:none; }/*指已经访问过的链接*/

        a:hover{text-decoration:none;}/*指鼠标在链接*/

        a:active{text-decoration:none;}/* 指正在点的链接*/ 
        .glyphicon-edit {
            color: grey;
            font-size: 25px;
            margin-top: 2px;
        }
        .glyphicon-trash {
            color: grey;
            font-size: 25px;
            margin-top: 2px;
        }
        .glyphicon-edit:hover {
            color: rgba(44, 130, 201, 1);
            text-decoration: none;

        }
        .glyphicon-trash:hover {
            color: #cf000f;
            text-decoration: none;
        }
        .center-vertical{
            position: relative;
            top: 50%;
            transform: translateY(32%);
        }
        .table th, .table td {
            text-align: center;
            vertical-align: middle!important;
        }

        tr td:nth-child(3) {
            text-align:left;
        }

        .table>tbody>tr>td {
            border-top: 2px solid #ddd;
        }
    </style>
</head>
<body>
    <div class="wrapper" style="min-width: 900px">
        <div  class="sidebar clearfix" style="position:fixed" data-color="red">
            <div class="logo">
                <a class="simple-text" href="./admin"><img src="./imgs/back_brand.png" alt="后台管理系统"></a>
            </div>
            <div class="sidebar-wrapper">
                    <ul class="nav" id="tab">
                        <li class="list">
                            <a data-toggle="collapse" href="#paperManagement" aria-expanded="false" class="collapsed">
                                <i class="glyphicon glyphicon-list-alt" style="font-size: 23px"></i>
                                <p>
                                    <b style="font-size: 21px">论文资讯</b>
                                    <b class="caret"></b>
                                </p>
                            </a>
                            <div class="collapse" id="paperManagement" aria-expanded="false">
                                <ul class="nav">
                                    <li id="paper"><a href="#/paper" style="font-size: 18px">编辑</a></li>
                                    <li id="addPaper"><a href="#/addPaper" style="font-size: 18px">新增</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="list">
                            <a data-toggle="collapse" href="#carouselManagement" aria-expanded="false" class="collapsed">
                                <i class="glyphicon glyphicon-picture" style="font-size: 23px"></i>
                                <p>
                                    <b style="font-size: 20px">轮播图</b>
                                    <b class="caret"></b>
                                </p>
                            </a>
                            <div class="collapse" id="carouselManagement" aria-expanded="false">
                                <ul class="nav">
                                    <li id="carousel"><a href="#/carousel" style="font-size: 18px">轮播图管理</a></li>
                                    <li id="addCarousel"><a href="#/addCarousel" style="font-size: 18px">新增轮播图</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
            </div>
            <div class="sidebar-background"></div>
        </div>
        <div class="main-panel">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a href="#" class="navbar-brand">
                            <img src="./imgs/main_logo.png" style="max-width: 200px; margin-top: -20px">
                        </a>
                    </div>
                    <ul class="nav navbar-nav navbar-right" style="margin-top: 10px">
                        <li role="presentation">
                            <%String username = request.getSession().getAttribute("username").toString();%>
                            <a>欢迎你， <span class="badge" style="position:initial"><%=username %></span></a>
                        </li>
                        <li>
                            <a href="logout"><span class="glyphicon glyphicon-log-out" style="margin-top: 4px"></span> 注销</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <div class="row">
                <div class="tab-content">
                    <!--论文资讯管理-->
                    <div class="col-xs-12" id="editPaperContent"  style="height: 600px">
                        <table class="table table-hover" style="margin-top: -17px; margin-bottom: 12px" >
                            <thead class="row" style="color: #cf000f; margin-top: 20px; margin-bottom: -10px">
                                <th class="col-xs-1" style="text-align: center">序号</th>
                                <th class="col-xs-1" style="text-align: center">类型</th>
                                <th class="col-xs-6" style="text-align: center">标题</th>
                                <th class="col-xs-2" style="text-align: center">作者</th>
                                <th class="col-xs-2" style="text-align: center">操作</th>
                            </thead>
                            <tbody style="text-align: center; font-weight: 600">
                                <c:forEach items="${pis}" var = "pi" varStatus="status">
                                    <tr>
                                        <td>
                                            <div id="number_bkg" style="color: white">
                                                <font>${status.index + 1}</font>
                                            </div>
                                        </td>
                                        <td>
                                            <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px; text-align: center">${pi.type}</button>
                                        </td>
                                        <td><font>${pi.title}</font></td>
                                        <td>${pi.author}</td>
                                        <td>
                                            <a onclick="editPaperInfo(${pi.id})" data-toggle="modal" data-target="#editPaperInfoModal">
                                                <i class="glyphicon glyphicon-edit"></i>
                                            </a>
                                            &nbsp;
                                            <a onclick="getPaperInfoId(${pi.id})" data-toggle="modal" data-target="#deletePaperInfoModal">
                                                <i class="glyphicon glyphicon-trash"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <!--底部分页-->
                        <div class="row clearfix">
                            <div class="col-md-12 column" style="margin-top: -28px">
                                <div class="demo" style="min-height: 30px;">          
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
                    <!--新增论文-->
                    <div class="col-xs-offset-4 col-xs-4" id="addPaperContent" style="margin-top: 5px; display: none">
                        <form role="form" method="post" style="font-size: 18px" action="/admin/addPaperOrInfo" enctype="multipart/form-data">
                            <div class="form-group">
                                <!-- <i class="glyphicon glyphicon-list-alt" style="color: grey; font-size: 25px"></i> -->
                                <label>标题：</label>
                                <input type="text" class="form-control" name="paperOrInfoTitle" placeholder="请输入标题">
                            </div>
                            <div class="form-group">
                                <!-- <i class="glyphicon glyphicon-user" style="color: grey; font-size: 25px"></i> -->
                                <label>作者：</label>
                                <input type="text" class="form-control" name="paperOrInfoAuthor" placeholder="请输入作者">
                            </div>
                            <label>类型：</label>
                            <select class="form-control" name="paperOrInfoType">
                                <option>论文</option>
                                <option>资讯</option>
                            </select>
<%--                            <div class="dropdown">--%>
<%--                                <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">--%>
<%--                                类型--%>
<%--                                </button>--%>
<%--                            </div>--%>
                            <div class="form-group" style="margin-top: 15px">
                                <label>文件：</label>
                                <input id="input-paper" name="paperOrInfoFile" type="file" data-show-caption="true">
                            </div>
                            <button class="btn btn-danger pull-right" type="submit">上传</button>
                        </form>     
                    </div>
                    <!--新增轮播图-->
                    <div class="col-xs-offset-4 col-xs-4" id="addCarouselContent" style="margin-top: 5px; display: none">
                        <form role="form" method="post" style="font-size: 18px" action="/admin/add-carousel" enctype="multipart/form-data">
                            <div class="form-group">
                                <!-- <i class="glyphicon glyphicon-list-alt" style="color: grey; font-size: 25px"></i> -->
                                <label>图片标题：</label>
                                <input type="text" class="form-control" id="carouselTitle" name="carouselTitle" placeholder="请输入轮播图标题">
                            </div>
                            <div class="form-group">
                                <label>选择图片：</label>
                                <input id="input-carousel" name="carouselFile" multiple type="file" data-show-caption="true">
                            </div>
                            <button class="btn btn-danger pull-right" type="submit">上传</button>
                        </form>      
                    </div>
                    <!--编辑轮播图-->
                    <div class="col-xs-12" id="editCarouselContent" style="display: none">
                        <table class="table table-hover" style="margin-top: -17px; margin-bottom: 12px">
                            <tbody style="margin-top: -5px">
                            <c:forEach items="${cs}" var = "c" varStatus="status">
                                <tr>
                                    <td><img src="${c.path}" width="120px"></td>
                                    <td>${c.title}</td>
                                    <td>
                                        <a onclick="editCarousel(${c.id})" data-toggle="modal" data-target="#editCarouselModal">
                                            <i class="glyphicon glyphicon-edit"></i>
                                        </a>
                                        &nbsp;
                                        <a onclick="getCarouselId(${c.id})" data-toggle="modal" data-target="#deleteCarouselModal">
                                            <i class="glyphicon glyphicon-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="editPaperInfoModal" tabindex="-1" role="dialog" aria-labelledby="editPaperInfoModalTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="get" action="/admin/updatePaperOrInfo">
                    <div class="modal-header">
                        <h3 class="modal-title" id="editPaperInfoModalTitle" style="text-align: center; font-weight: bolder">编辑论文资讯</h3>
                    </div>
                    <div class="modal-body">

                            <input id="paper-info-id" type="hidden" name="paper-info-id">
                            <div class="form-group">
                                <label for="paper-info-title" class="col-form-label" style="font-size: large">标题：</label>
                                <input type="text" class="form-control" name="paper-info-title" id="paper-info-title">
                            </div>
                            <div class="form-group">
                                <label for="paper-info-author" class="col-form-label" style="font-size: large">作者：</label>
                                <input type="text" class="form-control" name="paper-info-author" id="paper-info-author">
                            </div>
                            <label>类型：</label>
                            <select class="form-control" name="paper-info-type" id="typeSelector">
                                <option value="论文">论文</option>
                                <option value="资讯">资讯</option>
                            </select>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                        <button type="submit" class="btn btn-danger" onclick="updatePaperInfo()">保存</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="modal fade" id="deletePaperInfoModal" tabindex="-1" role="dialog" aria-labelledby="deletePaperInfoModalTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="get" action="/admin/deletePaperOrInfo">
                    <div class="modal-header">
                        <h3 class="modal-title" id="deletePaperInfoModalTitle" style="text-align: center; font-weight: bolder">确定要删除该条内容吗？</h3>
                        <input id="paper-info-delete-id" type="hidden" name="paper-info-delete-id">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                        <button type="submit" class="btn btn-danger" onclick="deletePaperInfo()">确定</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="./js/bootstrap/3.3.6/bootstrap.min.js"></script>
<%--    <script src="./bootstrap-fileinput-master/js/fileinput.js"></script>--%>
<%--    <script src="./bootstrap-fileinput-master/js/locales/zh.js"></script>--%>
    <script src="./js/app.js"></script>
<%--    <script type="text/javascript" src="js/fileinput.min.js"></script>--%>
<%--    <script type="text/javascript" src="js/zh.js"></script>--%>
    <script>
        // $('#editPaperContent').show().siblings().hide();

        $('#paper').click(function () {
            $('#editPaperContent').show().siblings().hide()
        });

        $('#addPaper').click(function () {
            $('#addPaperContent').show().siblings().hide()
        });

        $('#addCarousel').click(function () {
            $('#addCarouselContent').show().siblings().hide()
        });

        $('#carousel').click(function () {
            $('#editCarouselContent').show().siblings().hide()
        });

        $(".form-control").on("click", "option", function () {

        });
        $(function(){
            $("ul.pagination li.disabled a").click(function(){
                return false;
            });
        });
        $(function() {
            $("ul.pagination li.disabled a").removeAttr('href');
        });
        function editPaperInfo(id) {
            $.ajax({url:"/admin/editPaperOrInfo?id=" + id, method:"get", contentType:"application/json", success:function (result) {
                    $('#paper-info-id').val(result.id);
                    $('#paper-info-title').val(result.title);
                    $('#paper-info-author').val(result.author);
                    if (result.type == "论文") {
                        $("#typeSelector option[value='论文']").attr('selected', true);
                        $("#typeSelector option[value='资讯']").attr('selected', false);
                    }
                    else {
                        $("#typeSelector option[value='论文']").attr('selected', true);
                        $("#typeSelector option[value='资讯']").attr('selected', false);
                    }
                }});
        }

        function updatePaperInfo() {
            $('#editPaperInfoModal').modal('hide');

        }
        function getPaperInfoId(id) {
            $('#paper-info-delete-id').val(id);
        }
        function deletePaperInfo() {
            $('#deletePaperInfoModal').modal('hide');

        }
    </script>
</body>
</html>