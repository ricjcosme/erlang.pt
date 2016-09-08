{% extends "email_base.tpl" %}

{% block title %}{_ Como reinicializar sua senha _} [{{ m.config.site.title.value }}]{% endblock %}

{% block body %}
<p>{_ Olá _} {{ m.rsc[id].name_first|default:m.rsc[id].title }},</p>

<p>{_ Você solicitou uma nova senha para _} <a href="http://{{ m.site.hostname }}">{{ m.site.hostname }}</a>. {_ Abaixo estão os detalhes da sua conta e um link para definir uma nova senha. _}</p>

<p>{_ O nome da sua conta é _} “<strong>{{ m.identity[id].username|escape }}</strong>”.  {_ O endereço de e-mail associado à sua conta é _} “<strong>{{ email|default:(m.rsc[id].email)|escape }}</strong>”.</p>

<p>{_ Clique no link abaixo para inserir uma nova senha; se o clicar não funcionar, então você pode copiar e colar o endereço completo no seu browser. _}</p>

<p><a href="http://{{ m.site.hostname }}{% url password_reset secret=secret %}">http://{{ m.site.hostname }}{% url password_reset secret=secret %}</a></p>

<p>{_ Se você não solicitou uma reinicialização da sua senha então você pode ignorar este e-mail. Talvez alguém tenha cometido um erro digitando o seu endereço de e-mail. _}</p>

<p>{_ Obrigado, _}</p>
<p>{_ A equipa do _} {{ m.config.site.title.value }}.</p>

<p style="color: #666; font-size: 80%;">--<br/>
{_ Você recebe este e-mail porque você ou alguém solicitou uma nova senha para a sua conta. Você (ou outra pessoa) introduziu seu nome de utilizador ou e-mail. Você não vai receber quaisquer e-mails adicionais por causa deste pedido. _}</p>

{% endblock %}
