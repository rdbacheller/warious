class User < ActiveRecord::Base
  #Both series can have many contributors and contributors can have many series
  has_and_belongs_to_many :posts
  #Both posts can have many authors and authors can have many posts
  has_and_belongs_to_many :series
end