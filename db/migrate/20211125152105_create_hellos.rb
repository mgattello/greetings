class CreateHellos < ActiveRecord::Migration[5.2]
  def change
    create_table :hellos do |t|
      t.string :lang
      t.text :word

      t.timestamps
    end
  end
end
