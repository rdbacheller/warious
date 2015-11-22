class Post < ActiveRecord::Base
  #Every post belongs to a series
  belongs_to :series
  #Both posts can have many authors and authors can have many posts
  has_and_belongs_to_many :authors, :class_name => 'User'
end