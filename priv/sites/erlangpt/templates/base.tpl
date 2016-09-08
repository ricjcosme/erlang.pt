<!DOCTYPE html>
<html lang="en">
<head>
	<title>{% block title %}{% endblock %} &mdash; {{ m.config.site.title.value }}</title>

	<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
	<meta name="author" content="Ricardo Cosme &copy; 2012" />
<meta name="google-site-verification" content="UZSulGouL2mwFHIXHWVS33I26ey0atTC0dRPSJx-yX0" />
	{% all include "_html_head.tpl" %}

	<link rel="icon" href="/lib/images/favicon.ico" type="image/x-icon" />

	<!-- Stylesheets -->
	
	{% lib "css/reset.css" "css/styles.css" %}
        	
	<!-- Scripts -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js"></script>
	<!--[if IE 6]>
	<script src="js/DD_belatedPNG_0.0.8a-min.js"></script>
	<script>
	  /* EXAMPLE */
	  DD_belatedPNG.fix('.button');
	</script>
	<![endif]-->


	{% lib "js/apps/modernizr.js" %}
	{% block html_head_extra %}{% endblock %}

</head>

<body>

	<div id="wrapper" class="container_12 clearfix">		
		
		<!-- Text Logo -->
		<h1 id="logo" class="grid_4">
			<a href="/" style="color:rgb(0,0,0)"><img style="margin-bottom:0px;" src="/lib/images/logo.png" title="{{ m.config.site.title.value }}" alt="{{ m.config.site.title.value }}" />rlang.pt</a>
		</h1>
		
		<!-- {% menu id=id %} -->
		
		<!-- Navigation Menu -->
		<ul id="navigation" class="grid_8">
		  <li><a href="/contact"><span class="meta">Dizer coisas</span><br />Contacto</a></li>
		  <li><a href="/logon"><span class="meta">A minha conta</span><br />Entrar</a></li>
		  <li><a href="/books"><span class="meta">Aprender</span><br />Livros</a></li>
		  <li><a href="/events"><span class="meta">Acontece</span><br />Eventos</a></li>
		</ul>
		
		<div class="hr grid_12 clearfix">&nbsp;</div>
			
		<!-- Caption Line -->
		<h2 class="grid_12 caption clearfix">{% if
		m.config.site.subtitle.value %}{{
		m.config.site.subtitle.value }}{% endif %}</h2>
		
		<div class="hr grid_12 clearfix">&nbsp;</div>
		
		<!-- Column 1 /Content -->
		<div class="grid_8">

        <!--div id="content"-->
           {% block content_area %}
               {% block content %}
                   <h1>Default Content</h1>
               {% endblock %}
           {% endblock %}
       	<!--/div-->    		
						
			<!-- Blog Navigation -->
			<!--p class="clearfix">
				<a href="#" class="button float">&lt;&lt; Previous Posts</a>
				<a href="#" class="button float right">Newer Posts >></a>
			</p-->
		</div>

		
       	<div class="grid_4">
           {% block sidebar %}
               {% include "_sidebar.tpl" %}
           {% endblock %}
		</div>		
				
		<div class="hr grid_12 clearfix">&nbsp;</div>
		
		<!-- Footer -->
		<p class="grid_12 footer clearfix">
			<span class="float">{% menu id=id menu_id='footer_menu' %}</span>
		<span class="float left">© 2012&nbsp;</span><strong><a
		class="float left" href="/"> Erlang Portugal</a></strong>&nbsp;-
		Powered by <strong><a href="http://zotonic.com">Zotonic</a></strong>
		<a class="float right" href="#">topo</a>
		</p>
		
	</div><!--end wrapper-->

	{% include "_js_include_jquery.tpl" %}
    {% lib 
			"js/apps/zotonic-1.0.js" 
			"js/apps/z.widgetmanager.js" 
			"js/modules/livevalidation-1.3.js" 
			"js/modules/z.inputoverlay.js"
			"js/modules/jquery.loadmask.js"
            "js/z.superfish.js" 
	%}
	
	{% block _js_include_extra %}{% endblock %}

    <script type="text/javascript">
        $(function() { $.widgetManager(); });
    </script>

	{% stream %}
    {% script %}

    {% all include "_html_body.tpl" %}

</body>
</html>
