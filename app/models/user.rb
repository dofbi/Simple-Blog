class User < ActiveRecord::Base
  
  has_many :posts, :foreign_key => 'author_id', :order => 'created_at ASC'
  has_many :recent_posts, :class_name =>'Post' :order => 'created_at ASC', limit => 5
  
end
