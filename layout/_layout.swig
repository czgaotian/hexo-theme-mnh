<!DOCTYPE html>
<html lang="{{ connfig.language }}">
  <head>
    {% include '_partial/head.swig' %}
    <title>{% block title %}{% endblock %}</title>
  </head>

  <body>
    <div id="page">
      <header id="masthead">
        {%- include '_partial/header.swig' %}
      </header>
      <div id="content">
        {% block content %}{% endblock %}
      </div>

      <footer id="colophon">
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
  
  <script type="application/ld+json">
  {
    "@context": "http://www.schema.org",
    "@type": "Recipe",
    "@id": "https://pua.al/about/",
    "name": "pua.al",
    "author": {
      "@type": "Person",
      "name": "Stan Gao"
    }
    "nationality": "中国",
    "birthPlace" : {
      "@type": "Place",
      "address": {
        "@type": "PostalAddress",
        "addressRegion": "上海",
        "addressCountry": "中国"
      }
    },
    "gender": "Male",
    "Description": "Software Engineer",
    "jobTitle": "Software Engineer",
    "url": "https://pua.al",
    "address": {
      "@type": "PostalAddress",
      "addressRegion": "上海",
      "addressCountry": "中国"
    },
    "sameAs": [
      "https://github.com/meannoharm",
    ]
  }
  </script>
  </body>
</html>
