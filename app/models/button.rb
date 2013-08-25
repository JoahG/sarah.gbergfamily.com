class Button < ActiveRecord::Base
  attr_accessible :side, :url, :img

  has_attached_file :img
end
