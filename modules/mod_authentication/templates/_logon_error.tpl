<div id="logon_error_pw">
	<h2>{_ Utilizador ou senha desconhecidos.  Tente outra vez. _}</h2>

	<p>
		{_ O seu utilizador ou senha podem conter um erro. Caps-lock ligado?. _}
	</p>

	<h3>{_ Esqueci-me do meu utilizador ou senha _}</h3>

	<p>{_ Neste caso pode pedir-nos _} <a id="{{ #logon_reminder }}" href="{% url logon_reminder %}">{_ o envio para o seu e-mail de uma senha temporária _}</a>.  {_ O e-mail terá instruções para renovar a sua senha. _}</p>

	{% wire id=#logon_reminder action={set_class target="logon_outer" class="logon_reminder"} %}
</div>

<div id="logon_error_reminder">
	<h2>{_ Utilizador ou senha desconhecidos.  Tente outra vez. _}</h2>
	
	<p>{_ Nós só podemos enviar-lhe um e-mail quando tivermos o endereço de e-mail da sua conta. _}</p>
	<p>{_ Para descobrir a sua conta	você precisa digitar o nome de utilizador ou o endereço de e-mail que você nos deu. _}</p>
</div>

<div id="logon_error_password_tooshort">
	<h2>{_ A sua nova senha é demasiado pequena. _}</h2>

	<p>{_ As senhas têm de ter pelo menos 6 caracteres. _}<p>
	<p>{_ Use alguns caracteres não alfabéticos ou dígitos para a tornar mais difícil de adivinhar. _}</p>
</div>

<div id="logon_error_password_unequal">
	<h2>{_ As senhas têm de ser iguais. Por favor escreva-as outra vez. _}</h2>

	<p>{_ As senhas têm de ter pelo menos 6 caracteres. _}<p>
	<p>{_ Use alguns caracteres não alfabéticos ou dígitos para a tornar mais difícil de adivinhar. _}</p>
</div>

<div id="logon_error_verification">
	<h2>{_ Desculpe, não foi possível enviar a mensagem de verificação. _}</h2>
	
	<p>{_ Não nos parece termos qualquer endereço de e-mail válido ou endereço de qualquer outra comunicação eletrónica sua. _}</p>
</div>
