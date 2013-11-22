class CreateStinkReports < ActiveRecord::Migration
  def change
    create_table :stink_reports do |t|
      t.decimal :lat, precision: 20, scale: 17, default: 0
      t.decimal :lng, precision: 20, scale: 17, default: 0
      t.string :email
      t.date :seen_on
      t.string :token
      t.string :hours
      t.boolean :confirmed, default: false, null: false

      t.timestamps
    end

    add_index :stink_reports, :confirmed
  end
end
