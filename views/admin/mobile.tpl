{# 手机页面导航的显示 #}

{% extends './../admin_layout' %}

{% block mobile %}

<div class="nav nav-botton navbar-toggle collapsed" data-toggle="collapsed" data-target="#nav-login-out">
  <span class="mobile-use">{{userIfo.name}}</span>
  <ul class="nav-botton-menu">
    
    <li class="border-bottom">
      <a href="/admin/user/list">
        人员管理
      </a>
    </li>
    
    <li class="border-bottom">
      <a href="/admin/clue/list">
        线索管理
      </a>
    </li>
    <li>
      <a class="logOut" href="/api/login/out">
        退出
      </a>
    </li>
  </ul>
</div>

{% endblock %}