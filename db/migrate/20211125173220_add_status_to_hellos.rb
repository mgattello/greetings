class AddStatusToHellos < ActiveRecord::Migration[5.2]
  def change
    add_column :hellos, :status, :string
  end
end
