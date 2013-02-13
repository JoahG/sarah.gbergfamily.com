class NewsItem < ActiveRecord::Base
  attr_accessible :author_name, :content, :title
end
