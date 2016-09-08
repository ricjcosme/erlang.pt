<div class="gravatar">
<image src="http://www.gravatar.com/avatar/{% if comment.user_id %}{{ m.rsc[comment.user_id].email|gravatar_code }}{% else %}{{ comment.gravatar_code }}{% endif %}?s=48&amp;d=mm" 
	class="avatar" alt="avatar" width="48" height="48" />
</div>  