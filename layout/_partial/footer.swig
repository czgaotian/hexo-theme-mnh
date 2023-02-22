<span class="copyright-year">
    {% set current = date(Date.now(), "YYYY") %}
        &copy;
    {% if theme.since and theme.since != current %}
        {{ theme.since }} -
    {% endif %}
    {{ current }}
    <span class="footer-item footer-author">{{__('footer.author', config.author)}}</span>
    <span class="footer-item powered-by">
        {{ __('footer.powered', '<a class="hexo-link" href="https://hexo.io/">Hexo</a>') }}
    </span>
    {% if theme.license %}
    {% set licenseDomString = '<a class="hexo-link" href="' + theme.license.link + '">' + theme.license.name + '</a>' %}
        <span class="footer-item footer-license">
            {{ __('footer.license', licenseDomString) }}
        </span>
    {% endif %}
</span>
