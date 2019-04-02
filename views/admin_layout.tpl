<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no,maximum-scale=1,minimum-scale=1">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="/stylesheets/border.css">
  <link rel="stylesheet" href="/stylesheets/reset.css">
  <link rel="stylesheet" href="/stylesheets/admin.css">
  <link rel="stylesheet" href="/stylesheets/varible.css">
  <title>{% block title %} 首页 {% endblock %}</title>
</head>
<body>
<div class="wrapper">
  <!-- 导航 -->
  <nav class="navbar navbar-inverse nav">
    <div class="container-fluid">
      <div class=" navbar-header nav-logo">
        <img class="logo" src="/image/logo3.jpg" alt="">
      </div>
      <div class="nav-text ">汽车销售管理系统</div>
      <div class="nav-user col-md-2 collapse navbar-collapse" id="nav-login-out">
        <span>周杰伦</span>
        <a href="">退出</a>
      </div>
      <div class="nav nav-botton navbar-toggle collapsed" data-toggle="collapsed" data-target="#nav-login-out">
        <span>周杰伦</span>
        <ul class="nav-botton-menu">
          <li class="border-bottom">人员管理</li>
          <li class="border-bottom">线索管理</li>
          <li>退出</li>
        </ul>
      </div>
    </div>
    <!-- fluid end -->
  </nav>
  <!-- nav end -->
  <!-- container -->
  <div class="container row">
    <!-- 侧边栏 -->
    <div class="sidebar col-md-3 collapse navbar-collapse">
      <ul>
        <li class="border-bottom">人员管理</li>
        <li class="border-bottom">线索管理</li>
      </ul>
    </div>
    <!-- 侧边栏 end -->
    <!-- 主题内容部分 -->
    <article class="main col-md-9 col-xs-12">
      <header class="main-header border-bottom row">
        {% block header %}
        <span class="col-md-10 col-xs-6">人员管理</span>
          <a href="" class="main-header-botton col-md-2 col-xs-6">返回用户列表>>></a>
        {% endblock %}
      </header>
      <div class="main-content">
        {% block main %}
        {% endblock %}
      </div>
      <section class="main-content col-md-6 col-xs-12">
        <form class="form-horizontal" >
          {% block section %}
          {% endblock %}
        </form>

      </section>
        {% block aside %}
        {% endblock %}
    </article>
    <!-- 主题内容部分 end -->
  </div>
  <!-- container end -->
</div>
  <!-- js文件引用 -->
<script src="/javascript/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="/javascript/bootstrap.min.js" type="text/javascript"></script>
{% block script %}{% endblock %}
</body>

</html>