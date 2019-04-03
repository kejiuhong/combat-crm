{# 用户编辑页面 #}

{% extends '../admin_layout.tpl' %}
{% import  '../common/form.tpl' as forms %}

{% block title %} {{ name }} {% endblock %}


{% block header %}
  {{ forms.formHeader(name, path) }}
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