class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, { id: false, primary_key: :username }  do |t|
      t.string :username, :limit => 30
      t.string :email
      t.string :name, :limit => 100
      t.timestamps
    end
  end
end