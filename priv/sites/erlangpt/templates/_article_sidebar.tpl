{% include "_article_keywords.tpl" %}

	<h4>{_ Arquivo _}</h4>
	<ul class="sidebar">
		{% for year, months in m.search[{archive_year_month cat='article'}] %}
			<li><a href="{% url archives_y year=year %}">{{ year }}</a>
				<!--ul class="sidebar">
					{% for row in months %}
					<li><a href="{% url archives_m year=year month=row.month %}">{{ row.month_as_date|date:"F" }} ({{ row.count }}){% if not forloop.last %},{% else %}.{% endif %}</a></li>
					{% endfor %}
				</ul-->
			</li>
		{% endfor %}
	</ul>


{% if m.rsc[id].is_editable %}
	{% button text=_"editar esta página" class="button float" action={redirect dispatch="admin_edit_rsc" id=id} %}
{% endif %}
