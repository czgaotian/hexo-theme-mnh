<span class="footer-content-container">
    <span class="footer-item">
        {% set current = date(Date.now(), "YYYY") %}
            &copy;
        {% if theme.since and theme.since != current %}
            {{ theme.since }} -
        {% endif %}
        {{ current }}
    </span>
    {% if theme.author and theme.author.link and theme.author.name %}
        {% set authorDomString = '<a class="hexo-link" href="' + theme.author.link + '">' + theme.author.name + '</a>' %}
        <span class="footer-item footer-author">
            {{__('footer.author', authorDomString)}}
        </span>
    {% endif %}
    <span class="footer-item powered-by">
        {{ __('footer.powered', '<a class="hexo-link" href="https://hexo.io/">Hexo</a>') }}
    </span>
    {% if theme.license and theme.license.link and theme.license.name %}
    {% set licenseDomString = '<a class="hexo-link" href="' + theme.license.link + '">' + theme.license.name + '</a>' %}
        <span class="footer-item footer-license">
            {{ __('footer.license', licenseDomString) }}
        </span>
    {% endif %}
</span>
