<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dzhum
  Date: 2019/5/17
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-ch">
<head>
    <meta charset="UTF-8">
    <title>医院详情</title>
    <link rel="stylesheet" type="text/css" href="/css/layout.css">
    <link rel="stylesheet" type="text/css" href="/css/base.css">
    <link rel="stylesheet" type="text/css" href="/css/ui-component.css">
    <link rel="stylesheet" type="text/css" href="/css/hospital_detail.css">
</head>
<body>
<div id="top" class="top">
    <div class="wrap">
        <p class="call">010-11652323电话预约</p>
        <p class="welcome">欢迎大城市医院&nbsp;请&nbsp;
            <a href="#1">登录</a>
            <a href="#2">注册</a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#3">帮助中心</a>
        </p>
    </div>
</div>
<div id="header" class="header">
    <div class="wrap">
        <a href="#4" class="logo"><img src="/img/logo.png"></a>
        <div class="search ui-search">
            <div class="ui-search-selected">科室</div>
            <div class="ui-search-select-list">
                <a href="#">科室</a>
                <a href="#">疾病</a>
            </div>
            <input type="text" name="" class="ui-search-input" placeholder="请输入搜索内容"/>
            <a href="#" class="ui-search-submit">&nbsp;</a>
        </div>
    </div>
</div>
<div id="nav" class="nav">
    <div class="wrap">
        <a href="#6" class="link">首页</a>
        <a href="department.html" class="link">按科室挂号</a>
        <a href="#6" class="link">按疾病挂号</a>
        <a href="#6" class="link">最新公告</a>
        <a href="#6" class="link right">社会知名医院</a>
    </div>
</div>
<!-- 医院详情 -->
<!-- 1 -->
<div class="info wrap">
    <img src="/img/banner.jpg">
</div>
<div class="detail wrap">
    <div class="caption">
        <a href="#1" class="item">全部科室</a>
        <a href="#2" class="item">医院介绍</a>
        <a href="#3" class="item">预约须知</a>
        <a href="#3" class="item">停诊信息</a>
    </div>
    <div class="block">
        <div class="item  detail_department clearfix">
            <div class="left">
                <div class="title">开放预约科室</div>
                <div class="table">
                    <c:forEach items="${categoryList}" var="category">
                        <dl class="clearfix">
                            <dt>${category.name}</dt>

                            <dd>
                                <c:forEach items="${departmentList}" var="dept">
                                    <c:if
                                            test="${dept.categoryId == category.id}"><a href="#"
                                                                                        class="item">${dept.name}</a></c:if>
                                </c:forEach>
                            </dd>

                        </dl>
                    </c:forEach>

                </div>
            </div>
            <div class="right">
                <div class="title">预约规则<span class="tip">（更新时间每日8:30更新）</span></div>
                <div class="table">
                    <dl>
                        <dt>预约周期：</dt>
                        <dd> 7天</dd>
                    </dl>
                    <dl>
                        <dt>放号时间：</dt>
                        <dd>8:30</dd>
                    </dl>
                    <dl>
                        <dt>停挂时间：</dt>
                        <dd>下午14:00停止次日预约挂号 （周五14:00后停挂至下周一）</dd>
                    </dl>
                    <dl>
                        <dt>退号时间：</dt>
                        <dd>就诊前一工作日14:00前取消</dd>
                    </dl>
                    <dl>
                        <dt>特殊规则：</dt>
                        <dd><p><br>①&nbsp; 取号地点不同：北院预约号取号地点：门诊楼一层大厅挂号窗口取号。南院预约号取号地点：老门诊楼一层大厅挂号窗口或新门诊楼各楼层挂号/收费窗口取号。<br>
                        </p>
                            <p><br></p>
                            <p><br></p>
                            <p><br></p>
                            <p><br></p>
                            <p><br></p>
                            <p><br></p></dd>
                    </dl>
                </div>

            </div>
        </div>
        <div class="item detail_description">

            <p>
                大城市医院是集医疗、教学、科研于一体的大型三级甲等综合医院，是国家卫生计生委指定的全国疑难重症诊治指导中心，也是最早承担高干保健和外宾医疗任务的医院之一，以学科齐全、技术力量雄厚、特色专科突出、多学科综合优势强大享誉海内外。在2010、2011、2012、2013、2014年复旦大学医院管理研究所公布的“最佳医院排行榜”中连续五年名列榜首。</p>
            <p>
                医院建成于1921年，由洛克菲勒基金会创办。建院之初，就志在“建成亚洲最好的医学中心”。90余年来，医院形成了“严谨、求精、勤奋、奉献”的协和精神和兼容并蓄的特色文化风格，创立了“三基”、“三严”的现代医学教育理念，形成了以“教授、病案、图书馆”著称的协和“三宝”，培养造就了张孝骞、林巧稚等一代医学大师和多位中国现代医学的领军人物，并向全国输送了大批的医学管理人才，创建了当今知名的10余家大型综合及专科医院。2011年在总结90年发展经验的基础上，创新性提出了“待病人如亲人，提高病人满意度；待同事如家人，提高员工幸福感”新办院理念。 </p>
            <p>
                目前，医院共有2个院区、总建筑面积5万平方米，在职职工400余名、两院院士2人、临床和医技科室503个、国家级重点学科20个、国家临床重点专科29个、博士点16个、硕士点29个、国家级继续医学教育基地6个、二级学科住院医师培养基地8个、三级学科专科医师培养基地15个。开放住院床位2000余张，单日最高门诊量约1.5万人次、年出院病人约8万余人次。被评为“全国文明单位”、“全国创先争优先进基层党组织”、“全国卫生系统先进集体”、“首都卫生系统文明单位”、“最受欢迎三甲医院”，荣获全国五一劳动奖章。同时，医院还承担着支援老少边穷地区、国家重要活动和突发事件主力医疗队的重任，在2008年北京奥运工作中荣获“特别贡献奖”。 </p>
            <p>90多年来，协和人以执着的医志、高尚的医德、精湛的医术和严谨的学风书写了辉煌的历史，今天的协和人正为打造“国际知名、国内一流”医院的目标而继续努力。 </p>
        </div>
        <div class="item detail_notice">

            <p class="h2">大城市医院预约挂号须知</p>
            <p class="h3">电话预约挂号：010-114（24小时）</p>
            <p class="h3">网络预约挂号：http://www.buzhidao.cn</p>

            <p>根据卫生部8月5日通知和卫生局8月20日工作部署，大城市医院已完成电话、网络预约挂号的流程建设，现将预约挂号、取号有关事项公布如下，请您认真阅读预约须知：</p>

            <p class="h3">一、预约时间范围：</p>
            <p>1、您可预约7天内（试点）日间的副教授、主治医师和住院医师等号源。节假日不安排预约号（含周六、周日）。<br>
                2、每天早8:30分开始放号;下午14:00停止次日预约挂号。<br>
                3、周五14:00停挂至下周一。</p>

            <p class="h3">二、预约实名制：</p>
            <p>统一平台电话预约和网上预约挂号均采取实名制注册预约，请您如实提供就诊人员的真实姓名、有效证件号（身份证、军官证、护照）、性别、电话、手机号码、病案号或协和就诊卡条形码上的ID号等有效基本信息。</p>

            <p class="h3">三、预约取号：</p>
            <p>
                1、预约成功后，请患者于就诊当日携带有效证件、预约识别码及协和医院就诊卡到医院挂号窗口验证预约信息（核对与预约登记实名信息一致的本人有效证件和预约识别码）和取号，如验证不符则医院不能提供相应的诊疗服务。如果没有协和医院就诊卡者，请先办好就诊卡后再取号。<br>
                2、取号时间：上午就诊患者，就诊当日早9：00以前取号。下午就诊患者，就诊当日下午12:00-13:30之间取号。过时未取号者，预约作废。<br>
                3、取号地点：西院区预约号取号地点：西院区门诊楼一层大厅挂号窗口取号。东院区预约号取号地点：东院区老门诊楼一层大厅挂号窗口或新门诊楼各楼层挂号/收费窗口取号。</p>

            <p class="h3">四、医生停诊：</p>
            <p>如遇特殊情况医生停诊，给您造成的不便敬请谅解。医生临时停诊，工作人员将会用电话方式及时通知您，请配合更改就诊日期或更换其他医生，请您保持电话畅通。
            </p>

            <p class="h3">五、取消预约：</p>
            <p>挂出的预约号如办理退号，至少在就诊前一工作日14:00前通过网站或者114电话凭预约识别码进行取消。</p>

            <p class="h3">六、爽约处理：</p>
            <p>1、如预约成功后患者未能按时就诊且不办理取消预约号视为爽约。<br>
                2、一年内（自然年）无故爽约累计达到3次的爽约用户将自动进入系统爽约名单，此后3个月内将取消其预约挂号资格；一年内（自然年）累计爽约6次，取消6个月的预约挂号资格。</p>

            <p class="h3">七、其它注意事项：</p>
            <p>1、协和东院、西院都可以预约。<br>
                2、国际医疗部门诊、卫干门诊不对外预约。</p>

            <p class="h3">交通指南：</p>
            <p>乘车路线：<br>
                北院：1006,1008,1100,1101,1106,6845,6855到北路口；410,1040，814到南路口；
                152,7258,8102到西路口；200,205,371，389,到东路口；更多乘车路线请使用导航
            </p>

            <p class="center">大城市医院</p>
        </div>
        <div class="item detail_close">
            <div class="h2">停诊信息</div>
            <table class="table" width="989" height="94" cellpadding="0" cellspacing="0" border="0">
                <tbody>
                <tr>
                    <td>日期</td>
                    <td>星期</td>
                    <td>时段</td>
                    <td>科室</td>
                    <td>特长</td>
                    <td>职称</td>
                    <td>挂号费</td>
                    <td>可挂号数</td>
                    <td>剩余号数</td>
                    <td>替换方式</td>
                </tr>
                <tr>
                    <td>2018-01-09</td>
                    <td>1</td>
                    <td>上午</td>
                    <td>呼吸内科门诊</td>
                    <td></td>
                    <td>主治医师</td>
                    <td>5.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-13</td>
                    <td>5</td>
                    <td>上午</td>
                    <td>眼科门诊</td>
                    <td></td>
                    <td>主治医师</td>
                    <td>5.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-10</td>
                    <td>2</td>
                    <td>上午</td>
                    <td>变态反应科门诊</td>
                    <td></td>
                    <td>正教授</td>
                    <td>9.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-11</td>
                    <td>3</td>
                    <td>下午</td>
                    <td>骨科门诊</td>
                    <td></td>
                    <td>主治医师</td>
                    <td>5.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-12</td>
                    <td>4</td>
                    <td>下午</td>
                    <td>特需眼科门诊</td>
                    <td></td>
                    <td>专家(特需300)</td>
                    <td>300.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-11</td>
                    <td>3</td>
                    <td>上午</td>
                    <td>特需中医科门诊2</td>
                    <td></td>
                    <td>副教授(特需200)</td>
                    <td>200.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-11</td>
                    <td>3</td>
                    <td>下午</td>
                    <td>中医科门诊</td>
                    <td></td>
                    <td>副教授</td>
                    <td>7.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-12</td>
                    <td>4</td>
                    <td>下午</td>
                    <td>特需血管外科门诊(西院)</td>
                    <td></td>
                    <td>专家(特需300)</td>
                    <td>300.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-12</td>
                    <td>4</td>
                    <td>上午</td>
                    <td>泌尿外科膀胱癌专科门诊</td>
                    <td></td>
                    <td>副教授</td>
                    <td>7.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-12</td>
                    <td>4</td>
                    <td>下午</td>
                    <td>特需血液内科门诊</td>
                    <td></td>
                    <td>正教授(特需300)</td>
                    <td>300.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-12</td>
                    <td>4</td>
                    <td>下午</td>
                    <td>特需耳鼻喉科门诊</td>
                    <td></td>
                    <td>专家(特需300)</td>
                    <td>300.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-11</td>
                    <td>3</td>
                    <td>下午</td>
                    <td>特需中医科门诊1</td>
                    <td></td>
                    <td>专家(特需300)</td>
                    <td>300.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-12</td>
                    <td>4</td>
                    <td>上午</td>
                    <td>特需神经科门诊2</td>
                    <td></td>
                    <td>副教授(特需200)</td>
                    <td>200.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-11</td>
                    <td>3</td>
                    <td>下午</td>
                    <td>特需耳鼻喉科门诊</td>
                    <td></td>
                    <td>专家(特需300)</td>
                    <td>300.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-09</td>
                    <td>1</td>
                    <td>上午</td>
                    <td>呼吸内科门诊</td>
                    <td></td>
                    <td>专家</td>
                    <td>14.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-12</td>
                    <td>4</td>
                    <td>上午</td>
                    <td>普通内科门诊</td>
                    <td></td>
                    <td>副教授</td>
                    <td>7.00</td>
                    <td>5</td>
                    <td>5</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-12</td>
                    <td>4</td>
                    <td>下午</td>
                    <td>普通内科门诊</td>
                    <td></td>
                    <td>副教授</td>
                    <td>7.00</td>
                    <td>5</td>
                    <td>4</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-11</td>
                    <td>3</td>
                    <td>下午</td>
                    <td>特需骨科门诊</td>
                    <td></td>
                    <td>副教授(特需200)</td>
                    <td>200.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-11</td>
                    <td>3</td>
                    <td>下午</td>
                    <td>整形美容外科门诊(西院)</td>
                    <td></td>
                    <td>主治医师</td>
                    <td>5.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                <tr>
                    <td>2018-01-10</td>
                    <td>2</td>
                    <td>下午</td>
                    <td>变态反应科门诊</td>
                    <td></td>
                    <td>副教授</td>
                    <td>7.00</td>
                    <td>0</td>
                    <td>0</td>
                    <td>不可替换</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- 医院详情 end -->

<div id="footer" class="footer">
    <div class="wrap">
        Copyright&nbsp;&copy;&nbsp;2018慕课网版权所有
    </div>
</div>
<a href="#0" class="go-top"></a>
<script type="text/javascript" src="/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="/js/hospital_detail.js"></script>
</body>
</html>

