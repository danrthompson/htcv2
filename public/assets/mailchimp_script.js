function mce_preload_check(){if(!(mce_preload_checks>40)){mce_preload_checks++;try{}catch(e){return setTimeout("mce_preload_check();",250),void 0}var t=document.createElement("script");t.type="text/javascript",t.src="http://downloads.mailchimp.com/js/jquery.form-n-validate.js",head.appendChild(t);try{jQuery("#fake-form").validate({})}catch(e){return setTimeout("mce_preload_check();",250),void 0}mce_init_form()}}function mce_init_form(){jQuery(document).ready(function(e){var t={errorClass:"mce_inline_error",errorElement:"div",onkeyup:function(){},onfocusout:function(){},onblur:function(){}},i=e("#mc-embedded-subscribe-form").validate(t);e("#mc-embedded-subscribe-form").unbind("submit"),t={url:"http://harnessthecrowd.us7.list-manage1.com/subscribe/post-json?u=2a019debb3c7760c3ab83a635&id=d1cde921c0&c=?",type:"GET",dataType:"json",contentType:"application/json; charset=utf-8",beforeSubmit:function(){return e("#mce_tmp_error_msg").remove(),e(".datefield","#mc_embed_signup").each(function(){var t=new Array,i=0;e(":text",this).each(function(){t[i]=this,i++}),e(":hidden",this).each(function(){var e=!1;2==t.length&&(e=!0,t[2]={value:1970}),this.value="MM"==t[0].value&&"DD"==t[1].value&&("YYYY"==t[2].value||e&&1970==t[2].value)?"":""==t[0].value&&""==t[1].value&&(""==t[2].value||e&&1970==t[2].value)?"":/\[day\]/.test(t[0].name)?t[1].value+"/"+t[0].value+"/"+t[2].value:t[0].value+"/"+t[1].value+"/"+t[2].value})}),e(".phonefield-us","#mc_embed_signup").each(function(){var t=new Array,i=0;e(":text",this).each(function(){t[i]=this,i++}),e(":hidden",this).each(function(){this.value=3!=t[0].value.length||3!=t[1].value.length||4!=t[2].value.length?"":"filled"})}),i.form()},success:mce_success_cb},e("#mc-embedded-subscribe-form").ajaxForm(t)})}function mce_success_cb(e){if($("#mce-success-response").hide(),$("#mce-error-response").hide(),"success"==e.result)$("#mce-"+e.result+"-response").show(),$("#mce-"+e.result+"-response").html(e.msg),$("#mc-embedded-subscribe-form").each(function(){this.reset()});else{var t,n=-1;try{var s=e.msg.split(" - ",2);void 0==s[1]?t=e.msg:(i=parseInt(s[0]),i.toString()==s[0]?(n=s[0],t=s[1]):(n=-1,t=e.msg))}catch(r){n=-1,t=e.msg}try{if(-1==n)$("#mce-"+e.result+"-response").show(),$("#mce-"+e.result+"-response").html(t);else{err_id="mce_tmp_error_msg",html='<div id="'+err_id+'" style="'+err_style+'"> '+t+"</div>";var o="#mc_embed_signup",a=$(o);"address"==ftypes[n]?(o="#mce-"+fnames[n]+"-addr1",a=$(o).parent().parent().get(0)):"date"==ftypes[n]?(o="#mce-"+fnames[n]+"-month",a=$(o).parent().parent().get(0)):(o="#mce-"+fnames[n],a=$().parent(o).get(0)),a?($(a).append(html),$(o).focus()):($("#mce-"+e.result+"-response").show(),$("#mce-"+e.result+"-response").html(t))}}catch(r){$("#mce-"+e.result+"-response").show(),$("#mce-"+e.result+"-response").html(t)}}}var fnames=new Array,ftypes=new Array;fnames[0]="EMAIL",ftypes[0]="email",fnames[1]="FNAME",ftypes[1]="text",fnames[2]="LNAME",ftypes[2]="text";try{var jqueryLoaded=jQuery;jqueryLoaded=!0}catch(err){var jqueryLoaded=!1}var head=document.getElementsByTagName("head")[0];if(!jqueryLoaded){var script=document.createElement("script");script.type="text/javascript",script.src="//ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js",head.appendChild(script),script.readyState&&null!==script.onload&&(script.onreadystatechange=function(){"complete"==this.readyState&&mce_preload_check()})}var err_style="";try{err_style=mc_custom_error_style}catch(e){err_style="#mc_embed_signup input.mce_inline_error{border-color:#6B0505;} #mc_embed_signup div.mce_inline_error{margin: 0 0 1em 0; padding: 5px 10px; background-color:#6B0505; font-weight: bold; z-index: 1; color:#fff;}"}var head=document.getElementsByTagName("head")[0],style=document.createElement("style");style.type="text/css",style.styleSheet?style.styleSheet.cssText=err_style:style.appendChild(document.createTextNode(err_style)),head.appendChild(style),setTimeout("mce_preload_check();",250);var mce_preload_checks=0;