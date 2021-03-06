{# 登录页面 #}

{% extends './../layout.tpl' %}
{% import './../common/form.tpl' as forms %}


{% block title %} {{ name }} {% endblock %}



{% block main %}
<div class="login-container">
  <article class="input-form">
    <div class="form-content">
      <div class="layout-logo">
        <img src="../image/logo.jpg" />
      </div>
      <div>
        <form>
          <h1>管理系统后台登录</h1>
          {{ forms.formInput('你的手机号',type='nember',class='tel') }}
          {{ forms.formInput('你的密码',type='password',class='password') }}
          {{ forms.formBtn('登录',class='login') }}
        </form>
      </div>
    </div>
  </article>
  <img class="login-img" src="../image/car.jpg"/>
</div>
{% endblock %}

{% block footer %}
  <p>{{ name }} footer</p>
{% endblock %}

{% block script %}
<script src="/javascript/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="/javascript/login.js" type="text/javascript"></script>
{% endblock %}