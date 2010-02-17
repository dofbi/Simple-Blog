class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name,        :limit => 50, :default=> "", :null => false
      t.string :short_name,  :limit => 30, :default=> "", :null => false
      t.string :description,               :default=> "", :null => false
    end
    
    create_table :categories_posts, :id => false do |t|
      t.integer :category_id, :null => false
      t.integer :post_id, :nnull => false
    end
    
    add_index :categories_posts, :category_id
    add_index :categories_posts, :post_id
    remove_column :blog_posts, :category
  end

  def self.down
    drop_table :categories
    drop_table :categories_posts
    add_column :blog_posts, :category, :string, :limit => 20, :default => "", :null => false
  end
end
