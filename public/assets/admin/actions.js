<<<<<<< HEAD
$(document).ready(function(){$("form.undo-item").submit(function(){return asyncDeleteForm($(this),{type:"POST",success:function(e){humanMsg.displayMsg(e.message)},error:function(){humanMsg.displayMsg("Could not undo action")}}),$(this).parent("td").parent("tr").remove(),restripe(),!1})});
=======
$(document).ready(function(){$("form.undo-item").submit(function(){return asyncDeleteForm($(this),{type:"POST",success:function(t){humanMsg.displayMsg(t.message)},error:function(){humanMsg.displayMsg("Could not undo action")}}),$(this).parent("td").parent("tr").remove(),restripe(),!1})});
>>>>>>> 47a3e63549686c041521d749b14dfda58754b463
