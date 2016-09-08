{% with m.acl.user as user_id %}
{% if user_id or m.config.mod_comment.anonymous.value|default_if_undefined:1 %}
	{% wire id="comment_form" type="submit" postback={newcomment id=id} delegate="mod_comment" %}
	<form id="comment_form" method="post" action="postback">
<h3>Adicionar comentário</h3>
<div class="hr dotted clearfix">&nbsp;</div>

<ul>
  {% if not user_id %}
					<li class="clearfix"> 
						<label for="name">{_ Nome _}</label> 
						<input id="name" name="name" type="text"> 
  {% validate id="name" type={presence} %}
  </li> 
					<li class="clearfix"> 
						<label for="mail">{_ E-mail _}</label> 
						<input id="mail" name="mail" type="text"> 
  {% validate id="mail" type={presence} type={email} %}
  </li>
  {% endif %}					
					<li class="clearfix"> 
						<label for="message">{_ Mensagem _}</label> 
						<textarea id="message" name="message" rows="3" cols="40"></textarea> 
  {% validate id="message" type={presence failure_message="Mensagem sem conteúdo."} %}
  </li> 
					<li class="clearfix">
						<!-- Add Comment Button -->
						<button type="submit" class="button medium black right">{_ Enviar _}</button>
					</li> 
				</ul>

	</form>
{% else %}
	<p id="comments-logon"><a href="{% url logon back %}">{_ Autentique-se ou registe-se para comentar _}</a>.</p>
{% endif %}
{% endwith %}
