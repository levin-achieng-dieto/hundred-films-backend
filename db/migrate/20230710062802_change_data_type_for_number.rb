class ChangeDataTypeForNumber < ActiveRecord::Migration[7.0]
  def change
    change_column :registers, :number, :integer
  end
end
