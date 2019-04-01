{# 登录页面 #}

{% extends './base/layout.tpl' %}
{% block title %} {{ name }} {% endblock %}

{% block bgImg %}
  <img class="login-img" src="../image/car.jpg"/>
{% endblock %}


{% block main %}
  <h1>页面名称：{{ name }}</h1>
{% endblock %}

{% block footer %}
  <p>{{ name }} footer</p>
{% endblock %}