{% extends "email_base.tpl" %}

{% block title %}{_ Por favor confirme a sua conta. _}{% endblock %}

{% block body %}
<p>{_ Olá _} {{ m.rsc[user_id].title|default:m.rsc[user_id].name_first }},</p>

<p>{_ Obrigado por se registar. Por favor confirme a sua conta por forma a poder usá-la. _}</p>

<p>{_ Clique no endereço de seguida. _}</p>

<p><a href="{% url signup_confirm key=verify_key %}">{_ Confirmar a minha conta. _}</a></p>

<p>{_ Se o endereço não funcionar por qualquer motivo, poderá ir a _} <a href="http://{{ m.site.hostname }}{% url signup_confirm %}">http://{{ m.site.hostname }}{% url signup_confirm %}</a> {_ e introduzir a chave _} <strong>{{ verify_key }}</strong> {_ no campo correspondente. _}</p>

<p>{_ Esperamos vê-lo em breve. _}</p>

{% endblock %}
