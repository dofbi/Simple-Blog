class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :usermane,        :limit => 25, :default => "", :null => false
      t.string :hashed_password, :limit => 40, :default => "", :null => false
      t.string :first_name,      :limit => 25, :default => "", :null => false
      t.string :last_name,       :limit => 40, :default => "", :null => false
      t.string :email,           :limit => 50, :default => "", :null => false
      t.string :display_name,    :limit => 25, :default => "", :null => false
      t.integer :user_level,     :limit => 3, :default => 0, :null => false
    end
  end

  def self.down
    drop_table :users
  end
end
