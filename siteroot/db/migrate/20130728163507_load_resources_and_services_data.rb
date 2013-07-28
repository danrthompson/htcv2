class LoadResourcesAndServicesData < ActiveRecord::Migration
  def up
  	# resource categories include: 'booklist', 'about_crowdfunding', 'idea_development', 'campaign_prep', 'making_the_video', etc
  	# resource subcategories include: 'what_is_crowdfunding', 'crowdfunding_as_an_industry', 'kickstarter_vs_indiegogo', 'represent_something_bigger', 'stand_out'
  	# service categories include: 

  	resource_data = [
  		# for each resource:
  		# ['title', 'description', 'category', 'subcategory', featured (true or false), 
  		# rank (integer), featured_rank (integer or nil if not featured), 'out_link']
  		['The Crowdfunding Bible: How To Raise Money For Any Startup, Video Game Or Project', '', 'booklist', '', false, 1, nil, 'http://www.amazon.com/gp/product/1105726282/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1105726282&linkCode=as2&tag=harthecro-20'],
  		['CrowdFund Your StartUp!: Raising Venture Capital using New CrowdFunding Techniques', '', 'booklist', '', false, 2, nil, 'http://www.amazon.com/gp/product/0615632645/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0615632645&linkCode=as2&tag=harthecro-20'], 
  		['Crowdfund Investing For Dummies', '', 'booklist', '', false, 3, nil, 'http://www.amazon.com/gp/product/111844969X/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=111844969X&linkCode=as2&tag=harthecro-20'],
  		['The Crowdfunding Bible', 'The Crowdfunding Bible ebook was written to guide you through the process of raising money for any startup or project. Valuable contents include the pros and cons of crowdfunding as well as the types of projects that can use crowdfunding as a valuable investment source.', 'about_crowdfunding', 'what_is_crowdfunding', false, 1, nil, 'http://bit.ly/11ONp1m'],
  		['A Kickstarter\'s Guide to Kickstarter', 'An ebook (free PDF edition) written on how to launch a Kickstarter campaign. This guide contains everything the author wishes he knew before he started his first Kickstarter campaign.', 'about_crowdfunding', 'what_is_crowdfunding', false, 2, nil, 'http://bit.ly/121GBMB'],
  		['A Snapshot on Crowdfunding', 'The Snapshot on Crowdfunding PDF ebook describes the phenomenon crowdfunding and explores the different business models of crowdfunding. The book examines the economic relevance of crowdfunding on an empirical basis.', 'about_crowdfunding', 'crowdfunding_as_an_industry', false, 1, nil, 'http://bit.ly/11JKgDl'],
  		['Crowdfund Investing - A Solution to the Capital Crisis Facing Our Nation\'s Entrepreneurs', 'Testimony of a successful entrepreneur to the United States House of Representatives outlining the growth and effectiveness of crowdfunding and supporting financials. The article includes the framework that entrepreneurs/small businesses have to comply with for the Small Business and Entrepreneurship Council (SEC) rules.', 'about_crowdfunding', 'crowdfunding_as_an_industry', false, 2, nil, 'http://bit.ly/18hnC9f']
  	]

  	service_data = [
  		# for each service:
  		# ['title', 'subtitle', 'description', 'category', featured (true or false), 
  		# rank (integer), featured_rank (integer or nil if not featured), 'out_link']
  	]

  	resource_data.each do |title, description, category, subcategory, featured, rank, featured_rank, out_link|
  		Resource.create(title: title, description: description, category: category, subcategory: subcategory, featured: featured, rank: rank, featured_rank: featured_rank, out_link: out_link)
  	end

  	service_data.each do |title, subtitle, description, category, featured, rank, featured_rank, out_link|
  		Service.create(title: title, subtitle: subtitle, description: description, category: category, featured: featured, rank: rank, featured_rank: featured_rank, out_link: out_link)
  	end
  end

  def down
  	Resource.delete_all
  	Service.delete_all
  end
end
