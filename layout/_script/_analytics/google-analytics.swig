{% if config.google_analytics and config.google_analytics.enable %}
  <script async src="https://www.googletagmanager.com/gtag/js?id={{ config.google_analytics.gtag }}"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', '{{ config.google_analytics.gtag }}');
  </script>
{% endif %}