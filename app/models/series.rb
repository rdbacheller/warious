class Series < ActiveRecord::Base
  #Almost every series should probably have multiple posts
  has_many :posts
  #Both series can have many contributors and contributors can have many series
  has_and_belongs_to_many :contributors, :class_name => 'User'
end