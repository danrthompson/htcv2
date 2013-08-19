# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->
	$('.conversation-post-comment-form')
		.on 'ajax:beforeSend', (evt, xhr, settings) ->
			$(this).find('textarea')
				.addClass('uneditable-input')
				.attr('disabled', 'disabled');
		.on "ajax:success", (evt, data, status, xhr) ->
			$(this).find('textarea')
				.removeClass('uneditable-input')
				.removeAttr('disabled', 'disabled')
				.val('');
			$(this).siblings(".conversation-comments:first").prepend($(xhr.responseText)).hide().fadeIn('slow')

jQuery ->
	$('.conversation-post-comment-on-comment-form')
		.on 'ajax:beforeSend', (evt, xhr, settings) ->
			$(this).find('textarea')
				.addClass('uneditable-input')
				.attr('disabled', 'disabled');
		.on "ajax:success", (evt, data, status, xhr) ->
			$(this).find('textarea')
				.removeClass('uneditable-input')
				.removeAttr('disabled', 'disabled')
				.val('');
			$(xhr.responseText).insertBefore($(this))