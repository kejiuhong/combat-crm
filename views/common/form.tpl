{# 这是一个公用的表单样式 #}


{# 主题内容部分 header #}
{% macro formHeader(name, backname) %}
  <span class="col-md-10 col-xs-6">{{ name }}</span>
  <a href="" class="main-header-botton col-md-2 col-xs-6">{{ backname }}>>></a>
{% endmacro %}

{# label #}
{% macro formLabel(text) %}
  <label class="form-name">{{ text }}:</label>
{% endmacro %}

{# 表单 #}
{% macro formItem(name, value='', type='text') %}
  <div class="form-group formItem">
    <label class="form-name">{{ name }}:</label>
    <input class="form-control" type={{ type }} placeholder={{ name }}/>
  </div>
{% endmacro %}


{# 输入框 #}
{% macro formInput(name, value='', type='text') %}
  <div class="form-group formItem">
    <input class="form-control layout-input" type={{ type }} placeholder={{ name }} />
  </div>

{% endmacro %}



{# 选择项 #}
{% macro formSelect(items='') %}
  <select class="btn btn-default form-btn">
  {% for item in items %}
    <option value={{ item.value }}>{{ item.name }}</options>
  {% endfor %}
  </select>
{% endmacro %}



{# 按钮 #}
{% macro formBtn(text, type='submit', class='') %}
<div class="form-group">
  <button type={{ type }} class="btn btn-primary {{class}}">{{ text }}</button
</div>
{% endmacro %}



{# textarea #}
{% macro formText(text) %}
<div class="form-group">
  <textarea class="form-textarea" row='10' cols='50'>
  {{ text }}
  </textarea>
</div>
{% endmacro %}


{# 跟踪编辑页面 #}
{% macro formClue(text, value='') %}
  <div class="form-group">
    <label class="form-name">{{ text }}:</label>
    <span class="clue-text">{{value}}</span>
  </div>
{% endmacro %}


{# 跟踪编辑页面右侧跟踪内容展示 #}
{% macro formClueShow(items='') %}
<ul>
  {% for item in items %}
  <li class='clue-show-list'>
    <p>{{ item.time }}</p>
    <p>{{ item.text }}</p>
  </li>
  {% endfor %}
</ul>
{% endmacro %}