class MakeEmailUnique < ActiveRecord::Migration
  def change
    change_column "ApiUser", "strEmail", :unique => true
    change_column "ApiUser", "strApiKey", :unique => true
  end
end
