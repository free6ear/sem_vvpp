<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="../js/jquery/2.0.0/jquery.min.js"></script>
    <link rel="stylesheet" href="../css/main.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/theme.css">
    <link rel="stylesheet" href="../css/red.css">
    <link href="../css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/bootstrap-fileinput-master/css/fileinput.css">
    <title>后台管理系统</title>
    <link rel="stylesheet" href="../imgs/back_icon.png"/>
    <style>
        #add-icon_relative {
            position: absolute;
            left: 5%;
            top: 30%;
        }
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
        #glyphicon-plus-sign-trash:hover {
            color: #96281b;
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

        tr td:nth-child(2) {
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
            <a class="simple-text" href="${pageContext.request.contextPath}/admin/paper_info"><img src="../imgs/back_brand.png" alt="后台管理系统"></a>
        </div>
        <div class="sidebar-wrapper">
            <ul class="nav" id="tab">
                <li class="list">
                    <a href="${pageContext.request.contextPath}/admin/paper_info" >
                        <i class="glyphicon glyphicon-list-alt" style="font-size: 23px"></i>
                        <p>
                            <b style="font-size: 21px">论文资讯</b>
                        </p>
                    </a>
                </li>
                <li class="list" style="background-color: #fff1f0; height: 120px">
                    <a href="#">
                        <i class="glyphicon glyphicon-picture" style="font-size: 23px; color: #cf000f"></i>
                        <p>
                            <b style="font-size: 20px; color: #cf000f">轮播图</b>
                        </p>
                    </a>
                    <a data-toggle="modal" data-target="#addCarouselModal" data-toggle="tooltip" data-placement="bottom">
                        <button class="btn btn-danger pull-left" style="margin-left: 47px">新增</button>
                    </a>
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
                        <img src="../imgs/main_logo.png" style="max-width: 200px; margin-top: -20px">
                    </a>
                </div>
                <ul class="nav navbar-nav navbar-right" style="margin-top: 10px">
                    <li role="presentation">
                        <%String username = request.getSession().getAttribute("username").toString();%>
                        <a>欢迎你， <span class="badge" style="position:initial"><%=username %></span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/admin/logout"><span class="glyphicon glyphicon-log-out" style="margin-top: 4px"></span> 注销</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="row">

            <div class="tab-content">
                <!--编辑轮播图-->
                <div class="col-xs-12" id="editCarouselContent">
                    <table class="table table-hover" style="margin-top: -17px; margin-bottom: 12px">
                        <tbody style="margin-top: -5px">
                        <c:forEach items="${cs}" var = "c" varStatus="status">
                            <tr>
                                <td><img src="${pageContext.request.contextPath}/pdfjs/web/carousel_upload/${c.path}" width="120px"></td>
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
<div class="modal fade" id="editCarouselModal" tabindex="-1" role="dialog" aria-labelledby="editCarouselModalTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="get" action="${pageContext.request.contextPath}/admin/update_carousel">
                <div class="modal-header">
                    <h3 class="modal-title" id="editCarouseloModalTitle" style="text-align: center; font-weight: bolder">编辑轮播图</h3>
                </div>
                <div class="modal-body">
                    <input id="carousel-id" type="hidden" name="carousel-id">
                    <div class="form-group">
                        <label for="carousel-title" class="col-form-label" style="font-size: large">标题：</label>
                        <input type="text" class="form-control" name="carousel-title" id="carousel-title">
                        <label for="carousel-pic" class="col-form-label" style="font-size: large">图片：</label>
                        <img id="carousel-pic" src="" alt="图片" style="width: 50px; height: auto"/>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    <button type="submit" class="btn btn-danger" onclick="updateCarousel()">保存</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!--新增轮播图-->
<div class="modal fade" id="addCarouselModal" tabindex="-1" role="dialog" aria-labelledby="addCarouselModalTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form role="form" method="post" style="font-size: 18px" action="${pageContext.request.contextPath}/admin/add_carousel" enctype="multipart/form-data">
                <div class="modal-header">
                    <h3 class="modal-title" id="editCarouselTitle" style="text-align: center; font-weight: bolder">新增轮播图</h3>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>标题：</label>
                        <input type="text" class="form-control" name="carouselTitle" placeholder="请输入标题">
                    </div>
                    <div class="form-group" style="margin-top: 15px">
                        <label>图片：</label>
                        <input id="input-carousel" name="carouselFile" type="file" data-show-caption="true">
                        <div class="pull-right" style="color: #cf000f; margin-top: -25px">
                            <font class="errorMessage" id="noFileMessage" style="font-size: medium"></font>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    <button type="submit" class="btn btn-danger" id="uploadCarouselInfoButton" onclick="addCarousel()">保存</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="modal fade" id="deleteCarouselModal" tabindex="-1" role="dialog" aria-labelledby="deleteCarouselTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="get" action="${pageContext.request.contextPath}/admin/delete_carousel">
                <div class="modal-header">
                    <h2 class="modal-title" id="deleteCarouselModalTitle" style="font-weight: bolder">提醒</h2>
                    <input id="carousel-delete-id" type="hidden" name="carousel-delete-id">
                </div>
                <div class="modal-body" style="text-align: center">
                    <h4>确定要删除该条内容吗？</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                    <button type="submit" class="btn btn-danger" onclick="deleteCarousel()">确定</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="../js/bootstrap/3.3.6/bootstrap.min.js"></script>
<script src="../js/app.js"></script>
<script>
    //判斷图片类型
    $(document).ready(function () {
        $("#uploadCarouselInfoButton").click(function () {
            var file = $("#input-carousel").val();
            if (file == "") {
                $("#noFileMessage").html("请选择图片！");
                return false;
            }
            //  else {
            //     //检验文件类型是否正确
            //     var exec = (/[.]/.exec(file)) ? /[^.]+$/.exec(file.toLowerCase()) : '';
            //     if (exec != "jpg" || exec != "png"|| exec != "bmp" || exec != "jpeg"|| exec != "gif"|| exec != "svg" || exec != "swf" || exec != "tiff" || exec != "psd") {
            //         $("#noFileMessage").html("请选择正确的图片格式！");
            //         return false;
            //     }
            $('#addCarouselModal').modal('hide');
            return true;
        });
    });

    function editCarousel(id) {
        $.ajax({url:"${pageContext.request.contextPath}/admin/edit_carousel?id=" + id, method:"get", contentType:"application/json", success:function (result) {
                $('#carousel-id').val(result.id);
                $('#carousel-title').val(result.title);
                $('#carousel-pic').setAttribute("src", "${pageContext.request.contextPath}/carousel_upload/" + result.patah);
            }});
    }

    function addCarousel(id) {
        $('#carousel-delete-id').val(id);
    }
    function updateCarousel(id) {
        $('#carousel-delete-id').val(id);
    }

    function getCarousel(id) {
        $('#carousel-delete-id').val(id);
    }

    function deleteCarousel() {
        $('#deleteCarouselModal').modal('hide');

    }
    function getCarouselId(id) {
        $('#carousel-delete-id').val(id);
    }
</script>
</body>
</html>