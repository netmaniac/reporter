class RenameStinkReportToReport < ActiveRecord::Migration
  def change
    rename_table :stink_reports, :reports
  end
end
