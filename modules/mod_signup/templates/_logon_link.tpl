{% if not m.acl.user %}
	<p id="logon_link_signup" class="logon_link"><a href="{% url signup p=page %}">{_ Eu não tenho uma conta, quero registar-me. _}</a></p>
{% endif %}
