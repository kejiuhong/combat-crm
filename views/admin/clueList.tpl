{# 跟踪管理页 #}

{% extends './../admin_layout.tpl' %}


{% block title %} {{ name }} {% endblock %}

{% block header %}
  <header class="main-header border-bottom row">
    <span class="col-md-10 col-xs-6">{{ name }}</span>
  </header>
{% endblock %}


{% block main %}

  {% set headV = ['姓名', '电话', '来源', '创建时间', '跟踪销售', '状态', '操作'] %}

  {% set bodyV = [{name:'周杰伦',tel:'12345678912', source:'baidu', time:'2019/03/07 11:19:07', saleman:'陈奕迅', state:'意向一般', control:'跟踪'}, {name:'周杰伦',tel:'12345678912', source:'baidu', time:'2019/03/07 11:19:07', saleman:'陈奕迅', state:'意向一般', control:'跟踪'}, {name:'周杰伦',tel:'12345678912', source:'baidu', time:'2019/03/07 11:19:07', saleman:'陈奕迅', state:'意向一般', control:'跟踪'}] %}
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
        <th>{{ item.source }}</th>
        <th>{{ item.time }}</th>
        <th>{{ item.saleman }}</th>
        <th>{{ item.state }}</th>
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
  <p>{{ name }} footer</p>
{% endblock %}

{% block script %}
<script src="/javascript/jquery-3.3.1.min.js" type="text/javascript"></script>
{% endblock %}