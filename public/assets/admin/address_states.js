var update_state=function(e){var t=$("span#"+e+"country .select2").select2("val"),i=$("span#"+e+"state select.select2"),n=$("span#"+e+"state input.state_name");$.get(Spree.routes.states_search+"?country_id="+t,function(e){var t=e.states;if(t.length>0){i.html("");var s=[{name:"",id:""}].concat(t);$.each(s,function(e,t){var n=$(document.createElement("option")).attr("value",t.id).html(t.name);i.append(n)}),i.prop("disabled",!1).show(),i.select2(),n.hide().prop("disabled",!0)}else n.prop("disabled",!1).show(),i.select2("destroy").hide()})};