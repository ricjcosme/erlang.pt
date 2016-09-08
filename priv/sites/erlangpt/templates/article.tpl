{% extends "page.tpl" %}

{% block title %}{{ m.rsc[id].title }}{% endblock %}

{% block html_head_extra %}
	{% inherit %}
	<style type="text/css">
		div#signup_verify {
			display: none;
		}

		ul#signup_services li {
			list-style-type: none;
		}

		input#surprefix {
			width: 50px;
		}

		div#signup_tos label {
			float: none;
			display: inline;
		}

		#signup_error_tos_agree,
		#signup_error_duplicate_username,
		#signup_error_duplicate_identity {
			display: none;
		}

		.error_tos_agree #signup_error_tos_agree,
		.error_duplicate_username #signup_error_duplicate_username,
		.error_duplicate_identity #signup_error_duplicate_identity,
		.error_custom_1 #signup_error_custom_1,
		.error_custom_2 #signup_error_custom_2 {
			display: block;
		}

		.z_validation_message {        
			color: red;
		    padding: 0 0 0 9px;
		}
	</style>
{% endblock %}


{% block chapeau %}

	{% include "_article_chapeau.tpl" %}

{% endblock %}

{% block content %}

<div class="post">

    <h3 class="title"><a href="{{ m.rsc[id].page_url }}">{{ m.rsc[id].title }}</a></h3>

{% include "_article_meta.tpl" id=id %}

<div class="hr dotted clearfix">&nbsp;</div>

		{% ifequal m.rsc[id].media[1].mime "text/html-video-embed" %}
			<section class="video-wrapper clearfix">
				{% media m.rsc[id].media[1] %}
			</section>
		{% else %}
				<a href="{{m.rsc[id].page_url }}" title="{{ m.rsc[id].title }}">
				{% media m.rsc[id].media[1] crop
				class="thumb" alt=m.rsc[id].title %}
				</a>
		{% endifequal %}				

    {% if m.rsc[id].summary %}
    <p class="summary">
        {{ m.rsc[id].summary }}
    </p>
    {% endif %}

    {{ m.rsc[id].body|show_media }}

{% include "_article_prevnext.tpl" id=id %}

</div>

<div class="hr clearfix">&nbsp;</div>

	<section id="comments">{% include "_comments.tpl" id=id %}</section>



{% endblock %}

{% block sidebar %}
	{% include "_sidebar.tpl" %}
{% endblock %}
