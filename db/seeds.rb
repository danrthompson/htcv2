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
ConversationPost.attr_accessible :id, :user_id, :type
Post.attr_accessible :id

resource_category_list = [{"id"=>"1",
  "title"=>"Featured Resources",
  "resource_category_id"=>nil,
  "rank"=>"1"},
 {"id"=>"2", "title"=>"Booklist", "resource_category_id"=>nil, "rank"=>"2"},
 {"id"=>"3",
  "title"=>"About Crowdfunding",
  "resource_category_id"=>nil,
  "rank"=>"3"},
 {"id"=>"4",
  "title"=>"What is Crowdfunding?",
  "resource_category_id"=>"3",
  "rank"=>"1"},
 {"id"=>"5",
  "title"=>"Crowdfunding As An Industry",
  "resource_category_id"=>"3",
  "rank"=>"2"},
 {"id"=>"6",
  "title"=>"Kickstarter Vs. Indiegogo",
  "resource_category_id"=>"3",
  "rank"=>"3"},
 {"id"=>"7",
  "title"=>"Idea Development",
  "resource_category_id"=>nil,
  "rank"=>"4"},
 {"id"=>"8",
  "title"=>"Make Your Project Represent Something Bigger",
  "resource_category_id"=>"7",
  "rank"=>"1"},
 {"id"=>"9",
  "title"=>"Maker Your Project Stand Out",
  "resource_category_id"=>"7",
  "rank"=>"2"},
 {"id"=>"10",
  "title"=>"Campaign Preparation",
  "resource_category_id"=>nil,
  "rank"=>"5"},
 {"id"=>"11",
  "title"=>"Core Traits of Effective Campaigns",
  "resource_category_id"=>"10",
  "rank"=>"1"},
 {"id"=>"12",
  "title"=>"Campaign Logistics",
  "resource_category_id"=>"10",
  "rank"=>"2"},
 {"id"=>"13",
  "title"=>"Choosing Rewards",
  "resource_category_id"=>"10",
  "rank"=>"3"},
 {"id"=>"14",
  "title"=>"Making the Video",
  "resource_category_id"=>nil,
  "rank"=>"6"},
 {"id"=>"15",
  "title"=>"How to Make a Crowdfunding Video",
  "resource_category_id"=>"14",
  "rank"=>"1"},
 {"id"=>"16",
  "title"=>"Shot Composition",
  "resource_category_id"=>"14",
  "rank"=>"2"},
 {"id"=>"17",
  "title"=>"Lighting and Audio",
  "resource_category_id"=>"14",
  "rank"=>"3"},
 {"id"=>"18",
  "title"=>"Marketing and Outreach",
  "resource_category_id"=>nil,
  "rank"=>"7"},
 {"id"=>"19",
  "title"=>"How to Determine Your Audience",
  "resource_category_id"=>"18",
  "rank"=>"1"},
 {"id"=>"20",
  "title"=>"How to Market Your Product, Idea, or Service",
  "resource_category_id"=>"18",
  "rank"=>"2"},
 {"id"=>"21",
  "title"=>"How to Handle Press",
  "resource_category_id"=>"18",
  "rank"=>"3"},
 {"id"=>"22",
  "title"=>"After The Campaign",
  "resource_category_id"=>nil,
  "rank"=>"8"},
 {"id"=>"23",
  "title"=>"Small Business Management",
  "resource_category_id"=>"22",
  "rank"=>"1"},
 {"id"=>"24",
  "title"=>"Managing Product Updates and Fulfillment",
  "resource_category_id"=>"22",
  "rank"=>"2"}]

resource_list = [{"id"=>"1", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"The Crowdfunding Bible", "description"=>"The Crowdfunding Bible' ebook was written to guide you through the process of raising money for any startup or project. Valuable contents include the pros and cons of crowdfunding as well as the types of projects that can use crowdfunding as a valuable investment source.", "out_link"=>"http://bit.ly/11ONp1m", "resource_category_id"=>"1"},
{"id"=>"2", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"The Ultimate Crowdfunding To-Do List", "description"=>"An extensive to-do list and terrific reminder material for the basics of ideating, completing, and fulfilling a successful crowdfunding campaign.", "out_link"=>"http://bit.ly/12rsUGR", "resource_category_id"=>"1"},
{"id"=>"3", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"The CrowdFunding Bible", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/1105726282/ref=as_li_qf_sp_asin_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1105726282&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"4", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Crowdfund Your Startup", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0615632645/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0615632645&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"5", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Crowdfund Investing for Dummies", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/111844969X/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=111844969X&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"6", "featured"=>nil, "rank"=>"4", "featured_rank"=>nil, "title"=>"Crowdfunding: How to Run A Successful Crowdfunding Campaign", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/B0097H1SKI/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B0097H1SKI&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"7", "featured"=>nil, "rank"=>"5", "featured_rank"=>nil, "title"=>"Crowdfunding for Filmmakers: The Way to a Successful Film Campaign", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/1615931333/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1615931333&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"8", "featured"=>nil, "rank"=>"6", "featured_rank"=>nil, "title"=>"The CrowdFunding Revolution: How to Raise Venture Capital Using Social Media", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0071790454/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0071790454&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"9", "featured"=>nil, "rank"=>"7", "featured_rank"=>nil, "title"=>"The JOBS Act: Crowdfunding for Small Businesses and Startups", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/143024755X/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=143024755X&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"10", "featured"=>nil, "rank"=>"8", "featured_rank"=>nil, "title"=>"Unlocking Kickstarter Secrets: Crowdfunding Tips and Tricks", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/B008IL46MQ/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B008IL46MQ&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"11", "featured"=>nil, "rank"=>"9", "featured_rank"=>nil, "title"=>"The Kickstarter Handbook: Real-Life Success Stories of Artists, Inventors, and Entrepreneurs", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/1594746087/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1594746087&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"12", "featured"=>nil, "rank"=>"10", "featured_rank"=>nil, "title"=>"Makers: The New Industrial Revolution", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0307720950/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0307720950&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"13", "featured"=>nil, "rank"=>"11", "featured_rank"=>nil, "title"=>"Crowdsourcing: Why the Power of the Crowd is Driving the Future of the Business", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0307396215/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0307396215&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"14", "featured"=>nil, "rank"=>"12", "featured_rank"=>nil, "title"=>"A Guide to Open Innovation and Crowdsourcing: Advice from Leading Experts", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0749463074/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0749463074&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"15", "featured"=>nil, "rank"=>"13", "featured_rank"=>nil, "title"=>"Getting Results from Crowds: The definitive guide to using crowdsourcing to grow your business", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/0984783806/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0984783806&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"16", "featured"=>nil, "rank"=>"14", "featured_rank"=>nil, "title"=>"Crowdfund it!", "description"=>nil, "out_link"=>"http://www.amazon.com/gp/product/B0095VPHAS/ref=as_li_tf_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B0095VPHAS&linkCode=as2&tag=harthecro-20", "resource_category_id"=>"2"},
{"id"=>"17", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"The Crowdfunding Bible", "description"=>"The Crowdfunding Bible' ebook was written to guide you through the process of raising money for any startup or project. Valuable contents include the pros and cons of crowdfunding as well as the types of projects that can use crowdfunding as a valuable investment source.", "out_link"=>"http://bit.ly/11ONp1m", "resource_category_id"=>"4"},
{"id"=>"18", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"A Kickstarter's Guide To Kickstarter", "description"=>"An ebook (free PDF edition) written on how to launch a Kickstarter campaign. This guide contains everything the author wishes he knew before he started his first Kickstarter campaign.", "out_link"=>"http://bit.ly/121GBMB", "resource_category_id"=>"4"},
{"id"=>"19", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"The Ultimate Crowdfunding To-Do List", "description"=>"An extensive to-do list and terrific reminder material for the basics of ideating, completing, and fulfilling a successful crowdfunding campaign.", "out_link"=>"http://bit.ly/12rsUGR", "resource_category_id"=>"4"},
{"id"=>"20", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"A Snapshot on Crowdfunding", "description"=>"The Snapshot on Crowdfunding PDF ebook describes the phenomenon crowdfunding and explores the different business models of crowdfunding. The book examines the economic relevance of crowdfunding on an empirical basis.", "out_link"=>"http://bit.ly/11JKgDl", "resource_category_id"=>"5"},
{"id"=>"21", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Crowdfund Investing - A Solution to the Capital Crisis Facing our Nation's Entrepreneurs", "description"=>"Testimony of a successful entrepreneur to the United States House of Representatives outlining the growth and effectiveness of crowdfunding and supporting financials. The article includes the framework that entrepreneurs/small businesses have to comply with for the Small Business and Entrepreneurship Council (SEC) rules.", "out_link"=>"http://bit.ly/18hnC9f", "resource_category_id"=>"5"},
{"id"=>"22", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Crowdfunding 101", "description"=>"A legal crowdfunding guide authored by those who pioneered the legalization of crowdfunding as an investment vehicle.", "out_link"=>"http://bit.ly/139s60M", "resource_category_id"=>"5"},
{"id"=>"23", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Crowd Sourced Fundraising: Kickstarter vs. Indiegogo", "description"=>"A comprehensive comparison of the pros and cons of Indiegogo and Kickstarter. The article cautions to plan ahead for the fees that these sites require and reminds the reader to not attempt to crowd source a project without a thoughtful outreach and marketing strategy.", "out_link"=>"http://bit.ly/17isfwZ", "resource_category_id"=>"6"},
{"id"=>"24", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Kickstarter School", "description"=>"An 8-step guide for launching a crowdfunding campaign, provided by Kickstarter. Lessons covered include how to define your project, how to create rewards, and how to set your goals.", "out_link"=>"http://kck.st/11JKE4Q", "resource_category_id"=>"6"},
{"id"=>"25", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"How to Get Your Crowdfunding Campaign To Indiegogo To the Top", "description"=>"A guide by Wired that outlines great tips for Indiegogo (most of which are also applicable to Kickstarter). The guide includes five years of data that helps to illustrate \"what matters and what doesn't\" when it comes to a successful campaign strategy.", "out_link"=>"http://bit.ly/1coLaGD", "resource_category_id"=>"6"},
{"id"=>"26", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"How Great Leaders Inspire Action", "description"=>"A famous TED talk on how to inspire people by connecting them to deeper meaning. Simon Sinek has a simple but powerful model for inspirational leadership that starts with a golden circle and the simple question: \"Why?\".", "out_link"=>"http://bit.ly/15HNODD", "resource_category_id"=>"8"},
{"id"=>"27", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Work on Stuff That Matters: First Principles", "description"=>"An excellent guide with a series of valuable tips for finding ideas and projects that matter to you and to the benefit of society as a whole. The most successful crowdfunding campaigns connect backers with a feeling of accomplishing something that matters.", "out_link"=>"http://oreil.ly/12pvY6t", "resource_category_id"=>"8"},
{"id"=>"28", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Crowdfunding Tips - How To Make Your Project Stand Out", "description"=>"With so many projects posted on crowdfunding sites, it can be hard to ensure that your product stands above the rest. This author elaborates on effective but crucial tips for how to stand out from the \"crowd\".", "out_link"=>"http://bit.ly/11JLm1Y", "resource_category_id"=>"9"},
{"id"=>"29", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"How to Stand-out from the Crowd when Crowdfunding", "description"=>"This resource illustrates the importance of exuding credibility to your investors. A cleverly crafted publicity campaign can provide the third party validation that there is both a market and a need for your idea is just one tactical example included by the author.", "out_link"=>"http://bit.ly/16AQ0zf", "resource_category_id"=>"9"},
{"id"=>"30", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Correctly Budgeting Your Crowdfunding Campaign", "description"=>"The concept of 'expected value' is important when budgeting your crowdfunding campaign. This article explains how to re-run your numbers to find your actual goal.", "out_link"=>"http://bit.ly/121Izg3", "resource_category_id"=>"11"},
{"id"=>"31", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Secrecy is Not a Small Business Value - Transparency Is", "description"=>"A 25-year small-business owner discusses the importance of transparency in small business. The author explains how entrepreneurs have built thriving businesses by making and keeping promises instead of secrets.", "out_link"=>"http://bit.ly/138IeOH", "resource_category_id"=>"11"},
{"id"=>"32", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Sales Skills for Non-Salespeople", "description"=>"This article examines the consultative sales model and explores how you can apply it to sell an idea, product, or service. Topics included are how to prepare, what to say, and how to handle questions and objections so that your next \"sale\" will be a success.", "out_link"=>"http://bit.ly/139t0u0", "resource_category_id"=>"11"},
{"id"=>"33", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Choose Your Goal and Deadline", "description"=>"A brief article from the Indiegogo Help Center that explains high level tactics for choosing your goal and deadline.", "out_link"=>"http://bit.ly/14YQxfa", "resource_category_id"=>"12"},
{"id"=>"34", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Setting Your Crowdfunding Goal: The Musician's Crowdfunding Manifesto", "description"=>"An article on setting crowdfunding goals that is tailored for musicians but includes a variety of tips that are relevant to almost any type of business.", "out_link"=>"http://bit.ly/10mruAV", "resource_category_id"=>"12"},
{"id"=>"35", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Setting Your Project Deadline", "description"=>"According to Kickstarter, \"statistically, projects lasting 30 days or less have our highest success rates.\" A longer campaign duration is not always better.", "out_link"=>"http://kck.st/17DVdLn", "resource_category_id"=>"12"},
{"id"=>"36", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Defining Your Pledge Tiers", "description"=>"Excellent quantitative research and advice for determining your reward structure and pricing from the successful crowdfunder Craigmod.", "out_link"=>"http://bit.ly/12WACx4", "resource_category_id"=>"13"},
{"id"=>"37", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Need More Crowdfunders? Try These Lures", "description"=>"Successful crowdfunding platforms offer great rewards - here are a few tactics to assist you in creating alluring rewards.", "out_link"=>"http://bit.ly/14YQNuL", "resource_category_id"=>"13"},
{"id"=>"38", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Designing the Best Crowdfunding Rewards", "description"=>"If your reward is not wanted by donors, you can lose the opportunity to continue dialogue with them. This resource illustrates the importance of linking every reward directly to your project.", "out_link"=>"http://bit.ly/124PtlB", "resource_category_id"=>"13"},
{"id"=>"39", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"5 Characteristics of Awesome Crowdfunding Videos", "description"=>"An outline of characteristics of the most outstanding crowdfunding videos. Yancee Strickler, co-founder of Kickstarter, cites video first as a critical success element, emphasizes the importance of the medium.", "out_link"=>"http://bit.ly/1agEkWX", "resource_category_id"=>"15"},
{"id"=>"40", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Create a Great Pitch", "description"=>"A collection of valuable resources from Indiegogo that will assist you in creating the perfect pitch for your product, idea, or service.", "out_link"=>"http://bit.ly/1blOTqV", "resource_category_id"=>"15"},
{"id"=>"41", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Video School / Lessons / Video 101", "description"=>"Join the friendly Vimeo Staff as they cover all the basics of shooting and editing videos you can be proud of. Includes handcrafted lessons for beginners of all backgrounds.", "out_link"=>"http://bit.ly/12m4W3T", "resource_category_id"=>"15"},
{"id"=>"42", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Getting Started: Video Composition", "description"=>"By virtue of its very nature, video is a medium that is judged largely on the way it looks. Composition is all about the placement of your subjects in the frame so that the effect is as pleasing to the eye as possible.", "out_link"=>"http://bit.ly/14v8P5d", "resource_category_id"=>"16"},
{"id"=>"43", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Sent From My iPhone: Why You Don't Always Need A Fancy Camera", "description"=>"For those looking for budget-conscious DIY video options, the smartphone in your pocket can be a valuable tool. This tutorial explains how to create professional video using an iPhone.", "out_link"=>"http://bit.ly/12k10RW", "resource_category_id"=>"16"},
{"id"=>"44", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Varying Your Shot Composition: Video 101", "description"=>"A fundamental part of visual storytelling is variety. Learn about how to vary your shot selection in order to keep viewers engaged and intrigued.", "out_link"=>"http://bit.ly/17iDeXa", "resource_category_id"=>"16"},
{"id"=>"45", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Film & Video Lighting for Low-budgets", "description"=>"A wealth of knowledge on how to create an effective lighting environment on a low budget. The difference between something that is well lit and something that isn't can be the difference between a film that's great and one that flops.", "out_link"=>"http://bit.ly/1aPqRV1", "resource_category_id"=>"17"},
{"id"=>"46", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Vimeo Instruction - Good Sound", "description"=>"Any filmmaker today will agree that capturing sound correctly is just as important as capturing the image itself. Reviewing these tips will ensure that you know how to properly leverage sound equipment.", "out_link"=>"http://bit.ly/17E0Clt", "resource_category_id"=>"17"},
{"id"=>"47", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Tips for Getting Good Sound", "description"=>"Learn how the key to recording good sound is to be aware of the capabilities of your particular camcorder's own in-built audio system, and experiment with it to find out how to get the best results.", "out_link"=>"http://bit.ly/14v96VU", "resource_category_id"=>"17"},
{"id"=>"48", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"How To Get People To Care About Your Crowdfunding Campaign", "description"=>"The key to raising money for your crowdfunding campaign is to engage your target audience to the point that they want to give and help you make your dream a reality.", "out_link"=>"http://bit.ly/11ORcf4", "resource_category_id"=>"19"},
{"id"=>"49", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"How to Define Your Target Market", "description"=>"With the current state of the economy, having a well-defined target market is more important than ever. Small businesses can effectively compete with large companies by targeting a niche market.", "out_link"=>"http://bit.ly/1agFNN5", "resource_category_id"=>"19"},
{"id"=>"50", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Crowdfunding More Marketing Than Fundraising: Opinion", "description"=>"Successfully light the initial spark and stoke the fire to watch donations pour in. Learn five reasons why crowdfunded endeavors are secretly more akin to consumer marketing efforts.", "out_link"=>"http://bit.ly/138Lp9c", "resource_category_id"=>"19"},
{"id"=>"51", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"A Checklist to Choose Which Internet Marketing Channel is Right for Your Business", "description"=>"An excellent starting point for understanding the effort and potential ROI's associated with various internet marketing channels.", "out_link"=>"http://bit.ly/185rdoc", "resource_category_id"=>"20"},
{"id"=>"52", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"The New Rules of Customer Engagement", "description"=>"The rise of the social web has led to a fundamental shift in the way businesses engage with customers. Rather than focusing on \"touch points\" during the marketing and sales process, use social technologies to form meaningful, ongoing relationships that involve frequent online interactions.", "out_link"=>"http://bit.ly/11JQ5Re", "resource_category_id"=>"20"},
{"id"=>"53", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Social Media Marketing: A Small Business Primer", "description"=>"Leveraging social media marketing is one of the best tactics that can be achieved effectively while on a tight budget. Here are some ideas to help you reach thousands of customers and prospects all over the globe with almost zero advertising costs.", "out_link"=>"http://bit.ly/138M3U0", "resource_category_id"=>"20"},
{"id"=>"54", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"How to Write a Press Release for a New Product", "description"=>"A list of actionable, step-by-step instructions to follow for writing an effective press release to market a new product.", "out_link"=>"http://bit.ly/11OSaId", "resource_category_id"=>"21"},
{"id"=>"55", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"How To Write a PR Plan: Situation Analysis, Research, and Goals/Strategy/Objectives", "description"=>"If you take a cookie cutter cutter approach to public relations planning, you're doomed to fail. Investing time in upfront planning will prepare you with a framework and a roadmap for success.", "out_link"=>"http://bit.ly/16AU42q", "resource_category_id"=>"21"},
{"id"=>"56", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"How To Get Into A Magazine", "description"=>"Very helpful steps for how to reach out to magazines in order to receive free publicity. Media outlets like magazines need new, timely information as much as new businesses need the free publicity.", "out_link"=>"http://bit.ly/10mugWO", "resource_category_id"=>"21"},
{"id"=>"57", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Small Business Marketing Hub", "description"=>"The Hubspost Small Business Marketing hub provides a plethora of excellent resources for how to market and grow businesses online. Available content covers a variety of disciplines, including marketing, PR, social media, SEO, and web analytics.", "out_link"=>"http://bit.ly/13K38Eh", "resource_category_id"=>"23"},
{"id"=>"58", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Understanding Online Influence and Engagement with Brian Solis", "description"=>"Award winning author and online engagement thought leader Brian Solis shares tips and best practices for how to grow your online influence. This resource includes a video as well as key takeaways broken out below.", "out_link"=>"http://bit.ly/186ZSFJ", "resource_category_id"=>"23"},
{"id"=>"59", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Marketing Materials Checklist for Small Business", "description"=>"A list of marketing materials that small businesses need to consider when completing their arsenal of promotional artifacts.", "out_link"=>"http://bit.ly/10XlEbT", "resource_category_id"=>"23"},
{"id"=>"60", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Life After Kickstarter - 5 Costly Lessons From a Kickstarter-backed Designer", "description"=>"Learn from five costly mistakes that were made during the Kickstarter campaign for Jon Fawcett's flexible iPod dock.", "out_link"=>"http://bit.ly/18Q0jni", "resource_category_id"=>"24"},
{"id"=>"61", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"More Money, More Problems - The Challenges of Managing Crowdfunding Success", "description"=>"Key considerations for how to manage your campaign once it has exceeded your expecatations and there are customers lined up to start using your products or services.", "out_link"=>"http://bit.ly/13QMBP0", "resource_category_id"=>"24"},
{"id"=>"62", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Does Disappointing Your Backers Keep You Up at Night?", "description"=>"Campaign management tool BackerKit explains why it can be useful to consider communication and CRM tools to help you manage your campaign after the fundraising period has ended.", "out_link"=>"http://bit.ly/15yPlzx", "resource_category_id"=>"24"}]

service_category_list = [{"id"=>"1", "title"=>"Campaign Management", "rank"=>"1"},
{"id"=>"2", "title"=>"Video", "rank"=>"2"},
{"id"=>"3", "title"=>"Marketing / PR", "rank"=>"3"},
{"id"=>"4", "title"=>"Website Design / Dev", "rank"=>"4"},
{"id"=>"5", "title"=>"Manufacturing", "rank"=>"5"},
{"id"=>"6", "title"=>"Fulfillment", "rank"=>"6"}]

service_list = [{"id"=>"1", "featured"=>"1", "rank"=>"1", "featured_rank"=>"1", "title"=>"Feedback Manufacturing", "description"=>"Design analysis, part sourcing, contract manufacturing, and project management services from experienced crowdfunding partners. Your full supply chain solution, based in China.", "out_link"=>"http://feedbackmanufacturing.com/", "service_category_id"=>"4"},
{"id"=>"2", "featured"=>"1", "rank"=>"2", "featured_rank"=>"2", "title"=>"Metzger Associates", "description"=>"Metzger Associates assists clients in traditional public, media, and analyst relations as well as blogger relations, social media management, website development, and search engine optimization.", "out_link"=>"http://www.metzger.com/", "service_category_id"=>"3"},
{"id"=>"3", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"Acutrack", "description"=>"Over 20 years experience in production, logistics, and fulfillment for clients of all shapes and sizes, including serveral successful Kickstarter projects.", "out_link"=>"http://acutrack.com/", "service_category_id"=>"5"},
{"id"=>"4", "featured"=>nil, "rank"=>"1", "featured_rank"=>nil, "title"=>"BackerKit", "description"=>"A new pledge management tool for project creators, it's automated to manage all your pledges, add-ons, last minute shipping changes, and more. So stop stressing about messages in your mailbox. We got your back.", "out_link"=>"https://backerkit.com/", "service_category_id"=>"1"},
{"id"=>"5", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Celery", "description"=>"With Celery, you can accept pre-orders whenever you're ready, making it the easiest way to collect credit cards now and charge them later.", "out_link"=>"https://www.trycelery.com/", "service_category_id"=>"1"},
{"id"=>"6", "featured"=>nil, "rank"=>"3", "featured_rank"=>nil, "title"=>"Outgrow.Me", "description"=>"The first marketplace for successfully funded Kickstarter and Indiegogo projects. Reach new audiences with ease using their e-commerce platform.", "out_link"=>"http://outgrow.me/", "service_category_id"=>"1"},
{"id"=>"7", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"FulfillRite", "description"=>"E-commerce fulfillment made easy. Featuring integrations with popular payment platforms, and orders made before 12PM EST ship out same day.", "out_link"=>"http://fulfillrite.com/", "service_category_id"=>"5"},
{"id"=>"8", "featured"=>nil, "rank"=>"2", "featured_rank"=>nil, "title"=>"Morpho MFG", "description"=>"From idea development to industrial/mechanical design to sourcing and manufacturing, Morpho MFG provides full-service expertise to help you create brilliant products.", "out_link"=>"http://morphomfg.com/", "service_category_id"=>"4"}]

service_logos = [[1, 'feedback_manufacturing.jpg'], [2, 'metzger.jpg'], [3, 'acutrack.jpg'], [4, 'backerkit.jpg'], [5, 'celery.jpg'], [6, 'outgrow_me.jpg'], [7, 'fulfillrite.jpg'], [8, 'morpho_mfg.jpg']]

posts_list = [{"id"=>"1", "title"=>"Crowdfunding Statistics & Industry Outlook", "body"=>"As platforms like Kickstarter and Indiegogo celebrate their fourth birthdays this year, much attention has been given to the crowdfunding industry in an attempt to predict how much it will grow in the coming years. Regardless of the metric you use - number of campaigns, amount of money raised, or quantity of headline-topping success stories, theres no denying that crowdfunding is emerging from infancy and maturing into one of the most well known ways for entrepreneurs from all walks of life to realize their ideas.\n\nGet a glimpse of the worldwide crowdfunding industry with these infographics.", "preview_text"=>"Get a glimpse of the worldwide crowdfunding industry with these infographics.", "published_at_natural"=>"8/12/13", "tag_list"=>"crowdfunding industry-outlook"}, {"id"=>"2", "title"=>"Proven Practices: Making the Video", "body"=>"By now youve probably seen close to a hundred of them. Short videos on Kickstarter or Indiegogo that are meant to captivate, spark interest, and inspire you to open up your wallet and throw a few bucks towards the next big thing. Some videos obviously employ professional production value, while others are shot with an iPhone in an afternoon. Having employed both approaches ourselves, wed like to outline a few key tenets that, regardless of budget, should help you create a campaign video worthy of your backers hard earned cash.\n\n<strong>Craft a Story</strong>\n\nAt the end of the day, your video is meant to persuade strangers to give you money. The best way to do this is by telling a captivating story and demonstrating a brilliant product. Describe how your idea developed, talk about that late night where you feverishly developed a prototype, and alert us to the void in humanity that youre hoping to fill. Make your story easily repeatable, as this is one of the key things that your backers will want to share with friends.\n\n<strong>Show Rather Than Tell</strong>\n\nChances are youve probably developed a prototype or two. Show us! Demonstrate multiple use cases of your product. Give us a sample of your new album or film. We understand that your concept might still be in development, but even the slightest preview of a working product can convince potential backers that youre serious and that their money isnt being put into a black hole.\n\n<strong>Keep it Short</strong>\n\nPeople have short attention spans. Theyre also busy. Its awesome that youre so passionate about your idea and you could easily talk about it or 45 minutes. The video is your forum to pitch, however, and you should follow suit accordingly. We recommend keeping videos under 3 minutes with a knockout first twenty seconds to captivate and awe. Learn how to describe your idea and your story clearly and concisely in five sentences or less.\n\n<strong>Be Yourself</strong>\n\nThanks to reality TV, we all know how easy it is to tell when someone is being authentic or when theyre half heartedly reading from a script. Your passion is contagious, and we want you to infect us. Prove to us that youre an expert and that you stay awake at night thinking about how to make your idea better. Dont be afraid to get personal and describe how your idea solves a problem thats near and dear to your heart. \n\n<strong>Call for Action!</strong>\n\nDont forget to tell people how they can contribute. Describe your rewards, discuss how they can pre-order via your website, and encourage them to share with friends. In short, make it as easy as possible for people to help you realize your idea.\n\nFor more information on making your video, including technical tips, structural recommendations, and a video checklist, be sure to check out our Resources-Video page and get a copy of our eBook! If youre looking for professional help with your crowdfunding video, fill out our quick form here and get started with a videographer in your area.\n", "preview_text"=>"A quick overview of key principles that will help you achive crowdfunding video success, regardless of timeline or budget.", "published_at_natural"=>"8/14/13", "tag_list"=>"how-to video making-the-video crowdfunding-video"}]

conversation_posts_list = [{"id"=>"1", "body"=>"Its never too early to start marketing your product. Even before your prototype is finished, dont hesitate to reach out to key figures in the industry to seek feedback and collaboration for refining your idea.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"2", "body"=>"Show your ambition. Potential backers are interested to hear the larger idea or deeper meaning behind your project. Not only does this craft a more engaging story, but also shows your dedication to the long-term success.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"3", "body"=>"Embrace the uniqueness of your idea. If you have competitors or are entering a crowded arena, highlight what makes your project different and worthy of fundraising.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"4", "body"=>"Crowdfunding is inherently transparent. By honestly sharing your successes and failures, you open yourself up to the support of the backer community. People want to feel connected to your project, and transparency is one of the best ways to support this feeling of togetherness.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"5", "body"=>"Refine your pitch! Learn to describe your project in 5 sentences or less. Create a 3 slide presentation or one page document that you can forward to press so they can understand your vision quickly and easily.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"6", "body"=>"Keep your campaign period short. Kickstarter statistics show that campaigns that last for 90 days are only half as likely to succeed as those that last for 30 days. This will help you maintain urgency and excitement about your project.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"7", "body"=>"Be mindful of your campaign timing. Watch out for holidays, long weekends, and other times when your target audience might be less likely to spend time online.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"8", "body"=>"Remember to include things like shipping costs when determining your fundraising goal. If you expect to attract an international audience, think about setting different rewards for shipping overseas.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"9", "body"=>"Keep your video short! The majority of viewers will drop off after two or three minutes; consider this mark when writing your script and producing your visuals.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"10", "body"=>"Take a shot of your favorite booze before being featured in your campaign video. It will help you relax and stay at ease in front of the camera.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"11", "body"=>"If youre struggling to come up with a plan for your video, try starting with the Person - Product - Person framework. Start with a quick introduction to your story, demonstrate your products use cases in action, and summarize with the details of your campaign and what your goals are.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"12", "body"=>"Your project has an infinitely higher likelihood of achieving success if your backers feel inspired to share it with their networks. Make it easy for backers to Tweet, Like, email, and otherwise spread the word.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"13", "body"=>"Pinpoint your target audience. Find out where they spend time online and seek them out. You are much more likely to reach critical mass using outbound marketing and PR tactics rather than waiting for people to come to you.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"14", "body"=>"Customize your press releases and develop personal relationships with key bloggers and journalists. Its easy to spot a copied and pasted press template and much easier to get excited about something thats been tailored for a specific blog or publication audience.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"15", "body"=>"Dont settle for a single page on Kickstarter or Indiegogo. Launch a product or project website where you can include more information, access to press materials, and an additional way to accept donations or pre-orders. Do a little SEO research and boost your site traffic.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"16", "body"=>"Try to anticipate backers questions and stay one step ahead in your update communications. Things like color choices and timeline changes can be addressed proactively to prevent you from spending more time than you have responding to individual comments or questions.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"17", "body"=>"Remember to make your backers feel special whenever possible. If you see an opportunity to shoot a video as your first batch comes off of the production line or snap a few photos of your fulfillment team drowning in boxes, capture the moment and share it with your community. Crowdfunding provides an unprecedented lens into your life as a creator and including backers means engaging them.", "user_id"=>-1, "video_link"=>nil, "type"=>"AdvicePost"}, {"id"=>"18", "body"=>"Should I choose Kickstarter, Indiegogo, or another platform for my crowdfunding project?", "user_id"=>-1, "video_link"=>nil, "type"=>"QuestionPost"}, {"id"=>"19", "body"=>"Ive completed an estimate for the total cost of my campaign, assuming a certain number of backers. How do I choose my fundraising goal, and what else do I need to take into account?", "user_id"=>-1, "video_link"=>nil, "type"=>"QuestionPost"}, {"id"=>"20", "body"=>"What are the best tips for learning how to write a press release for the first time?", "user_id"=>-1, "video_link"=>nil, "type"=>"QuestionPost"}, {"id"=>"21", "body"=>"Do I need a website for my project outside of the crowdfunding platform Im using?", "user_id"=>-1, "video_link"=>nil, "type"=>"QuestionPost"}, {"id"=>"22", "body"=>"How do I know if my idea is mature enough to crowdfund?", "user_id"=>-1, "video_link"=>nil, "type"=>"QuestionPost"}, {"id"=>"23", "body"=>"I live in a small town and am worried that my idea wont be successful because Im not close to a large metro area. Are there any tips for connecting with the city nearest to my home?", "user_id"=>-1, "video_link"=>nil, "type"=>"QuestionPost"}, {"id"=>"24", "body"=>"What is the easiest way to promote a campaign?", "user_id"=>-1, "video_link"=>nil, "type"=>"QuestionPost"}, {"id"=>"25", "body"=>"How can I get feedback on my idea before launching my campaign?", "user_id"=>-1, "video_link"=>nil, "type"=>"QuestionPost"}, {"id"=>"26", "body"=>"What the main differences between rewards-based crowdfunding and equity-based crowdfunding?", "user_id"=>-1, "video_link"=>nil, "type"=>"QuestionPost"}, {"id"=>"27", "body"=>"What are some of the biggest crowdfunding success stories?", "user_id"=>-1, "video_link"=>nil, "type"=>"QuestionPost"}, {"id"=>"28", "body"=>"Ubuntu sets crowdfund pledge record for Edge smartphone. http://www.bbc.co.uk/news/technology-23714549", "user_id"=>-1, "video_link"=>nil, "type"=>"NewsPost"}, {"id"=>"29", "body"=>"Crowdfunding meets craft beer with CrowdBrewed. http://www.usatoday.com/story/money/business/2013/08/13/crowdfunding-kickstarter-meets-craft-beer/2649139/", "user_id"=>-1, "video_link"=>nil, "type"=>"NewsPost"}, {"id"=>"30", "body"=>"Is Crowdfunding Changing the Game for Filmmakers? A Q&A With Spike Lee. http://www.huffingtonpost.com/joe-vogel/is-crowdfunding-changing-_b_3751494.html", "user_id"=>-1, "video_link"=>nil, "type"=>"NewsPost"}, {"id"=>"31", "body"=>"SEC Asks For Public Comment On Accredited Investor Definition. http://www.crowdfundinsider.com/2013/08/20782-sec-public-comment-accredited-investors/", "user_id"=>-1, "video_link"=>nil, "type"=>"NewsPost"}]

ResourceCategory.delete_all
Resource.delete_all
ServiceCategory.delete_all
Service.delete_all
ConversationPost.delete_all
Post.delete_all


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
posts_list.each do |params|
  Post.create(params)
end
conversation_posts_list.each do |params|
  ConversationPost.create(params)
end
# service_logos.each do |id, filename|
#   this_service = Service.find(id)
#   this_service.logo = File.open(File.join(File.expand_path(File.dirname(__FILE__)), "ServiceLogoImages/#{filename}"), 'r')
#   this_service.save
# end
