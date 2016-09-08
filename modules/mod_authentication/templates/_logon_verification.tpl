<div id="logon_verification_pending">
	<h1 class="logon_header">{_ A sua conta necessita de ser verificada _}</h1>

	<p>{_ Clique no botão abaixo para lhe ser enviado um e-mail com uma mensagem de verificação. _}</p>

	<form id="logon_verification_form" method="POST" action="postback">
		<input id="logon_verification_user_id" type="hidden" name="user_id" value="" />
		<button type="submit">{_ Enviar Mensagem de Verificação _}</button>
	</form>
</div>

<div id="logon_verification_sent">
	<h1 class="logon_header">{_ Verifique o seu e-mail! _}</h1>

	<p>{_ Enviamos-lhe um e-mail. Nesse e-mail você vai encontrar instruções sobre como confirmar a sua conta. _}</p>

	<p>{_ Se você não receber o e-mail dentro de alguns minutos, verificar as pastas de filtros de spam e spam. _}</p>
</div>
