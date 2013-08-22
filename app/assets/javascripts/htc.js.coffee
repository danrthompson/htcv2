jQuery ->
	$("#newsletter-fancybox-link").fancybox
		maxWidth: 800
		maxHeight: 600
		fitToView: false
		width: "70%"
		height: "70%"
		autoSize: false
		closeClick: false
		openEffect: "none"
		closeEffect: "none"

jQuery ->
	$("#newsletter-fancybox-link").fancybox
		maxWidth: 800
		maxHeight: 600
		fitToView: false
		width: "70%"
		height: "70%"
		autoSize: false
		closeClick: false
		openEffect: "none"
		closeEffect: "none"

jQuery ->
	$(document)
		.on 'ajax:beforeSend', '#new_feedback', (evt, xhr, settings) ->
			$(this).find('textarea')
				.addClass('uneditable-input')
				.attr('disabled', 'disabled');
			$(this).find('input[type="submit"]')
				.attr('disabled', 'disabled')
				.val('Submitting...');
		.on "ajax:success", '#new_feedback', (evt, data, status, xhr) ->
			$(this).append($('<p>Thanks for your feedback!</p>'))
		.on "ajax:error", '#new_feedback', (e, xhr, status, error) ->
			$(this).find('textarea')
				.removeClass('uneditable-input')
				.removeAttr('disabled', 'disabled');
			$(this).find('input[type="submit"]')
				.removeAttr('disabled', 'disabled')
				.val('Send feedback');
			$(this).append($('<p>Please fill out all required fields.</p>'))