{% if theme.google_analytics and theme.google_analytics.enable %}
  <script async src="https://www.googletagmanager.com/gtag/js?id={{ theme.google_analytics.gtag }}"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', '{{ theme.google_analytics.gtag }}');
  </script>
{% endif %}