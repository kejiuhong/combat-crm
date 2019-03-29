<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>{% block title %} 首页 {% endblock %} - layout</title>
</head>
<body>
<header style="text-align:center;">
    {% block header %} header {% endblock %}
</header>

<article style="text-align:center;">
  {% block main %}  {% endblock %} 
</article>

<footer style="text-align:center;">
  <hr/>
  <div style="text-align:center;">
      Footer  - by postbird
  </div>
{% block footer %}  {% endblock %}
</footer>

</body>

</html>