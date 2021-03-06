<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>新建</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/add.css">
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/department/list.do">
                慕课网科室管理
            </a>
        </div>
    </div>
</nav>
<div class="container">
    <div class="jumbotron">
        <h1>Hello, ${user.username}!</h1>
        <p>请小心的新增科室记录，要是建了一个错误的就不好了。。。</p>
    </div>
    <div class="page-header">
        <h3>
            <small>新建</small>
        </h3>
    </div>
    <form class="form-horizontal" action="/department/edit.do" method="post">
        <input type="hidden" name="id" value="${editingDepartment.id}">
        <div class="form-group">
            <label for="name" class="col-sm-2 control-label">名称 ：</label>
            <div class="col-sm-8">
                <input name="name" class="form-control" id="name" value="${editingDepartment.name}">
            </div>
        </div>
        <div class="form-group">
            <label for="categoryId" class="col-sm-2 control-label">分类 ：</label>
            <select id="categoryId" name="categoryId" class="col-sm-2 form-control" style="width: auto">
                <c:forEach items="${categoryList}" var="category">
                <c:if test="${editingDepartment.categoryId==category.id}">
                    <option value="${category.id}" selected="selected">${category.name}</option>
                </c:if>
                <c:if test="${category.id!=editingDepartment.categoryId}">
                    <option value="${category.id}">${category.name}</option>
                </c:if>
                </c:forEach>
            </select>

        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary">保存</button>&nbsp;&nbsp;&nbsp;
            </div>
        </div>
    </form>
</div>
<footer class="text-center">
    copy@imooc
</footer>
</body>
</html>

