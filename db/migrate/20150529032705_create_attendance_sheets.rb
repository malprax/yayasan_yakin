class CreateAttendanceSheets < ActiveRecord::Migration
  def change
    create_table :attendance_sheets do |t|
      t.references :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :attendance_sheets, :courses
  end
end
