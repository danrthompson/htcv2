!function(){var e;e="undefined"!=typeof exports&&null!==exports?exports:this,e.taxon_tree_menu=function(e,t){var i,n,s;return n=Spree.url(Spree.routes.taxonomy_taxons_path),i=Spree.url(Spree.routes.admin_taxonomy_taxons_path),s=i.clone(),s.setPath(s.path()+"/"+e.attr("id")+"/edit"),{create:{label:"<i class='icon-plus'></i> "+Spree.translations.add,action:function(e){return t.create(e)}},rename:{label:"<i class='icon-pencil'></i> "+Spree.translations.rename,action:function(e){return t.rename(e)}},remove:{label:"<i class='icon-trash'></i> "+Spree.translations.remove,action:function(e){return t.remove(e)}},edit:{separator_before:!0,label:"<i class='icon-edit'></i> "+Spree.translations.edit,action:function(){return window.location=s.toString()}}}}}.call(this);