class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :name
      t.string :nik
      t.string :born_place
      t.string :born_date
      t.string :gender
      t.string :blood_type
      t.string :address
      t.string :rukun_tetangga
      t.string :rukun_warga
      t.string :kelurahan
      t.string :kecamatan
      t.string :city
      t.string :religion
      t.string :marital_status
      t.string :job
      t.string :nationality
      t.string :pos_code
      t.string :province

      t.timestamps null: false
    end
  end
end
