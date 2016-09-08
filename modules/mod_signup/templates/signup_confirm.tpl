{% extends "base.tpl" %}

{% block title %}{_ Confirmar a minha conta _}{% endblock %}

{% block content %}

{% if user_id %}
        <h1>{_ Bem-vindo _} {{ m.rsc[user_id].title }}</h1>

        <p>{_ A sua conta foi confirmada. Você pode agora continuar no nosso site. _}</p>

        <p><a href="{{ location|default:m.rsc[user_id].page_url }}">{_ Levar-me para a minha página de perfil _}</a>.</p>

{% else %}
	<h1>{_ Confirmar a minha conta _}</h1>

        <p>{_ No e-mail que você recebeu está uma chave de confirmação. Por favor, introduza-a no campo de entrada abaixo. _}</p>

        <p id="confirm_error" class="error" {% if not error %}style="display: none"{% endif %}>
                {_ Desculpe, desconhecemos esse código de confirmação. Será que você o copiou correctamente? _}
        </p>

	<form class="setcookie" id="signup_confirm_form" method="post" action="postback">

                <p id="confirm_key">
                        <label for="key">{_ Confirmar chave _}</label>
                        <input type="text" id="key" name="key" value="{{ q.key|escape }}" />
                </p>

                <button>{_ Confirmar a minha conta _}</button>
        </form>
{% endif %}

{% endblock %}
