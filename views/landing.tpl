{# 着陆页 #}


{% extends './base/layout.tpl' %}
{% import './common/form.tpl' as forms %}


{% block title %} {{ name }} {% endblock %}

{% block header %}
  <img src="../image/car5.jpg" />
{% endblock %}



{% block main %}
  <form class="form-horizontal">
    <h1 class="title">留下电话，我们会马上联系您，为您预约优惠名额</h1>
    {{ forms.formInput('您的姓名') }}
    {{ forms.formInput('您的电话') }}
    {{ forms.formBtn('马上抢占名额', class='layout-btn') }}
  </form>
{% endblock %}

{% block footer %} 
  <p>landing footer</p>
{% endblock %}