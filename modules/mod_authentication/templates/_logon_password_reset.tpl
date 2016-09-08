<div id="logon_password_reset">
	{% if username %}
	<form id="logon_password_reset_form" method="post" action="postback">
		<h1 class="logon_header">{_ Reinicializar a sua senha _}</h1>

		<p>{_ Abaixo, você pode inserir uma nova senha para a sua conta _} <strong>{{ username|escape }}</strong>.</p>

		<input type="hidden" name="secret" value="{{ secret|escape }}" />

		<div id="logon_password_reset1">
			<p class="do_inputoverlay">
				<span>{_ Nova senha _}</span>
				<input type="password" id="password_reset1" name="password_reset1" value="" autocomplete="off" />
				{% validate id="password_reset1" type={presence} %}
			</p>
		</div>

		<div id="logon_password_reset2">
			<p class="do_inputoverlay">
				<span>{_ Repetir a senha _}</span>
				<input type="password" id="password_reset2" name="password_reset2" value="" autocomplete="off" />
				{% validate id="password_reset2" type={presence} type={confirmation match="password_reset1"} %}
			</p>
		</div>

		<div id="logon_password_reset_rememberme" class="rememberme">
			<input type="checkbox" id="rememberme" name="rememberme" value="1" />
			<label for="rememberme">{_ Manter-me autenticado até eu fazer log off. _}</label>
		</div>

		<div class="clearfix"></div>

		<div id="logon_reset_button">
			<button type="submit">{_ Reinicializar Senha e Autenticar-se _}</button>
		</div>

		<p class="clear">
			{_ A seua senha será renovado e você será autenticado como _} <strong>{{ username|escape }}</strong>.
		</p>

	</form>
	{% else %}
	<h1 class="logon_header">{_ Desculpe, o código para reinicializar a sua senha é desconhecido ou expirou _}</h1>
	
	<p>{_ Por razões de segurança, os códigos de reinicialização de senha só são mantidos por um período de tempo limitado e podem ser usados apenas uma vez. _}</p>
	<p>{_ Pode _}<a id="{{ #new_pw }}" href="">{_ pedir um novo código de reinicialização _}</a>.</p>
	
	{% wire id=#new_pw action={set_class target="logon_outer" class="logon_reminder"} %}
	
	{% endif %}
</div>

