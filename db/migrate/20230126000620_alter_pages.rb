class AlterPages < ActiveRecord::Migration[7.0]
  # This migration changes the permalink data type to string. 
  
  def up
    change_column("pages", "permalink", :string)
  end

  def down
    change_column("pages", 'permalink', :integer)
  end

end
