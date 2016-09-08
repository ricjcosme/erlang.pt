{% extends "page.tpl" %}

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


{% block below_body %}

{% wire id="contact_form" type="submit" postback={contact} delegate="resource_default_contact" %}
<form id="contact_form" method="post" action="postback">
				<div class="hr dotted clearfix">&nbsp;</div>
				<ul>						
					<li class="clearfix"> 
						<label for="name">Nome</label>
						<input type="text" name="name" id="name">
						<div class="clear"></div>
					</li> 
					<li class="clearfix"> 
						<label for="mail">Email</label>
						<input type="text" name="mail" id="mail">
					{% validate id="mail" type={email} type={presence} %}
					<div class="clear"></div>
					</li> 
					<li class="clearfix"> 
						<label for="message">Mensagem</label>
						<textarea name="message" id="message" rows="30" cols="30"></textarea>
						<div class="clear"></div>
						{% validate id="message" type={presence} %}
					</li> 
					<li class="clearfix"> 
						
					<div id="button">
					<input type="submit" id="send_message" class="button" value="Enviar">
					</div>
					</li> 
				</ul> 
			</form>
	
{% endblock %}
