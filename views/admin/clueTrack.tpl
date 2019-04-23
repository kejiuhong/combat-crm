{# 线索记录页面 #}

{% extends '../admin_layout.tpl' %}
{% import  '../common/form.tpl' as forms %}

{% block title -%} {{ name }} {% endblock %}



{% block header -%}
  {{ forms.formHeader('跟踪线索', '返回跟踪列表',href='/admin/clue/list') }}
{% endblock %}



{% set items = [{name:'没有意向', value:'noIntention'},{name:'意向一般', value:'general'}, {name:'意向强烈', value:'interest'}, {name:'完成销售', value:'finish'}, {name:'取消销售', value:'cancel'}] %}




{# 如果为管理显示这部分 #}

  {% block admin %}

    {# 左侧销售分配内容内容 #}
    <section class="main-content col-md-6 col-xs-12">
      <form class="form-horizontal" >
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
        <div class="form-group">
          <textarea class="form-textarea remark" row='10' cols='50' placeholder="备注">{{clueUser[0].remark}}</textarea>
        </div>
        {{ forms.formBtn('保存',class='save') }}
      </form>
    </section>
    {# 左侧内容 end #}

    {# 内容跟踪进度右侧 #}
    <aside class="main-content col-md-6 col-xs-12">
      <span class="hidTel" hidden>{{clueUser[0].tel}}</span>
      <ul>
        {% for item in track %}
        <li class='clue-show-list clue-text'>
          <p>{{ item.time }}</p>
          <p>{{ item.content }}</p>
        </li>
        {% endfor %}
      </ul>
    </aside>

    {# 内容跟踪进度右侧 end #}

  {% endblock %}

{# 如果为管理显示这部分 end #}






{# 如果为销售显示这部分 #}
{% block sale -%}

  {# 左侧销售分配内容内容 #}
  <section class="main-content col-md-6 col-xs-12">
    <form class="form-horizontal" >
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
      <div class="form-group">
        <label class="form-name">用户状态:</label>
        <span class="clue-text">{{clueUser[0].status}}</span>
      </div>

      <div class="form-group">
        <label class="form-name">当前分配销售:</label>
        <span class="clue-text">{{clueUser[0].user_id}}</span>
      </div>


      {{ forms.formClue('备注') }}
      <div class="form-group">
        <p class="remark clue-text">{{clueUser[0].remark}}</p>
      </div>
    </form>
  </section>
  {# 左侧内容 end #}

  {# 内容跟踪进度右侧 #}
  <aside class="main-content col-md-6 col-xs-12">
    <span class="hidTel" hidden>{{clueUser[0].tel}}</span>
    {{ forms.formClueShow(items=track) }}
    {{ forms.formClue('备注') }}
    {{ forms.formText('trackContent') }}
    {{ forms.formBtn('添加',class='add') }}
  </aside>
  {# 内容跟踪进度右侧 end #}
{% endblock %}
{# 如果为销售显示这部分 end #}






{% block script %}
<script src="/javascript/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="/javascript/clueTrack.js" type="text/javascript"></script>
{% endblock %}
