require 'factory_girl'

FactoryGirl.define do
  factory :tag do
    name 'Tag'
  end
end

FactoryGirl.define do
  factory :post do
    title     'A post'
    slug      'a-post'
    body      'This is a post'

    published_at 1.day.ago
    created_at   1.day.ago
    updated_at   1.day.ago
  end
end

FactoryGirl.define do
  factory :comment do
    author   'Don Alias'
    author_email 'htcv2@htcv2blog.com'
    author_url   'http://htcv2blog.com'
    body     'I find this article thought provoking'
    association :post
  end
end
