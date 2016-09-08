{# Cache the sidebar, depending on the stuff in the 'article' category #}
{% cache 3600 cat='article' %}

	{% if m.category.tweet %}

		{% with m.search[{latest cat='tweet' pagelen=4}] as r %}
			{% if r.result %}
				<h2>Tweets</h2>
				<ul class="shouts-list">
					{% for tw in r.result %}
						<li>
							<p>
								<img width="28" height="28" src="{{ m.rsc[tw].tweet['user'][2]['profile_image_url'] }}" />
								<span class="tweet-body">{{ m.rsc[tw].body|twitter }}</span>
								<span class="tweet-date-time">from {{ m.rsc[tw].tweet["source"] }} by {{ m.rsc[tw].tweet['user'][2]['screen_name'] }}</span>
							</p>
						</li>
					{% endfor %}
				</ul>
			{% endif %}
		{% endwith %}

	{% endif %}
			
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

	<h4>{_ Keywords _}</h4>
	<ul class="sidebar">
		{% for id, count in m.search[{keyword_cloud cat='article'}] %}
		<li><a href="{{ m.rsc[id].page_url }}">{{ m.rsc[id].title }} ({{ count }})</a></li>
		{% endfor %}
	</ul>

<p class="clearfix"/>	
<a href="https://twitter.com/ErlangPortugal" class="twitter-follow-button" data-show-count="false" data-lang="pt">Seguir @ErlangPortugal</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>				


{% endcache %}
	
{% if m.rsc[id].is_editable and m.acl.is_admin %}
	{% button class="button" text=_"editar esta página" action={redirect dispatch="admin_edit_rsc" id=id} %}
	<p class="clearfix"/>
{% endif %}
