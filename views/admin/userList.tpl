{# 用户列表页 #}

{% extends '../admin_layout.tpl' %}

{% block title %} 人员管理 {% endblock %}

{% block header %}
  <span class="col-md-10 col-xs-6">人员管理</span>
  <a href="/admin/user/create" class="main-header-botton col-md-2 col-xs-6">新增人员>>></a>
{% endblock %}



{% block main %}
<div class="table-responsive">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>姓名</th>
        <th>电话</th>
        <th>角色</th>
        <th>创建时间</th>
        <th>操作</th>
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
          <a class="listBtn main-header-botton" href="/admin/user/edit/{{ item.id }}">编辑</a>
        </th>
        {# 如果角色为管理列没有删除按钮 #}
        <th>
          {% if item.role !== '管理' %}
          <button class="delete btn-danger" id="{{item.id}}">删除</button>
        {% endif %}        
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
<script src="/javascript/userDel.js" type="text/javascript"></script>
{% endblock %}