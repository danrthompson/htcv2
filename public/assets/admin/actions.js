$(document).ready(function(){$("form.undo-item").submit(function(){return asyncDeleteForm($(this),{type:"POST",success:function(t){humanMsg.displayMsg(t.message)},error:function(){humanMsg.displayMsg("Could not undo action")}}),$(this).parent("td").parent("tr").remove(),restripe(),!1})});