class CreateAttendanceSheets < ActiveRecord::Migration
  def change
    create_table :attendance_sheets do |t|
      t.string :course

      t.timestamps null: false
    end
  end
end
