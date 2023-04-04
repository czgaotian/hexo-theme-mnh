<!DOCTYPE html>
<html lang="{{ connfig.language }}">
  <head>
    {% include '_partial/head.swig' %}
    <title>{% block title %}{% endblock %}</title>
  </head>

  <body>
    <div id="main-container">
      <header id="mnh-header">
        {%- include '_partial/header.swig' %}
      </header>
      <div id="mnh-content">
        {% block content %}{% endblock %}
      </div>

      <footer id="mnh-footer">
        {%- include '_partial/footer.swig' %}
      </footer>

      <div class="back-to-top" id="back-to-top">
        <i class="iconfont icon-up"></i>
      </div>
    </div>
    {% include '_partial/search.swig' %}

    {% include '_script/comments.swig' %}
    {% include '_script/libs.swig' %}
    {% include '_script/theme.swig' %}
    {% include '_script/search.swig' %}
  </body>
</html>
