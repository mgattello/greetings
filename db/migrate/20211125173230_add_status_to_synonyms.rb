class AddStatusToSynonyms < ActiveRecord::Migration[5.2]
  def change
    add_column :synonyms, :status, :string
  end
end
