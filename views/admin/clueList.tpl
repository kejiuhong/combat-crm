{# 跟踪管理页 #}

{% extends './../admin_layout.tpl' %}


{% block title %} 跟踪列表 {% endblock %}

{% block header %}
  <header class="main-header border-bottom row">
    <span class="col-md-10 col-xs-6">跟踪列表</span>
  </header>
{% endblock %}



{% block main %}

  {% set headV = ['姓名', '电话', '来源', '创建时间', '跟踪销售', '状态', '操作'] %}

  
<div class="table-responsive">
  <table class="table table-striped">
    <thead>
      <tr>
        {% for item in headV %}
        <th class='headerTh'>
          {{ item }}
        </th>
        {% endfor %}
      </tr>
    </thead>
    <tbody>
      {% if userIfo.role == '管理' %}
        {% for item in clueUser %}
          <tr>
            <th>{{ item.name }}</th>
            <th>{{ item.tel }}</th>
            <th>{{ item.source }}</th>
            <th>{{ item.time }}</th>
            <th>{{ item.user_id }}</th>
            <th>{{ item.status }}</th>
            <th hidden></th>
            <th>
              <a class="main-header-botton edit" href="/admin/clue/track/{{item.id}}">跟踪</a>
            </th>
          </tr>
        {% endfor %}
      {% endif %}

      
      {% for item in clueUser %}
        {% if userIfo.name == item.user_id %}
          <tr>
            <th>{{ item.name }}</th>
            <th>{{ item.tel }}</th>
            <th>{{ item.source }}</th>
            <th>{{ item.time }}</th>
            <th>{{ item.user_id }}</th>
            <th>{{ item.status }}</th>
            <th hidden></th>
            <th>
              <a class="main-header-botton edit" href="/admin/clue/track/{{item.id}}">跟踪</a>
            </th>
          </tr>
        {% endif %}
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