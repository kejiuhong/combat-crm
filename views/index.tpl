{# 着陆页 #}


{% extends 'layout.tpl' %}
{% import './common/form.tpl' as forms %}


{% block title %} {{ name }} {% endblock %}

{% block header %}
  <header class="banner">
    <img src="../image/car5.jpg" />
  </header>
{% endblock %}



{% block main %}
<article class="input-form">
  <form class="form-horizontal">
    <h1 class="title">留下电话，我们会马上联系您，为您预约优惠名额</h1>
    {{ forms.formInput('您的姓名',class='username') }}
    {{ forms.formInput('您的电话',class='tel') }}
    {{ forms.formBtn('马上抢占名额', class='layout-btn') }}
  </form>
</article>
{% endblock %}

{% block footer %} 
  <p>landing footer</p>
{% endblock %}

{% block script %}
<script src="/javascript/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src='/javascript/index.js'></script>
{% endblock %}