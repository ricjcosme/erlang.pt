<div id="mailinglist_subscribe">
	<p>
		{_ Introduza o seu e-mail para subscrever _} {{ m.rsc[id].title }}.  
		{_ Vai receber uma confirmação no seu e-mail._}
	</p>

	<div id="mailinglist_subscribe_form" class="clearfix">
        {% if in_admin %}
		{% include "_mailinglist_subscribe_form.tpl" id=id recipient_id=recipient_id make_person=make_person %}
        {% else %}
        {% with m.rsc[user_id] as r %}
		{% include "_mailinglist_subscribe_form.tpl" id=id recipient_id=recipient_id make_person=make_person r=r %}
        {% endwith %}
        {% endif %}
	</div>

	<div id="mailinglist_subscribe_done" style="display:none">
		<h2>{_ Obrigado _}</h2>
	 	<p>
		{_ O seu email foi adicionado à lista de mailing. Foi enviado para o seu endereço de e-mail um email de confirmação. Se não o receber, verifique por favor a sua pasta de spam. _}
		</p>
	</div>
	
	<p id="mailinglist_subscribe_error" style="display:none" class="error">
		{_ Desculpe, não foi possível subscrever a lista de mailing. Tente outra vez ou com outro e-mail. _}
	</p>
</div>
