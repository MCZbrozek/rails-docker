class CreateAdminUsersPagesJoin < ActiveRecord::Migration[7.0]
  def up
    create_table :admin_users_pages, :id => false do |t|
      # id is set to false, so that the defualt table creation will not add an id to this join table. 
      t.integer "admin_user_id"
      t.integer "page_id"
      t.timestamps
    end
    add_index("admin_users_pages", ["admin_user_id", "page_id"])
  end

  def down 
    drop_table :admin_users_pages
  end
end
