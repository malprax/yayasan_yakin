json.array!(@attendance_sheets) do |attendance_sheet|
  json.extract! attendance_sheet, :id, :course
  json.url attendance_sheet_url(attendance_sheet, format: :json)
end
