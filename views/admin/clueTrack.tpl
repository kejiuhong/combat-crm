{# 线索记录页面 #}

{% extends '../admin_layout.tpl' %}
{% import  '../common/form.tpl' as forms %}

{% block title -%} {{ name }} {% endblock %}

{% block header -%}
  {{ forms.formHeader('跟踪线索', '返回跟踪列表') }}
{% endblock %}



{% block section -%}
  <div class="form-group">
    <label class="form-name">客户名称:</label>
    <span class="clue-text">{{clueUser.name}}</span>
  </div>
  <div class="form-group">
    <label class="form-name">联系电话:</label>
    <span class="clue-text">{{clueUser.tel}}</span>
  </div>
  <div class="form-group">
    <label class="form-name">线索来源:</label>
    <span class="clue-text">{{clueUser.source}}</span>
  </div>
  <div class="form-group">
    <label class="form-name">创建时间:</label>
    <span class="clue-text">{{clueUser.time}}</span>
  </div>
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


{% block script %}
<script src="/javascript/jquery-3.3.1.min.js" type="text/javascript"></script>
{% endblock %}
