class ReportsAddSessionToken < ActiveRecord::Migration
  def change
    add_column :reports, :session_token, :string
  end
end
