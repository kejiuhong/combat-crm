{# 新增人员页面 #}

{% extends '../admin_layout.tpl' %}
{% import  '../common/form.tpl' as forms %}

{% block title %}新增人员 {% endblock %}


{% block header %}
  <span class="col-md-10 col-xs-6">新增人员</span>
  <a href="/admin/userList" class="main-header-botton col-md-2 col-xs-6">返回列表>>> </a>
{% endblock %}


{# 表单部分内容 #}
{% block section %}
  {{ forms.formItem('姓名',class='username') }}
  {{ forms.formItem('电话', type='tel',class='tel') }}
  {{ forms.formItem('密码', type='password',class='password') }}
  {# 下拉列表 #}
  <div class="form-group">
    {{ forms.formLabel('角色') }}
      {{ forms.formSelect(items=[{name:'管理员', value:'username'}, {name:'销售人员', value:'saleman'}, {name:'客户', value:'customer'}], class='role') }}
  </div>
  {{ forms.formBtn('保存',class='save') }}


{% endblock %}
{# 表单部分内容 end #}



{% block footer %}
  <p>{{ name }} footer</p>
{% endblock %}

{% block script %}
<script src="/javascript/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src='/javascript/user.js'></script>
{% endblock %}