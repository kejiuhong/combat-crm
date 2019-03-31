{# 线索记录页面 #}

{% extends './base/admin_layout.tpl' %}
{% import  './common/form.tpl' as forms %}

{% block title -%} {{ name }} {% endblock %}

{% block header -%}
  {{ forms.formHeader('跟踪线索', '返回跟踪列表') }}
{% endblock %}


{% block section -%}
  {{ forms.formClue('客户名称', username) }}
  {{ forms.formClue('联系电话') }}
  {{ forms.formClue('线索来源') }}
  {{ forms.formClue('创建时间') }}
  {{ forms.formClue('用户状态') }}
  <div class="form-group">
    {{ forms.formSelect(items=[{name:'意向一般', value:'general'}, {name:'有兴趣', value:'interest'}, {name:'准备购买', value:'purchase'}]) }}
  </div>
  {{ forms.formClue('当前分配销售') }}
  <div class="form-group">
    {{ forms.formSelect(items=[{name:'陈伟霆', value:'chenwei'}, {name:'周迅', value:'interest'}, {name:'邓论', value:'purchase'}]) }}
  </div>
  {{ forms.formClue('备注') }}
  {{ forms.formText('备注') }}
  {{ forms.formBtn('保存') }}
{% endblock %}

{# 内容右侧 #}
{% block aside %}
<aside class="main-content col-md-6 col-xs-12">
  {{ forms.formClueShow(items=[{time:'2019/03/07 16:06:12', text:'跟踪内容1'}, {time:'2019/03/07 16:06:12', text:'跟踪内容2'}]) }}
  {{ forms.formClue('备注') }}
  {{ forms.formText('备注') }}
  {{ forms.formBtn('添加') }}
</aside>
{% endblock %}

