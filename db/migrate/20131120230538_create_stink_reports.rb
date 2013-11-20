class CreateStinkReports < ActiveRecord::Migration
  def change
    create_table :stink_reports do |t|
      t.float :lat
      t.float :lng
      t.string :email
      t.datetime :seen_on

      t.timestamps
    end
  end
end
