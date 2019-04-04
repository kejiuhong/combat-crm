{# 用户列表页 #}

{% extends '../admin_layout.tpl' %}

{% block title %} 人员管理 {% endblock %}

{% block header %}
  <span class="col-md-10 col-xs-6">人员管理</span>
  <a href="/admin/userCreate" class="main-header-botton col-md-2 col-xs-6">新增人员>>></a>
{% endblock %}


{% block main %}
  {% set headV = ['姓名', '电话', '角色', '创建时间', '操作'] %}

<div class="table-responsive">
  <table class="table table-striped">
    <thead>
      <tr>
        {% for item in headV %}
        <th>{{ item }}</th>
        {% endfor %}
      </tr>
    </thead>
    <tbody>
      {% for item in users %}
      <tr>
        <th>{{ item.name }}</th>
        <th>{{ item.tel }}</th>
        <th>{{ item.role }}</th>
        <th>{{ item.time }}</th>
        <th>
          <a class="listBtn main-header-botton" href="/admin/userEdite:{{ item.id }}">编辑</a>
        </th>
      </tr>
      {% endfor %}
    </tbody>
  </table>
</div>
{% endblock %}

{% block footer %}
{% endblock %}

{% block script %}
<script src="/javascript/jquery-3.3.1.min.js" type="text/javascript"></script>
{% endblock %}