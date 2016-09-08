{% with m.comment.rsc[id] as comments %}
{% if comments %}

<h3>{_ Comentários _}</h3>
<div class="hr dotted clearfix">&nbsp;</div>

{% with m.rsc[id].creator_id as creator_id %}
<ol id="commentlist" class="commentlist">
{% for comment in comments %}
	{% include "_comments_comment.tpl" %}
{% endfor %}
</ol>
{% endwith %}
<div class="hr clearfix">&nbsp;</div>
{% endif %}
{% endwith %}

{% include "_comments_form.tpl" %}
