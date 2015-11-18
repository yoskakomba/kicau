class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside this method, is translated to SQL code and modifies the database (currently, SQlite)
    add_column :users, :username, :string # add a new column to table "users", called "username" and type "string"
    add_index :users, :username, unique: true # first, index usernames for quick (rapid) lookup. second, ensure usernames are ALWAYS unique
  end
end
