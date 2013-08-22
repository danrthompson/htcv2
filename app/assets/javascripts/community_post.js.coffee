# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


jQuery ->
	$(document)
		.on 'ajax:beforeSend', '.new_comment', (evt, xhr, settings) ->
			$(this).find('textarea')
				.addClass('uneditable-input')
				.attr('disabled', 'disabled');
		.on "ajax:success", '.new_comment', (evt, data, status, xhr) ->
			$(this).find('textarea')
				.removeClass('uneditable-input')
				.removeAttr('disabled', 'disabled')
				.val('');
			$(this).parent().parent().before($(xhr.responseText)).hide().fadeIn('slow')
		.on "ajax:error", '.new_comment', (e, xhr, status, error) ->
			$(this).find('textarea')
				.removeClass('uneditable-input')
				.removeAttr('disabled', 'disabled');
			$(this).parent().after($('<p>' + xhr.responseText + '</p>'))

jQuery ->
	$(document)
		.on 'click', '.show-comments-link', (e) ->
			$(this).parent().parent().siblings('.discussion-entry-mini').show()
			$(this)
				.text('Hide Comments')
				.removeClass('show-comments-link')
				.addClass('hide-comments-link');

jQuery ->
	$(document)
		.on 'click', '.hide-comments-link', (e) ->
			$(this).parent().parent().siblings('.discussion-entry-mini').hide()
			$(this)
				.text('Show Comments')
				.removeClass('hide-comments-link')
				.addClass('show-comments-link');

