<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="/stylesheets/border.css">
  <link rel="stylesheet" href="/stylesheets/reset.css">
  <link rel="stylesheet" href="/stylesheets/layout.css">
  <title>{% block title %} 首页 {% endblock %}</title>
</head>
<body>
  <div class="wrapper row">
    <div class="layout-container col-md-4 col-md-offset-4 col-xs-12">
        {% block header %}
        {% endblock %}
        <!-- article -->
          {% block main %}
          {% endblock %}
          <!-- article end -->
    </div>
  </div>
  <!-- js文件引用 -->
  {% block script %}{% endblock %}
<script src="/javascript/bootstrap.min.js" type="text/javascript"></script>
</body>
  
</html>