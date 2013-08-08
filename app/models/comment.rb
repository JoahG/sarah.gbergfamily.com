class Comment < ActiveRecord::Base
  attr_accessible :author_email, :author_name, :content, :post_id
  belongs_to :post

  validates_presence_of :author_name
  validates_presence_of :author_email
  validates_presence_of :content
end
