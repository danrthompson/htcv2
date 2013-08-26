# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


resource_category_list = [{"title"=>"Featured Resources",
  "resource_category_id"=>nil,
  "rank"=>"1", "seo_url" => 'featured', "image" => 'featured-resources.png'},
 {"title"=>"Booklist", "resource_category_id"=>nil, "rank"=>"2", "seo_url" => 'booklist', "image" => 'booklist.png'},
 {"title"=>"About Crowdfunding",
  "resource_category_id"=>nil,
  "rank"=>"3", "seo_url" => 'about-crowdfunding', "image" => 'about-crowdfunding.jpg'},
 {"title"=>"What is Crowdfunding?",
  "resource_category_id"=>"3",
  "rank"=>"1"},
 {"title"=>"Crowdfunding As An Industry",
  "resource_category_id"=>"3",
  "rank"=>"2"},
 {"title"=>"Kickstarter Vs. Indiegogo",
  "resource_category_id"=>"3",
  "rank"=>"3"},
 {"title"=>"Idea Development",
  "resource_category_id"=>nil,
  "rank"=>"4", "seo_url" => 'idea-development', "image" => 'idea-development.png'},
 {"title"=>"Make Your Project Represent Something Bigger",
  "resource_category_id"=>"7",
  "rank"=>"1"},
 {"title"=>"Maker Your Project Stand Out",
  "resource_category_id"=>"7",
  "rank"=>"2"},
 {"title"=>"Campaign Prep",
  "resource_category_id"=>nil,
  "rank"=>"5", "seo_url" => 'campaign-preparation', "image" => 'campaign-preparation.png'},
 {"title"=>"Core Traits of Effective Campaigns",
  "resource_category_id"=>"10",
  "rank"=>"1"},
 {"title"=>"Campaign Logistics",
  "resource_category_id"=>"10",
  "rank"=>"2"},
 {"title"=>"Choosing Rewards",
  "resource_category_id"=>"10",
  "rank"=>"3"},
 {"title"=>"Making the Video",
  "resource_category_id"=>nil,
  "rank"=>"6", "seo_url" => 'making-the-video', "image" => 'making-the-video.png'},
 {"title"=>"How to Make a Crowdfunding Video",
  "resource_category_id"=>"14",
  "rank"=>"1"},
 {"title"=>"Shot Composition",
  "resource_category_id"=>"14",
  "rank"=>"2"},
 {"title"=>"Lighting and Audio",
  "resource_category_id"=>"14",
  "rank"=>"3"},
 {"title"=>"Marketing & Outreach",
  "resource_category_id"=>nil,
  "rank"=>"7", "seo_url" => 'marketing-and-outreach', "image" => 'marketing-and-outreach.png'},
 {"title"=>"How to Determine Your Audience",
  "resource_category_id"=>"18",
  "rank"=>"1"},
 {"title"=>"How to Market Your Product, Idea, or Service",
  "resource_category_id"=>"18",
  "rank"=>"2"},
 {"title"=>"How to Handle Press",
  "resource_category_id"=>"18",
  "rank"=>"3"},
 {"title"=>"After The Campaign",
  "resource_category_id"=>nil,
  "rank"=>"8", "seo_url" => 'after-the-campaign', "image" => 'after-the-campaign.jpg'},
 {"title"=>"Small Business Management",
  "resource_category_id"=>"22",
  "rank"=>"1"},
 {"title"=>"Managing Product Updates and Fulfillment",
  "resource_category_id"=>"22",
  "rank"=>"2"}]

resource_list = [{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"The Crowdfunding Bible", "description"=>"The Crowdfunding Bible' ebook was written to guide you through the process of raising money for any startup or project. Valuable contents include the pros and cons of crowdfunding as well as the types of projects that can use crowdfunding as a valuable investment source.", "out_link"=>"http://bit.ly/11ONp1m", "resource_category_id"=>"1"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"The Ultimate Crowdfunding To-Do List", "description"=>"An extensive to-do list and terrific reminder material for the basics of ideating, completing, and fulfilling a successful crowdfunding campaign.", "out_link"=>"http://bit.ly/12rsUGR", "resource_category_id"=>"1"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Small Business Marketing Hub", "description"=>"The Hubspost Small Business Marketing hub provides a plethora of excellent resources for how to market and grow businesses online. Available content covers a variety of disciplines, including marketing, PR, social media, SEO, and web analytics.", "out_link"=>"http://bit.ly/13K38Eh", "resource_category_id"=>"1"},
{"featured"=>nil, "rank"=>"4", "featured_rank"=>nil, "title"=>"Video School / Lessons / Video 101", "description"=>"Join the friendly Vimeo Staff as they cover all the basics of shooting and editing videos you can be proud of. Includes handcrafted lessons for beginners of all backgrounds.", "out_link"=>"http://bit.ly/12m4W3T", "resource_category_id"=>"1"},
{"featured"=>nil, "rank"=>"5", "featured_rank"=>nil, "title"=>"Crowdfunding Tips - How To Make Your Project Stand Out", "description"=>"With so many projects posted on crowdfunding sites, it can be hard to ensure that your product stands above the rest. This author elaborates on effective but crucial tips for how to stand out from the \"crowd\".", "out_link"=>"http://bit.ly/11JLm1Y", "resource_category_id"=>"1"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"The CrowdFunding Bible", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/1105726282/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1105726282&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Crowdfund Your Startup", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0615632645/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0615632645&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Crowdfund Investing for Dummies", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/111844969X/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=111844969X&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"4", "featured_rank"=>nil, "title"=>"Crowdfunding: How to Run A Successful Crowdfunding Campaign", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/B0097H1SKI/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B0097H1SKI&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"5", "featured_rank"=>nil, "title"=>"Crowdfunding for Filmmakers: The Way to a Successful Film Campaign", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/1615931333/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1615931333&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"6", "featured_rank"=>nil, "title"=>"The CrowdFunding Revolution: How to Raise Venture Capital Using Social Media", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0071790454/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0071790454&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"7", "featured_rank"=>nil, "title"=>"The JOBS Act: Crowdfunding for Small Businesses and Startups", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/143024755X/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=143024755X&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"8", "featured_rank"=>nil, "title"=>"Unlocking Kickstarter Secrets: Crowdfunding Tips and Tricks", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/B008IL46MQ/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B008IL46MQ&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"9", "featured_rank"=>nil, "title"=>"The Kickstarter Handbook: Real-Life Success Stories of Artists, Inventors, and Entrepreneurs", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/1594746087/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1594746087&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"10", "featured_rank"=>nil, "title"=>"Makers: The New Industrial Revolution", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0307720950/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0307720950&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"11", "featured_rank"=>nil, "title"=>"Crowdsourcing: Why the Power of the Crowd is Driving the Future of the Business", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0307396215/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0307396215&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"12", "featured_rank"=>nil, "title"=>"A Guide to Open Innovation and Crowdsourcing: Advice from Leading Experts", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0749463074/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0749463074&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"13", "featured_rank"=>nil, "title"=>"Getting Results from Crowds: The definitive guide to using crowdsourcing to grow your business", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0984783806/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0984783806&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"14", "featured_rank"=>nil, "title"=>"Crowdfund it!", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/B0095VPHAS/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B0095VPHAS&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"The Crowdfunding Bible", "description"=>"The Crowdfunding Bible' ebook was written to guide you through the process of raising money for any startup or project. Valuable contents include the pros and cons of crowdfunding as well as the types of projects that can use crowdfunding as a valuable investment source.", "out_link"=>"http://bit.ly/11ONp1m", "resource_category_id"=>"4"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"A Kickstarter's Guide To Kickstarter", "description"=>"An ebook (free PDF edition) written on how to launch a Kickstarter campaign. This guide contains everything the author wishes he knew before he started his first Kickstarter campaign.", "out_link"=>"http://bit.ly/121GBMB", "resource_category_id"=>"4"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"The Ultimate Crowdfunding To-Do List", "description"=>"An extensive to-do list and terrific reminder material for the basics of ideating, completing, and fulfilling a successful crowdfunding campaign.", "out_link"=>"http://bit.ly/12rsUGR", "resource_category_id"=>"4"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"A Snapshot on Crowdfunding", "description"=>"The Snapshot on Crowdfunding PDF ebook describes the phenomenon crowdfunding and explores the different business models of crowdfunding. The book examines the economic relevance of crowdfunding on an empirical basis.", "out_link"=>"http://bit.ly/11JKgDl", "resource_category_id"=>"5"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Crowdfund Investing - A Solution to the Capital Crisis Facing our Nation's Entrepreneurs", "description"=>"Testimony of a successful entrepreneur to the United States House of Representatives outlining the growth and effectiveness of crowdfunding and supporting financials. The article includes the framework that entrepreneurs/small businesses have to comply with for the Small Business and Entrepreneurship Council (SEC) rules.", "out_link"=>"http://bit.ly/18hnC9f", "resource_category_id"=>"5"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Crowdfunding 101", "description"=>"A legal crowdfunding guide authored by those who pioneered the legalization of crowdfunding as an investment vehicle.", "out_link"=>"http://bit.ly/139s60M", "resource_category_id"=>"5"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Crowd Sourced Fundraising: Kickstarter vs. Indiegogo", "description"=>"A comprehensive comparison of the pros and cons of Indiegogo and Kickstarter. The article cautions to plan ahead for the fees that these sites require and reminds the reader to not attempt to crowd source a project without a thoughtful outreach and marketing strategy.", "out_link"=>"http://bit.ly/17isfwZ", "resource_category_id"=>"6"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Kickstarter School", "description"=>"An 8-step guide for launching a crowdfunding campaign, provided by Kickstarter. Lessons covered include how to define your project, how to create rewards, and how to set your goals.", "out_link"=>"http://kck.st/11JKE4Q", "resource_category_id"=>"6"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"How to Get Your Crowdfunding Campaign To Indiegogo To the Top", "description"=>"A guide by Wired that outlines great tips for Indiegogo (most of which are also applicable to Kickstarter). The guide includes five years of data that helps to illustrate \"what matters and what doesn't\" when it comes to a successful campaign strategy.", "out_link"=>"http://bit.ly/1coLaGD", "resource_category_id"=>"6"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"How Great Leaders Inspire Action", "description"=>"A famous TED talk on how to inspire people by connecting them to deeper meaning. Simon Sinek has a simple but powerful model for inspirational leadership that starts with a golden circle and the simple question: \"Why?\".", "out_link"=>"http://bit.ly/15HNODD", "resource_category_id"=>"8"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Work on Stuff That Matters: First Principles", "description"=>"An excellent guide with a series of valuable tips for finding ideas and projects that matter to you and to the benefit of society as a whole. The most successful crowdfunding campaigns connect backers with a feeling of accomplishing something that matters.", "out_link"=>"http://oreil.ly/12pvY6t", "resource_category_id"=>"8"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Crowdfunding Tips - How To Make Your Project Stand Out", "description"=>"With so many projects posted on crowdfunding sites, it can be hard to ensure that your product stands above the rest. This author elaborates on effective but crucial tips for how to stand out from the \"crowd\".", "out_link"=>"http://bit.ly/11JLm1Y", "resource_category_id"=>"9"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"How to Stand-out from the Crowd when Crowdfunding", "description"=>"This resource illustrates the importance of exuding credibility to your investors. A cleverly crafted publicity campaign can provide the third party validation that there is both a market and a need for your idea is just one tactical example included by the author.", "out_link"=>"http://bit.ly/16AQ0zf", "resource_category_id"=>"9"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Correctly Budgeting Your Crowdfunding Campaign", "description"=>"The concept of 'expected value' is important when budgeting your crowdfunding campaign. This article explains how to re-run your numbers to find your actual goal.", "out_link"=>"http://bit.ly/121Izg3", "resource_category_id"=>"11"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Secrecy is Not a Small Business Value - Transparency Is", "description"=>"A 25-year small-business owner discusses the importance of transparency in small business. The author explains how entrepreneurs have built thriving businesses by making and keeping promises instead of secrets.", "out_link"=>"http://bit.ly/138IeOH", "resource_category_id"=>"11"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Sales Skills for Non-Salespeople", "description"=>"This article examines the consultative sales model and explores how you can apply it to sell an idea, product, or service. Topics included are how to prepare, what to say, and how to handle questions and objections so that your next \"sale\" will be a success.", "out_link"=>"http://bit.ly/139t0u0", "resource_category_id"=>"11"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Choose Your Goal and Deadline", "description"=>"A brief article from the Indiegogo Help Center that explains high level tactics for choosing your goal and deadline.", "out_link"=>"http://bit.ly/14YQxfa", "resource_category_id"=>"12"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Setting Your Crowdfunding Goal: The Musician's Crowdfunding Manifesto", "description"=>"An article on setting crowdfunding goals that is tailored for musicians but includes a variety of tips that are relevant to almost any type of business.", "out_link"=>"http://bit.ly/10mruAV", "resource_category_id"=>"12"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Setting Your Project Deadline", "description"=>"According to Kickstarter, \"statistically, projects lasting 30 days or less have our highest success rates.\" A longer campaign duration is not always better.", "out_link"=>"http://kck.st/17DVdLn", "resource_category_id"=>"12"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Defining Your Pledge Tiers", "description"=>"Excellent quantitative research and advice for determining your reward structure and pricing from the successful crowdfunder Craigmod.", "out_link"=>"http://bit.ly/12WACx4", "resource_category_id"=>"13"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Need More Crowdfunders? Try These Lures", "description"=>"Successful crowdfunding platforms offer great rewards - here are a few tactics to assist you in creating alluring rewards.", "out_link"=>"http://bit.ly/14YQNuL", "resource_category_id"=>"13"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Designing the Best Crowdfunding Rewards", "description"=>"If your reward is not wanted by donors, you can lose the opportunity to continue dialogue with them. This resource illustrates the importance of linking every reward directly to your project.", "out_link"=>"http://bit.ly/124PtlB", "resource_category_id"=>"13"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"5 Characteristics of Awesome Crowdfunding Videos", "description"=>"An outline of characteristics of the most outstanding crowdfunding videos. Yancee Strickler, co-founder of Kickstarter, cites video first as a critical success element, emphasizes the importance of the medium.", "out_link"=>"http://bit.ly/1agEkWX", "resource_category_id"=>"15"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Create a Great Pitch", "description"=>"A collection of valuable resources from Indiegogo that will assist you in creating the perfect pitch for your product, idea, or service.", "out_link"=>"http://bit.ly/1blOTqV", "resource_category_id"=>"15"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Video School / Lessons / Video 101", "description"=>"Join the friendly Vimeo Staff as they cover all the basics of shooting and editing videos you can be proud of. Includes handcrafted lessons for beginners of all backgrounds.", "out_link"=>"http://bit.ly/12m4W3T", "resource_category_id"=>"15"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Getting Started: Video Composition", "description"=>"By virtue of its very nature, video is a medium that is judged largely on the way it looks. Composition is all about the placement of your subjects in the frame so that the effect is as pleasing to the eye as possible.", "out_link"=>"http://bit.ly/14v8P5d", "resource_category_id"=>"16"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Sent From My iPhone: Why You Don't Always Need A Fancy Camera", "description"=>"For those looking for budget-conscious DIY video options, the smartphone in your pocket can be a valuable tool. This tutorial explains how to create professional video using an iPhone.", "out_link"=>"http://bit.ly/12k10RW", "resource_category_id"=>"16"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Varying Your Shot Composition: Video 101", "description"=>"A fundamental part of visual storytelling is variety. Learn about how to vary your shot selection in order to keep viewers engaged and intrigued.", "out_link"=>"http://bit.ly/17iDeXa", "resource_category_id"=>"16"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Film & Video Lighting for Low-budgets", "description"=>"A wealth of knowledge on how to create an effective lighting environment on a low budget. The difference between something that is well lit and something that isn't can be the difference between a film that's great and one that flops.", "out_link"=>"http://bit.ly/1aPqRV1", "resource_category_id"=>"17"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Vimeo Instruction - Good Sound", "description"=>"Any filmmaker today will agree that capturing sound correctly is just as important as capturing the image itself. Reviewing these tips will ensure that you know how to properly leverage sound equipment.", "out_link"=>"http://bit.ly/17E0Clt", "resource_category_id"=>"17"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Tips for Getting Good Sound", "description"=>"Learn how the key to recording good sound is to be aware of the capabilities of your particular camcorder's own in-built audio system, and experiment with it to find out how to get the best results.", "out_link"=>"http://bit.ly/14v96VU", "resource_category_id"=>"17"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"How To Get People To Care About Your Crowdfunding Campaign", "description"=>"The key to raising money for your crowdfunding campaign is to engage your target audience to the point that they want to give and help you make your dream a reality.", "out_link"=>"http://bit.ly/11ORcf4", "resource_category_id"=>"19"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"How to Define Your Target Market", "description"=>"With the current state of the economy, having a well-defined target market is more important than ever. Small businesses can effectively compete with large companies by targeting a niche market.", "out_link"=>"http://bit.ly/1agFNN5", "resource_category_id"=>"19"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Crowdfunding More Marketing Than Fundraising: Opinion", "description"=>"Successfully light the initial spark and stoke the fire to watch donations pour in. Learn five reasons why crowdfunded endeavors are secretly more akin to consumer marketing efforts.", "out_link"=>"http://bit.ly/138Lp9c", "resource_category_id"=>"19"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"A Checklist to Choose Which Internet Marketing Channel is Right for Your Business", "description"=>"An excellent starting point for understanding the effort and potential ROI's associated with various internet marketing channels.", "out_link"=>"http://bit.ly/185rdoc", "resource_category_id"=>"20"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"The New Rules of Customer Engagement", "description"=>"The rise of the social web has led to a fundamental shift in the way businesses engage with customers. Rather than focusing on \"touch points\" during the marketing and sales process, use social technologies to form meaningful, ongoing relationships that involve frequent online interactions.", "out_link"=>"http://bit.ly/11JQ5Re", "resource_category_id"=>"20"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Social Media Marketing: A Small Business Primer", "description"=>"Leveraging social media marketing is one of the best tactics that can be achieved effectively while on a tight budget. Here are some ideas to help you reach thousands of customers and prospects all over the globe with almost zero advertising costs.", "out_link"=>"http://bit.ly/138M3U0", "resource_category_id"=>"20"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"How to Write a Press Release for a New Product", "description"=>"A list of actionable, step-by-step instructions to follow for writing an effective press release to market a new product.", "out_link"=>"http://bit.ly/11OSaId", "resource_category_id"=>"21"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"How To Write a PR Plan: Situation Analysis, Research, and Goals/Strategy/Objectives", "description"=>"If you take a cookie cutter cutter approach to public relations planning, you're doomed to fail. Investing time in upfront planning will prepare you with a framework and a roadmap for success.", "out_link"=>"http://bit.ly/16AU42q", "resource_category_id"=>"21"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"How To Get Into A Magazine", "description"=>"Very helpful steps for how to reach out to magazines in order to receive free publicity. Media outlets like magazines need new, timely information as much as new businesses need the free publicity.", "out_link"=>"http://bit.ly/10mugWO", "resource_category_id"=>"21"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Small Business Marketing Hub", "description"=>"The Hubspost Small Business Marketing hub provides a plethora of excellent resources for how to market and grow businesses online. Available content covers a variety of disciplines, including marketing, PR, social media, SEO, and web analytics.", "out_link"=>"http://bit.ly/13K38Eh", "resource_category_id"=>"23"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Understanding Online Influence and Engagement with Brian Solis", "description"=>"Award winning author and online engagement thought leader Brian Solis shares tips and best practices for how to grow your online influence. This resource includes a video as well as key takeaways broken out below.", "out_link"=>"http://bit.ly/186ZSFJ", "resource_category_id"=>"23"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Marketing Materials Checklist for Small Business", "description"=>"A list of marketing materials that small businesses need to consider when completing their arsenal of promotional artifacts.", "out_link"=>"http://bit.ly/10XlEbT", "resource_category_id"=>"23"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Life After Kickstarter - 5 Costly Lessons From a Kickstarter-backed Designer", "description"=>"Learn from five costly mistakes that were made during the Kickstarter campaign for Jon Fawcett's flexible iPod dock.", "out_link"=>"http://bit.ly/18Q0jni", "resource_category_id"=>"24"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"More Money, More Problems - The Challenges of Managing Crowdfunding Success", "description"=>"Key considerations for how to manage your campaign once it has exceeded your expecatations and there are customers lined up to start using your products or services.", "out_link"=>"http://bit.ly/13QMBP0", "resource_category_id"=>"24"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Does Disappointing Your Backers Keep You Up at Night?", "description"=>"Campaign management tool BackerKit explains why it can be useful to consider communication and CRM tools to help you manage your campaign after the fundraising period has ended.", "out_link"=>"http://bit.ly/15yPlzx", "resource_category_id"=>"24"}]

service_category_list = [{"title"=>"Campaign Management", "rank"=>"1", "seo_url" => "campaign-management"},
{"title"=>"Video", "rank"=>"2", "seo_url" => "video"},
{"title"=>"Marketing / PR", "rank"=>"3", "seo_url" => "marketing-and-pr"},
{"title"=>"Website Design / Dev", "rank"=>"4", "seo_url" => "website-design-development"},
{"title"=>"Manufacturing", "rank"=>"5", "seo_url" => "manufacturing"},
{"title"=>"Fulfillment", "rank"=>"6", "seo_url" => "fulfillment"}]

service_list = [{"featured"=>"1", "rank"=>"1", "featured_rank"=>"1", "title"=>"Feedback Manufacturing", "description"=>"Design analysis, part sourcing, contract manufacturing, and project management services from experienced crowdfunding partners. Your full supply chain solution, based in China.", "out_link"=>"http://feedbackmanufacturing.com/", "service_category_id"=>"5", "logo" => "feedback_manufacturing.png"},
{"featured"=>"1", "rank"=>"1", "featured_rank"=>"2", "title"=>"Metzger Associates", "description"=>"Metzger Associates assists clients in traditional public, media, and analyst relations as well as blogger relations, social media management, website development, and search engine optimization.", "out_link"=>"http://www.metzger.com/", "service_category_id"=>"3", "logo" => "metzger.jpg"},
{"featured"=>'1', "rank"=>"2", "featured_rank"=>'3', "title"=>"FulfillRite", "description"=>"E-commerce fulfillment made easy. Featuring integrations with popular payment platforms, and orders made before 12PM EST ship out same day.", "out_link"=>"http://fulfillrite.com/", "service_category_id"=>"6", "logo" => "fulfillrite.jpg"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Acutrack", "description"=>"Over 20 years experience in production, logistics, and fulfillment for clients of all shapes and sizes, including serveral successful Kickstarter projects.", "out_link"=>"http://acutrack.com/", "service_category_id"=>"6", "logo" => "acutrack.jpg"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"BackerKit", "description"=>"A new pledge management tool for project creators, it's automated to manage all your pledges, add-ons, last minute shipping changes, and more. So stop stressing about messages in your mailbox. We got your back.", "out_link"=>"https://backerkit.com/", "service_category_id"=>"1", "logo" => "backerkit.jpg"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Celery", "description"=>"With Celery, you can accept pre-orders whenever you're ready, making it the easiest way to collect credit cards now and charge them later.", "out_link"=>"https://www.trycelery.com/", "service_category_id"=>"1", "logo" => "celery.jpg"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Outgrow.Me", "description"=>"The first marketplace for successfully funded Kickstarter and Indiegogo projects. Reach new audiences with ease using their e-commerce platform.", "out_link"=>"http://outgrow.me/", "service_category_id"=>"1", "logo" => "outgrow_me.jpg"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Morpho MFG", "description"=>"From idea development to industrial/mechanical design to sourcing and manufacturing, Morpho MFG provides full-service expertise to help you create brilliant products.", "out_link"=>"http://morphomfg.com/", "service_category_id"=>"5", "logo" => "morpho_mfg.jpg"}, 
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"PassageMaker Sourcing Solutions", "description"=>"Manufacturing and final assemply solutions provided by an American-owned company in China. Dedicated to protecting your IP and providing excellent service.", "out_link"=>"http://www.psschina.com/", "service_category_id"=>"5", "logo" => "passagemaker.jpg"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Simple Global", "description"=>"Sell your products to the world with merchandising and fulfillment services to help increase sales and lower delivery costs. The choice is simple - Simple Global.", "out_link"=>"http://www.simpleglobal.com/", "service_category_id"=>"6", "logo" => "simple_global.png"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Blaze PR", "description"=>"Reach new markets and achieve success with Blaze PR's unique approach to public relations, strategic planning, and interactive marketing.", "out_link"=>"http://blazepr.com/", "service_category_id"=>"3", "logo" => "blaze.jpeg"},
{"featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"TinyMill", "description"=>"Beautiful, functional, and standards-based website design and development to help you reach your target audience online.", "out_link"=>"http://www.tinymill.com/", "service_category_id"=>"4", "logo" => "tinymill.png"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Agency 2.0", "description"=>"Campaign strategy, marketing, and public relations services for crowdfunding platforms like Kickstarter.", "out_link"=>"http://agency20.com/", "service_category_id"=>"3", "logo" => "agency20.png"},
{"featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Quirky Bird", "description"=>"Strikingly unconventional website and graphic design and development services, specliaizing in eCommerce sites.", "out_link"=>"http://quirky-bird.com/", "service_category_id"=>"4", "logo" => "quirkybird.png"},
{"featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Nebo", "description"=>"Award winning interactive services includuding web design, user experience, development, integrations, SEO and more.", "out_link"=>"http://www.neboagency.com/", "service_category_id"=>"4", "logo" => "nebo.jpg"}]




# actual seed scripts

ResourceCategory.attr_accessible :id
Resource.attr_accessible :id
Service.attr_accessible :id
ServiceCategory.attr_accessible :id

ResourceCategory.delete_all
Resource.delete_all
ServiceCategory.delete_all
Service.delete_all

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

resource_category_list.each_with_index do |params, index|
  params["id"] = (index+1).to_s
  image_filename = params["image"]
  params["image"] = nil
  res_cat = ResourceCategory.create(params)
  if image_filename then
    res_cat.update_attribute(:image, File.open(File.join(File.expand_path(File.dirname(__FILE__)), "ResourceCatImages/#{image_filename}"), 'r'))
  end
end

resource_list.each_with_index do |params, index|
  params["id"] = (index+1).to_s
  Resource.create(params)
end

service_category_list.each_with_index do |params, index|
  params["id"] = (index+1).to_s
  ServiceCategory.create(params)
end

service_list.each_with_index do |params, index|
  params["id"] = (index+1).to_s
  logo_filename = params["logo"]
  params["logo"] = nil
  this_service = Service.create(params)
  if logo_filename then
    this_service.update_attribute(:logo, File.open(File.join(File.expand_path(File.dirname(__FILE__)), "ServiceLogoImages/#{logo_filename}"), 'r'))
  end
end
