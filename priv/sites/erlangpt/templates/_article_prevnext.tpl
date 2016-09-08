{% cache 3600 cat='article' vary=id %}

<p class="clearfix">
{% for id in m.search[{next cat='article' id=id pagelen=1}] %}
<a href="{{ m.rsc[id].page_url }}" title="{{ m.rsc[id].title }}" class="button float right">{_ Próximo artigo _} &raquo;</a>
{% endfor %}
{% for id in m.search[{previous cat='article' id=id pagelen=1}] %}
<a href="{{ m.rsc[id].page_url }}" title="{{ m.rsc[id].title }}" class="button float">&laquo; {_ Artigo anterior _}</a>
{% endfor %}
</p>

{% endcache %}
