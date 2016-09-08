{% extends "page.tpl" %}

{% block title %}{_ Registar _}{% endblock %}

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

{% block content %}
<section class="article-wrapper">

{% if m.acl.user %}
	{% wire action={redirect location=m.rsc[m.acl.user].page_url} %}
{% else %}

<div id="signup_area">

	<h3>{_ Registar-se e tornar-se membro _}</h3>

	<p>{_ Se já tiver uma conta, _} <a href="{% url logon p=q.p %}">{_ autentique-se agora _}</a>.</p>

	{% if xs_props %}
	<p>{_ Também pode _} <a href="{% url signup %}">{_ registar-se _}</a>.</p>
	{% else %}
	<ul id="signup_services" class="clearfix">
		{% all include "_signup_services.tpl" mask_target="signup_form" %}
	</ul>
	{% endif %}

	{% wire id="signup_form" type="submit" postback={signup xs_props=xs_props} %}
	<form id="signup_form" class="setcookie" method="post" action="postback">

		<h4>{_ Criar a sua conta _}</h4>

		<p id="signup_error_duplicate_identity" class="error">{_ Desculpe, mas já existe uma conta associada à sua conta. Talvez a sua conta esteja suspensa. _}</p>

		<div id="signup_name_first">
			<label for="name_first">{_ Primeiro nome _}</label>
			{% if name_first %}
				<span>{{ name_first|escape }}</span>
			{% else %}
				<input id="name_first" name="name_first" type="text" value="{{ name_first|escape }}" />
				{% validate id="name_first" type={presence} %}
			{% endif %}
		</div>

		{# Enable this for nl, de and be sites #}
		{% if z_language == 'nl' or z_language == 'de' %}
		<div id="signup_surname_prefix">
			<label for="surprefix">{_ Prefixo _}</label>
			<input id="surprefix" name="surprefix" type="text" value="" />
		</div>
		{% endif %}

		<div id="signup_name_surname">
			<label for="name_surname">{_ Último nome _}</label>
			{% if name_surname %}
				<span>{{ name_surname|escape }}</span>
			{% else %}
				<input id="name_surname" name="name_surname" type="text" value="{{ name_surname|escape }}" />
				{% validate id="name_surname" type={presence} %}
			{% endif %}
		</div>

		<div id="signup_email">
			<label for="email">{_ E-mail _}</label>
			{% if email %}
				<span>{{ email|escape }}</span>
			{% else %}
				<input id="email" name="email" type="text" value="{{ email|escape }}" />
				{% validate id="email" type={email} type={presence} %}
			{% endif %}
		</div>

		<p class="clear"></p>

		{% if not xs_props %}
			<h4>{_ Escolha um utilizador e uma senha _}</h4>

			<p id="signup_error_duplicate_username" class="error">{_ Desculpe, este utilizador já existe. Por favor escolha outro. _}</p>

			<div id="signup_username">
				<label for="username">{_ Utilizador _}</label>
				<input id="username" name="username" type="text" value="" />
				{% validate id="username" wait=400 type={presence} type={username_unique} %}
			</div>

			<div id="signup_password1">
				<label for="password1">{_ Senha _}</label>
				<input id="password1" name="password1" type="password" value="" autocomplete="off" />
				{% validate id="password1" type={presence} type={length minimum=6 too_short_message="> 6 caractéres."} %}
			</div>

			<div id="signup_password2">
				<label for="password2">{_ Verifique senha _}</label>
				<input id="password2" name="password2" type="password" value="" autocomplete="off" />
				{% validate id="password2" 
				    type={presence} 
				    type={confirmation match="password1"} %}
			</div>

			<p class="clear"></p>
		{% endif %}
			<input type="checkbox" style="display:none;" name="signup_tos_agree" id="signup_tos_agree" value="1"  checked="checked" />

			<!--
		{% all include "_signup_extra.tpl" %}
	
		<h3>{_ Check our Terms of Service and Privacy policies _}</h3>

		<div id="signup_tos">
			<p>{_ We will be very careful with all the information given to us and will never give your name or address away without your permission.
			We do have some rules that we need you to agree with. _}</p>
	
			<p id="signup_error_tos_agree" class="error">{_ To sign up you must agree with the Terms of Service and Privacy policies. _}</p>
	
			<input type="checkbox" name="signup_tos_agree" id="signup_tos_agree" value="1" />
			<label for="signup_tos_agree">{_ I agree to the _} <a target="_blank" href="{{ m.rsc.signup_tos.page_url }}">{{ m.rsc.signup_tos.title }}</a>
				{_ and the _} <a target="_blank" href="{{ m.rsc.signup_privacy.page_url }}">{_ Privacy policies _}</a>.</label>
			{% validate id="signup_tos_agree" type={acceptance} %}
		</div>
		-->
		<p class="clear"></p>
		<br/>

		<h4>{_ E registe-se _}</h4>

		<div id="signup_button">
			<button class="button">{_ Registar _}</button>
		</div>
		<p>&nbsp;</p>
	</form>

</div>

<div id="signup_verify">
	<h1><a name="signup_verify"></a>{_ Está quase! _}</h1>
	
	<p>{_ Enviamos-lhe um e-mail. Nesse e-mail você vai encontrar instruções sobre como confirmar a sua conta. _}</p>
	
	<p>{_ Se você não receber o e-mail dentro de alguns minutos, verifique as pastas de filtros de spam e spam. _}</p>
</div>

{% endif %}

</section>

{% endblock %}
