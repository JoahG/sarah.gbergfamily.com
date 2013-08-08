class Post < ActiveRecord::Base
  attr_accessible :user_id, :content, :title, :tag_list, :intro, :show_intro
  acts_as_taggable
  belongs_to :user
  has_many :comments

  extend FriendlyId
  friendly_id :title, :use => [:slugged, :history]
end
