{# 用户编辑页面 #}

{% extends '../admin_layout.tpl' %}
{% import  '../common/form.tpl' as forms %}

{% block title %} {{ name }} {% endblock %}


{% block header %}
  <span class="col-md-10 col-xs-6">人员管理</span>
  <a href="/admin/userList" class="main-header-botton col-md-2 col-xs-6">返回用户列表>>></a>
{% endblock %}


{# 表单部分内容 #}
{% block section %}
  {{ forms.formItem('姓名',class='username',txt=user.name) }}
  {{ forms.formItem('电话', type='tel',class='tel',txt=user.tel) }}
  {{ forms.formItem('密码', type='password',class='password',txt=user.password) }}
  {# 下拉列表 #}
  <div class="form-group">
    {{ forms.formLabel('角色') }}
      {{ forms.formSelect(items=[{name:'管理员', value:'username'}, {name:'销售人员', value:'saleman'}, {name:'客户', value:'customer'}], class='role') }}
  </div>
  <span class="hidID" hidden>{{ user.id }}</span>
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