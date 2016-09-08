<div id="logon_reminder">
        <form id="logon_reminder_form" method="post" action="postback">
                <h1 class="logon_header">{_ Esqueceu-se da sua senha? _}</h1>

                <p>{_ Digite seu endereço de e-mail ou nome de utilizador abaixo e nós enviamos-lhe um e-mail com instruções para redefinição de senha. _}</p>

                <div id="logon_reminder_email">
                        <p class="do_inputoverlay">
                                <span>{_ E-mail ou utilizador _}</span>
                                <input type="text" id="reminder_address" name="reminder_address" value="{{ q.username|default:(m.identity[m.acl.user].username)|escape }}" autocapitalize="off" autocomplete="on" />
                        </p>
                </div>

                <div class="clearfix"></div>

                <div id="logon_button">
                        <button type="submit" class="button">{_ Enviar-me instruções _}</button>
                </div>
        </form>

        <div id="logon_reminder_sent">
                <h1 class="logon_header">E-mail enviado</h1>

                <p>{_ No e-mail você vai encontrar instruções sobre como redefinir a senha da sua conta. _}</p>
                <p>{_ Se você não receber o e-mail dentro de alguns minutos, verifique as pastas de filtros de spam e spam. _}</p>
        </div>
</div>
