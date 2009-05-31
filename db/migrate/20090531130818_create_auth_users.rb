class CreateAuthUsers < ActiveRecord::Migration
  def self.up
    create_table :auth_users do |t|
      t.column :users, :password, :string, :limit => 40
      t.column :users, :password_token, :string, :unique => true, :limit => 40
      t.column :users, :password_token_expires, :datetime
    end
  end

  def self.down
    drop_table :auth_users
  end
end
