{# 用户编辑页面 #}

{% extends '../admin_layout.tpl' %}
{% import  '../common/form.tpl' as forms %}



{% set items=[{name:'管理', value:'username'}, {name:'销售', value:'saleman'}] %}



{% block title %} 人员编辑 {% endblock %}


{% block header %}
  <span class="col-md-10 col-xs-6">人员编辑</span>
  <a href="/admin/user/list" class="main-header-botton col-md-2 col-xs-6">返回用户列表>>></a>
{% endblock %}



{# 表单部分内容 #}
{% block section %}
  {# 姓名 #}
  <div class="form-group">
    <label class="form-name">姓名:</label>
    <input class="form-control username" type='text' placeholder='姓名' value='{{ user.name }}'>
  </div>

  {# 电话 #}
  <div class="form-group">
    <label class="form-name">电话:</label>
    <input class="form-control tel" type='tel' placeholder='电话' value='{{ user.tel }}'>
  </div>

  {# 密码 #}
  <div class="form-group">
    <label class="form-name">密码:</label>
    <input class="form-control password" type='password' placeholder='密码' value='{{ user.password }}'>
  </div>

  {# 下拉表 #}
  <div class="form-group">
    {{ forms.formLabel('角色') }}
    <select class="btn btn-default form-btn role" value='选择'>

      {% for item in items %}
        <option value={{ item.value }} {% if user.role == item.name %}selected{% endif %}>{{ item.name }}</options>
      {% endfor %}

    </select>
  </div>

  <input class="hidID" hidden value='{{ user.id }}'>
  {{ forms.formBtn('保存',class='save') }}


{% endblock %}
{# 表单部分内容 end #}



{% block footer %}
  <p>{{ name }} footer</p>
{% endblock %}

{% block script %}
<script src="/javascript/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src='/javascript/userEdit.js'></script>
{% endblock %}