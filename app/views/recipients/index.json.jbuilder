json.array!(@recipients) do |recipient|
  json.extract! recipient, :id, :name, :nik, :born_place, :born_date, :gender, :blood_type, :address, :rukun_tetangga, :rukun_warga, :kelurahan, :kecamatan, :city, :religion, :marital_status, :job, :nationality, :pos_code, :province
  json.url recipient_url(recipient, format: :json)
end
