{% extends './base/layout.tpl' %}
{% block title %} {{ name }} {% endblock %}

{% block header %}
  <h1>{{ name }} header</h1>
{% endblock %}


{% block main %}
  <h1>页面名称：{{ name }}</h1>
{% endblock %}

{% block footer %}
  <p>{{ name }} footer</p>
{% endblock %}