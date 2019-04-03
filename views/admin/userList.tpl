{# 用户列表页 #}

{% extends '../admin_layout.tpl' %}

{% block title %} {{ name }} {% endblock %}

{% block header %}
  <span class="col-md-10 col-xs-6">{{ name }}</span>
  <a href="" class="main-header-botton col-md-2 col-xs-6">{{ path }}>>></a>
{% endblock %}


{% block main %}
  {% set headV = ['姓名', '电话', '角色', '创建时间', '操作'] %}

  {% set bodyV = [{name:'周杰伦',tel:'12345678912', character:'管理员', time:'2019/03/07 11:19:07', control:'跟踪'}, {name:'周杰伦',tel:'12345678912', character:'销售', time:'2019/03/07 11:19:07', control:'跟踪'}, {name:'周杰伦',tel:'12345678912', character:'销售', time:'2019/03/07 11:19:07', control:'跟踪'}] %}
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
      {% for item in bodyV %}
      <tr>
        <th>{{ item.name }}</th>
        <th>{{ item.tel }}</th>
        <th>{{ item.character }}</th>
        <th>{{ item.time }}</th>
        <th>
          <a class="main-header-botton" href="#">{{ item.control }}</a>
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
<script src='/javascript/user.js'></script>
{% endblock %}