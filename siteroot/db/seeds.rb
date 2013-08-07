# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Spree::Core::Engine.load_seed if defined?(Spree::Core)
# Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

ResourceCategory.attr_accessible :resource_category_id, :id

cat_list = [{:id=>1, :title=>"Booklists, as always", :resource_category_id=>0, :rank=>1},
 {:id=>2,
  :title=>"Test Category Parent 2",
  :resource_category_id=>0,
  :rank=>2},
 {:id=>3, :title=>"Booklist Subcat 1", :resource_category_id=>1, :rank=>1},
 {:id=>4, :title=>"Booklist Subcat 2", :resource_category_id=>1, :rank=>2},
 {:id=>5, :title=>"Test Cat subcat 1", :resource_category_id=>2, :rank=>2},
 {:id=>6, :title=>"Test Cat subcat 1", :resource_category_id=>2, :rank=>1}]
cat_list.each do |params|
  ResourceCategory.create(params)
end