				<li {% ifequal comment.user_id creator_id %}class="comment"{% endifequal %} {% if hidden %}style="display: none"{% endif %} id="comment-{{ comment.id }}">
{% include "_comment_avatar.tpl" size=28 %}
				<div class="comment_content"> 
					<div class="clearfix">
						<cite class="author_name"><a name="#comment-{{ comment.id }}">{{ comment.name|default:m.rsc[comment.user_id].title }}</a></cite>       
						<div class="comment-meta commentmetadata">{{ comment.created|timesince }}</div> 
					</div>
					<div class="comment_text"> 
						<p>{{ comment.message }}</p> 
					</div> 
				</div> 
				</li> 

