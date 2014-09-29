class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.integer :employee_id
      t.integer :project_id
      t.date :workdate
      t.time :workstart
      t.time :workend
      t.boolean :approved

      t.timestamps
    end
  end
end
