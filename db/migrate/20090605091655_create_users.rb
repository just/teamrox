class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.column :name, :string, :limit => 20
      t.column :email, :string, :limit => 20
      t.column :password, :string, :limit => 20
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
