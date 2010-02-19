class Categorization < ActiveRecord::Base
  
  set_table_name "categories_posts"
  belongs_to :categorie
  belongs_to :post
  
end
