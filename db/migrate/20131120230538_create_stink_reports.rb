class CreateStinkReports < ActiveRecord::Migration
  def change
    create_table :stink_reports do |t|
      t.decimal :lat, precision: 20, scale: 17, default: 0
      t.decimal :lng, precision: 20, scale: 17, default: 0
      t.string :email
      t.date :seen_on
      t.string :token

      t.timestamps
    end
  end
end
