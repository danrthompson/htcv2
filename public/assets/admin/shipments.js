$(document).ready(function(){$("[data-hook=admin_order_edit_form] a.ship").click(function(){var e=$(this),t=e.data("shipment-number"),i=Spree.url("/api/orders/"+order_number+"/shipments/"+t+"/ship.json");$.ajax({type:"PUT",url:i}).done(function(){window.location.reload()}).error(function(e){console.log(e)})}),$("a.edit-method").click(toggleMethodEdit),$("a.cancel-method").click(toggleMethodEdit),$("[data-hook=admin_order_edit_form] a.save-method").click(function(){var e=$(this),t=e.data("shipment-number"),i=e.parents("tbody").find("select#selected_shipping_rate_id[data-shipment-number='"+t+"']").val(),n=e.parents("tbody").find("input[name='open_adjustment'][data-shipment-number='"+t+"']:checked").val(),s=Spree.url("/api/orders/"+order_number+"/shipments/"+t+".json");$.ajax({type:"PUT",url:s,data:{shipment:{selected_shipping_rate_id:i,unlock:n}}}).done(function(){window.location.reload()}).error(function(e){console.log(e)})}),$("a.edit-tracking").click(toggleTrackingEdit),$("a.cancel-tracking").click(toggleTrackingEdit),$("[data-hook=admin_order_edit_form] a.save-tracking").click(function(){var e=$(this),t=e.data("shipment-number"),i=e.parents("tbody").find("input#tracking").val(),n=Spree.url("/api/orders/"+order_number+"/shipments/"+t+".json");$.ajax({type:"PUT",url:n,data:{shipment:{tracking:i}}}).done(function(){window.location.reload()}).error(function(e){console.log(e)})})});