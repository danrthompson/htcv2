function extractId(e){return tokens=e.attr("id").split("-"),tokens[tokens.length-1]}$(document).ready(function(){$("#recent-comments").length&&($(".comment-body").hide(),$(".comment-link").click(function(){return comment_body_id="#comment-body-"+extractId($(this)),$(".comment-body").not(comment_body_id).hide(),$(comment_body_id).toggle(),!1}),$(document).click(function(){$(".comment-body").hide()}),asyncUndoBehaviour(),$("form.delete-item").submit(function(){return asyncDeleteForm($(this)),comment_link_id="#comment-link-"+extractId($(this)),$(comment_link_id).remove(),$(this).parent("div").parent("div").remove(),!1}))});