{# 线索记录页面 #}

{% extends '../admin_layout.tpl' %}
{% import  '../common/form.tpl' as forms %}

{% block title -%} {{ name }} {% endblock %}

{% block header -%}
  {{ forms.formHeader('跟踪线索', '返回跟踪列表',href='/admin/clue/list') }}
{% endblock %}

{% set items = [{name:'意向一般', value:'general'}, {name:'有兴趣', value:'interest'}, {name:'准备购买', value:'purchase'}] %}

{% block section -%}
  <div class="form-group">
    <label class="form-name">客户名称:</label>
    <span class="clue-text">{{clueUser[0].name}}</span>
  </div>
  <div class="form-group">
    <label class="form-name">联系电话:</label>
    <span class="clue-text tel">{{clueUser[0].tel}}</span>
  </div>
  <div class="form-group">
    <label class="form-name">线索来源:</label>
    <span class="clue-text">{{clueUser[0].source}}</span>
  </div>
  <div class="form-group">
    <label class="form-name">创建时间:</label>
    <span class="clue-text">{{clueUser[0].time}}</span>
  </div>
  <span class="hidID" hidden>{{clueUser[0].id}}</span>
  {{ forms.formClue('用户状态') }}
  <div class="form-group">
    <select class="btn btn-default form-btn opStatus" value='选择'>
      {% for item in items %}
        <option value={{ item.name }} {% if clueUser[0].status == item.name %}selected{% endif %}>{{ item.name }}</options>
      {% endfor %}
    </select>
  </div>
  {{ forms.formClue('当前分配销售') }}
  <div class="form-group">
    <select class="btn btn-default form-btn opSale" value='选择'>
      {% for item in userSale %}
        <option value={{ item.name }} {% if clueUser[0].user_id == item.name %}selected{% endif %}>{{ item.name }}</options>
      {% endfor %}
    </select>
  </div>
  {{ forms.formClue('备注') }}
  {{ forms.formText(clueUser[0].remark,class='remark') }}
  {{ forms.formBtn('保存',class='save') }}
{% endblock %}

{# 内容右侧 #}
{% block aside %}
<aside class="main-content col-md-6 col-xs-12">
  <span class="hidTel" hidden>{{clueUser[0].tel}}</span>
  {{ forms.formClueShow(items=track) }}
  {{ forms.formClue('备注') }}
  {{ forms.formText('备注','trackContent') }}
  {{ forms.formBtn('添加',class='add') }}
</aside>
{% endblock %}


{% block script %}
<script src="/javascript/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="/javascript/clueTrack.js" type="text/javascript"></script>
{% endblock %}
