	<section class="post clearfix">

			<div class="post">
				<!-- Post Title -->
				<h3 class="title"><a href="{{m.rsc[id].page_url }}" title="{{ m.rsc[id].title }}">{{ m.rsc[id].title }}</a></h3>
				<!-- Post Data -->
				{% include "_article_meta.tpl" id=id %}
				<div class="hr dotted clearfix">&nbsp;</div>
				<!-- Post Image -->
		{% ifequal m.rsc[id].media[1].mime "text/html-video-embed" %}
			<section class="video-wrapper clearfix">
				{% media m.rsc[id].media[1] %}
			</section>
		{% else %}
				<a href="{{m.rsc[id].page_url }}" title="{{ m.rsc[id].title }}">
				{% media m.rsc[id].media[1] crop
				class="thumb" alt=m.rsc[id].title %}
				</a>
		{% endifequal %}				
				<!-- Post Content -->
				<p>{{ id|summary:3000 }}</p>
				<!-- Read More Button -->
				<p class="clearfix"><a href="{{ m.rsc[id].page_url }}" class="button right"> {_ Ler mais _}</a></p>
			</div>
			<div class="hr clearfix">&nbsp;</div>
			
	</section>
