class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :post_id,                     :default => 0,  :null => false
      t.string :author,         :limit => 25, :default => "", :null => false
      t.string :author_email,   :limit => 50, :default => "", :null => false
      t.text :content,                        :default => "", :null => false
      t.string :status,         :limit => 25, :default => "", :null => false
      t.datetime :created_at

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
