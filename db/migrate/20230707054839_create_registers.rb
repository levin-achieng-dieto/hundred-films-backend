class CreateRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :registers do |t|
      t.string :fullname
      t.string :email
      t.string :number
      t.string :date
      t.string :region
      t.string :availability

      t.timestamps
    end
  end
end
