{# 跟踪管理页 #}

{% extends './../admin_layout.tpl' %}


{% block title %} 跟踪列表 {% endblock %}

{% block header %}
  <header class="main-header border-bottom row">
    <span class="col-md-10 col-xs-6">跟踪列表</span>
  </header>
{% endblock %}



{% block main %}

<div class="table-responsive">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>姓名</th>
        <th>电话</th>
        <th>来源</th>
        <th>创建时间</th>
        <th>跟踪销售</th>
        <th class="headerTh">
          <select class="th-select">
            <option class="select" >状态</option>
            <option class="select" >没有意向</option>
            <option class="select" >意向一般</option>
            <option class="select" >意向强烈</option>
            <option class="select" >完成销售</option>
            <option class="select" >取消销售</option>
          </select>
        </th>
        <th>操作</th>
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
            <th class="status">{{ item.status }}</th>
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
            <th class="status">{{ item.status }}</th>
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
<script src='/javascript/clueList.js'></script>
{% endblock %}