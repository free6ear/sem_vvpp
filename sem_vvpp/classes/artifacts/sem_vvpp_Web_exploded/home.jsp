<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
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
    </style>
</head>
<body>
    <div class="container-fluid" style="min-width: 1220px">
            <div class="row clearfix" style="height: 100px; margin-top: 17px">
                <div class="col-xs-8 col-xs-offset-2" style="text-align: center; margin-top: 17px">
                    <img src="./imgs/home_title.png" alt="论文资讯">
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
                        <th class="col-xs-6" style="text-align: center">标题</th>
                        <th class="col-xs-2" style="text-align: center">作者</th>
                        <th class="col-xs-2" style="text-align: center">发布时间</th>
                    </thead>
                    <tbody style="text-align: center; font-weight: 500">
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                    <font>1</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>
                            <td><font>混合动力车电池托盘的优化设计</font></td>
                            <td>李志祥</td>
                            <td>2019.06.05</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>2</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>
                            <td><font>熔模铸造工艺优化分析</font></td>
                            <td>刘海峰</td>
                            <td>2019.06.01</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>3</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>一种新型轿车前舱盖结构优化分析</font></td>
                            <td>刘小丽</td>
                            <td>2019.05.30</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>4</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>弯曲工况下车轮强度疲劳分析方法对比</font></td>
                            <td>卢晨霞</td>
                            <td>2019.05.28</td>
                    </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>5</font>
                                </div>
                            </td>
                           <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>HyperWorks在某袋天窗顶盖的刚度分析中应用</font></td>
                            <td>陆志成</td>
                            <td>2019.05.27</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>6</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>OptiStruct在白车身焊点优化中的应用</font></td>
                            <td>罗淼</td>
                            <td>2019.05.24</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>7</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>HyperView在方向盘疲劳分析中的应用</font></td>
                            <td>欧阳海彬</td>
                            <td>2019.05.24</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>8</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>Radioss Application in Airbag Simulation</font></td>
                            <td>欧阳海彬</td>
                            <td>2019.05.22</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                    <font>9</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>基于HyperWorks的自卸车车架静强度分析</font></td>
                            <td>屈磊</td>
                            <td>2019.05.19</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>10</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>基于HyperWorks的发动机罩盖结构优化设计</font></td>
                            <td>屈新田</td>
                            <td>2019.05.15</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>11</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>驱动电机转子结构优化分析</font></td>
                            <td>屈新田</td>
                            <td>2019.05.13</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>12</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>基于拓扑优化的车身结构研究</font></td>
                            <td>翟元</td>
                            <td>2019.05.12</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>13</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>基于morph功能的HyperForm多序冲压成形应用</font></td>
                            <td>苪玉龙</td>
                            <td>2019.05.10</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>14</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>MotionView在副车间开发中的应用</font></td>
                            <td>沈福亮</td>
                            <td>2019.05.08</td>
                        </tr>
                        <tr>
                            <td>
                                <div id="number_bkg" style="color: white">
                                        <font>15</font>
                                </div>
                            </td>
                            <td>
                                <button type="button" class="btn disabled btn-danger btn-xs" style="margin-top: -5px">论文</button>
                            </td>                            
                            <td><font>基于HyperStudy传动轴减振圈优化设计</font></td>
                            <td>石朝亮</td>
                            <td>2019.04.29</td>
                        </tr>
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
                                    <li class="page-item">
                                        <a href="#" class="page-link" aria-label="Previous">
                                            <span aria-hidden="true"><b><</b></span>
                                        </a>
                                    </li>
                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item active"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                                    <li class="page-item"><a class="page-link" href="#">5</a></li>
                                    <li class="page-item">
                                        <a href="#" class="page-link" aria-label="Next">
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
</body>
</html>