class CreateSynonyms < ActiveRecord::Migration[5.2]
  def change
    create_table :synonyms do |t|
      t.references :hello, foreign_key: true
      t.string :word

      t.timestamps
    end
  end
end
