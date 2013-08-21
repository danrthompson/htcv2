# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->
	$(document)
		.on 'ajax:beforeSend', '.conversation-post-comment-form', (evt, xhr, settings) ->
			$(this).find('textarea')
				.addClass('uneditable-input')
				.attr('disabled', 'disabled');
		.on "ajax:success", '.conversation-post-comment-form', (evt, data, status, xhr) ->
			$(this).find('textarea')
				.removeClass('uneditable-input')
				.removeAttr('disabled', 'disabled')
				.val('');
			$(this).siblings(".conversation-comments:first").prepend($(xhr.responseText)).hide().fadeIn('slow')

jQuery ->
	$(document)
		.on 'ajax:beforeSend', '.conversation-post-comment-on-comment-form', (evt, xhr, settings) ->
			$(this).find('textarea')
				.addClass('uneditable-input')
				.attr('disabled', 'disabled');
		.on "ajax:success", '.conversation-post-comment-on-comment-form', (evt, data, status, xhr) ->
			$(this).find('textarea')
				.removeClass('uneditable-input')
				.removeAttr('disabled', 'disabled')
				.val('');
			$(xhr.responseText).insertBefore($(this))


jQuery ->
	$(document)
		.on "ajax:success", '.vote_link', (evt, data, status, xhr) ->
			$(this).siblings().removeClass('voted-arrow')
			$(this).addClass('voted-arrow')

jQuery ->
	$("#create_conv_post_form_button")
		.on 'click', (e) ->
			e.preventDefault()
			$("#hidden-link-open-user-sign-up-box").click()

jQuery ->
	$("#post-conversation-anonymously")
		.on 'click', (e) ->
			$("#new_advice_post").submit()


