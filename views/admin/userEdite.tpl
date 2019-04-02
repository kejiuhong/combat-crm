{# 用户编辑页面 #}

{% extends '../admin_layout.tpl' %}
{% import  '../common/form.tpl' as forms %}

{% block title %} {{ name }} {% endblock %}


{% block header %}
  {{ forms.formHeader(name, path) }}
{% endblock %}


{# 表单部分内容 #}
{% block section %}
  {{ forms.formItem('姓名') }}
  {{ forms.formItem('电话', type='tel') }}
  {{ forms.formItem('密码', type='password') }}
  {# 下拉列表 #}
  <div class="form-group">
    {{ forms.formLabel('角色') }}
      {{ forms.formSelect(items=[{name:'管理员', value:'username'}, {name:'销售人员', value:'saleman'}, {name:'客户', value:'customer'}]) }}
  </div>
  {{ forms.formBtn('保存') }}


{% endblock %}
{# 表单部分内容 end #}



{% block footer %}
  <p>{{ name }} footer</p>
{% endblock %}