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
Resource.attr_accessible :resource_category_id, :id
Service.attr_accessible :service_category_id, :id
ServiceCategory.attr_accessible :id

resource_category_list = [{:id=>1, :title=>"Resource Category Parent 1", :resource_category_id=>nil, :rank=>1},
 {:id=>2,
  :title=>"Resource Category Parent 2",
  :resource_category_id=>nil,
  :rank=>2},
 {:id=>3, :title=>"Cat 1 Subcat 1", :resource_category_id=>1, :rank=>1},
 {:id=>4, :title=>"Cat 1 Subcat 2", :resource_category_id=>1, :rank=>2},
 {:id=>5, :title=>"Cat 2 Subcat 2", :resource_category_id=>2, :rank=>2},
 {:id=>6, :title=>"Cat 2 Subcat 1", :resource_category_id=>2, :rank=>1}]

resource_list = [
	{id: 1, featured: false, rank: 1, title: 'test resource 1', description: 'test resource 1 description', out_link: 'http://test_resource_1.com', resource_category_id: 3},
	{id: 2, featured: false, rank: 2, title: 'test resource 2', description: 'test resource 2 description', out_link: 'http://test_resource_2.com', resource_category_id: 3},
	{id: 3, featured: false, rank: 1, title: 'test resource 3', description: 'test resource 3 description', out_link: 'http://test_resource_3.com', resource_category_id: 4},
	{id: 4, featured: false, rank: 1, title: 'test resource 4', description: 'test resource 4 description', out_link: 'http://test_resource_4.com', resource_category_id: 5},
	{id: 5, featured: false, rank: 1, title: 'test resource 5', description: 'test resource 5 description', out_link: 'http://test_resource_5.com', resource_category_id: 6},
	{id: 6, featured: false, rank: 2, title: 'test resource 6', description: 'test resource 6 description', out_link: 'http://test_resource_6.com', resource_category_id: 6}
]

service_category_list = [
	{id: 1, title: 'Service cat 1', rank: 1},
	{id: 2, title: 'Service cat 3', rank: 3},
	{id: 3, title: 'Service cat 2', rank: 2}
]

service_list = [
	{id: 1, featured: true, rank: 1, featured_rank: 1, title: 'test service 1', description: 'test service description 1', out_link: 'http://test_service_1.com', service_category_id: 1},
	{id: 2, featured: false, rank: 2, featured_rank: nil, title: 'test service 2', description: 'test service description 2', out_link: 'http://test_service_2.com', service_category_id: 1},
	{id: 3, featured: true, rank: 3, featured_rank: 2, title: 'test service 3', description: 'test service description 3', out_link: 'http://test_service_3.com', service_category_id: 1},
	{id: 4, featured: false, rank: 2, featured_rank: nil, title: 'test service 4', description: 'test service description 4', out_link: 'http://test_service_4.com', service_category_id: 2},
	{id: 5, featured: true, rank: 1, featured_rank: 3, title: 'test service 5', description: 'test service description 5', out_link: 'http://test_service_5.com', service_category_id: 2},
	{id: 6, featured: true, rank: 1, featured_rank: 5, title: 'test service 6', description: 'test service description 6', out_link: 'http://test_service_6.com', service_category_id: 3},
	{id: 7, featured: true, rank: 2, featured_rank: 4, title: 'test service 7', description: 'test service description 7', out_link: 'http://test_service_7.com', service_category_id: 3},
	{id: 8, featured: false, rank: 4, featured_rank: nil, title: 'test service 8', description: 'test service description 8', out_link: 'http://test_service_8.com', service_category_id: 3},
	{id: 9, featured: false, rank: 3, featured_rank: nil, title: 'test service 9', description: 'test service description 9', out_link: 'http://test_service_9.com', service_category_id: 3}
]

resource_category_list.each do |params|
  ResourceCategory.create(params)
end
resource_list.each do |params|
  Resource.create(params)
end
service_category_list.each do |params|
  ServiceCategory.create(params)
end
service_list.each do |params|
  Service.create(params)
end



