{% with id.o.subject as tags %}
{% if tags %}
<h4>
	{_ Keywords do artigo _}
</h4>
<ul class="sidebar">
	{% for id in tags %}
	<li><a href="{{ m.rsc[id].page_url }}">{{ m.rsc[id].title }}</a></li>
	{% endfor %}
</ul>  

{% endif %}
{% endwith %}

