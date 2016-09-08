{% extends "base.tpl" %}

{% block title %}{_ Livros _} {% endblock %}

{% block content %}

	{% if m.rsc[id].is_featured %}

		<h1>{{ m.rsc[id].title }}</h1>
		<p class="summary">{{ id|summary }}</p>

		{% for id in m.rsc[id].media %}
			{% include "_body_media.tpl" width=445 crop=1 align="block" %}
		{% endfor %}

	{% endif %}

	{% with m.search[{query cat='books' sort='-publication_start' pagelen=m.config.site.pagelen.value}] as result %}

		<div id="list-articles">
			{% for id in result %}
				{% include "_article_summary.tpl" id=id big=forloop.first %}
			{% endfor %}
		</div>

		{% ifequal m.config.site.pagelen.value result|length %}
			{% wire id="more-results" action={moreresults result=result target="list-articles" template="_article_summary.tpl"} %}
			<p><a href="javascript:void(0);"
			id="more-results" class="button">Mais resultados...</a></p>
		{% endifequal %}
	{% endwith %}

{% endblock %}
