<span class="copyright-year">
    {% set current = date(Date.now(), "YYYY") %}
        &copy;
    {% if theme.since and theme.since != current %}
        {{ theme.since }} -
    {% endif %}
    {{ current }}
    <span class="footer-author">{{__('footer.author', config.author)}}</span>
    <span class="power-by">
        {{ __('footer.powered', '<a class="hexo-link" href="https://hexo.io/">Hexo</a>') }}
    </span>
    {% if theme.license %}
    {% set licenseDomString = '<a class="hexo-link" href="{{' + config.licensed.link + '">' + conifg.licensed.name + '</a>' %}
        <span class="footer-licensed">
            {{ __('footer.licensed', licenseDomString) }}
        </span>
    {% endif %}
</span>
