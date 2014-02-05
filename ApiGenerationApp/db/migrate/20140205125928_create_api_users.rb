class CreateApiUsers < ActiveRecord::Migration
  def change
    create_table :api_users do |t|

      t.string "strEmail", :limit => 100, :null => false
      t.string "strApiKey", :limit => 256, :null => false
      t.timestamps
    end
  end
end
