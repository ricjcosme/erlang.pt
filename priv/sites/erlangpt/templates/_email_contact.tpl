<html>
	<head>
		<title>{{ name|escape }} - Contacto</title>
	</head>
	<body>
		<p>Nome: {{ name|escape }}</p>
		<p>E-mail: {{ mail|escape }}</p>

		<p>Conteúdo da mensagem:</p>
		<pre>{{ message|force_escape|linebreaksbr }}</pre>

		<p>Cumprimentos, <br/>A equipa Erlang Portugal.</p>
	</body>
</html>
